# ONE BASH SCRIPT

# AWS Data Pull GOES (ABI naming convention: satellite/File/Year/JulianDate/Hour/)
# aws s3 sync --no-sign-request s3://noaa-goes16/ABI-L1b-RadF/2019/247/00/ /mnt/e/Fernand4_0
# aws s3 sync --no-sign-request s3://noaa-goes16/ABI-L1b-RadF/2019/247/06/ /mnt/e/Fernand4_6
# aws s3 sync --no-sign-request s3://noaa-goes16/ABI-L1b-RadF/2019/248/00/ /mnt/e/Fernand5_0

# cd Fernand4_0
# rm *C01*.nc *C02*.nc *C03*.nc *C04*.nc *C05*.nc *C06*.nc *C08*.nc *C09*.nc *C10*.nc *C12*.nc *C16*.nc
# rm *s20192470010*.nc *s20192470020*.nc *s20192470030*.nc *s20192470040*.nc *s20192470050*.nc

# cd ../Fernand4_6
# rm *C01*.nc *C02*.nc *C03*.nc *C04*.nc *C05*.nc *C06*.nc *C08*.nc *C09*.nc *C10*.nc *C12*.nc *C16*.nc
# rm *s20192470610*.nc *s20192470620*.nc *s20192470630*.nc *s20192470640*.nc *s20192470650*.nc

# cd ../Fernand5_0
# rm *C01*.nc *C02*.nc *C03*.nc *C04*.nc *C05*.nc *C06*.nc *C08*.nc *C09*.nc *C10*.nc *C12*.nc *C16*.nc
# rm *s20192480010*.nc *s20192480020*.nc *s20192480030*.nc *s20192480040*.nc *s20192480050*.nc

# SECOND BASH SCRIPT

python3 main.py ABI-only-FDR /mnt/e/Fernand4_0 231 -961
python3 main.py PREDICT-master /mnt/e/Fernand4_0/*.npz
python3 main.py FNN-GOES-predict /mnt/e/Fernand4_0/*PM*.npz M10_512_GOES_C13_10INPUT BAND_C13_model_channels

python3 main.py ABI-only-FDR /mnt/e/Fernand4_6 234 -968
python3 main.py PREDICT-master /mnt/e/Fernand4_6/*.npz
python3 main.py FNN-GOES-predict /mnt/e/Fernand4_6/*PM*.npz M10_512_GOES_C13_10INPUT BAND_C13_model_channels

python3 main.py ABI-only-FDR /mnt/e/Fernand5_0 247 -986
python3 main.py PREDICT-master /mnt/e/Fernand5_0/*.npz
python3 main.py FNN-GOES-predict /mnt/e/Fernand5_0/*PM*.npz M10_512_GOES_C13_10INPUT BAND_C13_model_channels


# SWIR Scaling
python3 NVI_to_SWIR_scaling.py /mnt/e/Fernand4_0 Fernand4_0_FD_REDUCEDv2ALL_PM.npz_MODEL_M10_512_GOES_C13_10INPUT.npz 00
python3 NVI_to_SWIR_scaling.py /mnt/e/Fernand4_6 Fernand4_6_FD_REDUCEDv2ALL_PM.npz_MODEL_M10_512_GOES_C13_10INPUT.npz 06
python3 NVI_to_SWIR_scaling.py /mnt/e/Fernand5_0 Fernand5_0_FD_REDUCEDv2ALL_PM.npz_MODEL_M10_512_GOES_C13_10INPUT.npz 00



# Histogram Matching
python3 Histogram_Match.py /mnt/e/Fernand4_0 ML_truth_DATA_C13_00_SWIR.npz Fernand4_0_FD_REDUCEDv2ALL.npz 00
python3 Histogram_Match.py /mnt/e/Fernand4_6 ML_truth_DATA_C13_06_SWIR.npz Fernand4_6_FD_REDUCEDv2ALL.npz 06
python3 Histogram_Match.py /mnt/e/Fernand5_0 ML_truth_DATA_C13_00_SWIR.npz Fernand5_0_FD_REDUCEDv2ALL.npz 00