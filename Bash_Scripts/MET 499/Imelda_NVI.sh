# ONE BASH SCRIPT

# AWS Data Pull GOES (ABI naming convention: satellite/File/Year/JulianDate/Hour/)

# aws s3 sync --no-sign-request s3://noaa-goes16/ABI-L1b-RadF/2019/261/00/ /mnt/e/Imelda18_0
# aws s3 sync --no-sign-request s3://noaa-goes16/ABI-L1b-RadF/2019/261/06/ /mnt/e/Imelda18_6

# aws s3 sync --no-sign-request s3://noaa-goes16/ABI-L1b-RadF/2019/262/00/ /mnt/e/Imelda19_0

# REMOVE CHANNELS
# cd Imelda18_0
# rm *C01*.nc *C02*.nc *C03*.nc *C04*.nc *C05*.nc *C06*.nc *C08*.nc *C09*.nc *C10*.nc *C12*.nc *C16*.nc
# rm *s20192610010*.nc *s20192610020*.nc *s20192610030*.nc *s20192610040*.nc *s20192610050*.nc

# cd ../Imelda18_6
# rm *C01*.nc *C02*.nc *C03*.nc *C04*.nc *C05*.nc *C06*.nc *C08*.nc *C09*.nc *C10*.nc *C12*.nc *C16*.nc
# rm *s20192610610*.nc *s20192610620*.nc *s20192610630*.nc *s20192610640*.nc *s20192610650*.nc

# cd ../Imelda19_0
# rm *C01*.nc *C02*.nc *C03*.nc *C04*.nc *C05*.nc *C06*.nc *C08*.nc *C09*.nc *C10*.nc *C12*.nc *C16*.nc
# rm *s20192620010*.nc *s20192620020*.nc *s20192620030*.nc *s20192620040*.nc *s20192620050*.nc

# SECOND BASH SCRIPT

python3 main.py ABI-only-FDR /mnt/e/Imelda18_0 295 -955
python3 main.py PREDICT-master /mnt/e/Imelda18_0/*.npz
python3 main.py FNN-GOES-predict /mnt/e/Imelda18_0/*PM*.npz M10_512_GOES_C13_10INPUT BAND_C13_model_channels

python3 main.py ABI-only-FDR /mnt/e/Imelda18_6 299 -956
python3 main.py PREDICT-master /mnt/e/Imelda18_6/*.npz
python3 main.py FNN-GOES-predict /mnt/e/Imelda18_6/*PM*.npz M10_512_GOES_C13_10INPUT BAND_C13_model_channels

python3 main.py ABI-only-FDR /mnt/e/Imelda19_0 311 -948
python3 main.py PREDICT-master /mnt/e/Imelda19_0/*.npz
python3 main.py FNN-GOES-predict /mnt/e/Imelda19_0/*PM*.npz M10_512_GOES_C13_10INPUT BAND_C13_model_channels

# SWIR Scaling
python3 NVI_to_SWIR_scaling.py /mnt/e/Imelda18_0 Imelda18_0_FD_REDUCEDv2ALL_PM.npz_MODEL_M10_512_GOES_C13_10INPUT.npz 00
python3 NVI_to_SWIR_scaling.py /mnt/e/Imelda18_6 Imelda18_6_FD_REDUCEDv2ALL_PM.npz_MODEL_M10_512_GOES_C13_10INPUT.npz 06

python3 NVI_to_SWIR_scaling.py /mnt/e/Imelda19_0 Imelda19_0_FD_REDUCEDv2ALL_PM.npz_MODEL_M10_512_GOES_C13_10INPUT.npz 00

# Histogram Matching
python3 Histogram_Match.py /mnt/e/Imelda18_0 ML_truth_DATA_C13_00_SWIR.npz Imelda18_0_FD_REDUCEDv2ALL.npz 00
python3 Histogram_Match.py /mnt/e/Imelda18_6 ML_truth_DATA_C13_06_SWIR.npz Imelda18_6_FD_REDUCEDv2ALL.npz 06

python3 Histogram_Match.py /mnt/e/Imelda19_0 ML_truth_DATA_C13_00_SWIR.npz Imelda19_0_FD_REDUCEDv2ALL.npz 00