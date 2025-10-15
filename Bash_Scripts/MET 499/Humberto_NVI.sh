# ONE BASH SCRIPT

# AWS Data Pull GOES (ABI naming convention: satellite/File/Year/JulianDate/Hour/) 14-19
# aws s3 sync --no-sign-request s3://noaa-goes16/ABI-L1b-RadF/2019/257/00/ /mnt/e/Humberto14_0
# aws s3 sync --no-sign-request s3://noaa-goes16/ABI-L1b-RadF/2019/257/06/ /mnt/e/Humberto14_6

# aws s3 sync --no-sign-request s3://noaa-goes16/ABI-L1b-RadF/2019/258/00/ /mnt/e/Humberto15_0
# aws s3 sync --no-sign-request s3://noaa-goes16/ABI-L1b-RadF/2019/258/06/ /mnt/e/Humberto15_6

# aws s3 sync --no-sign-request s3://noaa-goes16/ABI-L1b-RadF/2019/259/00/ /mnt/e/Humberto16_0
# aws s3 sync --no-sign-request s3://noaa-goes16/ABI-L1b-RadF/2019/259/06/ /mnt/e/Humberto16_6

# aws s3 sync --no-sign-request s3://noaa-goes16/ABI-L1b-RadF/2019/260/00/ /mnt/e/Humberto17_0
# aws s3 sync --no-sign-request s3://noaa-goes16/ABI-L1b-RadF/2019/260/06/ /mnt/e/Humberto17_6

# aws s3 sync --no-sign-request s3://noaa-goes16/ABI-L1b-RadF/2019/261/00/ /mnt/e/Humberto18_0
# aws s3 sync --no-sign-request s3://noaa-goes16/ABI-L1b-RadF/2019/261/06/ /mnt/e/Humberto18_6

# aws s3 sync --no-sign-request s3://noaa-goes16/ABI-L1b-RadF/2019/262/00/ /mnt/e/Humberto19_0
# aws s3 sync --no-sign-request s3://noaa-goes16/ABI-L1b-RadF/2019/262/06/ /mnt/e/Humberto19_6

# cd Humberto14_0
# rm *C01*.nc *C02*.nc *C03*.nc *C04*.nc *C05*.nc *C06*.nc *C08*.nc *C09*.nc *C10*.nc *C12*.nc *C16*.nc
# rm *s20192570010*.nc *s20192570020*.nc *s20192570030*.nc *s20192570040*.nc *s20192570050*.nc

# cd ../Humberto14_6
# rm *C01*.nc *C02*.nc *C03*.nc *C04*.nc *C05*.nc *C06*.nc *C08*.nc *C09*.nc *C10*.nc *C12*.nc *C16*.nc
# rm *s20192570610*.nc *s20192570620*.nc *s20192570630*.nc *s20192570640*.nc *s20192570650*.nc

# cd ../Humberto15_0
# rm *C01*.nc *C02*.nc *C03*.nc *C04*.nc *C05*.nc *C06*.nc *C08*.nc *C09*.nc *C10*.nc *C12*.nc *C16*.nc
# rm *s20192580010*.nc *s20192580020*.nc *s20192580030*.nc *s20192580040*.nc *s20192580050*.nc

# cd ../Humberto15_6
# rm *C01*.nc *C02*.nc *C03*.nc *C04*.nc *C05*.nc *C06*.nc *C08*.nc *C09*.nc *C10*.nc *C12*.nc *C16*.nc
# rm *s20192580610*.nc *s20192580620*.nc *s20192580630*.nc *s20192580640*.nc *s20192580650*.nc

# cd ../Humberto16_0
# rm *C01*.nc *C02*.nc *C03*.nc *C04*.nc *C05*.nc *C06*.nc *C08*.nc *C09*.nc *C10*.nc *C12*.nc *C16*.nc
# rm *s20192590010*.nc *s20192590020*.nc *s20192590030*.nc *s20192590040*.nc *s20192590050*.nc

# cd ../Humberto16_6
# rm *C01*.nc *C02*.nc *C03*.nc *C04*.nc *C05*.nc *C06*.nc *C08*.nc *C09*.nc *C10*.nc *C12*.nc *C16*.nc
# rm *s20192590610*.nc *s20192590620*.nc *s20192590630*.nc *s20192590640*.nc *s20192590650*.nc

# cd ../Humberto17_0
# rm *C01*.nc *C02*.nc *C03*.nc *C04*.nc *C05*.nc *C06*.nc *C08*.nc *C09*.nc *C10*.nc *C12*.nc *C16*.nc
# rm *s20192600010*.nc *s20192600020*.nc *s20192600030*.nc *s20192600040*.nc *s20192600050*.nc

# cd ../Humberto17_6
# rm *C01*.nc *C02*.nc *C03*.nc *C04*.nc *C05*.nc *C06*.nc *C08*.nc *C09*.nc *C10*.nc *C12*.nc *C16*.nc
# rm *s20192600610*.nc *s20192600620*.nc *s20192600630*.nc *s20192600640*.nc *s20192600650*.nc

# cd ../Humberto18_0
# rm *C01*.nc *C02*.nc *C03*.nc *C04*.nc *C05*.nc *C06*.nc *C08*.nc *C09*.nc *C10*.nc *C12*.nc *C16*.nc
# rm *s20192610010*.nc *s20192610020*.nc *s20192610030*.nc *s20192610040*.nc *s20192610050*.nc

# cd ../Humberto18_6
# rm *C01*.nc *C02*.nc *C03*.nc *C04*.nc *C05*.nc *C06*.nc *C08*.nc *C09*.nc *C10*.nc *C12*.nc *C16*.nc
# rm *s20192610610*.nc *s20192610620*.nc *s20192610630*.nc *s20192610640*.nc *s20192610650*.nc

# cd ../Humberto19_0
# rm *C01*.nc *C02*.nc *C03*.nc *C04*.nc *C05*.nc *C06*.nc *C08*.nc *C09*.nc *C10*.nc *C12*.nc *C16*.nc
# rm *s20192620010*.nc *s20192620020*.nc *s20192620030*.nc *s20192620040*.nc *s20192620050*.nc

# cd ../Humberto19_6
# rm *C01*.nc *C02*.nc *C03*.nc *C04*.nc *C05*.nc *C06*.nc *C08*.nc *C09*.nc *C10*.nc *C12*.nc *C16*.nc
# rm *s20192620610*.nc *s20192620620*.nc *s20192620630*.nc *s20192620640*.nc *s20192620650*.nc
# SECOND BASH SCRIPT

# python3 main.py ABI-only-FDR /mnt/e/Humberto14_0 256 -752
# python3 main.py PREDICT-master /mnt/e/Humberto14_0/*.npz
# python3 main.py FNN-GOES-predict /mnt/e/Humberto14_0/*PM*.npz M10_512_GOES_C13_10INPUT BAND_C13_model_channels

python3 main.py ABI-only-FDR /mnt/e/Humberto14_6 260 -759
python3 main.py PREDICT-master /mnt/e/Humberto14_6/*.npz
python3 main.py FNN-GOES-predict /mnt/e/Humberto14_6/*PM*.npz M10_512_GOES_C13_10INPUT BAND_C13_model_channels

# python3 main.py ABI-only-FDR /mnt/e/Humberto15_0 275 -773
# python3 main.py PREDICT-master /mnt/e/Humberto15_0/*.npz
# python3 main.py FNN-GOES-predict /mnt/e/Humberto15_0/*PM*.npz M10_512_GOES_C13_10INPUT BAND_C13_model_channels

python3 main.py ABI-only-FDR /mnt/e/Humberto15_6 280 -776
python3 main.py PREDICT-master /mnt/e/Humberto15_6/*.npz
python3 main.py FNN-GOES-predict /mnt/e/Humberto15_6/*PM*.npz M10_512_GOES_C13_10INPUT BAND_C13_model_channels

# python3 main.py ABI-only-FDR /mnt/e/Humberto16_0 292 -778
# python3 main.py PREDICT-master /mnt/e/Humberto16_0/*.npz
# python3 main.py FNN-GOES-predict /mnt/e/Humberto16_0/*PM*.npz M10_512_GOES_C13_10INPUT BAND_C13_model_channels

python3 main.py ABI-only-FDR /mnt/e/Humberto16_6 295 -773
python3 main.py PREDICT-master /mnt/e/Humberto16_6/*.npz
python3 main.py FNN-GOES-predict /mnt/e/Humberto16_6/*PM*.npz M10_512_GOES_C13_10INPUT BAND_C13_model_channels

# python3 main.py ABI-only-FDR /mnt/e/Humberto17_0 303 -754
# python3 main.py PREDICT-master /mnt/e/Humberto17_0/*.npz
# python3 main.py FNN-GOES-predict /mnt/e/Humberto17_0/*PM*.npz M10_512_GOES_C13_10INPUT BAND_C13_model_channels

python3 main.py ABI-only-FDR /mnt/e/Humberto17_6 305 -747
python3 main.py PREDICT-master /mnt/e/Humberto17_6/*.npz
python3 main.py FNN-GOES-predict /mnt/e/Humberto17_6/*PM*.npz M10_512_GOES_C13_10INPUT BAND_C13_model_channels

# python3 main.py ABI-only-FDR /mnt/e/Humberto18_0 312 -716
# python3 main.py PREDICT-master /mnt/e/Humberto18_0/*.npz
# python3 main.py FNN-GOES-predict /mnt/e/Humberto18_0/*PM*.npz M10_512_GOES_C13_10INPUT BAND_C13_model_channels

python3 main.py ABI-only-FDR /mnt/e/Humberto18_6 315 -703
python3 main.py PREDICT-master /mnt/e/Humberto18_6/*.npz
python3 main.py FNN-GOES-predict /mnt/e/Humberto18_6/*PM*.npz M10_512_GOES_C13_10INPUT BAND_C13_model_channels

# python3 main.py ABI-only-FDR /mnt/e/Humberto19_0 332 -650
# python3 main.py PREDICT-master /mnt/e/Humberto19_0/*.npz
# python3 main.py FNN-GOES-predict /mnt/e/Humberto19_0/*PM*.npz M10_512_GOES_C13_10INPUT BAND_C13_model_channels

python3 main.py ABI-only-FDR /mnt/e/Humberto19_6 338 -640
python3 main.py PREDICT-master /mnt/e/Humberto19_6/*.npz
python3 main.py FNN-GOES-predict /mnt/e/Humberto19_6/*PM*.npz M10_512_GOES_C13_10INPUT BAND_C13_model_channels

# SWIR Scaling
python3 NVI_to_SWIR_scaling.py /mnt/e/Humberto14_0 Humberto14_0_FD_REDUCEDv2ALL_PM.npz_MODEL_M10_512_GOES_C13_10INPUT.npz 00
python3 NVI_to_SWIR_scaling.py /mnt/e/Humberto14_6 Humberto14_6_FD_REDUCEDv2ALL_PM.npz_MODEL_M10_512_GOES_C13_10INPUT.npz 06

python3 NVI_to_SWIR_scaling.py /mnt/e/Humberto15_0 Humberto15_0_FD_REDUCEDv2ALL_PM.npz_MODEL_M10_512_GOES_C13_10INPUT.npz 00
python3 NVI_to_SWIR_scaling.py /mnt/e/Humberto15_6 Humberto15_6_FD_REDUCEDv2ALL_PM.npz_MODEL_M10_512_GOES_C13_10INPUT.npz 06

python3 NVI_to_SWIR_scaling.py /mnt/e/Humberto16_0 Humberto16_0_FD_REDUCEDv2ALL_PM.npz_MODEL_M10_512_GOES_C13_10INPUT.npz 00
python3 NVI_to_SWIR_scaling.py /mnt/e/Humberto16_6 Humberto16_6_FD_REDUCEDv2ALL_PM.npz_MODEL_M10_512_GOES_C13_10INPUT.npz 06

python3 NVI_to_SWIR_scaling.py /mnt/e/Humberto17_0 Humberto17_0_FD_REDUCEDv2ALL_PM.npz_MODEL_M10_512_GOES_C13_10INPUT.npz 00
python3 NVI_to_SWIR_scaling.py /mnt/e/Humberto17_6 Humberto17_6_FD_REDUCEDv2ALL_PM.npz_MODEL_M10_512_GOES_C13_10INPUT.npz 06

python3 NVI_to_SWIR_scaling.py /mnt/e/Humberto18_0 Humberto18_0_FD_REDUCEDv2ALL_PM.npz_MODEL_M10_512_GOES_C13_10INPUT.npz 00
python3 NVI_to_SWIR_scaling.py /mnt/e/Humberto18_6 Humberto18_6_FD_REDUCEDv2ALL_PM.npz_MODEL_M10_512_GOES_C13_10INPUT.npz 06

python3 NVI_to_SWIR_scaling.py /mnt/e/Humberto19_0 Humberto19_0_FD_REDUCEDv2ALL_PM.npz_MODEL_M10_512_GOES_C13_10INPUT.npz 00
python3 NVI_to_SWIR_scaling.py /mnt/e/Humberto19_6 Humberto19_6_FD_REDUCEDv2ALL_PM.npz_MODEL_M10_512_GOES_C13_10INPUT.npz 06

# Histogram Matching
python3 Histogram_Match.py /mnt/e/Humberto14_0 ML_truth_DATA_C13_00_SWIR.npz Humberto14_0_FD_REDUCEDv2ALL.npz 00
python3 Histogram_Match.py /mnt/e/Humberto14_6 ML_truth_DATA_C13_06_SWIR.npz Humberto14_6_FD_REDUCEDv2ALL.npz 06

python3 Histogram_Match.py /mnt/e/Humberto15_0 ML_truth_DATA_C13_00_SWIR.npz Humberto15_0_FD_REDUCEDv2ALL.npz 00
python3 Histogram_Match.py /mnt/e/Humberto15_6 ML_truth_DATA_C13_06_SWIR.npz Humberto15_6_FD_REDUCEDv2ALL.npz 06

python3 Histogram_Match.py /mnt/e/Humberto16_0 ML_truth_DATA_C13_00_SWIR.npz Humberto16_0_FD_REDUCEDv2ALL.npz 00
python3 Histogram_Match.py /mnt/e/Humberto16_6 ML_truth_DATA_C13_06_SWIR.npz Humberto16_6_FD_REDUCEDv2ALL.npz 06

python3 Histogram_Match.py /mnt/e/Humberto17_0 ML_truth_DATA_C13_00_SWIR.npz Humberto17_0_FD_REDUCEDv2ALL.npz 00
python3 Histogram_Match.py /mnt/e/Humberto17_6 ML_truth_DATA_C13_06_SWIR.npz Humberto17_6_FD_REDUCEDv2ALL.npz 06

python3 Histogram_Match.py /mnt/e/Humberto18_0 ML_truth_DATA_C13_00_SWIR.npz Humberto18_0_FD_REDUCEDv2ALL.npz 00
python3 Histogram_Match.py /mnt/e/Humberto18_6 ML_truth_DATA_C13_06_SWIR.npz Humberto18_6_FD_REDUCEDv2ALL.npz 06

python3 Histogram_Match.py /mnt/e/Humberto19_0 ML_truth_DATA_C13_00_SWIR.npz Humberto19_0_FD_REDUCEDv2ALL.npz 00
python3 Histogram_Match.py /mnt/e/Humberto19_6 ML_truth_DATA_C13_06_SWIR.npz Humberto19_6_FD_REDUCEDv2ALL.npz 06