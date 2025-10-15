# ONE BASH SCRIPT


# AWS Data Pull GOES (ABI naming convention: satellite/File/Year/JulianDate/Hour/)
# aws s3 sync --no-sign-request s3://noaa-goes16/ABI-L1b-RadF/2019/233/00/ /mnt/e/Chantal21_0 
# aws s3 sync --no-sign-request s3://noaa-goes16/ABI-L1b-RadF/2019/233/06/ /mnt/e/Chantal21_6
# aws s3 sync --no-sign-request s3://noaa-goes16/ABI-L1b-RadF/2019/234/00/ /mnt/e/Chantal22_0  
# aws s3 sync --no-sign-request s3://noaa-goes16/ABI-L1b-RadF/2019/234/06/ /mnt/e/Chantal22_6
# aws s3 sync --no-sign-request s3://noaa-goes16/ABI-L1b-RadF/2019/235/00/ /mnt/e/Chantal23_0  
# aws s3 sync --no-sign-request s3://noaa-goes16/ABI-L1b-RadF/2019/235/06/ /mnt/e/Chantal23_6


# cd Chantal21_0
# rm *C01*.nc *C02*.nc *C03*.nc *C04*.nc *C05*.nc *C06*.nc *C08*.nc *C09*.nc *C10*.nc *C12*.nc *C16*.nc
# rm *s20192330010*.nc *s20192330020*.nc *s20192330030*.nc *s20192330040*.nc *s20192330050*.nc          #Cannot determine these lines dt download inop

# cd ../Chantal21_6
# rm *C01*.nc *C02*.nc *C03*.nc *C04*.nc *C05*.nc *C06*.nc *C08*.nc *C09*.nc *C10*.nc *C12*.nc *C16*.nc
# rm *s20192330610*.nc *s20192330620*.nc *s20192330630*.nc *s20192330640*.nc *s20192330650*.nc

# cd ../Chantal22_0
# rm *C01*.nc *C02*.nc *C03*.nc *C04*.nc *C05*.nc *C06*.nc *C08*.nc *C09*.nc *C10*.nc *C12*.nc *C16*.nc
# rm *s20192340010*.nc *s20192340020*.nc *s20192340030*.nc *s20192340040*.nc *s20192340050*.nc

# cd ../Chantal22_6
# rm *C01*.nc *C02*.nc *C03*.nc *C04*.nc *C05*.nc *C06*.nc *C08*.nc *C09*.nc *C10*.nc *C12*.nc *C16*.nc
# rm *s20192340610*.nc *s20192340620*.nc *s20192340630*.nc *s20192340640*.nc *s20192340650*.nc

# cd ../Chantal23_0
# rm *C01*.nc *C02*.nc *C03*.nc *C04*.nc *C05*.nc *C06*.nc *C08*.nc *C09*.nc *C10*.nc *C12*.nc *C16*.nc
# rm *s20192350010*.nc *s20192350020*.nc *s20192350030*.nc *s20192350040*.nc *s20192350050*.nc

# cd ../Chantal23_6
# rm *C01*.nc *C02*.nc *C03*.nc *C04*.nc *C05*.nc *C06*.nc *C08*.nc *C09*.nc *C10*.nc *C12*.nc *C16*.nc
# rm *s20192350610*.nc *s20192350620*.nc *s20192350630*.nc *s20192350640*.nc *s20192350650*.nc

# SECOND BASH SCRIPT


# python3 main.py ABI-only-FDR /mnt/e/Chantal21_0 403 -571
# python3 main.py PREDICT-master /mnt/e/Chantal21_0/*.npz
# python3 main.py FNN-GOES-predict /mnt/e/Chantal21_0/*PM*.npz M10_512_GOES_C13_10INPUT BAND_C13_model_channels

# python3 main.py ABI-only-FDR /mnt/e/Chantal21_6 403 -548                                                      #lat*10 lon*10
# python3 main.py PREDICT-master /mnt/e/Chantal21_6/*.npz
# python3 main.py FNN-GOES-predict /mnt/e/Chantal21_6/*PM*.npz M10_512_GOES_C13_10INPUT BAND_C13_model_channels

# python3 main.py ABI-only-FDR /mnt/e/Chantal22_0 396 -483
# python3 main.py PREDICT-master /mnt/e/Chantal22_0/*.npz
# python3 main.py FNN-GOES-predict /mnt/e/Chantal22_0/*PM*.npz M10_512_GOES_C13_10INPUT BAND_C13_model_channels

# python3 main.py ABI-only-FDR /mnt/e/Chantal22_6 393 -463
# python3 main.py PREDICT-master /mnt/e/Chantal22_6/*.npz
# python3 main.py FNN-GOES-predict /mnt/e/Chantal22_6/*PM*.npz M10_512_GOES_C13_10INPUT BAND_C13_model_channels

# python3 main.py ABI-only-FDR /mnt/e/Chantal23_0 38 -418
# python3 main.py PREDICT-master /mnt/e/Chantal23_0/*.npz
# python3 main.py FNN-GOES-predict /mnt/e/Chantal23_0/*PM*.npz M10_512_GOES_C13_10INPUT BAND_C13_model_channels

# python3 main.py ABI-only-FDR /mnt/e/Chantal23_6 375 -412
# python3 main.py PREDICT-master /mnt/e/Chantal23_6/*.npz
# python3 main.py FNN-GOES-predict /mnt/e/Chantal23_6/*PM*.npz M10_512_GOES_C13_10INPUT BAND_C13_model_channels


# SWIR Scaling
python3 NVI_to_SWIR_scaling.py /mnt/e/Chantal21_0 Chantal21_0_FD_REDUCEDv2ALL_PM.npz_MODEL_M10_512_GOES_C13_10INPUT.npz 00
python3 NVI_to_SWIR_scaling.py /mnt/e/Chantal21_6 Chantal21_6_FD_REDUCEDv2ALL_PM.npz_MODEL_M10_512_GOES_C13_10INPUT.npz 06
python3 NVI_to_SWIR_scaling.py /mnt/e/Chantal22_0 Chantal22_0_FD_REDUCEDv2ALL_PM.npz_MODEL_M10_512_GOES_C13_10INPUT.npz 00
python3 NVI_to_SWIR_scaling.py /mnt/e/Chantal22_6 Chantal22_6_FD_REDUCEDv2ALL_PM.npz_MODEL_M10_512_GOES_C13_10INPUT.npz 06
python3 NVI_to_SWIR_scaling.py /mnt/e/Chantal23_0 Chantal23_0_FD_REDUCEDv2ALL_PM.npz_MODEL_M10_512_GOES_C13_10INPUT.npz 00
python3 NVI_to_SWIR_scaling.py /mnt/e/Chantal23_6 Chantal23_6_FD_REDUCEDv2ALL_PM.npz_MODEL_M10_512_GOES_C13_10INPUT.npz 06

# Histogram Matching
python3 Histogram_Match.py /mnt/e/Chantal21_0 ML_truth_DATA_C13_00_SWIR.npz Chantal21_0_FD_REDUCEDv2ALL.npz 00
python3 Histogram_Match.py /mnt/e/Chantal21_6 ML_truth_DATA_C13_06_SWIR.npz Chantal21_6_FD_REDUCEDv2ALL.npz 06
python3 Histogram_Match.py /mnt/e/Chantal22_0 ML_truth_DATA_C13_00_SWIR.npz Chantal22_0_FD_REDUCEDv2ALL.npz 00
python3 Histogram_Match.py /mnt/e/Chantal22_6 ML_truth_DATA_C13_06_SWIR.npz Chantal22_6_FD_REDUCEDv2ALL.npz 06
python3 Histogram_Match.py /mnt/e/Chantal23_0 ML_truth_DATA_C13_00_SWIR.npz Chantal23_0_FD_REDUCEDv2ALL.npz 00
python3 Histogram_Match.py /mnt/e/Chantal23_6 ML_truth_DATA_C13_06_SWIR.npz Chantal23_6_FD_REDUCEDv2ALL.npz 06
