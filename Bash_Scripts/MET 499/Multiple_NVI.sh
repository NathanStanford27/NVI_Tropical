# ONE BASH SCRIPT

# # AWS Data Pull GOES (ABI naming convention: satellite/File/Year/JulianDate/Hour/)
# aws s3 sync --no-sign-request s3://noaa-goes16/ABI-L1b-RadF/2020/138/00/ /mnt/e/Arthur17_0
# aws s3 sync --no-sign-request s3://noaa-goes16/ABI-L1b-RadF/2020/138/06/ /mnt/e/Arthur17_6

# aws s3 sync --no-sign-request s3://noaa-goes16/ABI-L1b-RadF/2020/139/00/ /mnt/e/Arthur18_0
# aws s3 sync --no-sign-request s3://noaa-goes16/ABI-L1b-RadF/2020/139/06/ /mnt/e/Arthur18_6

# aws s3 sync --no-sign-request s3://noaa-goes16/ABI-L1b-RadF/2020/140/00/ /mnt/e/Arthur19_0
# aws s3 sync --no-sign-request s3://noaa-goes16/ABI-L1b-RadF/2020/140/06/ /mnt/e/Arthur19_6

# aws s3 sync --no-sign-request s3://noaa-goes16/ABI-L1b-RadF/2020/148/06/ /mnt/e/Bertha27_6
# aws s3 sync --no-sign-request s3://noaa-goes16/ABI-L1b-RadF/2020/149/00/ /mnt/e/Bertha28_0

# aws s3 sync --no-sign-request s3://noaa-goes16/ABI-L1b-RadF/2020/154/00/ /mnt/e/Cristobal02_0
# aws s3 sync --no-sign-request s3://noaa-goes16/ABI-L1b-RadF/2020/154/06/ /mnt/e/Cristobal02_6

# aws s3 sync --no-sign-request s3://noaa-goes16/ABI-L1b-RadF/2020/155/00/ /mnt/e/Cristobal03_0
# aws s3 sync --no-sign-request s3://noaa-goes16/ABI-L1b-RadF/2020/155/06/ /mnt/e/Cristobal03_6

# aws s3 sync --no-sign-request s3://noaa-goes16/ABI-L1b-RadF/2020/156/00/ /mnt/e/Cristobal04_0
# aws s3 sync --no-sign-request s3://noaa-goes16/ABI-L1b-RadF/2020/156/06/ /mnt/e/Cristobal04_6

# aws s3 sync --no-sign-request s3://noaa-goes16/ABI-L1b-RadF/2020/157/00/ /mnt/e/Cristobal05_0
# aws s3 sync --no-sign-request s3://noaa-goes16/ABI-L1b-RadF/2020/157/06/ /mnt/e/Cristobal05_6

# aws s3 sync --no-sign-request s3://noaa-goes16/ABI-L1b-RadF/2020/158/00/ /mnt/e/Cristobal06_0
# aws s3 sync --no-sign-request s3://noaa-goes16/ABI-L1b-RadF/2020/158/06/ /mnt/e/Cristobal06_6

# aws s3 sync --no-sign-request s3://noaa-goes16/ABI-L1b-RadF/2020/159/00/ /mnt/e/Cristobal07_0
# aws s3 sync --no-sign-request s3://noaa-goes16/ABI-L1b-RadF/2020/159/06/ /mnt/e/Cristobal07_6

# aws s3 sync --no-sign-request s3://noaa-goes16/ABI-L1b-RadF/2020/160/00/ /mnt/e/Cristobal08_0
# aws s3 sync --no-sign-request s3://noaa-goes16/ABI-L1b-RadF/2020/160/06/ /mnt/e/Cristobal08_6

# aws s3 sync --no-sign-request s3://noaa-goes16/ABI-L1b-RadF/2020/161/00/ /mnt/e/Cristobal09_0
# aws s3 sync --no-sign-request s3://noaa-goes16/ABI-L1b-RadF/2020/161/06/ /mnt/e/Cristobal09_6

# aws s3 sync --no-sign-request s3://noaa-goes16/ABI-L1b-RadF/2020/187/00/ /mnt/e/Eduoard05_0
# aws s3 sync --no-sign-request s3://noaa-goes16/ABI-L1b-RadF/2020/187/06/ /mnt/e/Eduoard05_6

# aws s3 sync --no-sign-request s3://noaa-goes16/ABI-L1b-RadF/2020/188/00/ /mnt/e/Eduoard06_0
# aws s3 sync --no-sign-request s3://noaa-goes16/ABI-L1b-RadF/2020/188/06/ /mnt/e/Eduoard06_6



# cd Arthur17_0
# rm *C01*.nc  *C02*.nc *C03*.nc *C04*.nc *C05*.nc *C06*.nc *C08*.nc *C09*.nc *C10*.nc *C12*.nc *C16*.nc
# rm *s20201380010*.nc *s20201380020*.nc *s20201380030*.nc *s20201380040*.nc *s20201380050*.nc
 
# cd ../Arthur17_6
# rm *C01*.nc *C02*.nc *C03*.nc *C04*.nc *C05*.nc *C06*.nc *C08*.nc *C09*.nc *C10*.nc *C12*.nc *C16*.nc
# rm *s20201380610*.nc *s20201380620*.nc *s20201380630*.nc *s20201380640*.nc *s20201380650*.nc

# cd ../Arthur18_0
# rm *C01*.nc  *C02*.nc *C03*.nc *C04*.nc *C05*.nc *C06*.nc *C08*.nc *C09*.nc *C10*.nc *C12*.nc *C16*.nc
# rm *s20201390010*.nc *s20201390020*.nc *s20201390030*.nc *s20201390040*.nc *s20201390050*.nc
 
# cd ../Arthur18_6
# rm *C01*.nc *C02*.nc *C03*.nc *C04*.nc *C05*.nc *C06*.nc *C08*.nc *C09*.nc *C10*.nc *C12*.nc *C16*.nc
# rm *s20201390610*.nc *s20201390620*.nc *s20201390630*.nc *s20201390640*.nc *s20201390650*.nc

# cd ../Arthur19_0
# rm *C01*.nc  *C02*.nc *C03*.nc *C04*.nc *C05*.nc *C06*.nc *C08*.nc *C09*.nc *C10*.nc *C12*.nc *C16*.nc
# rm *s20201400010*.nc *s20201400020*.nc *s20201400030*.nc *s20201400040*.nc *s20201400050*.nc
 
# cd ../Arthur19_6
# rm *C01*.nc *C02*.nc *C03*.nc *C04*.nc *C05*.nc *C06*.nc *C08*.nc *C09*.nc *C10*.nc *C12*.nc *C16*.nc
# rm *s20201400610*.nc *s20201400620*.nc *s20201400630*.nc *s20201400640*.nc *s20201400650*.nc

# cd ../Bertha27_6
# rm *C01*.nc *C02*.nc *C03*.nc *C04*.nc *C05*.nc *C06*.nc *C08*.nc *C09*.nc *C10*.nc *C12*.nc *C16*.nc
# rm *s20201480610*.nc *s20201480620*.nc *s20201480630*.nc *s20201480640*.nc *s20201480650*.nc

# cd ../Bertha28_0
# rm *C01*.nc  *C02*.nc *C03*.nc *C04*.nc *C05*.nc *C06*.nc *C08*.nc *C09*.nc *C10*.nc *C12*.nc *C16*.nc
# rm *s20201490010*.nc *s20201490020*.nc *s20201490030*.nc *s20201490040*.nc *s20201490050*.nc

# cd ../Cristobal02_0
# rm *C01*.nc  *C02*.nc *C03*.nc *C04*.nc *C05*.nc *C06*.nc *C08*.nc *C09*.nc *C10*.nc *C12*.nc *C16*.nc
# rm *s20201540010*.nc *s20201540020*.nc *s20201540030*.nc *s20201540040*.nc *s20201540050*.nc
 
# cd ../Cristobal02_6
# rm *C01*.nc *C02*.nc *C03*.nc *C04*.nc *C05*.nc *C06*.nc *C08*.nc *C09*.nc *C10*.nc *C12*.nc *C16*.nc
# rm *s20201540610*.nc *s20201540620*.nc *s20201540630*.nc *s20201540640*.nc *s20201540650*.nc

# cd ../Cristobal03_0
# rm *C01*.nc  *C02*.nc *C03*.nc *C04*.nc *C05*.nc *C06*.nc *C08*.nc *C09*.nc *C10*.nc *C12*.nc *C16*.nc
# rm *s20201550010*.nc *s20201550020*.nc *s20201550030*.nc *s20201550040*.nc *s20201550050*.nc
 
# cd ../Cristobal03_6
# rm *C01*.nc *C02*.nc *C03*.nc *C04*.nc *C05*.nc *C06*.nc *C08*.nc *C09*.nc *C10*.nc *C12*.nc *C16*.nc
# rm *s20201550610*.nc *s20201550620*.nc *s20201550630*.nc *s20201550640*.nc *s20201550650*.nc

# cd ../Cristobal04_0
# rm *C01*.nc  *C02*.nc *C03*.nc *C04*.nc *C05*.nc *C06*.nc *C08*.nc *C09*.nc *C10*.nc *C12*.nc *C16*.nc
# rm *s20201560010*.nc *s20201560020*.nc *s20201560030*.nc *s20201560040*.nc *s20201560050*.nc
 
# cd ../Cristobal04_6
# rm *C01*.nc *C02*.nc *C03*.nc *C04*.nc *C05*.nc *C06*.nc *C08*.nc *C09*.nc *C10*.nc *C12*.nc *C16*.nc
# rm *s20201560610*.nc *s20201560620*.nc *s20201560630*.nc *s20201560640*.nc *s20201560650*.nc

# cd ../Cristobal05_0
# rm *C01*.nc  *C02*.nc *C03*.nc *C04*.nc *C05*.nc *C06*.nc *C08*.nc *C09*.nc *C10*.nc *C12*.nc *C16*.nc
# rm *s20201570010*.nc *s20201570020*.nc *s20201570030*.nc *s20201570040*.nc *s20201570050*.nc
 
# cd ../Cristobal05_6
# rm *C01*.nc *C02*.nc *C03*.nc *C04*.nc *C05*.nc *C06*.nc *C08*.nc *C09*.nc *C10*.nc *C12*.nc *C16*.nc
# rm *s20201570610*.nc *s20201570620*.nc *s20201570630*.nc *s20201570640*.nc *s20201570650*.nc

# cd ../Cristobal06_0
# rm *C01*.nc  *C02*.nc *C03*.nc *C04*.nc *C05*.nc *C06*.nc *C08*.nc *C09*.nc *C10*.nc *C12*.nc *C16*.nc
# rm *s20201580010*.nc *s20201580020*.nc *s20201580030*.nc *s20201580040*.nc *s20201580050*.nc
 
# cd ../Cristobal06_6
# rm *C01*.nc *C02*.nc *C03*.nc *C04*.nc *C05*.nc *C06*.nc *C08*.nc *C09*.nc *C10*.nc *C12*.nc *C16*.nc
# rm *s20201580610*.nc *s20201580620*.nc *s20201580630*.nc *s20201580640*.nc *s20201580650*.nc

# cd ../Cristobal07_0
# rm *C01*.nc  *C02*.nc *C03*.nc *C04*.nc *C05*.nc *C06*.nc *C08*.nc *C09*.nc *C10*.nc *C12*.nc *C16*.nc
# rm *s20201590010*.nc *s20201590020*.nc *s20201590030*.nc *s20201590040*.nc *s20201590050*.nc
 
# cd ../Cristobal07_6
# rm *C01*.nc *C02*.nc *C03*.nc *C04*.nc *C05*.nc *C06*.nc *C08*.nc *C09*.nc *C10*.nc *C12*.nc *C16*.nc
# rm *s20201590610*.nc *s20201590620*.nc *s20201590630*.nc *s20201590640*.nc *s20201590650*.nc

# cd ../Cristobal08_0
# rm *C01*.nc  *C02*.nc *C03*.nc *C04*.nc *C05*.nc *C06*.nc *C08*.nc *C09*.nc *C10*.nc *C12*.nc *C16*.nc
# rm *s20201600010*.nc *s20201600020*.nc *s20201600030*.nc *s20201600040*.nc *s20201600050*.nc
 
# cd ../Cristobal08_6
# rm *C01*.nc *C02*.nc *C03*.nc *C04*.nc *C05*.nc *C06*.nc *C08*.nc *C09*.nc *C10*.nc *C12*.nc *C16*.nc
# rm *s20201600610*.nc *s20201600620*.nc *s20201600630*.nc *s20201600640*.nc *s20201600650*.nc

# cd ../Cristobal09_0
# rm *C01*.nc  *C02*.nc *C03*.nc *C04*.nc *C05*.nc *C06*.nc *C08*.nc *C09*.nc *C10*.nc *C12*.nc *C16*.nc
# rm *s20201610010*.nc *s20201610020*.nc *s20201610030*.nc *s20201610040*.nc *s20201610050*.nc
 
# cd ../Cristobal09_6
# rm *C01*.nc *C02*.nc *C03*.nc *C04*.nc *C05*.nc *C06*.nc *C08*.nc *C09*.nc *C10*.nc *C12*.nc *C16*.nc
# rm *s20201610610*.nc *s20201610620*.nc *s20201610630*.nc *s20201610640*.nc *s20201610650*.nc

# cd ../Eduoard05_0
# rm *C01*.nc  *C02*.nc *C03*.nc *C04*.nc *C05*.nc *C06*.nc *C08*.nc *C09*.nc *C10*.nc *C12*.nc *C16*.nc
# rm *s20201870010*.nc *s20201870020*.nc *s20201870030*.nc *s20201870040*.nc *s20201870050*.nc
 
# cd ../Eduoard05_6
# rm *C01*.nc *C02*.nc *C03*.nc *C04*.nc *C05*.nc *C06*.nc *C08*.nc *C09*.nc *C10*.nc *C12*.nc *C16*.nc
# rm *s20201870610*.nc *s20201870620*.nc *s20201870630*.nc *s20201870640*.nc *s20201870650*.nc

# cd ../Eduoard06_0
# rm *C01*.nc  *C02*.nc *C03*.nc *C04*.nc *C05*.nc *C06*.nc *C08*.nc *C09*.nc *C10*.nc *C12*.nc *C16*.nc
# rm *s20201880010*.nc *s20201880020*.nc *s20201880030*.nc *s20201880040*.nc *s20201880050*.nc
 
# cd ../Eduoard06_6
# rm *C01*.nc *C02*.nc *C03*.nc *C04*.nc *C05*.nc *C06*.nc *C08*.nc *C09*.nc *C10*.nc *C12*.nc *C16*.nc
# rm *s20201880610*.nc *s20201880620*.nc *s20201880630*.nc *s20201880640*.nc *s20201880650*.nc

# # SECOND BASH SCRIPT

# python3 main.py ABI-only-FDR /mnt/e/Eduoard05_0 321 -670
# python3 main.py PREDICT-master /mnt/e/Eduoard05_0/*.npz
# python3 main.py FNN-GOES-predict /mnt/e/Eduoard05_0/*PM*.npz M10_512_GOES_C13_10INPUT BAND_C13_model_channels
  
# python3 main.py ABI-only-FDR /mnt/e/Eduoard05_6 329 -658
# python3 main.py PREDICT-master /mnt/e/Eduoard05_6/*.npz
# python3 main.py FNN-GOES-predict /mnt/e/Eduoard05_6/*PM*.npz M10_512_GOES_C13_10INPUT BAND_C13_model_channels

# python3 main.py ABI-only-FDR /mnt/e/Eduoard06_0 364 -585
# python3 main.py PREDICT-master /mnt/e/Eduoard06_0/*.npz
# python3 main.py FNN-GOES-predict /mnt/e/Eduoard06_0/*PM*.npz M10_512_GOES_C13_10INPUT BAND_C13_model_channels
  
# python3 main.py ABI-only-FDR /mnt/e/Eduoard06_6 381 -553
# python3 main.py PREDICT-master /mnt/e/Eduoard06_6/*.npz
# python3 main.py FNN-GOES-predict /mnt/e/Eduoard06_6/*PM*.npz M10_512_GOES_C13_10INPUT BAND_C13_model_channels

# python3 main.py ABI-only-FDR /mnt/e/Bertha27_6 315 -788
# python3 main.py PREDICT-master /mnt/e/Bertha27_6/*.npz
# python3 main.py FNN-GOES-predict /mnt/e/Bertha27_6/*PM*.npz M10_512_GOES_C13_10INPUT BAND_C13_model_channels
  
# python3 main.py ABI-only-FDR /mnt/e/Bertha28_0 349 -807
# python3 main.py PREDICT-master /mnt/e/Bertha28_0/*.npz
# python3 main.py FNN-GOES-predict /mnt/e/Bertha28_0/*PM*.npz M10_512_GOES_C13_10INPUT BAND_C13_model_channels

# python3 main.py ABI-only-FDR /mnt/e/Cristobal02_0 196 -916
# python3 main.py PREDICT-master /mnt/e/Cristobal02_0/*.npz
# python3 main.py FNN-GOES-predict /mnt/e/Cristobal02_0/*PM*.npz M10_512_GOES_C13_10INPUT BAND_C13_model_channels
  
# python3 main.py ABI-only-FDR /mnt/e/Cristobal02_6 196 -921
# python3 main.py PREDICT-master /mnt/e/Cristobal02_6/*.npz
# python3 main.py FNN-GOES-predict /mnt/e/Cristobal02_6/*PM*.npz M10_512_GOES_C13_10INPUT BAND_C13_model_channels
   
# python3 main.py ABI-only-FDR /mnt/e/Cristobal03_0 190 -925
# python3 main.py PREDICT-master /mnt/e/Cristobal03_0/*.npz
# python3 main.py FNN-GOES-predict /mnt/e/Cristobal03_0/*PM*.npz M10_512_GOES_C13_10INPUT BAND_C13_model_channels
  
# python3 main.py ABI-only-FDR /mnt/e/Cristobal03_6 189 -923
# python3 main.py PREDICT-master /mnt/e/Cristobal03_6/*.npz
# python3 main.py FNN-GOES-predict /mnt/e/Cristobal03_6/*PM*.npz M10_512_GOES_C13_10INPUT BAND_C13_model_channels

# python3 main.py ABI-only-FDR /mnt/e/Cristobal04_0 182 -917
# python3 main.py PREDICT-master /mnt/e/Cristobal04_0/*.npz
# python3 main.py FNN-GOES-predict /mnt/e/Cristobal04_0/*PM*.npz M10_512_GOES_C13_10INPUT BAND_C13_model_channels
  
# python3 main.py ABI-only-FDR /mnt/e/Cristobal04_6 179 -915
# python3 main.py PREDICT-master /mnt/e/Cristobal04_6/*.npz
# python3 main.py FNN-GOES-predict /mnt/e/Cristobal04_6/*PM*.npz M10_512_GOES_C13_10INPUT BAND_C13_model_channels

# python3 main.py ABI-only-FDR /mnt/e/Cristobal05_0 179 -904
# python3 main.py PREDICT-master /mnt/e/Cristobal05_0/*.npz
# python3 main.py FNN-GOES-predict /mnt/e/Cristobal05_0/*PM*.npz M10_512_GOES_C13_10INPUT BAND_C13_model_channels
  
# python3 main.py ABI-only-FDR /mnt/e/Cristobal05_6 186 -901
# python3 main.py PREDICT-master /mnt/e/Cristobal05_6/*.npz
# python3 main.py FNN-GOES-predict /mnt/e/Cristobal05_6/*PM*.npz M10_512_GOES_C13_10INPUT BAND_C13_model_channels

# python3 main.py ABI-only-FDR /mnt/e/Cristobal06_0 220 -900
# python3 main.py PREDICT-master /mnt/e/Cristobal06_0/*.npz
# python3 main.py FNN-GOES-predict /mnt/e/Cristobal06_0/*PM*.npz M10_512_GOES_C13_10INPUT BAND_C13_model_channels
  
# python3 main.py ABI-only-FDR /mnt/e/Cristobal06_6 230 -901
# python3 main.py PREDICT-master /mnt/e/Cristobal06_6/*.npz
# python3 main.py FNN-GOES-predict /mnt/e/Cristobal06_6/*PM*.npz M10_512_GOES_C13_10INPUT BAND_C13_model_channels

# python3 main.py ABI-only-FDR /mnt/e/Cristobal07_0 258 -901
# python3 main.py PREDICT-master /mnt/e/Cristobal07_0/*.npz
# python3 main.py FNN-GOES-predict /mnt/e/Cristobal07_0/*PM*.npz M10_512_GOES_C13_10INPUT BAND_C13_model_channels
  
# python3 main.py ABI-only-FDR /mnt/e/Cristobal07_6 269 -900
# python3 main.py PREDICT-master /mnt/e/Cristobal07_6/*.npz
# python3 main.py FNN-GOES-predict /mnt/e/Cristobal07_6/*PM*.npz M10_512_GOES_C13_10INPUT BAND_C13_model_channels

# python3 main.py ABI-only-FDR /mnt/e/Cristobal08_0 298 -899
# python3 main.py PREDICT-master /mnt/e/Cristobal08_0/*.npz
# python3 main.py FNN-GOES-predict /mnt/e/Cristobal08_0/*PM*.npz M10_512_GOES_C13_10INPUT BAND_C13_model_channels
  
# python3 main.py ABI-only-FDR /mnt/e/Cristobal08_6 306 -906
# python3 main.py PREDICT-master /mnt/e/Cristobal08_6/*.npz
# python3 main.py FNN-GOES-predict /mnt/e/Cristobal08_6/*PM*.npz M10_512_GOES_C13_10INPUT BAND_C13_model_channels

# python3 main.py ABI-only-FDR /mnt/e/Cristobal09_0 342 -921
# python3 main.py PREDICT-master /mnt/e/Cristobal09_0/*.npz
# python3 main.py FNN-GOES-predict /mnt/e/Cristobal09_0/*PM*.npz M10_512_GOES_C13_10INPUT BAND_C13_model_channels
  
# python3 main.py ABI-only-FDR /mnt/e/Cristobal09_6 358 -922
# python3 main.py PREDICT-master /mnt/e/Cristobal09_6/*.npz
# python3 main.py FNN-GOES-predict /mnt/e/Cristobal09_6/*PM*.npz M10_512_GOES_C13_10INPUT BAND_C13_model_channels

python3 main.py ABI-only-FDR /mnt/e/Arthur17_0 289 -780
python3 main.py PREDICT-master /mnt/e/Arthur17_0/*.npz
python3 main.py FNN-GOES-predict /mnt/e/Arthur17_0/*PM*.npz M10_512_GOES_C13_10INPUT BAND_C13_model_channels
  
python3 main.py ABI-only-FDR /mnt/e/Arthur17_6 296 -776
python3 main.py PREDICT-master /mnt/e/Arthur17_6/*.npz
python3 main.py FNN-GOES-predict /mnt/e/Arthur17_6/*PM*.npz M10_512_GOES_C13_10INPUT BAND_C13_model_channels

python3 main.py ABI-only-FDR /mnt/e/Arthur18_0 319 -770
python3 main.py PREDICT-master /mnt/e/Arthur18_0/*.npz
python3 main.py FNN-GOES-predict /mnt/e/Arthur18_0/*PM*.npz M10_512_GOES_C13_10INPUT BAND_C13_model_channels
  
python3 main.py ABI-only-FDR /mnt/e/Arthur18_6 331 -767
python3 main.py PREDICT-master /mnt/e/Arthur18_6/*.npz
python3 main.py FNN-GOES-predict /mnt/e/Arthur18_6/*PM*.npz M10_512_GOES_C13_10INPUT BAND_C13_model_channels

python3 main.py ABI-only-FDR /mnt/e/Arthur19_0 362 -731
python3 main.py PREDICT-master /mnt/e/Arthur19_0/*.npz
python3 main.py FNN-GOES-predict /mnt/e/Arthur19_0/*PM*.npz M10_512_GOES_C13_10INPUT BAND_C13_model_channels
  
python3 main.py ABI-only-FDR /mnt/e/Arthur19_6 368 -714
python3 main.py PREDICT-master /mnt/e/Arthur19_6/*.npz
python3 main.py FNN-GOES-predict /mnt/e/Arthur19_6/*PM*.npz M10_512_GOES_C13_10INPUT BAND_C13_model_channels

     
# SWIR Scaling 
# python3 NVI_to_SWIR_scaling.py /mnt/e/Eduoard05_0 Eduoard05_0_FD_REDUCEDv2ALL_PM.npz_MODEL_M10_512_GOES_C13_10INPUT.npz 00
# python3 NVI_to_SWIR_scaling.py /mnt/e/Eduoard05_6 Eduoard05_6_FD_REDUCEDv2ALL_PM.npz_MODEL_M10_512_GOES_C13_10INPUT.npz 06 

# python3 NVI_to_SWIR_scaling.py /mnt/e/Eduoard06_0 Eduoard06_0_FD_REDUCEDv2ALL_PM.npz_MODEL_M10_512_GOES_C13_10INPUT.npz 00
# python3 NVI_to_SWIR_scaling.py /mnt/e/Eduoard06_6 Eduoard06_6_FD_REDUCEDv2ALL_PM.npz_MODEL_M10_512_GOES_C13_10INPUT.npz 06 

# python3 NVI_to_SWIR_scaling.py /mnt/e/Bertha27_6 Bertha27_6_FD_REDUCEDv2ALL_PM.npz_MODEL_M10_512_GOES_C13_10INPUT.npz 06
# python3 NVI_to_SWIR_scaling.py /mnt/e/Bertha28_0 Bertha28_0_FD_REDUCEDv2ALL_PM.npz_MODEL_M10_512_GOES_C13_10INPUT.npz 00

# python3 NVI_to_SWIR_scaling.py /mnt/e/Cristobal02_0 Cristobal02_0_FD_REDUCEDv2ALL_PM.npz_MODEL_M10_512_GOES_C13_10INPUT.npz 00
# python3 NVI_to_SWIR_scaling.py /mnt/e/Cristobal02_6 Cristobal02_6_FD_REDUCEDv2ALL_PM.npz_MODEL_M10_512_GOES_C13_10INPUT.npz 06

# python3 NVI_to_SWIR_scaling.py /mnt/e/Cristobal03_0 Cristobal03_0_FD_REDUCEDv2ALL_PM.npz_MODEL_M10_512_GOES_C13_10INPUT.npz 00
# python3 NVI_to_SWIR_scaling.py /mnt/e/Cristobal03_6 Cristobal03_6_FD_REDUCEDv2ALL_PM.npz_MODEL_M10_512_GOES_C13_10INPUT.npz 06

# python3 NVI_to_SWIR_scaling.py /mnt/e/Cristobal04_0 Cristobal04_0_FD_REDUCEDv2ALL_PM.npz_MODEL_M10_512_GOES_C13_10INPUT.npz 00
# python3 NVI_to_SWIR_scaling.py /mnt/e/Cristobal04_6 Cristobal04_6_FD_REDUCEDv2ALL_PM.npz_MODEL_M10_512_GOES_C13_10INPUT.npz 06

# python3 NVI_to_SWIR_scaling.py /mnt/e/Cristobal05_0 Cristobal05_0_FD_REDUCEDv2ALL_PM.npz_MODEL_M10_512_GOES_C13_10INPUT.npz 00
# python3 NVI_to_SWIR_scaling.py /mnt/e/Cristobal05_6 Cristobal05_6_FD_REDUCEDv2ALL_PM.npz_MODEL_M10_512_GOES_C13_10INPUT.npz 06

# python3 NVI_to_SWIR_scaling.py /mnt/e/Cristobal06_0 Cristobal06_0_FD_REDUCEDv2ALL_PM.npz_MODEL_M10_512_GOES_C13_10INPUT.npz 00
# python3 NVI_to_SWIR_scaling.py /mnt/e/Cristobal06_6 Cristobal06_6_FD_REDUCEDv2ALL_PM.npz_MODEL_M10_512_GOES_C13_10INPUT.npz 06

# python3 NVI_to_SWIR_scaling.py /mnt/e/Cristobal07_0 Cristobal07_0_FD_REDUCEDv2ALL_PM.npz_MODEL_M10_512_GOES_C13_10INPUT.npz 00
# python3 NVI_to_SWIR_scaling.py /mnt/e/Cristobal07_6 Cristobal07_6_FD_REDUCEDv2ALL_PM.npz_MODEL_M10_512_GOES_C13_10INPUT.npz 06

# python3 NVI_to_SWIR_scaling.py /mnt/e/Cristobal08_0 Cristobal08_0_FD_REDUCEDv2ALL_PM.npz_MODEL_M10_512_GOES_C13_10INPUT.npz 00
# python3 NVI_to_SWIR_scaling.py /mnt/e/Cristobal08_6 Cristobal08_6_FD_REDUCEDv2ALL_PM.npz_MODEL_M10_512_GOES_C13_10INPUT.npz 06

# python3 NVI_to_SWIR_scaling.py /mnt/e/Cristobal09_0 Cristobal09_0_FD_REDUCEDv2ALL_PM.npz_MODEL_M10_512_GOES_C13_10INPUT.npz 00
# python3 NVI_to_SWIR_scaling.py /mnt/e/Cristobal09_6 Cristobal09_6_FD_REDUCEDv2ALL_PM.npz_MODEL_M10_512_GOES_C13_10INPUT.npz 06

python3 NVI_to_SWIR_scaling.py /mnt/e/Arthur17_0 Arthur17_0_FD_REDUCEDv2ALL_PM.npz_MODEL_M10_512_GOES_C13_10INPUT.npz 00
python3 NVI_to_SWIR_scaling.py /mnt/e/Arthur17_6 Arthur17_6_FD_REDUCEDv2ALL_PM.npz_MODEL_M10_512_GOES_C13_10INPUT.npz 06

python3 NVI_to_SWIR_scaling.py /mnt/e/Arthur18_0 Arthur18_0_FD_REDUCEDv2ALL_PM.npz_MODEL_M10_512_GOES_C13_10INPUT.npz 00
python3 NVI_to_SWIR_scaling.py /mnt/e/Arthur18_6 Arthur18_6_FD_REDUCEDv2ALL_PM.npz_MODEL_M10_512_GOES_C13_10INPUT.npz 06

python3 NVI_to_SWIR_scaling.py /mnt/e/Arthur19_0 Arthur19_0_FD_REDUCEDv2ALL_PM.npz_MODEL_M10_512_GOES_C13_10INPUT.npz 00
python3 NVI_to_SWIR_scaling.py /mnt/e/Arthur19_6 Arthur19_6_FD_REDUCEDv2ALL_PM.npz_MODEL_M10_512_GOES_C13_10INPUT.npz 06

# Histogram Matching
# python3 Histogram_Match.py /mnt/e/Eduoard06_0 ML_truth_DATA_C13_00_SWIR.npz Eduoard06_0_FD_REDUCEDv2ALL.npz 00
# python3 Histogram_Match.py /mnt/e/Eduoard06_6 ML_truth_DATA_C13_06_SWIR.npz Eduoard06_6_FD_REDUCEDv2ALL.npz 06

# python3 Histogram_Match.py /mnt/e/Eduoard05_0 ML_truth_DATA_C13_00_SWIR.npz Eduoard05_0_FD_REDUCEDv2ALL.npz 00
# python3 Histogram_Match.py /mnt/e/Eduoard05_6 ML_truth_DATA_C13_06_SWIR.npz Eduoard05_6_FD_REDUCEDv2ALL.npz 06

# python3 Histogram_Match.py /mnt/e/Bertha27_6 ML_truth_DATA_C13_06_SWIR.npz Bertha27_6_FD_REDUCEDv2ALL.npz 06
# python3 Histogram_Match.py /mnt/e/Bertha28_0 ML_truth_DATA_C13_00_SWIR.npz Bertha28_0_FD_REDUCEDv2ALL.npz 00

# python3 Histogram_Match.py /mnt/e/Cristobal02_0 ML_truth_DATA_C13_00_SWIR.npz Cristobal02_0_FD_REDUCEDv2ALL.npz 00
# python3 Histogram_Match.py /mnt/e/Cristobal02_6 ML_truth_DATA_C13_06_SWIR.npz Cristobal02_6_FD_REDUCEDv2ALL.npz 06

# python3 Histogram_Match.py /mnt/e/Cristobal03_0 ML_truth_DATA_C13_00_SWIR.npz Cristobal03_0_FD_REDUCEDv2ALL.npz 00
# python3 Histogram_Match.py /mnt/e/Cristobal03_6 ML_truth_DATA_C13_06_SWIR.npz Cristobal03_6_FD_REDUCEDv2ALL.npz 06

# python3 Histogram_Match.py /mnt/e/Cristobal04_0 ML_truth_DATA_C13_00_SWIR.npz Cristobal04_0_FD_REDUCEDv2ALL.npz 00
# python3 Histogram_Match.py /mnt/e/Cristobal04_6 ML_truth_DATA_C13_06_SWIR.npz Cristobal04_6_FD_REDUCEDv2ALL.npz 06

# python3 Histogram_Match.py /mnt/e/Cristobal05_0 ML_truth_DATA_C13_00_SWIR.npz Cristobal05_0_FD_REDUCEDv2ALL.npz 00
# python3 Histogram_Match.py /mnt/e/Cristobal05_6 ML_truth_DATA_C13_06_SWIR.npz Cristobal05_6_FD_REDUCEDv2ALL.npz 06

# python3 Histogram_Match.py /mnt/e/Cristobal06_0 ML_truth_DATA_C13_00_SWIR.npz Cristobal06_0_FD_REDUCEDv2ALL.npz 00
# python3 Histogram_Match.py /mnt/e/Cristobal06_6 ML_truth_DATA_C13_06_SWIR.npz Cristobal06_6_FD_REDUCEDv2ALL.npz 06

# python3 Histogram_Match.py /mnt/e/Cristobal07_0 ML_truth_DATA_C13_00_SWIR.npz Cristobal07_0_FD_REDUCEDv2ALL.npz 00
# python3 Histogram_Match.py /mnt/e/Cristobal07_6 ML_truth_DATA_C13_06_SWIR.npz Cristobal07_6_FD_REDUCEDv2ALL.npz 06

# python3 Histogram_Match.py /mnt/e/Cristobal08_0 ML_truth_DATA_C13_00_SWIR.npz Cristobal08_0_FD_REDUCEDv2ALL.npz 00
# python3 Histogram_Match.py /mnt/e/Cristobal08_6 ML_truth_DATA_C13_06_SWIR.npz Cristobal08_6_FD_REDUCEDv2ALL.npz 06

# python3 Histogram_Match.py /mnt/e/Cristobal09_0 ML_truth_DATA_C13_00_SWIR.npz Cristobal09_0_FD_REDUCEDv2ALL.npz 00
# python3 Histogram_Match.py /mnt/e/Cristobal09_6 ML_truth_DATA_C13_06_SWIR.npz Cristobal09_6_FD_REDUCEDv2ALL.npz 06

python3 Histogram_Match.py /mnt/e/Arthur17_0 ML_truth_DATA_C13_00_SWIR.npz Arthur17_0_FD_REDUCEDv2ALL.npz 00
python3 Histogram_Match.py /mnt/e/Arthur17_6 ML_truth_DATA_C13_06_SWIR.npz Arthur17_6_FD_REDUCEDv2ALL.npz 06

python3 Histogram_Match.py /mnt/e/Arthur18_0 ML_truth_DATA_C13_00_SWIR.npz Arthur18_0_FD_REDUCEDv2ALL.npz 00
python3 Histogram_Match.py /mnt/e/Arthur18_6 ML_truth_DATA_C13_06_SWIR.npz Arthur18_6_FD_REDUCEDv2ALL.npz 06

python3 Histogram_Match.py /mnt/e/Arthur19_0 ML_truth_DATA_C13_00_SWIR.npz Arthur19_0_FD_REDUCEDv2ALL.npz 00
python3 Histogram_Match.py /mnt/e/Arthur19_6 ML_truth_DATA_C13_06_SWIR.npz Arthur19_6_FD_REDUCEDv2ALL.npz 06

