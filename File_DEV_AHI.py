import subprocess
import os
import pandas as pd
import argparse
import glob
from datetime import datetime

# --- Command-line arguments ---
parser = argparse.ArgumentParser(description="Process Arthur folders for a specific storm")
parser.add_argument("excel_file", help="Path to Excel file with columns: storm, date(YYYYmmdd), hour(HH), lat, lon, vmax")
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
    print(f"[DEBUG] Running: {' '.join(cmd)}")
    result = subprocess.run(cmd, capture_output=True, text=True)
    if result.returncode != 0:
        print(f"[ERROR] {script_name} failed:\n{result.stderr}")
    else:
        if result.stdout.strip():
            print(result.stdout.strip())

for folder in folders:
    dir_path = os.path.join(args.base_dir, folder)

    # --- Parse folder name (YYYYdoy_HH format) ---
    try:
        parts = folder.split("_")
        folder_yeardoy = parts[0]          # e.g. "2019021"
        folder_hour = int(parts[1])        # e.g. "12"

        # Convert YYYYdoy -> YYYYMMDD
        folder_date = datetime.strptime(folder_yeardoy, "%Y%j").strftime("%Y%m%d")

        # Convert hour -> HHMM (so "12" becomes "1200")
        folder_hour = folder_hour * 100

    except (ValueError, IndexError) as e:
        print(f"[WARN] Cannot parse date/hour from folder name: {folder} ({e}), skipping...")
        continue

    # --- Match to Best Track row ---
    matched_row = None
    for _, row in df.iterrows():
        try:
            excel_date = str(row["date"])        # e.g. "20190121"
            excel_hour = int(row["hour"]) * 100  # normalize 12 -> 1200
            if excel_date == folder_date and excel_hour == folder_hour:
                matched_row = row
                break
        except Exception:
            continue

    if matched_row is None:
        print(f"[WARN] No Best Track row found for folder {folder}, skipping...")
        continue

    # Use matched row
    lat_decimal = float(matched_row['lat']) / 10
    lon_decimal = float(matched_row['lon']) / 10
    vmax = matched_row['vmax']

    lat_arg = str(int(lat_decimal * 10))
    lon_arg = str(int(lon_decimal * 10))

    print(f"[INFO] Processing folder {folder} for storm {args.storm_name} "
          f"with lat={lat_decimal}, lon={lon_decimal}, vmax={vmax}, hour={folder_hour}")

    # --- Stage 1a: main.py (AHI-CROP) ---
    run_script("main.py", "AHI-CROP", dir_path, lat_arg, lon_arg)

    # --- Stage 1b: B07_correction.py ---
    sample_file = os.path.join(dir_path, f"{folder}_SAMPLE.npz")  # e.g. 2019021_12_SAMPLE.npz
    run_script("B07_correction.py", dir_path, sample_file, f"{folder_hour//100:02d}")

    # --- Stage 1c: main.py (PREDICT-master) ---
    predict_file = os.path.join(dir_path, f"{folder}_SAMPLE.npz")  # only the correct file
    if os.path.exists(predict_file):
        run_script("main.py", "PREDICT-master", predict_file)
    else:
        print(f"[WARN] No valid input for PREDICT-master in {dir_path}")

    # --- Stage 1d: main.py (FNN-AHI-predict) ---
    pm_npz_files_list = glob.glob(os.path.join(dir_path, "*PM*.npz"))
    if pm_npz_files_list:
        run_script("main.py", "FNN-AHI-predict", *pm_npz_files_list,
                   "M10_512_GOES_C13_10INPUT", "BAND_C13_model_channels")

    # --- Stage 2: NVI_to_SWIR_scaling.py ---
    ml_truth_file = os.path.join(dir_path, "ML_truth_DATA_C13_SAMPLE_SWIR.npz")
    if os.path.exists(ml_truth_file):
        run_script("NVI_to_SWIR_scaling.py", dir_path, ml_truth_file, f"{folder_hour:04d}")
    else:
        print(f"[WARN] Missing truth file: {ml_truth_file}, skipping NVI_to_SWIR_scaling")

    # --- Stage 3: Histogram_Match.py ---
    fd_file = f"{folder}_SAMPLE.npz"
    if os.path.exists(os.path.join(dir_path, fd_file)) and os.path.exists(ml_truth_file):
        run_script("Histogram_Match_NVI.py", dir_path, ml_truth_file, fd_file, f"{folder_hour:04d}")
    else:
        print(f"[WARN] Skipping Histogram_Match in {dir_path}, missing input files")




















