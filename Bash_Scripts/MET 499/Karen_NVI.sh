# ONE BASH SCRIPT 

# AWS Data Pull GOES (ABI naming convention: satellite/File/Year/JulianDate/Hour/) 27

# aws s3 sync --no-sign-request s3://noaa-goes16/ABI-L1b-RadF/2019/265/00/ /mnt/e/Karen22_0
# aws s3 sync --no-sign-request s3://noaa-goes16/ABI-L1b-RadF/2019/265/06/ /mnt/e/Karen22_6

# aws s3 sync --no-sign-request s3://noaa-goes16/ABI-L1b-RadF/2019/266/00/ /mnt/e/Karen23_0
# aws s3 sync --no-sign-request s3://noaa-goes16/ABI-L1b-RadF/2019/266/06/ /mnt/e/Karen23_6

# aws s3 sync --no-sign-request s3://noaa-goes16/ABI-L1b-RadF/2019/267/00/ /mnt/e/Karen24_0
# aws s3 sync --no-sign-request s3://noaa-goes16/ABI-L1b-RadF/2019/267/06/ /mnt/e/Karen24_6

# aws s3 sync --no-sign-request s3://noaa-goes16/ABI-L1b-RadF/2019/268/00/ /mnt/e/Karen25_0
# aws s3 sync --no-sign-request s3://noaa-goes16/ABI-L1b-RadF/2019/268/06/ /mnt/e/Karen25_6

# aws s3 sync --no-sign-request s3://noaa-goes16/ABI-L1b-RadF/2019/269/00/ /mnt/e/Karen26_0
# aws s3 sync --no-sign-request s3://noaa-goes16/ABI-L1b-RadF/2019/269/06/ /mnt/e/Karen26_6

# aws s3 sync --no-sign-request s3://noaa-goes16/ABI-L1b-RadF/2019/270/00/ /mnt/e/Karen27_0
# aws s3 sync --no-sign-request s3://noaa-goes16/ABI-L1b-RadF/2019/270/06/ /mnt/e/Karen27_6

# # REMOVE CHANNELS
# cd Karen22_0
# rm *C01*.nc *C02*.nc *C03*.nc *C04*.nc *C05*.nc *C06*.nc *C08*.nc *C09*.nc *C10*.nc *C12*.nc *C16*.nc
# rm *s20192650010*.nc *s20192650020*.nc *s20192650030*.nc *s20192650040*.nc *s20192650050*.nc

# cd ../Karen22_6
# rm *C01*.nc *C02*.nc *C03*.nc *C04*.nc *C05*.nc *C06*.nc *C08*.nc *C09*.nc *C10*.nc *C12*.nc *C16*.nc
# rm *s20192650610*.nc *s20192650620*.nc *s20192650630*.nc *s20192650640*.nc *s20192650650*.nc

# cd ../Karen23_0
# rm *C01*.nc *C02*.nc *C03*.nc *C04*.nc *C05*.nc *C06*.nc *C08*.nc *C09*.nc *C10*.nc *C12*.nc *C16*.nc
# rm *s20192660010*.nc *s20192660020*.nc *s20192660030*.nc *s20192660040*.nc *s20192660050*.nc

# cd ../Karen23_6
# rm *C01*.nc *C02*.nc *C03*.nc *C04*.nc *C05*.nc *C06*.nc *C08*.nc *C09*.nc *C10*.nc *C12*.nc *C16*.nc
# rm *s20192660610*.nc *s20192660620*.nc *s20192660630*.nc *s20192660640*.nc *s20192660650*.nc

# cd ../Karen24_0
# rm *C01*.nc *C02*.nc *C03*.nc *C04*.nc *C05*.nc *C06*.nc *C08*.nc *C09*.nc *C10*.nc *C12*.nc *C16*.nc
# rm *s20192670010*.nc *s20192670020*.nc *s20192670030*.nc *s20192670040*.nc *s20192670050*.nc

# cd ../Karen24_6
# rm *C01*.nc *C02*.nc *C03*.nc *C04*.nc *C05*.nc *C06*.nc *C08*.nc *C09*.nc *C10*.nc *C12*.nc *C16*.nc
# rm *s20192670610*.nc *s20192670620*.nc *s20192670630*.nc *s20192670640*.nc *s20192670650*.nc

# cd ../Karen25_0
# rm *C01*.nc *C02*.nc *C03*.nc *C04*.nc *C05*.nc *C06*.nc *C08*.nc *C09*.nc *C10*.nc *C12*.nc *C16*.nc
# rm *s20192680010*.nc *s20192680020*.nc *s20192680030*.nc *s20192680040*.nc *s20192680050*.nc

# cd ../Karen25_6
# rm *C01*.nc *C02*.nc *C03*.nc *C04*.nc *C05*.nc *C06*.nc *C08*.nc *C09*.nc *C10*.nc *C12*.nc *C16*.nc
# rm *s20192680610*.nc *s20192680620*.nc *s20192680630*.nc *s20192680640*.nc *s20192680650*.nc

# cd ../Karen26_0
# rm *C01*.nc *C02*.nc *C03*.nc *C04*.nc *C05*.nc *C06*.nc *C08*.nc *C09*.nc *C10*.nc *C12*.nc *C16*.nc
# rm *s20192690010*.nc *s20192690020*.nc *s20192690030*.nc *s20192690040*.nc *s20192690050*.nc

# cd ../Karen26_6
# rm *C01*.nc *C02*.nc *C03*.nc *C04*.nc *C05*.nc *C06*.nc *C08*.nc *C09*.nc *C10*.nc *C12*.nc *C16*.nc
# rm *s20192690610*.nc *s20192690620*.nc *s20192690630*.nc *s20192690640*.nc *s20192690650*.nc

# cd ../Karen27_0
# rm *C01*.nc *C02*.nc *C03*.nc *C04*.nc *C05*.nc *C06*.nc *C08*.nc *C09*.nc *C10*.nc *C12*.nc *C16*.nc
# rm *s20192700010*.nc *s20192700020*.nc *s20192700030*.nc *s20192700040*.nc *s20192700050*.nc

# cd ../Karen27_6
# rm *C01*.nc *C02*.nc *C03*.nc *C04*.nc *C05*.nc *C06*.nc *C08*.nc *C09*.nc *C10*.nc *C12*.nc *C16*.nc
# rm *s20192700610*.nc *s20192700620*.nc *s20192700630*.nc *s20192700640*.nc *s20192700650*.nc

# SECOND BASH SCRIPT

# python3 main.py ABI-only-FDR /mnt/e/Karen22_0 115 -588
# python3 main.py PREDICT-master /mnt/e/Karen22_0/*.npz
# python3 main.py FNN-GOES-predict /mnt/e/Karen22_0/*PM*.npz M10_512_GOES_C13_10INPUT BAND_C13_model_channels

python3 main.py ABI-only-FDR /mnt/e/Karen22_6 118 -599
python3 main.py PREDICT-master /mnt/e/Karen22_6/*.npz
python3 main.py FNN-GOES-predict /mnt/e/Karen22_6/*PM*.npz M10_512_GOES_C13_10INPUT BAND_C13_model_channels

# python3 main.py ABI-only-FDR /mnt/e/Karen23_0 130 -632
# python3 main.py PREDICT-master /mnt/e/Karen23_0/*.npz
# python3 main.py FNN-GOES-predict /mnt/e/Karen23_0/*PM*.npz M10_512_GOES_C13_10INPUT BAND_C13_model_channels

# python3 main.py ABI-only-FDR /mnt/e/Karen23_6 137 -641
# python3 main.py PREDICT-master /mnt/e/Karen23_6/*.npz
# python3 main.py FNN-GOES-predict /mnt/e/Karen23_6/*PM*.npz M10_512_GOES_C13_10INPUT BAND_C13_model_channels

# python3 main.py ABI-only-FDR /mnt/e/Karen24_0 157 -657
# python3 main.py PREDICT-master /mnt/e/Karen24_0/*.npz
# python3 main.py FNN-GOES-predict /mnt/e/Karen24_0/*PM*.npz M10_512_GOES_C13_10INPUT BAND_C13_model_channels

# python3 main.py ABI-only-FDR /mnt/e/Karen24_6 164 -658
# python3 main.py PREDICT-master /mnt/e/Karen24_6/*.npz
# python3 main.py FNN-GOES-predict /mnt/e/Karen24_6/*PM*.npz M10_512_GOES_C13_10INPUT BAND_C13_model_channels

# python3 main.py ABI-only-FDR /mnt/e/Karen25_0 185 -652
# python3 main.py PREDICT-master /mnt/e/Karen25_0/*.npz
# python3 main.py FNN-GOES-predict /mnt/e/Karen25_0/*PM*.npz M10_512_GOES_C13_10INPUT BAND_C13_model_channels

# python3 main.py ABI-only-FDR /mnt/e/Karen25_6 197 -650
# python3 main.py PREDICT-master /mnt/e/Karen25_6/*.npz
# python3 main.py FNN-GOES-predict /mnt/e/Karen25_6/*PM*.npz M10_512_GOES_C13_10INPUT BAND_C13_model_channels

# python3 main.py ABI-only-FDR /mnt/e/Karen26_0 236 -642
# python3 main.py PREDICT-master /mnt/e/Karen26_0/*.npz
# python3 main.py FNN-GOES-predict /mnt/e/Karen26_0/*PM*.npz M10_512_GOES_C13_10INPUT BAND_C13_model_channels

# python3 main.py ABI-only-FDR /mnt/e/Karen26_6 248 -640
# python3 main.py PREDICT-master /mnt/e/Karen26_6/*.npz
# python3 main.py FNN-GOES-predict /mnt/e/Karen26_6/*PM*.npz M10_512_GOES_C13_10INPUT BAND_C13_model_channels

# python3 main.py ABI-only-FDR /mnt/e/Karen27_0 277 -623
# python3 main.py PREDICT-master /mnt/e/Karen27_0/*.npz
# python3 main.py FNN-GOES-predict /mnt/e/Karen27_0/*PM*.npz M10_512_GOES_C13_10INPUT BAND_C13_model_channels

# python3 main.py ABI-only-FDR /mnt/e/Karen27_6 283 -612
# python3 main.py PREDICT-master /mnt/e/Karen27_6/*.npz
# python3 main.py FNN-GOES-predict /mnt/e/Karen27_6/*PM*.npz M10_512_GOES_C13_10INPUT BAND_C13_model_channels

# SWIR Scaling
# python3 NVI_to_SWIR_scaling.py /mnt/e/Karen22_0 Karen22_0_FD_REDUCEDv2ALL_PM.npz_MODEL_M10_512_GOES_C13_10INPUT.npz 00
python3 NVI_to_SWIR_scaling.py /mnt/e/Karen22_6 Karen22_6_FD_REDUCEDv2ALL_PM.npz_MODEL_M10_512_GOES_C13_10INPUT.npz 06

# python3 NVI_to_SWIR_scaling.py /mnt/e/Karen23_0 Karen23_0_FD_REDUCEDv2ALL_PM.npz_MODEL_M10_512_GOES_C13_10INPUT.npz 00
# python3 NVI_to_SWIR_scaling.py /mnt/e/Karen23_6 Karen23_6_FD_REDUCEDv2ALL_PM.npz_MODEL_M10_512_GOES_C13_10INPUT.npz 06

# python3 NVI_to_SWIR_scaling.py /mnt/e/Karen24_0 Karen24_0_FD_REDUCEDv2ALL_PM.npz_MODEL_M10_512_GOES_C13_10INPUT.npz 00
# python3 NVI_to_SWIR_scaling.py /mnt/e/Karen24_6 Karen24_6_FD_REDUCEDv2ALL_PM.npz_MODEL_M10_512_GOES_C13_10INPUT.npz 06

# python3 NVI_to_SWIR_scaling.py /mnt/e/Karen25_0 Karen25_0_FD_REDUCEDv2ALL_PM.npz_MODEL_M10_512_GOES_C13_10INPUT.npz 00
# python3 NVI_to_SWIR_scaling.py /mnt/e/Karen25_6 Karen25_6_FD_REDUCEDv2ALL_PM.npz_MODEL_M10_512_GOES_C13_10INPUT.npz 06

# python3 NVI_to_SWIR_scaling.py /mnt/e/Karen26_0 Karen26_0_FD_REDUCEDv2ALL_PM.npz_MODEL_M10_512_GOES_C13_10INPUT.npz 00
# python3 NVI_to_SWIR_scaling.py /mnt/e/Karen26_6 Karen26_6_FD_REDUCEDv2ALL_PM.npz_MODEL_M10_512_GOES_C13_10INPUT.npz 06

# python3 NVI_to_SWIR_scaling.py /mnt/e/Karen27_0 Karen27_0_FD_REDUCEDv2ALL_PM.npz_MODEL_M10_512_GOES_C13_10INPUT.npz 00
# python3 NVI_to_SWIR_scaling.py /mnt/e/Karen27_6 Karen27_6_FD_REDUCEDv2ALL_PM.npz_MODEL_M10_512_GOES_C13_10INPUT.npz 06

# Histogram Matching
# python3 Histogram_Match.py /mnt/e/Karen22_0 ML_truth_DATA_C13_00_SWIR.npz Karen22_0_FD_REDUCEDv2ALL.npz 00
python3 Histogram_Match.py /mnt/e/Karen22_6 ML_truth_DATA_C13_06_SWIR.npz Karen22_6_FD_REDUCEDv2ALL.npz 06

# python3 Histogram_Match.py /mnt/e/Karen23_0 ML_truth_DATA_C13_00_SWIR.npz Karen23_0_FD_REDUCEDv2ALL.npz 00
# python3 Histogram_Match.py /mnt/e/Karen23_6 ML_truth_DATA_C13_06_SWIR.npz Karen23_6_FD_REDUCEDv2ALL.npz 06

# python3 Histogram_Match.py /mnt/e/Karen24_0 ML_truth_DATA_C13_00_SWIR.npz Karen24_0_FD_REDUCEDv2ALL.npz 00
# python3 Histogram_Match.py /mnt/e/Karen24_6 ML_truth_DATA_C13_06_SWIR.npz Karen24_6_FD_REDUCEDv2ALL.npz 06

# python3 Histogram_Match.py /mnt/e/Karen25_0 ML_truth_DATA_C13_00_SWIR.npz Karen25_0_FD_REDUCEDv2ALL.npz 00
# python3 Histogram_Match.py /mnt/e/Karen25_6 ML_truth_DATA_C13_06_SWIR.npz Karen25_6_FD_REDUCEDv2ALL.npz 06

# python3 Histogram_Match.py /mnt/e/Karen26_0 ML_truth_DATA_C13_00_SWIR.npz Karen26_0_FD_REDUCEDv2ALL.npz 00
# python3 Histogram_Match.py /mnt/e/Karen26_6 ML_truth_DATA_C13_06_SWIR.npz Karen26_6_FD_REDUCEDv2ALL.npz 06

# python3 Histogram_Match.py /mnt/e/Karen27_0 ML_truth_DATA_C13_00_SWIR.npz Karen27_0_FD_REDUCEDv2ALL.npz 00
# python3 Histogram_Match.py /mnt/e/Karen27_6 ML_truth_DATA_C13_06_SWIR.npz Karen27_6_FD_REDUCEDv2ALL.npz 06