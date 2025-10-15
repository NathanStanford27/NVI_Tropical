import subprocess
import os
import pandas as pd
import argparse
import glob
from datetime import datetime

# --- Command-line arguments ---
parser = argparse.ArgumentParser(description="Process Arthur folders for a specific storm")
parser.add_argument("excel_file", help="Path to Excel file with columns: storm, date(YYYYmmdd), hour, lat, lon, vmax")
parser.add_argument("storm_name", help="Name of the storm to process")
parser.add_argument("base_dir", help="Path to the Arthur base directory containing all subfolders")
args = parser.parse_args()

# Verify base_dir exists
if not os.path.isdir(args.base_dir):
    print(f"[ERROR] Base directory '{args.base_dir}' does not exist!")
    exit(1)

# Load Excel
df = pd.read_excel(args.excel_file)

# Case-insensitive storm filter
df = df[df["storm"].str.upper() == args.storm_name.upper()]
if df.empty:
    print(f"[ERROR] No data found for storm {args.storm_name}")
    exit(1)

# Get subfolders
folders = sorted([f for f in os.listdir(args.base_dir) if os.path.isdir(os.path.join(args.base_dir, f))])

# Helper function to run Python scripts non-interactively
def run_script(script_name, *args_list):
    cmd = ["python3", script_name] + list(args_list)
    subprocess.run(cmd, check=True, stdout=subprocess.PIPE, stderr=subprocess.PIPE)

for folder in folders:
    dir_path = os.path.join(args.base_dir, folder)
    try:
        folder_hour = int(folder.split("_")[-1])
        folder_date_prefix = folder.split("_")[0]  # Expected YYYYDDD
    except ValueError:
        print(f"[WARN] Cannot parse hour or date from folder name: {folder}, skipping...")
        continue

    # Find Best Track row matching storm + hour + Julian date
    matched_row = None
    for _, row in df.iterrows():
        dt_obj = datetime.strptime(str(row["date"]), "%Y%m%d")
        julian_str = f"{dt_obj.year}{dt_obj.timetuple().tm_yday:03d}"  # Convert to YYYYDDD
        if julian_str == folder_date_prefix and row["hour"] == folder_hour:
            matched_row = row
            break

    if matched_row is None:
        print(f"[WARN] No Best Track row found for folder {folder}, skipping...")
        continue

    # Use matched row
    lat_decimal = float(matched_row['lat']) / 10
    lon_decimal = float(matched_row['lon']) / 10
    vmax = matched_row['vmax']

    lat_arg = str(int(lat_decimal * 10))
    lon_arg = str(int(lon_decimal * 10))

    print(f"[INFO] Processing folder {folder} for storm {args.storm_name} with lat={lat_decimal}, lon={lon_decimal}, vmax={vmax}, hour={folder_hour}")

    # --- Stage 1: main.py ---
    run_script("main.py", "ABI-only-FDR", dir_path, lat_arg, lon_arg)

    # Expand wildcard for *.npz
    npz_files_list = glob.glob(os.path.join(dir_path, "*.npz"))
    if npz_files_list:
        run_script("main.py", "PREDICT-master", *npz_files_list)

    # Expand wildcard for *PM*.npz
    pm_npz_files_list = glob.glob(os.path.join(dir_path, "*PM*.npz"))
    if pm_npz_files_list:
        run_script("main.py", "FNN-GOES-predict", *pm_npz_files_list, "M10_512_GOES_C13_10INPUT", "BAND_C13_model_channels")

    # --- Stage 2: NVI_to_SWIR_scaling.py ---
    model_file = f"{folder}_FD_REDUCEDv2ALL_PM.npz_MODEL_M10_512_GOES_C13_10INPUT.npz"
    run_script("NVI_to_SWIR_scaling.py", dir_path, model_file, f"{folder_hour:02d}")

    # --- Stage 3: Histogram_Match.py ---
    ml_truth_file = f"ML_truth_DATA_C13_{folder_hour:02d}_SWIR.npz"
    fd_file = f"{folder}_FD_REDUCEDv2ALL.npz"
    run_script("Histogram_Match.py", dir_path, ml_truth_file, fd_file, f"{folder_hour:02d}")











