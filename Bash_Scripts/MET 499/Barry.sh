# ONE BASH SCRIPT


# AWS Data Pull GOES (ABI naming convention: satellite/File/Year/JulianDate/Hour/)
# aws s3 sync --no-sign-request s3://noaa-goes16/ABI-L1b-RadF/2019/190/00/ /name_of_your_path  
# aws s3 sync --no-sign-request s3://noaa-goes16/ABI-L1b-RadF/2019/190/06/ /name_of_your_path

# cd 1907130z
# rm *C01*.nc *C02*.nc *C03*.nc *C04*.nc *C05*.nc *C06*.nc *C08*.nc *C09*.nc *C10*.nc *C12*.nc *C16*.nc
# rm *s20191940010*.nc *s20191940020*.nc *s20191940030*.nc *s20191940040*.nc *s20191940050*.nc

# cd ../1907136z
# rm *C01*.nc *C02*.nc *C03*.nc *C04*.nc *C05*.nc *C06*.nc *C08*.nc *C09*.nc *C10*.nc *C12*.nc *C16*.nc
# rm *s20191940610*.nc *s20191940620*.nc *s20191940630*.nc *s20191940640*.nc *s20191940650*.nc

# cd ../1907140z
# rm *C01*.nc *C02*.nc *C03*.nc *C04*.nc *C05*.nc *C06*.nc *C08*.nc *C09*.nc *C10*.nc *C12*.nc *C16*.nc
# rm *s20191950010*.nc *s20191950020*.nc *s20191950030*.nc *s20191950040*.nc *s20191950050*.nc

# cd ../1907146z
# rm *C01*.nc *C02*.nc *C03*.nc *C04*.nc *C05*.nc *C06*.nc *C08*.nc *C09*.nc *C10*.nc *C12*.nc *C16*.nc
# rm *s20191950610*.nc *s20191950620*.nc *s20191950630*.nc *s20191950640*.nc *s20191950650*.nc

# cd ../1907150z
# rm *C01*.nc *C02*.nc *C03*.nc *C04*.nc *C05*.nc *C06*.nc *C08*.nc *C09*.nc *C10*.nc *C12*.nc *C16*.nc
# rm *s20191960010*.nc *s20191960020*.nc *s20191960030*.nc *s20191960040*.nc *s20191960050*.nc

# cd ../1907156z
# rm *C01*.nc *C02*.nc *C03*.nc *C04*.nc *C05*.nc *C06*.nc *C08*.nc *C09*.nc *C10*.nc *C12*.nc *C16*.nc
# rm *s20191960610*.nc *s20191960620*.nc *s20191960630*.nc *s20191960640*.nc *s20191960650*.nc



# SECOND BASH SCRIPT



# python3 main.py FNN-GOES-predict /mnt/e/1907116z/*PM*.npz M10_512_GOES_C13_10INPUT BAND_C13_model_channels
# python3 main.py FNN-GOES-predict /mnt/e/1907120z/*PM*.npz M10_512_GOES_C13_10INPUT BAND_C13_model_channels

# python3 main.py ABI-only-FDR /mnt/e/1907126z 279 -897
# python3 main.py PREDICT-master /mnt/e/1907126z/*.npz
# python3 main.py FNN-GOES-predict /mnt/e/1907126z/*PM*.npz M10_512_GOES_C13_10INPUT BAND_C13_model_channels

# python3 main.py ABI-only-FDR /mnt/e/1907130z 286 -911                                                      #lat*10 lon*10
# python3 main.py PREDICT-master /mnt/e/1907130z/*.npz
# python3 main.py FNN-GOES-predict /mnt/e/1907130z/*PM*.npz M10_512_GOES_C13_10INPUT BAND_C13_model_channels

# python3 main.py ABI-only-FDR /mnt/e/1907136z 289 -915
# python3 main.py PREDICT-master /mnt/e/1907136z/*.npz
# python3 main.py FNN-GOES-predict /mnt/e/1907136z/*PM*.npz M10_512_GOES_C13_10INPUT BAND_C13_model_channels

# python3 main.py ABI-only-FDR /mnt/e/1907140z 304 -928
# python3 main.py PREDICT-master /mnt/e/1907140z/*.npz
# python3 main.py FNN-GOES-predict /mnt/e/1907140z/*PM*.npz M10_512_GOES_C13_10INPUT BAND_C13_model_channels

# python3 main.py ABI-only-FDR /mnt/e/1907146z 310 -932
# python3 main.py PREDICT-master /mnt/e/1907146z/*.npz
# python3 main.py FNN-GOES-predict /mnt/e/1907146z/*PM*.npz M10_512_GOES_C13_10INPUT BAND_C13_model_channels

# python3 main.py ABI-only-FDR /mnt/e/1907150z 330 -936
# python3 main.py PREDICT-master /mnt/e/1907150z/*.npz
# python3 main.py FNN-GOES-predict /mnt/e/1907150z/*PM*.npz M10_512_GOES_C13_10INPUT BAND_C13_model_channels

# python3 main.py ABI-only-FDR /mnt/e/1907156z 339 -936
# python3 main.py PREDICT-master /mnt/e/1907156z/*.npz
# python3 main.py FNN-GOES-predict /mnt/e/1907156z/*PM*.npz M10_512_GOES_C13_10INPUT BAND_C13_model_channels

# SWIR Scaling
python3 NVI_to_SWIR_scaling.py /mnt/e/Barry/1907116z 1907116z_FD_REDUCEDv2ALL_PM.npz_MODEL_M10_512_GOES_C13_10INPUT.npz 06
python3 NVI_to_SWIR_scaling.py /mnt/e/Barry/1907120z 1907120z_FD_REDUCEDv2ALL_PM.npz_MODEL_M10_512_GOES_C13_10INPUT.npz 00
python3 NVI_to_SWIR_scaling.py /mnt/e/Barry/1907126z 1907126z_FD_REDUCEDv2ALL_PM.npz_MODEL_M10_512_GOES_C13_10INPUT.npz 06
python3 NVI_to_SWIR_scaling.py /mnt/e/Barry/1907130z 1907130z_FD_REDUCEDv2ALL_PM.npz_MODEL_M10_512_GOES_C13_10INPUT.npz 00
python3 NVI_to_SWIR_scaling.py /mnt/e/Barry/1907136z 1907136z_FD_REDUCEDv2ALL_PM.npz_MODEL_M10_512_GOES_C13_10INPUT.npz 06
python3 NVI_to_SWIR_scaling.py /mnt/e/Barry/1907140z 1907140z_FD_REDUCEDv2ALL_PM.npz_MODEL_M10_512_GOES_C13_10INPUT.npz 00
python3 NVI_to_SWIR_scaling.py /mnt/e/Barry/1907146z 1907146z_FD_REDUCEDv2ALL_PM.npz_MODEL_M10_512_GOES_C13_10INPUT.npz 06
python3 NVI_to_SWIR_scaling.py /mnt/e/Barry/1907150z 1907150z_FD_REDUCEDv2ALL_PM.npz_MODEL_M10_512_GOES_C13_10INPUT.npz 00
python3 NVI_to_SWIR_scaling.py /mnt/e/Barry/1907156z 1907156z_FD_REDUCEDv2ALL_PM.npz_MODEL_M10_512_GOES_C13_10INPUT.npz 06

# Histogram Matching
python3 Histogram_Match.py /mnt/e/Barry/1907116z ML_truth_DATA_C13_06_SWIR.npz 1907116z_FD_REDUCEDv2ALL.npz 06
python3 Histogram_Match.py /mnt/e/Barry/1907120z ML_truth_DATA_C13_00_SWIR.npz 1907120z_FD_REDUCEDv2ALL.npz 00
python3 Histogram_Match.py /mnt/e/Barry/1907126z ML_truth_DATA_C13_06_SWIR.npz 1907126z_FD_REDUCEDv2ALL.npz 06
python3 Histogram_Match.py /mnt/e/Barry/1907130z ML_truth_DATA_C13_00_SWIR.npz 1907130z_FD_REDUCEDv2ALL.npz 00
python3 Histogram_Match.py /mnt/e/Barry/1907136z ML_truth_DATA_C13_06_SWIR.npz 1907136z_FD_REDUCEDv2ALL.npz 06
python3 Histogram_Match.py /mnt/e/Barry/1907140z ML_truth_DATA_C13_00_SWIR.npz 1907140z_FD_REDUCEDv2ALL.npz 00
python3 Histogram_Match.py /mnt/e/Barry/1907146z ML_truth_DATA_C13_06_SWIR.npz 1907146z_FD_REDUCEDv2ALL.npz 06
python3 Histogram_Match.py /mnt/e/Barry/1907150z ML_truth_DATA_C13_00_SWIR.npz 1907150z_FD_REDUCEDv2ALL.npz 00
python3 Histogram_Match.py /mnt/e/Barry/1907156z ML_truth_DATA_C13_06_SWIR.npz 1907156z_FD_REDUCEDv2ALL.npz 06

