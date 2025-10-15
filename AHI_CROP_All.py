# Takes AHI (Himawari) .DAT files, co-locates bands, crops near best track,
# and saves as NumPy arrays for model prediction (no DNB validation).
# Supports both pre-2019 full-disk and post-2019 segmented formats.
# Author: Adapted by Nathan Stanford (USAFA)

import numpy as np
import functools as ft
from pathlib import Path
import time
import datetime
from collections import defaultdict
from satpy import Scene
from pyresample.geometry import SwathDefinition
import os
from glob import glob
import gc
import crop
import common
from common import log, rgb, reset, blue, orange, bold

# ---------------------------------------------------------
# CONFIGURATION
# ---------------------------------------------------------
AHI_channels = ['B07', 'B11', 'B13', 'B14', 'B15']
all_channels_AHI = ['B07', 'B11', 'B13', 'B14', 'B15', 'latitude', 'longitude']
format_ahi = '%Y%m%d%H%M'

# Toggle this to True if you only want the first scan (S0101)
USE_FIRST_SEGMENT_ONLY = False

# ---------------------------------------------------------
# HELPER FUNCTIONS
# ---------------------------------------------------------
def parse_time(time_str):
    return datetime.datetime.strptime(time_str, format_ahi)

def parse_filename_ahi(path):
    """Parse AHI filename to extract datetime info (robust to small variations)."""
    name = path if isinstance(path, str) else path.name
    n = name.split('_')
    # Typical pattern: HS_H08_20191222_1200_B07_FLDK_R20_S0101.DAT
    try:
        start = parse_time(n[2] + n[3])
    except Exception:
        # Fallback if slightly different underscore structure
        digits = [s for s in n if s.isdigit()]
        start = parse_time(digits[0] + digits[1])
    startfix = start.strftime('%Y%m%d%H%M%S')
    return {
        'filename': name,
        'path': str(path),
        'datetime': startfix,
        'start': start,
    }

def group_ahi_by_time_sat(ahi_dir):
    """Group AHI files by datetime key."""
    ahis = [
        parse_filename_ahi(f)
        for f in ahi_dir.iterdir()
        if f.suffix == '.DAT' and 'HS_H09' in f.name
    ]
    d = defaultdict(list)
    for ahi in ahis:
        d[ahi['datetime']].append(ahi)
    print("Grouped AHI timesteps:", list(d.keys()))
    return d

# ---------------------------------------------------------
# PROCESS FUNCTION
# ---------------------------------------------------------
def process_set_AHI(grouped_files, curr_idx, total_groups, lat, lon):
    """Process a single AHI timestep (crop around storm center)."""
    log.info(f'{rgb(255,0,0)}Processing{reset} timestep {bold}{curr_idx + 1}/{total_groups}{reset}')
    ahi_dt = grouped_files[0]["datetime"]
    print(f"Processing AHI datetime: {ahi_dt}")

    # Directory containing all segment files
    first_file = grouped_files[0]["path"]
    ahi_dir = os.path.dirname(first_file)

    # --- Get correct list of files ---
    if USE_FIRST_SEGMENT_ONLY:
        ahi_files = sorted(glob(os.path.join(ahi_dir, "*_S0101.DAT")))
        if not ahi_files:
            raise FileNotFoundError(f"No first-scan files (*_S0101.DAT) found in {ahi_dir}")
        print(f"Using only first segment (S0101): {ahi_files}")
    else:
        ahi_files = sorted(glob(os.path.join(ahi_dir, "*.DAT")))
        if not ahi_files:
            raise FileNotFoundError(f"No AHI .DAT files found in {ahi_dir}")
        print(f"Using all {len(ahi_files)} AHI segment files for mosaic:\n", ahi_files)

    # --- Load scene ---
    master_scene = Scene(reader='ahi_hsd', filenames=ahi_files)
    master_scene.load(AHI_channels)
    print("Loaded datasets:", master_scene.available_dataset_names())

    # --- Bounding box (lon_min, lat_min, lon_max, lat_max) ---
    lon_min = (lon / 10) - 5
    lon_max = (lon / 10) + 5
    lat_min = (lat / 10) - 5
    lat_max = (lat / 10) + 5
    bbox = (lon_min, lat_min, lon_max, lat_max)

    # --- Crop safely ---
    try:
        master_scene_cropped = master_scene.crop(ll_bbox=bbox)
    except NotImplementedError:
        log.warning("Crop failed in geos projection — resampling to geographic grid.")
        geo_scene = master_scene.resample('geographic')
        master_scene_cropped = geo_scene.crop(ll_bbox=bbox)

    # --- Extract lon/lat ---
    measurement = master_scene_cropped['B07']
    global longitude, latitude
    longitude, latitude = measurement.attrs['area'].get_lonlats()

    # --- Crop NaN edges ---
    log.info(f'Cropping NaN edges for {blue}{ahi_dt}{reset}')
    t = time.time()
    data = crop.crop_nan_edges_AHI(master_scene_cropped, AHI_channels, AHI_channels)
    log.debug(f'Cropping nan edges took {rgb(255,0,0)}{time.time() - t:.2f}{reset} seconds')

    data['channels'] = list(data)
    data['filenames'] = ahi_files
    data['datetime'] = ahi_dt
    return data

# ---------------------------------------------------------
# MAIN DRIVER
# ---------------------------------------------------------
def main(args):
    """Scan for AHI bands and run colocation/cropping."""
    ahi_dir = Path(args.ahi_dir).resolve()
    AHIpath = Path(args.ahi_dir).resolve()
    LATLON = args.LATLON
    LAT, LON = LATLON[0], LATLON[1]

    print(f"Latitude={LAT}, Longitude={LON}")
    print(f"Scanning directory: {ahi_dir}")

    # --- Group AHI data ---
    AHI_dict = group_ahi_by_time_sat(ahi_dir)
    if not AHI_dict:
        raise RuntimeError(f"No AHI files found in {ahi_dir}")

    datas = []
    dcount = 0
    for datetime_key in sorted(AHI_dict):
        log.info(f"Processing DTG {datetime_key}")
        try:
            datas.append(process_set_AHI(AHI_dict[datetime_key], dcount, len(AHI_dict), LAT, LON))
            dcount += 1
        except (KeyError, IndexError, FileNotFoundError) as e:
            log.warning(f"Skipped {datetime_key}: {e}")
            continue

    if not datas:
        raise RuntimeError("No valid AHI data processed — check input directory or filename pattern.")

    # --- Stack into arrays ---
    channels = datas[0]['channels']
    print("Final channels:", channels)
    print("Stacking arrays...")

    case1 = {c: np.stack(tuple(d[c] for d in datas)) for c in channels}
    case1['latitude'] = latitude
    case1['longitude'] = longitude
    case1['channels'] = channels
    case1['samples'] = [d["datetime"] for d in datas]
    case1['AHItimes'] = [d['datetime'] for d in datas]

    filename = AHIpath / f'{AHIpath.name}_SAMPLE.npz'
    log.info(f'Writing {blue}{filename.name}{reset}\n' +
             f'{orange}Channels{reset} {channels}\n{orange}')
    np.savez_compressed(filename, **case1)
    log.info(f'Wrote {blue}{filename.name}{reset}')

    del case1, datas
    gc.collect()

# ---------------------------------------------------------
# END OF FILE
# ---------------------------------------------------------



            
