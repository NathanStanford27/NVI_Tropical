# ONE BASH SCRIPT

# # AWS Data Pull GOES (ABI naming convention: satellite/File/Year/JulianDate/Hour/)
# aws s3 sync --no-sign-request s3://noaa-goes16/ABI-L1b-RadF/2020/212/00/ /mnt/e/Isaias30_0
# aws s3 sync --no-sign-request s3://noaa-goes16/ABI-L1b-RadF/2020/212/06/ /mnt/e/Isaias30_6

# aws s3 sync --no-sign-request s3://noaa-goes16/ABI-L1b-RadF/2020/213/00/ /mnt/e/Isaias31_0
# aws s3 sync --no-sign-request s3://noaa-goes16/ABI-L1b-RadF/2020/213/06/ /mnt/e/Isaias31_6

# aws s3 sync --no-sign-request s3://noaa-goes16/ABI-L1b-RadF/2020/214/00/ /mnt/e/Isaias01_0
# aws s3 sync --no-sign-request s3://noaa-goes16/ABI-L1b-RadF/2020/214/06/ /mnt/e/Isaias01_6

# aws s3 sync --no-sign-request s3://noaa-goes16/ABI-L1b-RadF/2020/215/00/ /mnt/e/Isaias02_0
# aws s3 sync --no-sign-request s3://noaa-goes16/ABI-L1b-RadF/2020/215/06/ /mnt/e/Isaias02_6

# aws s3 sync --no-sign-request s3://noaa-goes16/ABI-L1b-RadF/2020/216/00/ /mnt/e/Isaias03_0
# aws s3 sync --no-sign-request s3://noaa-goes16/ABI-L1b-RadF/2020/216/06/ /mnt/e/Isaias03_6

# aws s3 sync --no-sign-request s3://noaa-goes16/ABI-L1b-RadF/2020/217/00/ /mnt/e/Isaias04_0
# aws s3 sync --no-sign-request s3://noaa-goes16/ABI-L1b-RadF/2020/217/06/ /mnt/e/Isaias04_6



# cd Isaias30_0
# rm *C01*.nc  *C02*.nc *C03*.nc *C04*.nc *C05*.nc *C06*.nc *C08*.nc *C09*.nc *C10*.nc *C12*.nc *C16*.nc
# rm *s2020212010*.nc *s20202120020*.nc *s20202120030*.nc *s20202120040*.nc *s20202120050*.nc
 
# cd ../Isaias30_6
# rm *C01*.nc *C02*.nc *C03*.nc *C04*.nc *C05*.nc *C06*.nc *C08*.nc *C09*.nc *C10*.nc *C12*.nc *C16*.nc
# rm *s20202120610*.nc *s20202120620*.nc *s20202120630*.nc *s20202120640*.nc *s20202120650*.nc
 
# cd ../Isaias31_0
# rm *C01*.nc *C02*.nc *C03*.nc *C04*.nc *C05*.nc *C06*.nc *C08*.nc *C09*.nc *C10*.nc *C12*.nc *C16*.nc
# rm *s20202130010*.nc *s20202130020*.nc *s20202130030*.nc *s20202130040*.nc *s20202130050*.nc

# cd ../Isaias31_6
# rm *C01*.nc *C02*.nc *C03*.nc *C04*.nc *C05*.nc *C06*.nc *C08*.nc *C09*.nc *C10*.nc *C12*.nc *C16*.nc
# rm *s20202130610*.nc *s20202130620*.nc *s20202130630*.nc *s20202130640*.nc *s20202130650*.nc  

# cd ../Isaias01_0
# rm *C01*.nc *C02*.nc *C03*.nc *C04*.nc *C05*.nc *C06*.nc *C08*.nc *C09*.nc *C10*.nc *C12*.nc *C16*.nc
# rm *s20202140010*.nc *s20202140020*.nc *s20202140030*.nc *s20202140040*.nc *s20202140050*.nc

# cd ../Isaias01_6
# rm *C01*.nc *C02*.nc *C03*.nc *C04*.nc *C05*.nc *C06*.nc *C08*.nc *C09*.nc *C10*.nc *C12*.nc *C16*.nc
# rm *s20202140610*.nc *s20202140620*.nc *s20202140630*.nc *s20202140640*.nc *s20202140650*.nc  

# cd ../Isaias02_0
# rm *C01*.nc *C02*.nc *C03*.nc *C04*.nc *C05*.nc *C06*.nc *C08*.nc *C09*.nc *C10*.nc *C12*.nc *C16*.nc
# rm *s20202150010*.nc *s20202150020*.nc *s20202150030*.nc *s20202150040*.nc *s20202150050*.nc

# cd ../Isaias02_6
# rm *C01*.nc *C02*.nc *C03*.nc *C04*.nc *C05*.nc *C06*.nc *C08*.nc *C09*.nc *C10*.nc *C12*.nc *C16*.nc
# rm *s20202150610*.nc *s20202150620*.nc *s20202150630*.nc *s20202150640*.nc *s20202150650*.nc  

# cd ../Isaias03_0
# rm *C01*.nc *C02*.nc *C03*.nc *C04*.nc *C05*.nc *C06*.nc *C08*.nc *C09*.nc *C10*.nc *C12*.nc *C16*.nc
# rm *s20202160010*.nc *s20202160020*.nc *s20202160030*.nc *s20202160040*.nc *s20202160050*.nc

# cd ../Isaias03_6
# rm *C01*.nc *C02*.nc *C03*.nc *C04*.nc *C05*.nc *C06*.nc *C08*.nc *C09*.nc *C10*.nc *C12*.nc *C16*.nc
# rm *s20202160610*.nc *s20202160620*.nc *s20202160630*.nc *s20202160640*.nc *s20202160650*.nc  

# cd ../Isaias04_0
# rm *C01*.nc *C02*.nc *C03*.nc *C04*.nc *C05*.nc *C06*.nc *C08*.nc *C09*.nc *C10*.nc *C12*.nc *C16*.nc
# rm *s20202170010*.nc *s20202170020*.nc *s20202170030*.nc *s20202170040*.nc *s20202170050*.nc

# cd ../Isaias04_6
# rm *C01*.nc *C02*.nc *C03*.nc *C04*.nc *C05*.nc *C06*.nc *C08*.nc *C09*.nc *C10*.nc *C12*.nc *C16*.nc
# rm *s20202170610*.nc *s20202170620*.nc *s20202170630*.nc *s20202170640*.nc *s20202170650*.nc  

# SECOND BASH SCRIPT

# python3 main.py ABI-only-FDR /mnt/e/Isaias30_0 158 -657
# python3 main.py PREDICT-master /mnt/e/Isaias30_0/*.npz
# python3 main.py FNN-GOES-predict /mnt/e/Isaias30_0/*PM*.npz M10_512_GOES_C13_10INPUT BAND_C13_model_channels
  
# python3 main.py ABI-only-FDR /mnt/e/Isaias30_6 167 -672
# python3 main.py PREDICT-master /mnt/e/Isaias30_6/*.npz
# python3 main.py FNN-GOES-predict /mnt/e/Isaias30_6/*PM*.npz M10_512_GOES_C13_10INPUT BAND_C13_model_channels
   
# python3 main.py ABI-only-FDR /mnt/e/Isaias31_0 199 -712
# python3 main.py PREDICT-master /mnt/e/Isaias31_0/*.npz
# python3 main.py FNN-GOES-predict /mnt/e/Isaias31_0/*PM*.npz M10_512_GOES_C13_10INPUT BAND_C13_model_channels
  
# python3 main.py ABI-only-FDR /mnt/e/Isaias31_6 205 -727
# python3 main.py PREDICT-master /mnt/e/Isaias31_6/*.npz
# python3 main.py FNN-GOES-predict /mnt/e/Isaias31_6/*PM*.npz M10_512_GOES_C13_10INPUT BAND_C13_model_channels
      
# python3 main.py ABI-only-FDR /mnt/e/Isaias01_0 229 -759
# python3 main.py PREDICT-master /mnt/e/Isaias01_0/*.npz
# python3 main.py FNN-GOES-predict /mnt/e/Isaias01_0/*PM*.npz M10_512_GOES_C13_10INPUT BAND_C13_model_channels
  
# python3 main.py ABI-only-FDR /mnt/e/Isaias01_6 236 -767
# python3 main.py PREDICT-master /mnt/e/Isaias01_6/*.npz
# python3 main.py FNN-GOES-predict /mnt/e/Isaias01_6/*PM*.npz M10_512_GOES_C13_10INPUT BAND_C13_model_channels
     
# python3 main.py ABI-only-FDR /mnt/e/Isaias02_0 253 -789
# python3 main.py PREDICT-master /mnt/e/Isaias02_0/*.npz
# python3 main.py FNN-GOES-predict /mnt/e/Isaias02_0/*PM*.npz M10_512_GOES_C13_10INPUT BAND_C13_model_channels
  
# python3 main.py ABI-only-FDR /mnt/e/Isaias02_6 259 -792
# python3 main.py PREDICT-master /mnt/e/Isaias02_6/*.npz
# python3 main.py FNN-GOES-predict /mnt/e/Isaias02_6/*PM*.npz M10_512_GOES_C13_10INPUT BAND_C13_model_channels
     
# python3 main.py ABI-only-FDR /mnt/e/Isaias03_0 282 -797
# python3 main.py PREDICT-master /mnt/e/Isaias03_0/*.npz
# python3 main.py FNN-GOES-predict /mnt/e/Isaias03_0/*PM*.npz M10_512_GOES_C13_10INPUT BAND_C13_model_channels
  
# python3 main.py ABI-only-FDR /mnt/e/Isaias03_6 291 -799
# python3 main.py PREDICT-master /mnt/e/Isaias03_6/*.npz
# python3 main.py FNN-GOES-predict /mnt/e/Isaias03_6/*PM*.npz M10_512_GOES_C13_10INPUT BAND_C13_model_channels
     
# python3 main.py ABI-only-FDR /mnt/e/Isaias04_0 328 -791
# python3 main.py PREDICT-master /mnt/e/Isaias04_0/*.npz
# python3 main.py FNN-GOES-predict /mnt/e/Isaias04_0/*PM*.npz M10_512_GOES_C13_10INPUT BAND_C13_model_channels
  
# python3 main.py ABI-only-FDR /mnt/e/Isaias04_6 350 -781
# python3 main.py PREDICT-master /mnt/e/Isaias04_6/*.npz
# python3 main.py FNN-GOES-predict /mnt/e/Isaias04_6/*PM*.npz M10_512_GOES_C13_10INPUT BAND_C13_model_channels
     
    # SWIR Scaling 
python3 NVI_to_SWIR_scaling.py /mnt/e/Isaias30_0 Isaias30_0_FD_REDUCEDv2ALL_PM.npz_MODEL_M10_512_GOES_C13_10INPUT.npz 00
python3 NVI_to_SWIR_scaling.py /mnt/e/Isaias30_6 Isaias30_6_FD_REDUCEDv2ALL_PM.npz_MODEL_M10_512_GOES_C13_10INPUT.npz 06 
    
python3 NVI_to_SWIR_scaling.py /mnt/e/Isaias31_0 Isaias31_0_FD_REDUCEDv2ALL_PM.npz_MODEL_M10_512_GOES_C13_10INPUT.npz 00
python3 NVI_to_SWIR_scaling.py /mnt/e/Isaias31_6 Isaias31_6_FD_REDUCEDv2ALL_PM.npz_MODEL_M10_512_GOES_C13_10INPUT.npz 06   

python3 NVI_to_SWIR_scaling.py /mnt/e/Isaias01_0 Isaias01_0_FD_REDUCEDv2ALL_PM.npz_MODEL_M10_512_GOES_C13_10INPUT.npz 00
python3 NVI_to_SWIR_scaling.py /mnt/e/Isaias01_6 Isaias01_6_FD_REDUCEDv2ALL_PM.npz_MODEL_M10_512_GOES_C13_10INPUT.npz 06 

python3 NVI_to_SWIR_scaling.py /mnt/e/Isaias02_0 Isaias02_0_FD_REDUCEDv2ALL_PM.npz_MODEL_M10_512_GOES_C13_10INPUT.npz 00
python3 NVI_to_SWIR_scaling.py /mnt/e/Isaias02_6 Isaias02_6_FD_REDUCEDv2ALL_PM.npz_MODEL_M10_512_GOES_C13_10INPUT.npz 06 

python3 NVI_to_SWIR_scaling.py /mnt/e/Isaias03_0 Isaias03_0_FD_REDUCEDv2ALL_PM.npz_MODEL_M10_512_GOES_C13_10INPUT.npz 00
python3 NVI_to_SWIR_scaling.py /mnt/e/Isaias03_6 Isaias03_6_FD_REDUCEDv2ALL_PM.npz_MODEL_M10_512_GOES_C13_10INPUT.npz 06 

python3 NVI_to_SWIR_scaling.py /mnt/e/Isaias04_0 Isaias04_0_FD_REDUCEDv2ALL_PM.npz_MODEL_M10_512_GOES_C13_10INPUT.npz 00
python3 NVI_to_SWIR_scaling.py /mnt/e/Isaias04_6 Isaias04_6_FD_REDUCEDv2ALL_PM.npz_MODEL_M10_512_GOES_C13_10INPUT.npz 06 

# Histogram Matching
python3 Histogram_Match.py /mnt/e/Isaias30_0 ML_truth_DATA_C13_00_SWIR.npz Isaias30_0_FD_REDUCEDv2ALL.npz 00
python3 Histogram_Match.py /mnt/e/Isaias30_6 ML_truth_DATA_C13_06_SWIR.npz Isaias30_6_FD_REDUCEDv2ALL.npz 06

python3 Histogram_Match.py /mnt/e/Isaias31_0 ML_truth_DATA_C13_00_SWIR.npz Isaias31_0_FD_REDUCEDv2ALL.npz 00
python3 Histogram_Match.py /mnt/e/Isaias31_6 ML_truth_DATA_C13_06_SWIR.npz Isaias31_6_FD_REDUCEDv2ALL.npz 06

python3 Histogram_Match.py /mnt/e/Isaias01_0 ML_truth_DATA_C13_00_SWIR.npz Isaias01_0_FD_REDUCEDv2ALL.npz 00
python3 Histogram_Match.py /mnt/e/Isaias01_6 ML_truth_DATA_C13_06_SWIR.npz Isaias01_6_FD_REDUCEDv2ALL.npz 06

python3 Histogram_Match.py /mnt/e/Isaias02_0 ML_truth_DATA_C13_00_SWIR.npz Isaias02_0_FD_REDUCEDv2ALL.npz 00
python3 Histogram_Match.py /mnt/e/Isaias02_6 ML_truth_DATA_C13_06_SWIR.npz Isaias02_6_FD_REDUCEDv2ALL.npz 06

python3 Histogram_Match.py /mnt/e/Isaias03_0 ML_truth_DATA_C13_00_SWIR.npz Isaias03_0_FD_REDUCEDv2ALL.npz 00
python3 Histogram_Match.py /mnt/e/Isaias03_6 ML_truth_DATA_C13_06_SWIR.npz Isaias03_6_FD_REDUCEDv2ALL.npz 06

python3 Histogram_Match.py /mnt/e/Isaias04_0 ML_truth_DATA_C13_00_SWIR.npz Isaias04_0_FD_REDUCEDv2ALL.npz 00
python3 Histogram_Match.py /mnt/e/Isaias04_6 ML_truth_DATA_C13_06_SWIR.npz Isaias04_6_FD_REDUCEDv2ALL.npz 06