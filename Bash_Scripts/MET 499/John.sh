
# aws s3 sync --no-sign-request s3://noaa-goes16/ABI-L1b-RadF/2023/251/06/ /mnt/e/HurricaneLee/2130


# cd HurricaneLee/2130
# rm *C01*.nc *C02*.nc *C03*.nc *C04*.nc *C05*.nc *C06*.nc *C08*.nc *C09*.nc *C10*.nc *C12*.nc *C16*.nc
# rm *s20232510610*.nc *s20232510620*.nc *s20232510630*.nc *s20232510640*.nc *s20232510650*.nc

# cd ../2200
# rm *C01*.nc *C02*.nc *C03*.nc *C04*.nc *C05*.nc *C06*.nc *C08*.nc *C09*.nc *C10*.nc *C12*.nc *C16*.nc
# rm *s20242662210*.nc *s20242662220*.nc *s20242662230*.nc *s20242662240*.nc *s20242662250*.nc

# python3 main.py ABI-only-FDR /mnt/e/HurricaneLee/2130 175 -530
# python3 main.py PREDICT-master /mnt/e/HurricaneLee/2130/*.npz
# python3 main.py FNN-GOES-predict /mnt/e/HurricaneLee/2130/*PM*.npz M10_512_GOES_C13_10INPUT BAND_C13_model_channels

# python3 main.py ABI-only-FDR /mnt/e/TSJohn/2200 138 -987                                                     #lat*10 lon*10
# python3 main.py PREDICT-master /mnt/e/TSJohn/2200/*.npz
# python3 main.py FNN-GOES-predict /mnt/e/TSJohn/2200/*PM*.npz M10_512_GOES_C13_10INPUT BAND_C13_model_channels

# python3 NVI_to_SWIR_scaling.py /mnt/e/TSJohn/2130 2130_FD_REDUCEDv2ALL_PM.npz_MODEL_M10_512_GOES_C13_10INPUT.npz 00
python3 NVI_to_SWIR_scaling.py /mnt/e/HurricaneLee/2130 2130_FD_REDUCEDv2ALL_PM.npz_MODEL_M10_512_GOES_C13_10INPUT.npz 06

python3 Histogram_Match.py /mnt/e/HurricaneLee/2130 ML_truth_DATA_C13_06_SWIR.npz 2130_FD_REDUCEDv2ALL.npz 06
# python3 Histogram_Match.py /mnt/e/TSJohn/2200 ML_truth_DATA_C13_06_SWIR.npz 2200_FD_REDUCEDv2ALL.npz 06