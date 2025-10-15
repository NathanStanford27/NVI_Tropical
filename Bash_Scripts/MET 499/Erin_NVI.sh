# ONE BASH SCRIPT


# AWS Data Pull GOES (ABI naming convention: satellite/File/Year/JulianDate/Hour/)
# aws s3 sync --no-sign-request s3://noaa-goes16/ABI-L1b-RadF/2019/239/00/ /mnt/e/Erin27_0
# aws s3 sync --no-sign-request s3://noaa-goes16/ABI-L1b-RadF/2019/239/06/ /mnt/e/Erin27_6
# aws s3 sync --no-sign-request s3://noaa-goes16/ABI-L1b-RadF/2019/240/00/ /mnt/e/Erin28_0
# aws s3 sync --no-sign-request s3://noaa-goes16/ABI-L1b-RadF/2019/240/06/ /mnt/e/Erin28_6
# aws s3 sync --no-sign-request s3://noaa-goes16/ABI-L1b-RadF/2019/241/00/ /mnt/e/Erin29_0
# aws s3 sync --no-sign-request s3://noaa-goes16/ABI-L1b-RadF/2019/241/06/ /mnt/e/Erin29_6

# cd Erin27_0
# rm *C01*.nc *C02*.nc *C03*.nc *C04*.nc *C05*.nc *C06*.nc *C08*.nc *C09*.nc *C10*.nc *C12*.nc *C16*.nc
# rm *s20192390010*.nc *s20192390020*.nc *s20192390030*.nc *s20192390040*.nc *s20192390050*.nc

# cd ../Erin27_6
# rm *C01*.nc *C02*.nc *C03*.nc *C04*.nc *C05*.nc *C06*.nc *C08*.nc *C09*.nc *C10*.nc *C12*.nc *C16*.nc
# rm *s20192390610*.nc *s20192390620*.nc *s20192390630*.nc *s20192390640*.nc *s20192390650*.nc

# cd ../Erin28_0
# rm *C01*.nc *C02*.nc *C03*.nc *C04*.nc *C05*.nc *C06*.nc *C08*.nc *C09*.nc *C10*.nc *C12*.nc *C16*.nc
# rm *s20192400010*.nc *s20192400020*.nc *s20192400030*.nc *s20192400040*.nc *s20192400050*.nc

# cd ../Erin28_6
# rm *C01*.nc *C02*.nc *C03*.nc *C04*.nc *C05*.nc *C06*.nc *C08*.nc *C09*.nc *C10*.nc *C12*.nc *C16*.nc
# rm *s20192400610*.nc *s20192400620*.nc *s20192400630*.nc *s20192400640*.nc *s20192400650*.nc

# cd ../Erin29_0
# rm *C01*.nc *C02*.nc *C03*.nc *C04*.nc *C05*.nc *C06*.nc *C08*.nc *C09*.nc *C10*.nc *C12*.nc *C16*.nc
# rm *s20192410010*.nc *s20192410020*.nc *s20192410030*.nc *s20192410040*.nc *s20192410050*.nc

# cd ../Erin29_6
# rm *C01*.nc *C02*.nc *C03*.nc *C04*.nc *C05*.nc *C06*.nc *C08*.nc *C09*.nc *C10*.nc *C12*.nc *C16*.nc
# rm *s20192410610*.nc *s20192410620*.nc *s20192410630*.nc *s20192410640*.nc *s20192410650*.nc


# SECOND BASH SCRIPT

python3 main.py ABI-only-FDR /mnt/e/Erin27_0 312 -722
python3 main.py PREDICT-master /mnt/e/Erin27_0/*.npz
python3 main.py FNN-GOES-predict /mnt/e/Erin27_0/*PM*.npz M10_512_GOES_C13_10INPUT BAND_C13_model_channels

python3 main.py ABI-only-FDR /mnt/e/Erin27_6 309 -717
python3 main.py PREDICT-master /mnt/e/Erin27_6/*.npz
python3 main.py FNN-GOES-predict /mnt/e/Erin27_6/*PM*.npz M10_512_GOES_C13_10INPUT BAND_C13_model_channels

python3 main.py ABI-only-FDR /mnt/e/Erin28_0 317 -720
python3 main.py PREDICT-master /mnt/e/Erin28_0/*.npz
python3 main.py FNN-GOES-predict /mnt/e/Erin28_0/*PM*.npz M10_512_GOES_C13_10INPUT BAND_C13_model_channels

python3 main.py ABI-only-FDR /mnt/e/Erin28_6 322 -724
python3 main.py PREDICT-master /mnt/e/Erin28_6/*.npz
python3 main.py FNN-GOES-predict /mnt/e/Erin28_6/*PM*.npz M10_512_GOES_C13_10INPUT BAND_C13_model_channels

python3 main.py ABI-only-FDR /mnt/e/Erin29_0 348 -726
python3 main.py PREDICT-master /mnt/e/Erin29_0/*.npz
python3 main.py FNN-GOES-predict /mnt/e/Erin29_0/*PM*.npz M10_512_GOES_C13_10INPUT BAND_C13_model_channels

python3 main.py ABI-only-FDR /mnt/e/Erin29_6 356 -721
python3 main.py PREDICT-master /mnt/e/Erin29_6/*.npz
python3 main.py FNN-GOES-predict /mnt/e/Erin29_6/*PM*.npz M10_512_GOES_C13_10INPUT BAND_C13_model_channels

# SWIR Scaling
python3 NVI_to_SWIR_scaling.py /mnt/e/Erin27_0 Erin27_0_FD_REDUCEDv2ALL_PM.npz_MODEL_M10_512_GOES_C13_10INPUT.npz 00
python3 NVI_to_SWIR_scaling.py /mnt/e/Erin27_6 Erin27_6_FD_REDUCEDv2ALL_PM.npz_MODEL_M10_512_GOES_C13_10INPUT.npz 06
python3 NVI_to_SWIR_scaling.py /mnt/e/Erin28_0 Erin28_0_FD_REDUCEDv2ALL_PM.npz_MODEL_M10_512_GOES_C13_10INPUT.npz 00
python3 NVI_to_SWIR_scaling.py /mnt/e/Erin28_6 Erin28_6_FD_REDUCEDv2ALL_PM.npz_MODEL_M10_512_GOES_C13_10INPUT.npz 06
python3 NVI_to_SWIR_scaling.py /mnt/e/Erin29_0 Erin29_0_FD_REDUCEDv2ALL_PM.npz_MODEL_M10_512_GOES_C13_10INPUT.npz 00
python3 NVI_to_SWIR_scaling.py /mnt/e/Erin29_6 Erin29_6_FD_REDUCEDv2ALL_PM.npz_MODEL_M10_512_GOES_C13_10INPUT.npz 06


# Histogram Matching
python3 Histogram_Match.py /mnt/e/Erin27_0 ML_truth_DATA_C13_00_SWIR.npz Erin27_0_FD_REDUCEDv2ALL.npz 00
python3 Histogram_Match.py /mnt/e/Erin27_6 ML_truth_DATA_C13_06_SWIR.npz Erin27_6_FD_REDUCEDv2ALL.npz 06
python3 Histogram_Match.py /mnt/e/Erin28_0 ML_truth_DATA_C13_00_SWIR.npz Erin28_0_FD_REDUCEDv2ALL.npz 00
python3 Histogram_Match.py /mnt/e/Erin28_6 ML_truth_DATA_C13_06_SWIR.npz Erin28_6_FD_REDUCEDv2ALL.npz 06
python3 Histogram_Match.py /mnt/e/Erin29_0 ML_truth_DATA_C13_00_SWIR.npz Erin29_0_FD_REDUCEDv2ALL.npz 00
python3 Histogram_Match.py /mnt/e/Erin29_6 ML_truth_DATA_C13_06_SWIR.npz Erin29_6_FD_REDUCEDv2ALL.npz 06