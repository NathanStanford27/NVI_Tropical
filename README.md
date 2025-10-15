Example command line to run NVI pipeline for a Himawari/GOES imagery:
# Himawari Command Line
    python3 File_DEV_AHI.py /mnt/e/MET499/WPAC_besttrack_combined.xlsx AMPIL /mnt/e/MET499/WPAC/2024/AMPIL #Himawari
# GOES Command Line
    python3 File_DEV.py /mnt/e/Storm_Database.xlsx Josephine /mnt/e/MET499/Sick/Josephine #GOES

When running these command lines, File_DEV_AHI.py and File_DEV.py run all of the files necessary to produce an NVI image:     
# --- Stage 1a: main.py (AHI-CROP) ---
    run_script("main.py", "AHI-CROP", dir_path, lat_arg, lon_arg)

NOTE: Currently, AHI-CROP takes a lat/lon argument from the "Best Track" database to build a 10x10 degree lat/lon box around the center of the storm. 
You can easily adjust this in "AHI_CROP_All.py" by changing the bounding box in the "Process Function" section.

# --- Stage 1b: B07_correction.py ---
    sample_file = os.path.join(dir_path, f"{folder}_SAMPLE.npz")  # e.g. 2019021_12_SAMPLE.npz
    run_script("B07_correction.py", dir_path, sample_file, f"{folder_hour//100:02d}")

NOTE: When handling imagery in SATPY, some of the Channel 7 Himawari imagery processes cold brightness temperatures as noise, making it "NAN."  B07 correction
corrects this handling via linear interpolation between nearest neighbors.

# --- Stage 1c: main.py (PREDICT-master) ---
    predict_file = os.path.join(dir_path, f"{folder}_SAMPLE.npz")  # only the correct file
    if os.path.exists(predict_file):
        run_script("main.py", "PREDICT-master", predict_file)
    else:
        print(f"[WARN] No valid input for PREDICT-master in {dir_path}")

NOTE: Normalizes the imagery from GEO satellite

# --- Stage 1d: main.py (FNN-AHI-predict) ---
    pm_npz_files_list = glob.glob(os.path.join(dir_path, "*PM*.npz"))
    if pm_npz_files_list:
        run_script("main.py", "FNN-AHI-predict", *pm_npz_files_list,
                   "M10_512_GOES_C13_10INPUT", "BAND_C13_model_channels")

NOTE: NVI model run. Make sure you update the "BAND_C13_model_channels" as necessary. Himawari uses B07, B11, etc.; GOES uses C07, C11, etc.
