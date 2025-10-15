# # ONE BASH SCRIPT

# # AWS Data Pull GOES (ABI naming convention: satellite/File/Year/JulianDate/Hour/)
# aws s3 sync --no-sign-request s3://noaa-goes16/ABI-L1b-RadF/2019/247/00/ /mnt/e/Gabrielle4_0
# aws s3 sync --no-sign-request s3://noaa-goes16/ABI-L1b-RadF/2019/247/06/ /mnt/e/Gabrielle4_6

# aws s3 sync --no-sign-request s3://noaa-goes16/ABI-L1b-RadF/2019/248/00/ /mnt/e/Gabrielle5_0
# aws s3 sync --no-sign-request s3://noaa-goes16/ABI-L1b-RadF/2019/248/06/ /mnt/e/Gabrielle5_6

# aws s3 sync --no-sign-request s3://noaa-goes16/ABI-L1b-RadF/2019/249/00/ /mnt/e/Gabrielle6_0
# aws s3 sync --no-sign-request s3://noaa-goes16/ABI-L1b-RadF/2019/249/06/ /mnt/e/Gabrielle6_6

# aws s3 sync --no-sign-request s3://noaa-goes16/ABI-L1b-RadF/2019/250/00/ /mnt/e/Gabrielle7_0
# aws s3 sync --no-sign-request s3://noaa-goes16/ABI-L1b-RadF/2019/250/06/ /mnt/e/Gabrielle7_6

# aws s3 sync --no-sign-request s3://noaa-goes16/ABI-L1b-RadF/2019/251/00/ /mnt/e/Gabrielle8_0
# aws s3 sync --no-sign-request s3://noaa-goes16/ABI-L1b-RadF/2019/251/06/ /mnt/e/Gabrielle8_6

# aws s3 sync --no-sign-request s3://noaa-goes16/ABI-L1b-RadF/2019/252/00/ /mnt/e/Gabrielle9_0
# aws s3 sync --no-sign-request s3://noaa-goes16/ABI-L1b-RadF/2019/252/06/ /mnt/e/Gabrielle9_6

# aws s3 sync --no-sign-request s3://noaa-goes16/ABI-L1b-RadF/2019/253/00/ /mnt/e/Gabrielle10_0
# aws s3 sync --no-sign-request s3://noaa-goes16/ABI-L1b-RadF/2019/253/06/ /mnt/e/Gabrielle10_6

# cd Gabrielle4_0
# rm *C01*.nc *C02*.nc *C03*.nc *C04*.nc *C05*.nc *C06*.nc *C08*.nc *C09*.nc *C10*.nc *C12*.nc *C16*.nc
# rm *s20192470010*.nc *s20192470020*.nc *s20192470030*.nc *s20192470040*.nc *s20192470050*.nc

# cd ../Gabrielle4_6
# rm *C01*.nc *C02*.nc *C03*.nc *C04*.nc *C05*.nc *C06*.nc *C08*.nc *C09*.nc *C10*.nc *C12*.nc *C16*.nc
# rm *s20192470610*.nc *s20192470620*.nc *s20192470630*.nc *s20192470640*.nc *s20192470650*.nc

# cd ../Gabrielle5_0
# rm *C01*.nc *C02*.nc *C03*.nc *C04*.nc *C05*.nc *C06*.nc *C08*.nc *C09*.nc *C10*.nc *C12*.nc *C16*.nc
# rm *s20192480010*.nc *s20192480020*.nc *s20192480030*.nc *s20192480040*.nc *s20192480050*.nc

# cd ../Gabrielle5_6
# rm *C01*.nc *C02*.nc *C03*.nc *C04*.nc *C05*.nc *C06*.nc *C08*.nc *C09*.nc *C10*.nc *C12*.nc *C16*.nc
# rm *s20192480610*.nc *s20192480620*.nc *s20192480630*.nc *s20192480640*.nc *s20192480650*.nc

# cd ../Gabrielle6_0
# rm *C01*.nc *C02*.nc *C03*.nc *C04*.nc *C05*.nc *C06*.nc *C08*.nc *C09*.nc *C10*.nc *C12*.nc *C16*.nc
# rm *s20192490010*.nc *s20192490020*.nc *s20192490030*.nc *s20192490040*.nc *s20192490050*.nc

# cd ../Gabrielle6_6
# rm *C01*.nc *C02*.nc *C03*.nc *C04*.nc *C05*.nc *C06*.nc *C08*.nc *C09*.nc *C10*.nc *C12*.nc *C16*.nc
# rm *s20192490610*.nc *s20192490620*.nc *s20192490630*.nc *s20192490640*.nc *s20192490650*.nc

# cd ../Gabrielle7_0
# rm *C01*.nc *C02*.nc *C03*.nc *C04*.nc *C05*.nc *C06*.nc *C08*.nc *C09*.nc *C10*.nc *C12*.nc *C16*.nc
# rm *s20192500010*.nc *s20192500020*.nc *s20192500030*.nc *s20192500040*.nc *s20192500050*.nc

# cd ../Gabrielle7_6
# rm *C01*.nc *C02*.nc *C03*.nc *C04*.nc *C05*.nc *C06*.nc *C08*.nc *C09*.nc *C10*.nc *C12*.nc *C16*.nc
# rm *s20192500610*.nc *s20192500620*.nc *s20192500630*.nc *s20192500640*.nc *s20192500650*.nc

# cd ../Gabrielle8_0
# rm *C01*.nc *C02*.nc *C03*.nc *C04*.nc *C05*.nc *C06*.nc *C08*.nc *C09*.nc *C10*.nc *C12*.nc *C16*.nc
# rm *s20192510010*.nc *s20192510020*.nc *s20192510030*.nc *s20192510040*.nc *s20192510050*.nc

# cd ../Gabrielle8_6
# rm *C01*.nc *C02*.nc *C03*.nc *C04*.nc *C05*.nc *C06*.nc *C08*.nc *C09*.nc *C10*.nc *C12*.nc *C16*.nc
# rm *s20192510610*.nc *s20192510620*.nc *s20192510630*.nc *s20192510640*.nc *s20192510650*.nc

# cd ../Gabrielle9_0
# rm *C01*.nc *C02*.nc *C03*.nc *C04*.nc *C05*.nc *C06*.nc *C08*.nc *C09*.nc *C10*.nc *C12*.nc *C16*.nc
# rm *s20192520010*.nc *s20192520020*.nc *s20192520030*.nc *s20192520040*.nc *s20192520050*.nc

# cd ../Gabrielle9_6
# rm *C01*.nc *C02*.nc *C03*.nc *C04*.nc *C05*.nc *C06*.nc *C08*.nc *C09*.nc *C10*.nc *C12*.nc *C16*.nc
# rm *s20192520610*.nc *s20192520620*.nc *s20192520630*.nc *s20192520640*.nc *s20192520650*.nc

# cd ../Gabrielle10_0
# rm *C01*.nc *C02*.nc *C03*.nc *C04*.nc *C05*.nc *C06*.nc *C08*.nc *C09*.nc *C10*.nc *C12*.nc *C16*.nc
# rm *s20192530010*.nc *s20192530020*.nc *s20192530030*.nc *s20192530040*.nc *s20192530050*.nc

# cd ../Gabrielle10_6
# rm *C01*.nc *C02*.nc *C03*.nc *C04*.nc *C05*.nc *C06*.nc *C08*.nc *C09*.nc *C10*.nc *C12*.nc *C16*.nc
# rm *s20192530610*.nc *s20192530620*.nc *s20192530630*.nc *s20192530640*.nc *s20192530650*.nc
# SECOND BASH SCRIPT

python3 main.py ABI-only-FDR /mnt/e/Gabrielle4_0 187 -326
python3 main.py PREDICT-master /mnt/e/Gabrielle4_0/*.npz
python3 main.py FNN-GOES-predict /mnt/e/Gabrielle4_0/*PM*.npz M10_512_GOES_C13_10INPUT BAND_C13_model_channels

python3 main.py ABI-only-FDR /mnt/e/Gabrielle4_6 195 -332
python3 main.py PREDICT-master /mnt/e/Gabrielle4_6/*.npz
python3 main.py FNN-GOES-predict /mnt/e/Gabrielle4_6/*PM*.npz M10_512_GOES_C13_10INPUT BAND_C13_model_channels

python3 main.py ABI-only-FDR /mnt/e/Gabrielle5_0 208 -339
python3 main.py PREDICT-master /mnt/e/Gabrielle5_0/*.npz
python3 main.py FNN-GOES-predict /mnt/e/Gabrielle5_0/*PM*.npz M10_512_GOES_C13_10INPUT BAND_C13_model_channels

python3 main.py ABI-only-FDR /mnt/e/Gabrielle5_6 215 -345
python3 main.py PREDICT-master /mnt/e/Gabrielle5_6/*.npz
python3 main.py FNN-GOES-predict /mnt/e/Gabrielle5_6/*PM*.npz M10_512_GOES_C13_10INPUT BAND_C13_model_channels

python3 main.py ABI-only-FDR /mnt/e/Gabrielle6_0 238 -362
python3 main.py PREDICT-master /mnt/e/Gabrielle6_0/*.npz
python3 main.py FNN-GOES-predict /mnt/e/Gabrielle6_0/*PM*.npz M10_512_GOES_C13_10INPUT BAND_C13_model_channels

python3 main.py ABI-only-FDR /mnt/e/Gabrielle6_6 250 -371
python3 main.py PREDICT-master /mnt/e/Gabrielle6_6/*.npz
python3 main.py FNN-GOES-predict /mnt/e/Gabrielle6_6/*PM*.npz M10_512_GOES_C13_10INPUT BAND_C13_model_channels

python3 main.py ABI-only-FDR /mnt/e/Gabrielle7_0 290 -401
python3 main.py PREDICT-master /mnt/e/Gabrielle7_0/*.npz
python3 main.py FNN-GOES-predict /mnt/e/Gabrielle7_0/*PM*.npz M10_512_GOES_C13_10INPUT BAND_C13_model_channels

python3 main.py ABI-only-FDR /mnt/e/Gabrielle7_6 305 -416
python3 main.py PREDICT-master /mnt/e/Gabrielle7_6/*.npz
python3 main.py FNN-GOES-predict /mnt/e/Gabrielle7_6/*PM*.npz M10_512_GOES_C13_10INPUT BAND_C13_model_channels

python3 main.py ABI-only-FDR /mnt/e/Gabrielle8_0 318 -474
python3 main.py PREDICT-master /mnt/e/Gabrielle8_0/*.npz
python3 main.py FNN-GOES-predict /mnt/e/Gabrielle8_0/*PM*.npz M10_512_GOES_C13_10INPUT BAND_C13_model_channels

python3 main.py ABI-only-FDR /mnt/e/Gabrielle8_6 323 -484
python3 main.py PREDICT-master /mnt/e/Gabrielle8_6/*.npz
python3 main.py FNN-GOES-predict /mnt/e/Gabrielle8_6/*PM*.npz M10_512_GOES_C13_10INPUT BAND_C13_model_channels

python3 main.py ABI-only-FDR /mnt/e/Gabrielle9_0 358 -493
python3 main.py PREDICT-master /mnt/e/Gabrielle9_0/*.npz
python3 main.py FNN-GOES-predict /mnt/e/Gabrielle9_0/*PM*.npz M10_512_GOES_C13_10INPUT BAND_C13_model_channels

python3 main.py ABI-only-FDR /mnt/e/Gabrielle9_6 371 -489
python3 main.py PREDICT-master /mnt/e/Gabrielle9_6/*.npz
python3 main.py FNN-GOES-predict /mnt/e/Gabrielle9_6/*PM*.npz M10_512_GOES_C13_10INPUT BAND_C13_model_channels

python3 main.py ABI-only-FDR /mnt/e/Gabrielle10_0 414 -442
python3 main.py PREDICT-master /mnt/e/Gabrielle10_0/*.npz
python3 main.py FNN-GOES-predict /mnt/e/Gabrielle10_0/*PM*.npz M10_512_GOES_C13_10INPUT BAND_C13_model_channels

python3 main.py ABI-only-FDR /mnt/e/Gabrielle10_6 424 -417
python3 main.py PREDICT-master /mnt/e/Gabrielle10_6/*.npz
python3 main.py FNN-GOES-predict /mnt/e/Gabrielle10_6/*PM*.npz M10_512_GOES_C13_10INPUT BAND_C13_model_channels

# SWIR Scaling
python3 NVI_to_SWIR_scaling.py /mnt/e/Gabrielle4_0 Gabrielle4_0_FD_REDUCEDv2ALL_PM.npz_MODEL_M10_512_GOES_C13_10INPUT.npz 00
python3 NVI_to_SWIR_scaling.py /mnt/e/Gabrielle4_6 Gabrielle4_6_FD_REDUCEDv2ALL_PM.npz_MODEL_M10_512_GOES_C13_10INPUT.npz 06

python3 NVI_to_SWIR_scaling.py /mnt/e/Gabrielle5_0 Gabrielle5_0_FD_REDUCEDv2ALL_PM.npz_MODEL_M10_512_GOES_C13_10INPUT.npz 00
python3 NVI_to_SWIR_scaling.py /mnt/e/Gabrielle5_6 Gabrielle5_6_FD_REDUCEDv2ALL_PM.npz_MODEL_M10_512_GOES_C13_10INPUT.npz 06

python3 NVI_to_SWIR_scaling.py /mnt/e/Gabrielle6_0 Gabrielle6_0_FD_REDUCEDv2ALL_PM.npz_MODEL_M10_512_GOES_C13_10INPUT.npz 00
python3 NVI_to_SWIR_scaling.py /mnt/e/Gabrielle6_6 Gabrielle6_6_FD_REDUCEDv2ALL_PM.npz_MODEL_M10_512_GOES_C13_10INPUT.npz 06

python3 NVI_to_SWIR_scaling.py /mnt/e/Gabrielle7_0 Gabrielle7_0_FD_REDUCEDv2ALL_PM.npz_MODEL_M10_512_GOES_C13_10INPUT.npz 00
python3 NVI_to_SWIR_scaling.py /mnt/e/Gabrielle7_6 Gabrielle7_6_FD_REDUCEDv2ALL_PM.npz_MODEL_M10_512_GOES_C13_10INPUT.npz 06

python3 NVI_to_SWIR_scaling.py /mnt/e/Gabrielle8_0 Gabrielle8_0_FD_REDUCEDv2ALL_PM.npz_MODEL_M10_512_GOES_C13_10INPUT.npz 00
python3 NVI_to_SWIR_scaling.py /mnt/e/Gabrielle8_6 Gabrielle8_6_FD_REDUCEDv2ALL_PM.npz_MODEL_M10_512_GOES_C13_10INPUT.npz 06

python3 NVI_to_SWIR_scaling.py /mnt/e/Gabrielle9_0 Gabrielle9_0_FD_REDUCEDv2ALL_PM.npz_MODEL_M10_512_GOES_C13_10INPUT.npz 00
python3 NVI_to_SWIR_scaling.py /mnt/e/Gabrielle9_6 Gabrielle9_6_FD_REDUCEDv2ALL_PM.npz_MODEL_M10_512_GOES_C13_10INPUT.npz 06

python3 NVI_to_SWIR_scaling.py /mnt/e/Gabrielle10_0 Gabrielle10_0_FD_REDUCEDv2ALL_PM.npz_MODEL_M10_512_GOES_C13_10INPUT.npz 00
python3 NVI_to_SWIR_scaling.py /mnt/e/Gabrielle10_6 Gabrielle10_6_FD_REDUCEDv2ALL_PM.npz_MODEL_M10_512_GOES_C13_10INPUT.npz 06

# Histogram Matching
python3 Histogram_Match.py /mnt/e/Gabrielle4_0 ML_truth_DATA_C13_00_SWIR.npz Gabrielle4_0_FD_REDUCEDv2ALL.npz 00
python3 Histogram_Match.py /mnt/e/Gabrielle4_6 ML_truth_DATA_C13_06_SWIR.npz Gabrielle4_6_FD_REDUCEDv2ALL.npz 06

python3 Histogram_Match.py /mnt/e/Gabrielle5_0 ML_truth_DATA_C13_00_SWIR.npz Gabrielle5_0_FD_REDUCEDv2ALL.npz 00
python3 Histogram_Match.py /mnt/e/Gabrielle5_6 ML_truth_DATA_C13_06_SWIR.npz Gabrielle5_6_FD_REDUCEDv2ALL.npz 06

python3 Histogram_Match.py /mnt/e/Gabrielle6_0 ML_truth_DATA_C13_00_SWIR.npz Gabrielle6_0_FD_REDUCEDv2ALL.npz 00
python3 Histogram_Match.py /mnt/e/Gabrielle6_6 ML_truth_DATA_C13_06_SWIR.npz Gabrielle6_6_FD_REDUCEDv2ALL.npz 06

python3 Histogram_Match.py /mnt/e/Gabrielle7_0 ML_truth_DATA_C13_00_SWIR.npz Gabrielle7_0_FD_REDUCEDv2ALL.npz 00
python3 Histogram_Match.py /mnt/e/Gabrielle7_6 ML_truth_DATA_C13_06_SWIR.npz Gabrielle7_6_FD_REDUCEDv2ALL.npz 06

python3 Histogram_Match.py /mnt/e/Gabrielle8_0 ML_truth_DATA_C13_00_SWIR.npz Gabrielle8_0_FD_REDUCEDv2ALL.npz 00
python3 Histogram_Match.py /mnt/e/Gabrielle8_6 ML_truth_DATA_C13_06_SWIR.npz Gabrielle8_6_FD_REDUCEDv2ALL.npz 06

python3 Histogram_Match.py /mnt/e/Gabrielle9_0 ML_truth_DATA_C13_00_SWIR.npz Gabrielle9_0_FD_REDUCEDv2ALL.npz 00
python3 Histogram_Match.py /mnt/e/Gabrielle9_6 ML_truth_DATA_C13_06_SWIR.npz Gabrielle9_6_FD_REDUCEDv2ALL.npz 06

python3 Histogram_Match.py /mnt/e/Gabrielle10_0 ML_truth_DATA_C13_00_SWIR.npz Gabrielle10_0_FD_REDUCEDv2ALL.npz 00
python3 Histogram_Match.py /mnt/e/Gabrielle10_6 ML_truth_DATA_C13_06_SWIR.npz Gabrielle10_6_FD_REDUCEDv2ALL.npz 06