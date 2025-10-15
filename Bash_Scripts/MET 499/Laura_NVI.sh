# ONE BASH SCRIPT

# AWS Data Pull GOES (ABI naming convention: satellite/File/Year/JulianDate/Hour/)
# aws s3 sync --no-sign-request s3://noaa-goes16/ABI-L1b-RadF/2020/233/00/ /mnt/e/Laura20_0
# aws s3 sync --no-sign-request s3://noaa-goes16/ABI-L1b-RadF/2020/233/06/ /mnt/e/Laura20_6

# aws s3 sync --no-sign-request s3://noaa-goes16/ABI-L1b-RadF/2020/234/00/ /mnt/e/Laura21_0
# aws s3 sync --no-sign-request s3://noaa-goes16/ABI-L1b-RadF/2020/234/06/ /mnt/e/Laura21_6

# aws s3 sync --no-sign-request s3://noaa-goes16/ABI-L1b-RadF/2020/235/00/ /mnt/e/Laura22_0
# aws s3 sync --no-sign-request s3://noaa-goes16/ABI-L1b-RadF/2020/235/06/ /mnt/e/Laura22_6

# aws s3 sync --no-sign-request s3://noaa-goes16/ABI-L1b-RadF/2020/236/00/ /mnt/e/Laura23_0
# aws s3 sync --no-sign-request s3://noaa-goes16/ABI-L1b-RadF/2020/236/06/ /mnt/e/Laura23_6

# aws s3 sync --no-sign-request s3://noaa-goes16/ABI-L1b-RadF/2020/237/00/ /mnt/e/Laura24_0
# aws s3 sync --no-sign-request s3://noaa-goes16/ABI-L1b-RadF/2020/237/06/ /mnt/e/Laura24_6

# aws s3 sync --no-sign-request s3://noaa-goes16/ABI-L1b-RadF/2020/238/00/ /mnt/e/Laura25_0
# aws s3 sync --no-sign-request s3://noaa-goes16/ABI-L1b-RadF/2020/238/06/ /mnt/e/Laura25_6

# aws s3 sync --no-sign-request s3://noaa-goes16/ABI-L1b-RadF/2020/239/00/ /mnt/e/Laura26_0
# aws s3 sync --no-sign-request s3://noaa-goes16/ABI-L1b-RadF/2020/239/06/ /mnt/e/Laura26_6

# aws s3 sync --no-sign-request s3://noaa-goes16/ABI-L1b-RadF/2020/240/00/ /mnt/e/Laura27_0
# aws s3 sync --no-sign-request s3://noaa-goes16/ABI-L1b-RadF/2020/240/06/ /mnt/e/Laura27_6

# aws s3 sync --no-sign-request s3://noaa-goes16/ABI-L1b-RadF/2020/241/00/ /mnt/e/Laura28_0
# aws s3 sync --no-sign-request s3://noaa-goes16/ABI-L1b-RadF/2020/241/06/ /mnt/e/Laura28_6

# aws s3 sync --no-sign-request s3://noaa-goes16/ABI-L1b-RadF/2020/242/00/ /mnt/e/Laura29_0



# cd Laura20_0
# rm *C01*.nc  *C02*.nc *C03*.nc *C04*.nc *C05*.nc *C06*.nc *C08*.nc *C09*.nc *C10*.nc *C12*.nc *C16*.nc
# rm *s20202330010*.nc *s20202330020*.nc *s20202330030*.nc *s20202330040*.nc *s20202330050*.nc
 
# cd ../Laura20_6
# rm *C01*.nc *C02*.nc *C03*.nc *C04*.nc *C05*.nc *C06*.nc *C08*.nc *C09*.nc *C10*.nc *C12*.nc *C16*.nc
# rm *s20202330610*.nc *s20202330620*.nc *s20202330630*.nc *s20202330640*.nc *s20202330650*.nc

# cd ../Laura21_0
# rm *C01*.nc  *C02*.nc *C03*.nc *C04*.nc *C05*.nc *C06*.nc *C08*.nc *C09*.nc *C10*.nc *C12*.nc *C16*.nc
# rm *s20202340010*.nc *s20202340020*.nc *s20202340030*.nc *s20202340040*.nc *s20202340050*.nc
 
# cd ../Laura21_6
# rm *C01*.nc *C02*.nc *C03*.nc *C04*.nc *C05*.nc *C06*.nc *C08*.nc *C09*.nc *C10*.nc *C12*.nc *C16*.nc
# rm *s20202340610*.nc *s20202340620*.nc *s20202340630*.nc *s20202340640*.nc *s20202340650*.nc 

# cd ../Laura22_0
# rm *C01*.nc  *C02*.nc *C03*.nc *C04*.nc *C05*.nc *C06*.nc *C08*.nc *C09*.nc *C10*.nc *C12*.nc *C16*.nc
# rm *s20202350010*.nc *s20202350020*.nc *s20202350030*.nc *s20202350040*.nc *s20202350050*.nc
 
# cd ../Laura22_6
# rm *C01*.nc *C02*.nc *C03*.nc *C04*.nc *C05*.nc *C06*.nc *C08*.nc *C09*.nc *C10*.nc *C12*.nc *C16*.nc
# rm *s20202350610*.nc *s20202350620*.nc *s20202350630*.nc *s20202350640*.nc *s20202350650*.nc

# cd ../Laura23_0
# rm *C01*.nc  *C02*.nc *C03*.nc *C04*.nc *C05*.nc *C06*.nc *C08*.nc *C09*.nc *C10*.nc *C12*.nc *C16*.nc
# rm *s20202360010*.nc *s20202360020*.nc *s20202360030*.nc *s20202360040*.nc *s20202360050*.nc
 
# cd ../Laura23_6
# rm *C01*.nc *C02*.nc *C03*.nc *C04*.nc *C05*.nc *C06*.nc *C08*.nc *C09*.nc *C10*.nc *C12*.nc *C16*.nc
# rm *s20202360610*.nc *s20202360620*.nc *s20202360630*.nc *s20202360640*.nc *s20202360650*.nc

# cd ../Laura24_0
# rm *C01*.nc  *C02*.nc *C03*.nc *C04*.nc *C05*.nc *C06*.nc *C08*.nc *C09*.nc *C10*.nc *C12*.nc *C16*.nc
# rm *s20202370010*.nc *s20202370020*.nc *s20202370030*.nc *s20202370040*.nc *s20202370050*.nc
 
# cd ../Laura24_6
# rm *C01*.nc *C02*.nc *C03*.nc *C04*.nc *C05*.nc *C06*.nc *C08*.nc *C09*.nc *C10*.nc *C12*.nc *C16*.nc
# rm *s20202370610*.nc *s20202370620*.nc *s20202370630*.nc *s20202370640*.nc *s20202370650*.nc

# cd ../Laura25_0
# rm *C01*.nc  *C02*.nc *C03*.nc *C04*.nc *C05*.nc *C06*.nc *C08*.nc *C09*.nc *C10*.nc *C12*.nc *C16*.nc
# rm *s20202380010*.nc *s20202380020*.nc *s20202380030*.nc *s20202380040*.nc *s20202380050*.nc
 
# cd ../Laura25_6
# rm *C01*.nc *C02*.nc *C03*.nc *C04*.nc *C05*.nc *C06*.nc *C08*.nc *C09*.nc *C10*.nc *C12*.nc *C16*.nc
# rm *s20202380610*.nc *s20202380620*.nc *s20202380630*.nc *s20202380640*.nc *s20202380650*.nc

# cd ../Laura26_0
# rm *C01*.nc  *C02*.nc *C03*.nc *C04*.nc *C05*.nc *C06*.nc *C08*.nc *C09*.nc *C10*.nc *C12*.nc *C16*.nc
# rm *s20202390010*.nc *s20202390020*.nc *s20202390030*.nc *s20202390040*.nc *s20202390050*.nc
 
# cd ../Laura26_6
# rm *C01*.nc *C02*.nc *C03*.nc *C04*.nc *C05*.nc *C06*.nc *C08*.nc *C09*.nc *C10*.nc *C12*.nc *C16*.nc
# rm *s20202390610*.nc *s20202390620*.nc *s20202390630*.nc *s20202390640*.nc *s20202390650*.nc

# cd ../Laura27_0
# rm *C01*.nc  *C02*.nc *C03*.nc *C04*.nc *C05*.nc *C06*.nc *C08*.nc *C09*.nc *C10*.nc *C12*.nc *C16*.nc
# rm *s20202400010*.nc *s20202400020*.nc *s20202400030*.nc *s20202400040*.nc *s20202400050*.nc
 
# cd ../Laura27_6
# rm *C01*.nc *C02*.nc *C03*.nc *C04*.nc *C05*.nc *C06*.nc *C08*.nc *C09*.nc *C10*.nc *C12*.nc *C16*.nc
# rm *s20202400610*.nc *s20202400620*.nc *s20202400630*.nc *s20202400640*.nc *s20202400650*.nc

# cd ../Laura28_0
# rm *C01*.nc  *C02*.nc *C03*.nc *C04*.nc *C05*.nc *C06*.nc *C08*.nc *C09*.nc *C10*.nc *C12*.nc *C16*.nc
# rm *s20202410010*.nc *s20202410020*.nc *s20202410030*.nc *s20202410040*.nc *s20202410050*.nc
 
# cd ../Laura28_6
# rm *C01*.nc *C02*.nc *C03*.nc *C04*.nc *C05*.nc *C06*.nc *C08*.nc *C09*.nc *C10*.nc *C12*.nc *C16*.nc
# rm *s20202410610*.nc *s20202410620*.nc *s20202410630*.nc *s20202410640*.nc *s20202410650*.nc

# cd ../Laura29_0
# rm *C01*.nc  *C02*.nc *C03*.nc *C04*.nc *C05*.nc *C06*.nc *C08*.nc *C09*.nc *C10*.nc *C12*.nc *C16*.nc
# rm *s20202420010*.nc *s20202420020*.nc *s20202420030*.nc *s20202420040*.nc *s20202420050*.nc

# # SECOND BASH SCRIPT

python3 main.py ABI-only-FDR /mnt/e/Laura20_0 144 -473
python3 main.py PREDICT-master /mnt/e/Laura20_0/*.npz
python3 main.py FNN-GOES-predict /mnt/e/Laura20_0/*PM*.npz M10_512_GOES_C13_10INPUT BAND_C13_model_channels
  
python3 main.py ABI-only-FDR /mnt/e/Laura20_6 154 -496
python3 main.py PREDICT-master /mnt/e/Laura20_6/*.npz
python3 main.py FNN-GOES-predict /mnt/e/Laura20_6/*PM*.npz M10_512_GOES_C13_10INPUT BAND_C13_model_channels
   
python3 main.py ABI-only-FDR /mnt/e/Laura21_0 168 -555
python3 main.py PREDICT-master /mnt/e/Laura21_0/*.npz
python3 main.py FNN-GOES-predict /mnt/e/Laura21_0/*PM*.npz M10_512_GOES_C13_10INPUT BAND_C13_model_channels
  
python3 main.py ABI-only-FDR /mnt/e/Laura21_6 169 -575
python3 main.py PREDICT-master /mnt/e/Laura21_6/*.npz
python3 main.py FNN-GOES-predict /mnt/e/Laura21_6/*PM*.npz M10_512_GOES_C13_10INPUT BAND_C13_model_channels

python3 main.py ABI-only-FDR /mnt/e/Laura22_0 171 -628
python3 main.py PREDICT-master /mnt/e/Laura22_0/*.npz
python3 main.py FNN-GOES-predict /mnt/e/Laura22_0/*PM*.npz M10_512_GOES_C13_10INPUT BAND_C13_model_channels
  
python3 main.py ABI-only-FDR /mnt/e/Laura22_6 174 -644
python3 main.py PREDICT-master /mnt/e/Laura22_6/*.npz
python3 main.py FNN-GOES-predict /mnt/e/Laura22_6/*PM*.npz M10_512_GOES_C13_10INPUT BAND_C13_model_channels

python3 main.py ABI-only-FDR /mnt/e/Laura23_0 182 -688
python3 main.py PREDICT-master /mnt/e/Laura23_0/*.npz
python3 main.py FNN-GOES-predict /mnt/e/Laura23_0/*PM*.npz M10_512_GOES_C13_10INPUT BAND_C13_model_channels
  
python3 main.py ABI-only-FDR /mnt/e/Laura23_6 185 -703
python3 main.py PREDICT-master /mnt/e/Laura23_6/*.npz
python3 main.py FNN-GOES-predict /mnt/e/Laura23_6/*PM*.npz M10_512_GOES_C13_10INPUT BAND_C13_model_channels

python3 main.py ABI-only-FDR /mnt/e/Laura24_0 198 -760
python3 main.py PREDICT-master /mnt/e/Laura24_0/*.npz
python3 main.py FNN-GOES-predict /mnt/e/Laura24_0/*PM*.npz M10_512_GOES_C13_10INPUT BAND_C13_model_channels
  
python3 main.py ABI-only-FDR /mnt/e/Laura24_6 202 -778
python3 main.py PREDICT-master /mnt/e/Laura24_6/*.npz
python3 main.py FNN-GOES-predict /mnt/e/Laura24_6/*PM*.npz M10_512_GOES_C13_10INPUT BAND_C13_model_channels

python3 main.py ABI-only-FDR /mnt/e/Laura25_0 223 -833
python3 main.py PREDICT-master /mnt/e/Laura25_0/*.npz
python3 main.py FNN-GOES-predict /mnt/e/Laura25_0/*PM*.npz M10_512_GOES_C13_10INPUT BAND_C13_model_channels
  
python3 main.py ABI-only-FDR /mnt/e/Laura25_6 228 -848
python3 main.py PREDICT-master /mnt/e/Laura25_6/*.npz
python3 main.py FNN-GOES-predict /mnt/e/Laura25_6/*PM*.npz M10_512_GOES_C13_10INPUT BAND_C13_model_channels

python3 main.py ABI-only-FDR /mnt/e/Laura26_0 249 -889
python3 main.py PREDICT-master /mnt/e/Laura26_0/*.npz
python3 main.py FNN-GOES-predict /mnt/e/Laura26_0/*PM*.npz M10_512_GOES_C13_10INPUT BAND_C13_model_channels
  
python3 main.py ABI-only-FDR /mnt/e/Laura26_6 256 -902
python3 main.py PREDICT-master /mnt/e/Laura26_6/*.npz
python3 main.py FNN-GOES-predict /mnt/e/Laura26_6/*PM*.npz M10_512_GOES_C13_10INPUT BAND_C13_model_channels

python3 main.py ABI-only-FDR /mnt/e/Laura27_0 285 -930
python3 main.py PREDICT-master /mnt/e/Laura27_0/*.npz
python3 main.py FNN-GOES-predict /mnt/e/Laura27_0/*PM*.npz M10_512_GOES_C13_10INPUT BAND_C13_model_channels
  
python3 main.py ABI-only-FDR /mnt/e/Laura27_6 298 -933
python3 main.py PREDICT-master /mnt/e/Laura27_6/*.npz
python3 main.py FNN-GOES-predict /mnt/e/Laura27_6/*PM*.npz M10_512_GOES_C13_10INPUT BAND_C13_model_channels

python3 main.py ABI-only-FDR /mnt/e/Laura28_0 344 -925
python3 main.py PREDICT-master /mnt/e/Laura28_0/*.npz
python3 main.py FNN-GOES-predict /mnt/e/Laura28_0/*PM*.npz M10_512_GOES_C13_10INPUT BAND_C13_model_channels
  
python3 main.py ABI-only-FDR /mnt/e/Laura28_6 354 -920
python3 main.py PREDICT-master /mnt/e/Laura28_6/*.npz
python3 main.py FNN-GOES-predict /mnt/e/Laura28_6/*PM*.npz M10_512_GOES_C13_10INPUT BAND_C13_model_channels

python3 main.py ABI-only-FDR /mnt/e/Laura29_0 375 -880
python3 main.py PREDICT-master /mnt/e/Laura29_0/*.npz
python3 main.py FNN-GOES-predict /mnt/e/Laura29_0/*PM*.npz M10_512_GOES_C13_10INPUT BAND_C13_model_channels
  
     
# SWIR Scaling 
python3 NVI_to_SWIR_scaling.py /mnt/e/Laura20_0 Laura20_0_FD_REDUCEDv2ALL_PM.npz_MODEL_M10_512_GOES_C13_10INPUT.npz 00
python3 NVI_to_SWIR_scaling.py /mnt/e/Laura20_6 Laura20_6_FD_REDUCEDv2ALL_PM.npz_MODEL_M10_512_GOES_C13_10INPUT.npz 06 
    
python3 NVI_to_SWIR_scaling.py /mnt/e/Laura21_0 Laura21_0_FD_REDUCEDv2ALL_PM.npz_MODEL_M10_512_GOES_C13_10INPUT.npz 00
python3 NVI_to_SWIR_scaling.py /mnt/e/Laura21_6 Laura21_6_FD_REDUCEDv2ALL_PM.npz_MODEL_M10_512_GOES_C13_10INPUT.npz 06 

python3 NVI_to_SWIR_scaling.py /mnt/e/Laura22_0 Laura22_0_FD_REDUCEDv2ALL_PM.npz_MODEL_M10_512_GOES_C13_10INPUT.npz 00
python3 NVI_to_SWIR_scaling.py /mnt/e/Laura22_6 Laura22_6_FD_REDUCEDv2ALL_PM.npz_MODEL_M10_512_GOES_C13_10INPUT.npz 06 

python3 NVI_to_SWIR_scaling.py /mnt/e/Laura23_0 Laura23_0_FD_REDUCEDv2ALL_PM.npz_MODEL_M10_512_GOES_C13_10INPUT.npz 00
python3 NVI_to_SWIR_scaling.py /mnt/e/Laura23_6 Laura23_6_FD_REDUCEDv2ALL_PM.npz_MODEL_M10_512_GOES_C13_10INPUT.npz 06 

python3 NVI_to_SWIR_scaling.py /mnt/e/Laura24_0 Laura24_0_FD_REDUCEDv2ALL_PM.npz_MODEL_M10_512_GOES_C13_10INPUT.npz 00
python3 NVI_to_SWIR_scaling.py /mnt/e/Laura24_6 Laura24_6_FD_REDUCEDv2ALL_PM.npz_MODEL_M10_512_GOES_C13_10INPUT.npz 06 

python3 NVI_to_SWIR_scaling.py /mnt/e/Laura25_0 Laura25_0_FD_REDUCEDv2ALL_PM.npz_MODEL_M10_512_GOES_C13_10INPUT.npz 00
python3 NVI_to_SWIR_scaling.py /mnt/e/Laura25_6 Laura25_6_FD_REDUCEDv2ALL_PM.npz_MODEL_M10_512_GOES_C13_10INPUT.npz 06 

python3 NVI_to_SWIR_scaling.py /mnt/e/Laura26_0 Laura26_0_FD_REDUCEDv2ALL_PM.npz_MODEL_M10_512_GOES_C13_10INPUT.npz 00
python3 NVI_to_SWIR_scaling.py /mnt/e/Laura26_6 Laura26_6_FD_REDUCEDv2ALL_PM.npz_MODEL_M10_512_GOES_C13_10INPUT.npz 06 

python3 NVI_to_SWIR_scaling.py /mnt/e/Laura27_0 Laura27_0_FD_REDUCEDv2ALL_PM.npz_MODEL_M10_512_GOES_C13_10INPUT.npz 00
python3 NVI_to_SWIR_scaling.py /mnt/e/Laura27_6 Laura27_6_FD_REDUCEDv2ALL_PM.npz_MODEL_M10_512_GOES_C13_10INPUT.npz 06 

python3 NVI_to_SWIR_scaling.py /mnt/e/Laura28_0 Laura28_0_FD_REDUCEDv2ALL_PM.npz_MODEL_M10_512_GOES_C13_10INPUT.npz 00
python3 NVI_to_SWIR_scaling.py /mnt/e/Laura28_6 Laura28_6_FD_REDUCEDv2ALL_PM.npz_MODEL_M10_512_GOES_C13_10INPUT.npz 06 

python3 NVI_to_SWIR_scaling.py /mnt/e/Laura29_0 Laura29_0_FD_REDUCEDv2ALL_PM.npz_MODEL_M10_512_GOES_C13_10INPUT.npz 00

# Histogram Matching
python3 Histogram_Match.py /mnt/e/Laura20_0 ML_truth_DATA_C13_00_SWIR.npz Laura20_0_FD_REDUCEDv2ALL.npz 00
python3 Histogram_Match.py /mnt/e/Laura20_6 ML_truth_DATA_C13_06_SWIR.npz Laura20_6_FD_REDUCEDv2ALL.npz 06

python3 Histogram_Match.py /mnt/e/Laura21_0 ML_truth_DATA_C13_00_SWIR.npz Laura21_0_FD_REDUCEDv2ALL.npz 00
python3 Histogram_Match.py /mnt/e/Laura21_6 ML_truth_DATA_C13_06_SWIR.npz Laura21_6_FD_REDUCEDv2ALL.npz 06

python3 Histogram_Match.py /mnt/e/Laura22_0 ML_truth_DATA_C13_00_SWIR.npz Laura22_0_FD_REDUCEDv2ALL.npz 00
python3 Histogram_Match.py /mnt/e/Laura22_6 ML_truth_DATA_C13_06_SWIR.npz Laura22_6_FD_REDUCEDv2ALL.npz 06

python3 Histogram_Match.py /mnt/e/Laura23_0 ML_truth_DATA_C13_00_SWIR.npz Laura23_0_FD_REDUCEDv2ALL.npz 00
python3 Histogram_Match.py /mnt/e/Laura23_6 ML_truth_DATA_C13_06_SWIR.npz Laura23_6_FD_REDUCEDv2ALL.npz 06

python3 Histogram_Match.py /mnt/e/Laura24_0 ML_truth_DATA_C13_00_SWIR.npz Laura24_0_FD_REDUCEDv2ALL.npz 00
python3 Histogram_Match.py /mnt/e/Laura24_6 ML_truth_DATA_C13_06_SWIR.npz Laura24_6_FD_REDUCEDv2ALL.npz 06

python3 Histogram_Match.py /mnt/e/Laura25_0 ML_truth_DATA_C13_00_SWIR.npz Laura25_0_FD_REDUCEDv2ALL.npz 00
python3 Histogram_Match.py /mnt/e/Laura25_6 ML_truth_DATA_C13_06_SWIR.npz Laura25_6_FD_REDUCEDv2ALL.npz 06

python3 Histogram_Match.py /mnt/e/Laura26_0 ML_truth_DATA_C13_00_SWIR.npz Laura26_0_FD_REDUCEDv2ALL.npz 00
python3 Histogram_Match.py /mnt/e/Laura26_6 ML_truth_DATA_C13_06_SWIR.npz Laura26_6_FD_REDUCEDv2ALL.npz 06

python3 Histogram_Match.py /mnt/e/Laura27_0 ML_truth_DATA_C13_00_SWIR.npz Laura27_0_FD_REDUCEDv2ALL.npz 00
python3 Histogram_Match.py /mnt/e/Laura27_6 ML_truth_DATA_C13_06_SWIR.npz Laura27_6_FD_REDUCEDv2ALL.npz 06

python3 Histogram_Match.py /mnt/e/Laura28_0 ML_truth_DATA_C13_00_SWIR.npz Laura28_0_FD_REDUCEDv2ALL.npz 00
python3 Histogram_Match.py /mnt/e/Laura28_6 ML_truth_DATA_C13_06_SWIR.npz Laura28_6_FD_REDUCEDv2ALL.npz 06

python3 Histogram_Match.py /mnt/e/Laura29_0 ML_truth_DATA_C13_00_SWIR.npz Laura29_0_FD_REDUCEDv2ALL.npz 00
