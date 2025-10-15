# # ONE BASH SCRIPT

# # AWS Data Pull GOES (ABI naming convention: satellite/File/Year/JulianDate/Hour/)
# aws s3 sync --no-sign-request s3://noaa-goes16/ABI-L1b-RadF/2019/260/06/ /mnt/e/Jerry17_6

# aws s3 sync --no-sign-request s3://noaa-goes16/ABI-L1b-RadF/2019/261/00/ /mnt/e/Jerry18_0
# aws s3 sync --no-sign-request s3://noaa-goes16/ABI-L1b-RadF/2019/261/06/ /mnt/e/Jerry18_6

# aws s3 sync --no-sign-request s3://noaa-goes16/ABI-L1b-RadF/2019/262/00/ /mnt/e/Jerry19_0
# aws s3 sync --no-sign-request s3://noaa-goes16/ABI-L1b-RadF/2019/262/06/ /mnt/e/Jerry19_6

# aws s3 sync --no-sign-request s3://noaa-goes16/ABI-L1b-RadF/2019/263/00/ /mnt/e/Jerry20_0
# aws s3 sync --no-sign-request s3://noaa-goes16/ABI-L1b-RadF/2019/263/06/ /mnt/e/Jerry20_6

# aws s3 sync --no-sign-request s3://noaa-goes16/ABI-L1b-RadF/2019/264/00/ /mnt/e/Jerry21_0
# aws s3 sync --no-sign-request s3://noaa-goes16/ABI-L1b-RadF/2019/264/06/ /mnt/e/Jerry21_6

# aws s3 sync --no-sign-request s3://noaa-goes16/ABI-L1b-RadF/2019/265/00/ /mnt/e/Jerry22_0
# aws s3 sync --no-sign-request s3://noaa-goes16/ABI-L1b-RadF/2019/265/06/ /mnt/e/Jerry22_6

# aws s3 sync --no-sign-request s3://noaa-goes16/ABI-L1b-RadF/2019/266/00/ /mnt/e/Jerry23_0
# aws s3 sync --no-sign-request s3://noaa-goes16/ABI-L1b-RadF/2019/266/06/ /mnt/e/Jerry23_6

# aws s3 sync --no-sign-request s3://noaa-goes16/ABI-L1b-RadF/2019/267/00/ /mnt/e/Jerry24_0
# aws s3 sync --no-sign-request s3://noaa-goes16/ABI-L1b-RadF/2019/267/06/ /mnt/e/Jerry24_6

# # REMOVE CHANNELS
# cd Jerry17_6
# rm *C01*.nc *C02*.nc *C03*.nc *C04*.nc *C05*.nc *C06*.nc *C08*.nc *C09*.nc *C10*.nc *C12*.nc *C16*.nc
# rm *s20192600610*.nc *s20192600620*.nc *s20192600630*.nc *s20192600640*.nc *s20192600650*.nc

# cd ../Jerry18_0
# rm *C01*.nc *C02*.nc *C03*.nc *C04*.nc *C05*.nc *C06*.nc *C08*.nc *C09*.nc *C10*.nc *C12*.nc *C16*.nc
# rm *s20192610010*.nc *s20192610020*.nc *s20192610030*.nc *s20192610040*.nc *s20192610050*.nc

# cd ../Jerry18_6
# rm *C01*.nc *C02*.nc *C03*.nc *C04*.nc *C05*.nc *C06*.nc *C08*.nc *C09*.nc *C10*.nc *C12*.nc *C16*.nc
# rm *s20192610610*.nc *s20192610620*.nc *s20192610630*.nc *s20192610640*.nc *s20192610650*.nc

# cd ../Jerry19_0
# rm *C01*.nc *C02*.nc *C03*.nc *C04*.nc *C05*.nc *C06*.nc *C08*.nc *C09*.nc *C10*.nc *C12*.nc *C16*.nc
# rm *s20192620010*.nc *s20192620020*.nc *s20192620030*.nc *s20192620040*.nc *s20192620050*.nc

# cd ../Jerry19_6
# rm *C01*.nc *C02*.nc *C03*.nc *C04*.nc *C05*.nc *C06*.nc *C08*.nc *C09*.nc *C10*.nc *C12*.nc *C16*.nc
# rm *s20192620610*.nc *s20192620620*.nc *s20192620630*.nc *s20192620640*.nc *s20192620650*.nc

# cd ../Jerry20_0
# rm *C01*.nc *C02*.nc *C03*.nc *C04*.nc *C05*.nc *C06*.nc *C08*.nc *C09*.nc *C10*.nc *C12*.nc *C16*.nc
# rm *s20192630010*.nc *s20192630020*.nc *s20192630030*.nc *s20192630040*.nc *s20192630050*.nc

# cd ../Jerry20_6
# rm *C01*.nc *C02*.nc *C03*.nc *C04*.nc *C05*.nc *C06*.nc *C08*.nc *C09*.nc *C10*.nc *C12*.nc *C16*.nc
# rm *s20192630610*.nc *s20192630620*.nc *s20192630630*.nc *s20192630640*.nc *s20192630650*.nc

# cd ../Jerry21_0
# rm *C01*.nc *C02*.nc *C03*.nc *C04*.nc *C05*.nc *C06*.nc *C08*.nc *C09*.nc *C10*.nc *C12*.nc *C16*.nc
# rm *s20192640010*.nc *s20192640020*.nc *s20192640030*.nc *s20192640040*.nc *s20192640050*.nc

# cd ../Jerry21_6
# rm *C01*.nc *C02*.nc *C03*.nc *C04*.nc *C05*.nc *C06*.nc *C08*.nc *C09*.nc *C10*.nc *C12*.nc *C16*.nc
# rm *s20192640610*.nc *s20192640620*.nc *s20192640630*.nc *s20192640640*.nc *s20192640650*.nc

# cd ../Jerry22_0
# rm *C01*.nc *C02*.nc *C03*.nc *C04*.nc *C05*.nc *C06*.nc *C08*.nc *C09*.nc *C10*.nc *C12*.nc *C16*.nc
# rm *s20192650010*.nc *s20192650020*.nc *s20192650030*.nc *s20192650040*.nc *s20192650050*.nc

# cd ../Jerry22_6
# rm *C01*.nc *C02*.nc *C03*.nc *C04*.nc *C05*.nc *C06*.nc *C08*.nc *C09*.nc *C10*.nc *C12*.nc *C16*.nc
# rm *s20192650610*.nc *s20192650620*.nc *s20192650630*.nc *s20192650640*.nc *s20192650650*.nc

# cd ../Jerry23_0
# rm *C01*.nc *C02*.nc *C03*.nc *C04*.nc *C05*.nc *C06*.nc *C08*.nc *C09*.nc *C10*.nc *C12*.nc *C16*.nc
# rm *s20192660010*.nc *s20192660020*.nc *s20192660030*.nc *s20192660040*.nc *s20192660050*.nc

# cd ../Jerry23_6
# rm *C01*.nc *C02*.nc *C03*.nc *C04*.nc *C05*.nc *C06*.nc *C08*.nc *C09*.nc *C10*.nc *C12*.nc *C16*.nc
# rm *s20192660610*.nc *s20192660620*.nc *s20192660630*.nc *s20192660640*.nc *s20192660650*.nc

# cd ../Jerry24_0
# rm *C01*.nc *C02*.nc *C03*.nc *C04*.nc *C05*.nc *C06*.nc *C08*.nc *C09*.nc *C10*.nc *C12*.nc *C16*.nc
# rm *s20192670010*.nc *s20192670020*.nc *s20192670030*.nc *s20192670040*.nc *s20192670050*.nc

# cd ../Jerry24_6
# rm *C01*.nc *C02*.nc *C03*.nc *C04*.nc *C05*.nc *C06*.nc *C08*.nc *C09*.nc *C10*.nc *C12*.nc *C16*.nc
# rm *s20192670610*.nc *s20192670620*.nc *s20192670630*.nc *s20192670640*.nc *s20192670650*.nc

# SECOND BASH SCRIPT

python3 main.py ABI-only-FDR /mnt/e/Jerry17_6 128 -435
python3 main.py PREDICT-master /mnt/e/Jerry17_6/*.npz
python3 main.py FNN-GOES-predict /mnt/e/Jerry17_6/*PM*.npz M10_512_GOES_C13_10INPUT BAND_C13_model_channels

python3 main.py ABI-only-FDR /mnt/e/Jerry18_0 136 -463
python3 main.py PREDICT-master /mnt/e/Jerry18_0/*.npz
python3 main.py FNN-GOES-predict /mnt/e/Jerry18_0/*PM*.npz M10_512_GOES_C13_10INPUT BAND_C13_model_channels

python3 main.py ABI-only-FDR /mnt/e/Jerry18_6 140 -474
python3 main.py PREDICT-master /mnt/e/Jerry18_6/*.npz
python3 main.py FNN-GOES-predict /mnt/e/Jerry18_6/*PM*.npz M10_512_GOES_C13_10INPUT BAND_C13_model_channels

python3 main.py ABI-only-FDR /mnt/e/Jerry19_0 152 -512
python3 main.py PREDICT-master /mnt/e/Jerry19_0/*.npz
python3 main.py FNN-GOES-predict /mnt/e/Jerry19_0/*PM*.npz M10_512_GOES_C13_10INPUT BAND_C13_model_channels

python3 main.py ABI-only-FDR /mnt/e/Jerry19_6 158 -525
python3 main.py PREDICT-master /mnt/e/Jerry19_6/*.npz
python3 main.py FNN-GOES-predict /mnt/e/Jerry19_6/*PM*.npz M10_512_GOES_C13_10INPUT BAND_C13_model_channels

python3 main.py ABI-only-FDR /mnt/e/Jerry20_0 177 -566
python3 main.py PREDICT-master /mnt/e/Jerry20_0/*.npz
python3 main.py FNN-GOES-predict /mnt/e/Jerry20_0/*PM*.npz M10_512_GOES_C13_10INPUT BAND_C13_model_channels

python3 main.py ABI-only-FDR /mnt/e/Jerry20_6 181 -581
python3 main.py PREDICT-master /mnt/e/Jerry20_6/*.npz
python3 main.py FNN-GOES-predict /mnt/e/Jerry20_6/*PM*.npz M10_512_GOES_C13_10INPUT BAND_C13_model_channels

python3 main.py ABI-only-FDR /mnt/e/Jerry21_0 201 -624
python3 main.py PREDICT-master /mnt/e/Jerry21_0/*.npz
python3 main.py FNN-GOES-predict /mnt/e/Jerry21_0/*PM*.npz M10_512_GOES_C13_10INPUT BAND_C13_model_channels

python3 main.py ABI-only-FDR /mnt/e/Jerry21_6 210 -635
python3 main.py PREDICT-master /mnt/e/Jerry21_6/*.npz
python3 main.py FNN-GOES-predict /mnt/e/Jerry21_6/*PM*.npz M10_512_GOES_C13_10INPUT BAND_C13_model_channels

python3 main.py ABI-only-FDR /mnt/e/Jerry22_0 236 -661
python3 main.py PREDICT-master /mnt/e/Jerry22_0/*.npz
python3 main.py FNN-GOES-predict /mnt/e/Jerry22_0/*PM*.npz M10_512_GOES_C13_10INPUT BAND_C13_model_channels

python3 main.py ABI-only-FDR /mnt/e/Jerry22_6 245 -665
python3 main.py PREDICT-master /mnt/e/Jerry22_6/*.npz
python3 main.py FNN-GOES-predict /mnt/e/Jerry22_6/*PM*.npz M10_512_GOES_C13_10INPUT BAND_C13_model_channels

python3 main.py ABI-only-FDR /mnt/e/Jerry23_0 270 -672
python3 main.py PREDICT-master /mnt/e/Jerry23_0/*.npz
python3 main.py FNN-GOES-predict /mnt/e/Jerry23_0/*PM*.npz M10_512_GOES_C13_10INPUT BAND_C13_model_channels

python3 main.py ABI-only-FDR /mnt/e/Jerry23_6 274 -677
python3 main.py PREDICT-master /mnt/e/Jerry23_6/*.npz
python3 main.py FNN-GOES-predict /mnt/e/Jerry23_6/*PM*.npz M10_512_GOES_C13_10INPUT BAND_C13_model_channels

python3 main.py ABI-only-FDR /mnt/e/Jerry24_0 289 -686
python3 main.py PREDICT-master /mnt/e/Jerry24_0/*.npz
python3 main.py FNN-GOES-predict /mnt/e/Jerry24_0/*PM*.npz M10_512_GOES_C13_10INPUT BAND_C13_model_channels

python3 main.py ABI-only-FDR /mnt/e/Jerry24_6 297 -689
python3 main.py PREDICT-master /mnt/e/Jerry24_6/*.npz
python3 main.py FNN-GOES-predict /mnt/e/Jerry24_6/*PM*.npz M10_512_GOES_C13_10INPUT BAND_C13_model_channels

# SWIR Scaling
python3 NVI_to_SWIR_scaling.py /mnt/e/Jerry17_6 Jerry17_6_FD_REDUCEDv2ALL_PM.npz_MODEL_M10_512_GOES_C13_10INPUT.npz 06

python3 NVI_to_SWIR_scaling.py /mnt/e/Jerry18_0 Jerry18_0_FD_REDUCEDv2ALL_PM.npz_MODEL_M10_512_GOES_C13_10INPUT.npz 00
python3 NVI_to_SWIR_scaling.py /mnt/e/Jerry18_6 Jerry18_6_FD_REDUCEDv2ALL_PM.npz_MODEL_M10_512_GOES_C13_10INPUT.npz 06

python3 NVI_to_SWIR_scaling.py /mnt/e/Jerry19_0 Jerry19_0_FD_REDUCEDv2ALL_PM.npz_MODEL_M10_512_GOES_C13_10INPUT.npz 00
python3 NVI_to_SWIR_scaling.py /mnt/e/Jerry19_6 Jerry19_6_FD_REDUCEDv2ALL_PM.npz_MODEL_M10_512_GOES_C13_10INPUT.npz 06

python3 NVI_to_SWIR_scaling.py /mnt/e/Jerry20_0 Jerry20_0_FD_REDUCEDv2ALL_PM.npz_MODEL_M10_512_GOES_C13_10INPUT.npz 00
python3 NVI_to_SWIR_scaling.py /mnt/e/Jerry20_6 Jerry20_6_FD_REDUCEDv2ALL_PM.npz_MODEL_M10_512_GOES_C13_10INPUT.npz 06

python3 NVI_to_SWIR_scaling.py /mnt/e/Jerry21_0 Jerry21_0_FD_REDUCEDv2ALL_PM.npz_MODEL_M10_512_GOES_C13_10INPUT.npz 00
python3 NVI_to_SWIR_scaling.py /mnt/e/Jerry21_6 Jerry21_6_FD_REDUCEDv2ALL_PM.npz_MODEL_M10_512_GOES_C13_10INPUT.npz 06

python3 NVI_to_SWIR_scaling.py /mnt/e/Jerry22_0 Jerry22_0_FD_REDUCEDv2ALL_PM.npz_MODEL_M10_512_GOES_C13_10INPUT.npz 00
python3 NVI_to_SWIR_scaling.py /mnt/e/Jerry22_6 Jerry22_6_FD_REDUCEDv2ALL_PM.npz_MODEL_M10_512_GOES_C13_10INPUT.npz 06

python3 NVI_to_SWIR_scaling.py /mnt/e/Jerry23_0 Jerry23_0_FD_REDUCEDv2ALL_PM.npz_MODEL_M10_512_GOES_C13_10INPUT.npz 00
python3 NVI_to_SWIR_scaling.py /mnt/e/Jerry23_6 Jerry23_6_FD_REDUCEDv2ALL_PM.npz_MODEL_M10_512_GOES_C13_10INPUT.npz 06

python3 NVI_to_SWIR_scaling.py /mnt/e/Jerry24_0 Jerry24_0_FD_REDUCEDv2ALL_PM.npz_MODEL_M10_512_GOES_C13_10INPUT.npz 00
python3 NVI_to_SWIR_scaling.py /mnt/e/Jerry24_6 Jerry24_6_FD_REDUCEDv2ALL_PM.npz_MODEL_M10_512_GOES_C13_10INPUT.npz 06

# Histogram Matching
python3 Histogram_Match.py /mnt/e/Jerry17_6 ML_truth_DATA_C13_06_SWIR.npz Jerry17_6_FD_REDUCEDv2ALL.npz 06

python3 Histogram_Match.py /mnt/e/Jerry18_0 ML_truth_DATA_C13_00_SWIR.npz Jerry18_0_FD_REDUCEDv2ALL.npz 00
python3 Histogram_Match.py /mnt/e/Jerry18_6 ML_truth_DATA_C13_06_SWIR.npz Jerry18_6_FD_REDUCEDv2ALL.npz 06

python3 Histogram_Match.py /mnt/e/Jerry19_0 ML_truth_DATA_C13_00_SWIR.npz Jerry19_0_FD_REDUCEDv2ALL.npz 00
python3 Histogram_Match.py /mnt/e/Jerry19_6 ML_truth_DATA_C13_06_SWIR.npz Jerry19_6_FD_REDUCEDv2ALL.npz 06

python3 Histogram_Match.py /mnt/e/Jerry20_0 ML_truth_DATA_C13_00_SWIR.npz Jerry20_0_FD_REDUCEDv2ALL.npz 00
python3 Histogram_Match.py /mnt/e/Jerry20_6 ML_truth_DATA_C13_06_SWIR.npz Jerry20_6_FD_REDUCEDv2ALL.npz 06

python3 Histogram_Match.py /mnt/e/Jerry21_0 ML_truth_DATA_C13_00_SWIR.npz Jerry21_0_FD_REDUCEDv2ALL.npz 00
python3 Histogram_Match.py /mnt/e/Jerry21_6 ML_truth_DATA_C13_06_SWIR.npz Jerry21_6_FD_REDUCEDv2ALL.npz 06

python3 Histogram_Match.py /mnt/e/Jerry22_0 ML_truth_DATA_C13_00_SWIR.npz Jerry22_0_FD_REDUCEDv2ALL.npz 00
python3 Histogram_Match.py /mnt/e/Jerry22_6 ML_truth_DATA_C13_06_SWIR.npz Jerry22_6_FD_REDUCEDv2ALL.npz 06

python3 Histogram_Match.py /mnt/e/Jerry23_0 ML_truth_DATA_C13_00_SWIR.npz Jerry23_0_FD_REDUCEDv2ALL.npz 00
python3 Histogram_Match.py /mnt/e/Jerry23_6 ML_truth_DATA_C13_06_SWIR.npz Jerry23_6_FD_REDUCEDv2ALL.npz 06

python3 Histogram_Match.py /mnt/e/Jerry24_0 ML_truth_DATA_C13_00_SWIR.npz Jerry24_0_FD_REDUCEDv2ALL.npz 00
python3 Histogram_Match.py /mnt/e/Jerry24_6 ML_truth_DATA_C13_06_SWIR.npz Jerry24_6_FD_REDUCEDv2ALL.npz 06