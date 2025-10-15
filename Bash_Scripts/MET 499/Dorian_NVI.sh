# ONE BASH SCRIPT


# AWS Data Pull GOES (ABI naming convention: satellite/File/Year/JulianDate/Hour/)
# aws s3 sync --no-sign-request s3://noaa-goes16/ABI-L1b-RadF/2019/236/06/ /mnt/e/Dorian24_6
# aws s3 sync --no-sign-request s3://noaa-goes16/ABI-L1b-RadF/2019/237/00/ /mnt/e/Dorian25_0
# aws s3 sync --no-sign-request s3://noaa-goes16/ABI-L1b-RadF/2019/237/06/ /mnt/e/Dorian25_6
# aws s3 sync --no-sign-request s3://noaa-goes16/ABI-L1b-RadF/2019/238/00/ /mnt/e/Dorian26_0  
# aws s3 sync --no-sign-request s3://noaa-goes16/ABI-L1b-RadF/2019/238/06/ /mnt/e/Dorian26_6
# aws s3 sync --no-sign-request s3://noaa-goes16/ABI-L1b-RadF/2019/239/00/ /mnt/e/Dorian27_0  
# aws s3 sync --no-sign-request s3://noaa-goes16/ABI-L1b-RadF/2019/239/06/ /mnt/e/Dorian27_6
# aws s3 sync --no-sign-request s3://noaa-goes16/ABI-L1b-RadF/2019/240/00/ /mnt/e/Dorian28_0  
# aws s3 sync --no-sign-request s3://noaa-goes16/ABI-L1b-RadF/2019/240/06/ /mnt/e/Dorian28_6
# aws s3 sync --no-sign-request s3://noaa-goes16/ABI-L1b-RadF/2019/241/00/ /mnt/e/Dorian29_0  
# aws s3 sync --no-sign-request s3://noaa-goes16/ABI-L1b-RadF/2019/241/06/ /mnt/e/Dorian29_6
# aws s3 sync --no-sign-request s3://noaa-goes16/ABI-L1b-RadF/2019/242/00/ /mnt/e/Dorian30_0  
# aws s3 sync --no-sign-request s3://noaa-goes16/ABI-L1b-RadF/2019/242/06/ /mnt/e/Dorian30_6
# aws s3 sync --no-sign-request s3://noaa-goes16/ABI-L1b-RadF/2019/243/00/ /mnt/e/Dorian31_0  
# aws s3 sync --no-sign-request s3://noaa-goes16/ABI-L1b-RadF/2019/243/06/ /mnt/e/Dorian31_6
# aws s3 sync --no-sign-request s3://noaa-goes16/ABI-L1b-RadF/2019/244/00/ /mnt/e/Dorian1_0  
# aws s3 sync --no-sign-request s3://noaa-goes16/ABI-L1b-RadF/2019/244/06/ /mnt/e/Dorian1_6
# aws s3 sync --no-sign-request s3://noaa-goes16/ABI-L1b-RadF/2019/245/00/ /mnt/e/Dorian2_0  
# aws s3 sync --no-sign-request s3://noaa-goes16/ABI-L1b-RadF/2019/245/06/ /mnt/e/Dorian2_6
# aws s3 sync --no-sign-request s3://noaa-goes16/ABI-L1b-RadF/2019/246/00/ /mnt/e/Dorian3_0  
# aws s3 sync --no-sign-request s3://noaa-goes16/ABI-L1b-RadF/2019/246/06/ /mnt/e/Dorian3_6
# aws s3 sync --no-sign-request s3://noaa-goes16/ABI-L1b-RadF/2019/247/00/ /mnt/e/Dorian4_0  
# aws s3 sync --no-sign-request s3://noaa-goes16/ABI-L1b-RadF/2019/247/06/ /mnt/e/Dorian4_6
# aws s3 sync --no-sign-request s3://noaa-goes16/ABI-L1b-RadF/2019/248/00/ /mnt/e/Dorian5_0  
# aws s3 sync --no-sign-request s3://noaa-goes16/ABI-L1b-RadF/2019/248/06/ /mnt/e/Dorian5_6
# aws s3 sync --no-sign-request s3://noaa-goes16/ABI-L1b-RadF/2019/249/00/ /mnt/e/Dorian6_0  
# aws s3 sync --no-sign-request s3://noaa-goes16/ABI-L1b-RadF/2019/249/06/ /mnt/e/Dorian6_6
# aws s3 sync --no-sign-request s3://noaa-goes16/ABI-L1b-RadF/2019/250/00/ /mnt/e/Dorian7_0  
# aws s3 sync --no-sign-request s3://noaa-goes16/ABI-L1b-RadF/2019/250/06/ /mnt/e/Dorian7_6

# cd Dorian24_6
# rm *C01*.nc *C02*.nc *C03*.nc *C04*.nc *C05*.nc *C06*.nc *C08*.nc *C09*.nc *C10*.nc *C12*.nc *C16*.nc
# rm *s20192360610*.nc *s20192360620*.nc *s20192360630*.nc *s20192360640*.nc *s20192360650*.nc

# cd ../Dorian25_0
# rm *C01*.nc *C02*.nc *C03*.nc *C04*.nc *C05*.nc *C06*.nc *C08*.nc *C09*.nc *C10*.nc *C12*.nc *C16*.nc
# rm *s20192370010*.nc *s20192370020*.nc *s20192370030*.nc *s20192370040*.nc *s20192370050*.nc

# cd ../Dorian25_6
# rm *C01*.nc *C02*.nc *C03*.nc *C04*.nc *C05*.nc *C06*.nc *C08*.nc *C09*.nc *C10*.nc *C12*.nc *C16*.nc
# rm *s20192370610*.nc *s20192370620*.nc *s20192370630*.nc *s20192370640*.nc *s20192370650*.nc

# cd ../Dorian26_0
# rm *C01*.nc *C02*.nc *C03*.nc *C04*.nc *C05*.nc *C06*.nc *C08*.nc *C09*.nc *C10*.nc *C12*.nc *C16*.nc
# rm *s20192380010*.nc *s20192380020*.nc *s20192380030*.nc *s20192380040*.nc *s20192380050*.nc

# cd ../Dorian26_6
# rm *C01*.nc *C02*.nc *C03*.nc *C04*.nc *C05*.nc *C06*.nc *C08*.nc *C09*.nc *C10*.nc *C12*.nc *C16*.nc
# rm *s20192380610*.nc *s20192380620*.nc *s20192380630*.nc *s20192380640*.nc *s20192380650*.nc

# cd ../Dorian27_0
# rm *C01*.nc *C02*.nc *C03*.nc *C04*.nc *C05*.nc *C06*.nc *C08*.nc *C09*.nc *C10*.nc *C12*.nc *C16*.nc
# rm *s20192390010*.nc *s20192390020*.nc *s20192390030*.nc *s20192390040*.nc *s20192390050*.nc

# cd ../Dorian27_6
# rm *C01*.nc *C02*.nc *C03*.nc *C04*.nc *C05*.nc *C06*.nc *C08*.nc *C09*.nc *C10*.nc *C12*.nc *C16*.nc
# rm *s20192390610*.nc *s20192390620*.nc *s20192390630*.nc *s20192390640*.nc *s20192390650*.nc

# cd ../Dorian28_0
# rm *C01*.nc *C02*.nc *C03*.nc *C04*.nc *C05*.nc *C06*.nc *C08*.nc *C09*.nc *C10*.nc *C12*.nc *C16*.nc
# rm *s20192400010*.nc *s20192400020*.nc *s20192400030*.nc *s20192400040*.nc *s20192400050*.nc

# cd ../Dorian28_6
# rm *C01*.nc *C02*.nc *C03*.nc *C04*.nc *C05*.nc *C06*.nc *C08*.nc *C09*.nc *C10*.nc *C12*.nc *C16*.nc
# rm *s20192400610*.nc *s20192400620*.nc *s20192400630*.nc *s20192400640*.nc *s20192400650*.nc

# cd ../Dorian29_0
# rm *C01*.nc *C02*.nc *C03*.nc *C04*.nc *C05*.nc *C06*.nc *C08*.nc *C09*.nc *C10*.nc *C12*.nc *C16*.nc
# rm *s20192410010*.nc *s20192410020*.nc *s20192410030*.nc *s20192410040*.nc *s20192410050*.nc

# cd ../Dorian29_6
# rm *C01*.nc *C02*.nc *C03*.nc *C04*.nc *C05*.nc *C06*.nc *C08*.nc *C09*.nc *C10*.nc *C12*.nc *C16*.nc
# rm *s20192410610*.nc *s20192410620*.nc *s20192410630*.nc *s20192410640*.nc *s20192410650*.nc

# cd ../Dorian30_0
# rm *C01*.nc *C02*.nc *C03*.nc *C04*.nc *C05*.nc *C06*.nc *C08*.nc *C09*.nc *C10*.nc *C12*.nc *C16*.nc
# rm *s20192420010*.nc *s20192420020*.nc *s20192420030*.nc *s20192420040*.nc *s20192420050*.nc

# cd ../Dorian30_6
# rm *C01*.nc *C02*.nc *C03*.nc *C04*.nc *C05*.nc *C06*.nc *C08*.nc *C09*.nc *C10*.nc *C12*.nc *C16*.nc
# rm *s20192420610*.nc *s20192420620*.nc *s20192420630*.nc *s20192420640*.nc *s20192420650*.nc

# cd ../Dorian31_0
# rm *C01*.nc *C02*.nc *C03*.nc *C04*.nc *C05*.nc *C06*.nc *C08*.nc *C09*.nc *C10*.nc *C12*.nc *C16*.nc
# rm *s20192430010*.nc *s20192430020*.nc *s20192430030*.nc *s20192430040*.nc *s20192430050*.nc

# cd ../Dorian31_6
# rm *C01*.nc *C02*.nc *C03*.nc *C04*.nc *C05*.nc *C06*.nc *C08*.nc *C09*.nc *C10*.nc *C12*.nc *C16*.nc
# rm *s20192430610*.nc *s20192430620*.nc *s20192430630*.nc *s20192430640*.nc *s20192430650*.nc

# cd ../Dorian1_0
# rm *C01*.nc *C02*.nc *C03*.nc *C04*.nc *C05*.nc *C06*.nc *C08*.nc *C09*.nc *C10*.nc *C12*.nc *C16*.nc
# rm *s20192440010*.nc *s20192440020*.nc *s20192440030*.nc *s20192440040*.nc *s20192440050*.nc

# cd ../Dorian1_6
# rm *C01*.nc *C02*.nc *C03*.nc *C04*.nc *C05*.nc *C06*.nc *C08*.nc *C09*.nc *C10*.nc *C12*.nc *C16*.nc
# rm *s20192440610*.nc *s20192440620*.nc *s20192440630*.nc *s20192440640*.nc *s20192440650*.nc

# cd ../Dorian2_0
# rm *C01*.nc *C02*.nc *C03*.nc *C04*.nc *C05*.nc *C06*.nc *C08*.nc *C09*.nc *C10*.nc *C12*.nc *C16*.nc
# rm *s20192450010*.nc *s20192450020*.nc *s20192450030*.nc *s20192450040*.nc *s20192450050*.nc

# cd ../Dorian2_6
# rm *C01*.nc *C02*.nc *C03*.nc *C04*.nc *C05*.nc *C06*.nc *C08*.nc *C09*.nc *C10*.nc *C12*.nc *C16*.nc
# rm *s20192450610*.nc *s20192450620*.nc *s20192450630*.nc *s20192450640*.nc *s20192450650*.nc

# cd ../Dorian3_0
# rm *C01*.nc *C02*.nc *C03*.nc *C04*.nc *C05*.nc *C06*.nc *C08*.nc *C09*.nc *C10*.nc *C12*.nc *C16*.nc
# rm *s20192460010*.nc *s20192460020*.nc *s20192460030*.nc *s20192460040*.nc *s20192460050*.nc

# cd ../Dorian3_6
# rm *C01*.nc *C02*.nc *C03*.nc *C04*.nc *C05*.nc *C06*.nc *C08*.nc *C09*.nc *C10*.nc *C12*.nc *C16*.nc
# rm *s20192460610*.nc *s20192460620*.nc *s20192460630*.nc *s20192460640*.nc *s20192460650*.nc

# cd ../Dorian4_0
# rm *C01*.nc *C02*.nc *C03*.nc *C04*.nc *C05*.nc *C06*.nc *C08*.nc *C09*.nc *C10*.nc *C12*.nc *C16*.nc
# rm *s20192470010*.nc *s20192470020*.nc *s20192470030*.nc *s20192470040*.nc *s20192470050*.nc

# cd ../Dorian4_6
# rm *C01*.nc *C02*.nc *C03*.nc *C04*.nc *C05*.nc *C06*.nc *C08*.nc *C09*.nc *C10*.nc *C12*.nc *C16*.nc
# rm *s20192470610*.nc *s20192470620*.nc *s20192470630*.nc *s20192470640*.nc *s20192470650*.nc

# cd ../Dorian5_0
# rm *C01*.nc *C02*.nc *C03*.nc *C04*.nc *C05*.nc *C06*.nc *C08*.nc *C09*.nc *C10*.nc *C12*.nc *C16*.nc
# rm *s20192480010*.nc *s20192480020*.nc *s20192480030*.nc *s20192480040*.nc *s20192480050*.nc

# cd ../Dorian5_6
# rm *C01*.nc *C02*.nc *C03*.nc *C04*.nc *C05*.nc *C06*.nc *C08*.nc *C09*.nc *C10*.nc *C12*.nc *C16*.nc
# rm *s20192480610*.nc *s20192480620*.nc *s20192480630*.nc *s20192480640*.nc *s20192480650*.nc

# cd ../Dorian6_0
# rm *C01*.nc *C02*.nc *C03*.nc *C04*.nc *C05*.nc *C06*.nc *C08*.nc *C09*.nc *C10*.nc *C12*.nc *C16*.nc
# rm *s20192490010*.nc *s20192490020*.nc *s20192490030*.nc *s20192490040*.nc *s20192490050*.nc

# cd ../Dorian6_6
# rm *C01*.nc *C02*.nc *C03*.nc *C04*.nc *C05*.nc *C06*.nc *C08*.nc *C09*.nc *C10*.nc *C12*.nc *C16*.nc
# rm *s20192490610*.nc *s20192490620*.nc *s20192490630*.nc *s20192490640*.nc *s20192490650*.nc

# cd ../Dorian7_0
# rm *C01*.nc *C02*.nc *C03*.nc *C04*.nc *C05*.nc *C06*.nc *C08*.nc *C09*.nc *C10*.nc *C12*.nc *C16*.nc
# rm *s20192500010*.nc *s20192500020*.nc *s20192500030*.nc *s20192500040*.nc *s20192500050*.nc

# cd ../Dorian7_6
# rm *C01*.nc *C02*.nc *C03*.nc *C04*.nc *C05*.nc *C06*.nc *C08*.nc *C09*.nc *C10*.nc *C12*.nc *C16*.nc
# rm *s20192500610*.nc *s20192500620*.nc *s20192500630*.nc *s20192500640*.nc *s20192500650*.nc

# SECOND BASH SCRIPT


# python3 main.py ABI-only-FDR /mnt/e/Dorian24_6 103 -464
# python3 main.py PREDICT-master /mnt/e/Dorian24_6/*.npz
# python3 main.py FNN-GOES-predict /mnt/e/Dorian24_6/*PM*.npz M10_512_GOES_C13_10INPUT BAND_C13_model_channels

# python3 main.py ABI-only-FDR /mnt/e/Dorian25_0 108 -499
# python3 main.py PREDICT-master /mnt/e/Dorian25_0/*.npz
# python3 main.py FNN-GOES-predict /mnt/e/Dorian25_0/*PM*.npz M10_512_GOES_C13_10INPUT BAND_C13_model_channels

# python3 main.py ABI-only-FDR /mnt/e/Dorian25_6 110 -510
# python3 main.py PREDICT-master /mnt/e/Dorian25_6/*.npz
# python3 main.py FNN-GOES-predict /mnt/e/Dorian25_6/*PM*.npz M10_512_GOES_C13_10INPUT BAND_C13_model_channels

# python3 main.py ABI-only-FDR /mnt/e/Dorian26_0 116 -547
# python3 main.py PREDICT-master /mnt/e/Dorian26_0/*.npz
# python3 main.py FNN-GOES-predict /mnt/e/Dorian26_0/*PM*.npz M10_512_GOES_C13_10INPUT BAND_C13_model_channels

# python3 main.py ABI-only-FDR /mnt/e/Dorian26_6 119 -560
# python3 main.py PREDICT-master /mnt/e/Dorian26_6/*.npz
# python3 main.py FNN-GOES-predict /mnt/e/Dorian26_6/*PM*.npz M10_512_GOES_C13_10INPUT BAND_C13_model_channels

# python3 main.py ABI-only-FDR /mnt/e/Dorian27_0 130 -592
# python3 main.py PREDICT-master /mnt/e/Dorian27_0/*.npz
# python3 main.py FNN-GOES-predict /mnt/e/Dorian27_0/*PM*.npz M10_512_GOES_C13_10INPUT BAND_C13_model_channels

# python3 main.py ABI-only-FDR /mnt/e/Dorian27_6 135 -602
# python3 main.py PREDICT-master /mnt/e/Dorian27_6/*.npz
# python3 main.py FNN-GOES-predict /mnt/e/Dorian27_6/*PM*.npz M10_512_GOES_C13_10INPUT BAND_C13_model_channels

# python3 main.py ABI-only-FDR /mnt/e/Dorian28_0 157 -628
# python3 main.py PREDICT-master /mnt/e/Dorian28_0/*.npz
# python3 main.py FNN-GOES-predict /mnt/e/Dorian28_0/*PM*.npz M10_512_GOES_C13_10INPUT BAND_C13_model_channels

# python3 main.py ABI-only-FDR /mnt/e/Dorian28_6 164 -635
# python3 main.py PREDICT-master /mnt/e/Dorian28_6/*.npz
# python3 main.py FNN-GOES-predict /mnt/e/Dorian28_6/*PM*.npz M10_512_GOES_C13_10INPUT BAND_C13_model_channels

# python3 main.py ABI-only-FDR /mnt/e/Dorian29_0 192 -657
# python3 main.py PREDICT-master /mnt/e/Dorian29_0/*.npz
# python3 main.py FNN-GOES-predict /mnt/e/Dorian29_0/*PM*.npz M10_512_GOES_C13_10INPUT BAND_C13_model_channels

# python3 main.py ABI-only-FDR /mnt/e/Dorian29_6 200 -663
# python3 main.py PREDICT-master /mnt/e/Dorian29_6/*.npz
# python3 main.py FNN-GOES-predict /mnt/e/Dorian29_6/*PM*.npz M10_512_GOES_C13_10INPUT BAND_C13_model_channels

# python3 main.py ABI-only-FDR /mnt/e/Dorian30_0 228 -680
# python3 main.py PREDICT-master /mnt/e/Dorian30_0/*.npz
# python3 main.py FNN-GOES-predict /mnt/e/Dorian30_0/*PM*.npz M10_512_GOES_C13_10INPUT BAND_C13_model_channels

# python3 main.py ABI-only-FDR /mnt/e/Dorian30_6 235 -688
# python3 main.py PREDICT-master /mnt/e/Dorian30_6/*.npz
# python3 main.py FNN-GOES-predict /mnt/e/Dorian30_6/*PM*.npz M10_512_GOES_C13_10INPUT BAND_C13_model_channels

# python3 main.py ABI-only-FDR /mnt/e/Dorian31_0 253 -711
# python3 main.py PREDICT-master /mnt/e/Dorian31_0/*.npz
# python3 main.py FNN-GOES-predict /mnt/e/Dorian31_0/*PM*.npz M10_512_GOES_C13_10INPUT BAND_C13_model_channels

# python3 main.py ABI-only-FDR /mnt/e/Dorian31_6 256 -721
# python3 main.py PREDICT-master /mnt/e/Dorian31_6/*.npz
# python3 main.py FNN-GOES-predict /mnt/e/Dorian31_6/*PM*.npz M10_512_GOES_C13_10INPUT BAND_C13_model_channels

# python3 main.py ABI-only-FDR /mnt/e/Dorian1_0 263 -747
# python3 main.py PREDICT-master /mnt/e/Dorian1_0/*.npz
# python3 main.py FNN-GOES-predict /mnt/e/Dorian1_0/*PM*.npz M10_512_GOES_C13_10INPUT BAND_C13_model_channels

# python3 main.py ABI-only-FDR /mnt/e/Dorian1_6 264 -756
# python3 main.py PREDICT-master /mnt/e/Dorian1_6/*.npz
# python3 main.py FNN-GOES-predict /mnt/e/Dorian1_6/*PM*.npz M10_512_GOES_C13_10INPUT BAND_C13_model_channels

# python3 main.py ABI-only-FDR /mnt/e/Dorian2_0 266 -777
# python3 main.py PREDICT-master /mnt/e/Dorian2_0/*.npz
# python3 main.py FNN-GOES-predict /mnt/e/Dorian2_0/*PM*.npz M10_512_GOES_C13_10INPUT BAND_C13_model_channels

# python3 main.py ABI-only-FDR /mnt/e/Dorian2_6 266 -780
# python3 main.py PREDICT-master /mnt/e/Dorian2_6/*.npz
# python3 main.py FNN-GOES-predict /mnt/e/Dorian2_6/*PM*.npz M10_512_GOES_C13_10INPUT BAND_C13_model_channels

# python3 main.py ABI-only-FDR /mnt/e/Dorian3_0 269 -785
# python3 main.py PREDICT-master /mnt/e/Dorian3_0/*.npz
# python3 main.py FNN-GOES-predict /mnt/e/Dorian3_0/*PM*.npz M10_512_GOES_C13_10INPUT BAND_C13_model_channels

# python3 main.py ABI-only-FDR /mnt/e/Dorian3_6 270 -785
# python3 main.py PREDICT-master /mnt/e/Dorian3_6/*.npz
# python3 main.py FNN-GOES-predict /mnt/e/Dorian3_6/*PM*.npz M10_512_GOES_C13_10INPUT BAND_C13_model_channels

# python3 main.py ABI-only-FDR /mnt/e/Dorian4_0 281 -788
# python3 main.py PREDICT-master /mnt/e/Dorian4_0/*.npz
# python3 main.py FNN-GOES-predict /mnt/e/Dorian4_0/*PM*.npz M10_512_GOES_C13_10INPUT BAND_C13_model_channels

# python3 main.py ABI-only-FDR /mnt/e/Dorian4_6 288 -792
# python3 main.py PREDICT-master /mnt/e/Dorian4_6/*.npz
# python3 main.py FNN-GOES-predict /mnt/e/Dorian4_6/*PM*.npz M10_512_GOES_C13_10INPUT BAND_C13_model_channels

# python3 main.py ABI-only-FDR /mnt/e/Dorian5_0 307 -797
# python3 main.py PREDICT-master /mnt/e/Dorian5_0/*.npz
# python3 main.py FNN-GOES-predict /mnt/e/Dorian5_0/*PM*.npz M10_512_GOES_C13_10INPUT BAND_C13_model_channels

# python3 main.py ABI-only-FDR /mnt/e/Dorian5_6 314 -796
# python3 main.py PREDICT-master /mnt/e/Dorian5_6/*.npz
# python3 main.py FNN-GOES-predict /mnt/e/Dorian5_6/*PM*.npz M10_512_GOES_C13_10INPUT BAND_C13_model_channels

# python3 main.py ABI-only-FDR /mnt/e/Dorian6_0 334 -779
# python3 main.py PREDICT-master /mnt/e/Dorian6_0/*.npz
# python3 main.py FNN-GOES-predict /mnt/e/Dorian6_0/*PM*.npz M10_512_GOES_C13_10INPUT BAND_C13_model_channels

# python3 main.py ABI-only-FDR /mnt/e/Dorian6_6 341 -769
# python3 main.py PREDICT-master /mnt/e/Dorian6_6/*.npz
# python3 main.py FNN-GOES-predict /mnt/e/Dorian6_6/*PM*.npz M10_512_GOES_C13_10INPUT BAND_C13_model_channels

python3 main.py ABI-only-FDR /mnt/e/Dorian7_0 374 -712
python3 main.py PREDICT-master /mnt/e/Dorian7_0/*.npz
python3 main.py FNN-GOES-predict /mnt/e/Dorian7_0/*PM*.npz M10_512_GOES_C13_10INPUT BAND_C13_model_channels

python3 main.py ABI-only-FDR /mnt/e/Dorian7_6 389 -689
python3 main.py PREDICT-master /mnt/e/Dorian7_6/*.npz
python3 main.py FNN-GOES-predict /mnt/e/Dorian7_6/*PM*.npz M10_512_GOES_C13_10INPUT BAND_C13_model_channels

# SWIR Scaling
# python3 NVI_to_SWIR_scaling.py /mnt/e/Dorian24_6 Dorian24_6_FD_REDUCEDv2ALL_PM.npz_MODEL_M10_512_GOES_C13_10INPUT.npz 06
# python3 NVI_to_SWIR_scaling.py /mnt/e/Dorian25_0 Dorian25_0_FD_REDUCEDv2ALL_PM.npz_MODEL_M10_512_GOES_C13_10INPUT.npz 00
# python3 NVI_to_SWIR_scaling.py /mnt/e/Dorian25_6 Dorian25_6_FD_REDUCEDv2ALL_PM.npz_MODEL_M10_512_GOES_C13_10INPUT.npz 06
# python3 NVI_to_SWIR_scaling.py /mnt/e/Dorian26_0 Dorian26_0_FD_REDUCEDv2ALL_PM.npz_MODEL_M10_512_GOES_C13_10INPUT.npz 00
# python3 NVI_to_SWIR_scaling.py /mnt/e/Dorian26_6 Dorian26_6_FD_REDUCEDv2ALL_PM.npz_MODEL_M10_512_GOES_C13_10INPUT.npz 06
# python3 NVI_to_SWIR_scaling.py /mnt/e/Dorian27_0 Dorian27_0_FD_REDUCEDv2ALL_PM.npz_MODEL_M10_512_GOES_C13_10INPUT.npz 00
# python3 NVI_to_SWIR_scaling.py /mnt/e/Dorian27_6 Dorian27_6_FD_REDUCEDv2ALL_PM.npz_MODEL_M10_512_GOES_C13_10INPUT.npz 06
# python3 NVI_to_SWIR_scaling.py /mnt/e/Dorian28_0 Dorian28_0_FD_REDUCEDv2ALL_PM.npz_MODEL_M10_512_GOES_C13_10INPUT.npz 00
# python3 NVI_to_SWIR_scaling.py /mnt/e/Dorian28_6 Dorian28_6_FD_REDUCEDv2ALL_PM.npz_MODEL_M10_512_GOES_C13_10INPUT.npz 06
# python3 NVI_to_SWIR_scaling.py /mnt/e/Dorian29_0 Dorian29_0_FD_REDUCEDv2ALL_PM.npz_MODEL_M10_512_GOES_C13_10INPUT.npz 00
# python3 NVI_to_SWIR_scaling.py /mnt/e/Dorian29_6 Dorian29_6_FD_REDUCEDv2ALL_PM.npz_MODEL_M10_512_GOES_C13_10INPUT.npz 06
# python3 NVI_to_SWIR_scaling.py /mnt/e/Dorian30_0 Dorian30_0_FD_REDUCEDv2ALL_PM.npz_MODEL_M10_512_GOES_C13_10INPUT.npz 00
# python3 NVI_to_SWIR_scaling.py /mnt/e/Dorian30_6 Dorian30_6_FD_REDUCEDv2ALL_PM.npz_MODEL_M10_512_GOES_C13_10INPUT.npz 06
# python3 NVI_to_SWIR_scaling.py /mnt/e/Dorian31_0 Dorian31_0_FD_REDUCEDv2ALL_PM.npz_MODEL_M10_512_GOES_C13_10INPUT.npz 00
# python3 NVI_to_SWIR_scaling.py /mnt/e/Dorian31_6 Dorian31_6_FD_REDUCEDv2ALL_PM.npz_MODEL_M10_512_GOES_C13_10INPUT.npz 06
# python3 NVI_to_SWIR_scaling.py /mnt/e/Dorian1_0 Dorian1_0_FD_REDUCEDv2ALL_PM.npz_MODEL_M10_512_GOES_C13_10INPUT.npz 00
# python3 NVI_to_SWIR_scaling.py /mnt/e/Dorian1_6 Dorian1_6_FD_REDUCEDv2ALL_PM.npz_MODEL_M10_512_GOES_C13_10INPUT.npz 06
# python3 NVI_to_SWIR_scaling.py /mnt/e/Dorian2_0 Dorian2_0_FD_REDUCEDv2ALL_PM.npz_MODEL_M10_512_GOES_C13_10INPUT.npz 00
# python3 NVI_to_SWIR_scaling.py /mnt/e/Dorian2_6 Dorian2_6_FD_REDUCEDv2ALL_PM.npz_MODEL_M10_512_GOES_C13_10INPUT.npz 06
# python3 NVI_to_SWIR_scaling.py /mnt/e/Dorian3_0 Dorian3_0_FD_REDUCEDv2ALL_PM.npz_MODEL_M10_512_GOES_C13_10INPUT.npz 00
# python3 NVI_to_SWIR_scaling.py /mnt/e/Dorian3_6 Dorian3_6_FD_REDUCEDv2ALL_PM.npz_MODEL_M10_512_GOES_C13_10INPUT.npz 06
# python3 NVI_to_SWIR_scaling.py /mnt/e/Dorian4_0 Dorian4_0_FD_REDUCEDv2ALL_PM.npz_MODEL_M10_512_GOES_C13_10INPUT.npz 00
# python3 NVI_to_SWIR_scaling.py /mnt/e/Dorian4_6 Dorian4_6_FD_REDUCEDv2ALL_PM.npz_MODEL_M10_512_GOES_C13_10INPUT.npz 06
# python3 NVI_to_SWIR_scaling.py /mnt/e/Dorian5_0 Dorian5_0_FD_REDUCEDv2ALL_PM.npz_MODEL_M10_512_GOES_C13_10INPUT.npz 00
# python3 NVI_to_SWIR_scaling.py /mnt/e/Dorian5_6 Dorian5_6_FD_REDUCEDv2ALL_PM.npz_MODEL_M10_512_GOES_C13_10INPUT.npz 06
# python3 NVI_to_SWIR_scaling.py /mnt/e/Dorian6_0 Dorian6_0_FD_REDUCEDv2ALL_PM.npz_MODEL_M10_512_GOES_C13_10INPUT.npz 00
# python3 NVI_to_SWIR_scaling.py /mnt/e/Dorian6_6 Dorian6_6_FD_REDUCEDv2ALL_PM.npz_MODEL_M10_512_GOES_C13_10INPUT.npz 06
python3 NVI_to_SWIR_scaling.py /mnt/e/Dorian7_0 Dorian7_0_FD_REDUCEDv2ALL_PM.npz_MODEL_M10_512_GOES_C13_10INPUT.npz 00
python3 NVI_to_SWIR_scaling.py /mnt/e/Dorian7_6 Dorian7_6_FD_REDUCEDv2ALL_PM.npz_MODEL_M10_512_GOES_C13_10INPUT.npz 06


# Histogram Matching
# python3 Histogram_Match.py /mnt/e/Dorian24_6 ML_truth_DATA_C13_06_SWIR.npz Dorian24_6_FD_REDUCEDv2ALL.npz 06
# python3 Histogram_Match.py /mnt/e/Dorian25_0 ML_truth_DATA_C13_00_SWIR.npz Dorian25_0_FD_REDUCEDv2ALL.npz 00
# python3 Histogram_Match.py /mnt/e/Dorian25_6 ML_truth_DATA_C13_06_SWIR.npz Dorian25_6_FD_REDUCEDv2ALL.npz 06
# python3 Histogram_Match.py /mnt/e/Dorian26_0 ML_truth_DATA_C13_00_SWIR.npz Dorian26_0_FD_REDUCEDv2ALL.npz 00
# python3 Histogram_Match.py /mnt/e/Dorian26_6 ML_truth_DATA_C13_06_SWIR.npz Dorian26_6_FD_REDUCEDv2ALL.npz 06
# python3 Histogram_Match.py /mnt/e/Dorian27_0 ML_truth_DATA_C13_00_SWIR.npz Dorian27_0_FD_REDUCEDv2ALL.npz 00
# python3 Histogram_Match.py /mnt/e/Dorian27_6 ML_truth_DATA_C13_06_SWIR.npz Dorian27_6_FD_REDUCEDv2ALL.npz 06
# python3 Histogram_Match.py /mnt/e/Dorian28_0 ML_truth_DATA_C13_00_SWIR.npz Dorian28_0_FD_REDUCEDv2ALL.npz 00
# python3 Histogram_Match.py /mnt/e/Dorian28_6 ML_truth_DATA_C13_06_SWIR.npz Dorian28_6_FD_REDUCEDv2ALL.npz 06
# python3 Histogram_Match.py /mnt/e/Dorian29_0 ML_truth_DATA_C13_00_SWIR.npz Dorian29_0_FD_REDUCEDv2ALL.npz 00
# python3 Histogram_Match.py /mnt/e/Dorian29_6 ML_truth_DATA_C13_06_SWIR.npz Dorian29_6_FD_REDUCEDv2ALL.npz 06
# python3 Histogram_Match.py /mnt/e/Dorian30_0 ML_truth_DATA_C13_00_SWIR.npz Dorian30_0_FD_REDUCEDv2ALL.npz 00
# python3 Histogram_Match.py /mnt/e/Dorian30_6 ML_truth_DATA_C13_06_SWIR.npz Dorian30_6_FD_REDUCEDv2ALL.npz 06
# python3 Histogram_Match.py /mnt/e/Dorian31_0 ML_truth_DATA_C13_00_SWIR.npz Dorian31_0_FD_REDUCEDv2ALL.npz 00
# python3 Histogram_Match.py /mnt/e/Dorian31_6 ML_truth_DATA_C13_06_SWIR.npz Dorian31_6_FD_REDUCEDv2ALL.npz 06
# python3 Histogram_Match.py /mnt/e/Dorian1_0 ML_truth_DATA_C13_00_SWIR.npz Dorian1_0_FD_REDUCEDv2ALL.npz 00
# python3 Histogram_Match.py /mnt/e/Dorian1_6 ML_truth_DATA_C13_06_SWIR.npz Dorian1_6_FD_REDUCEDv2ALL.npz 06
# python3 Histogram_Match.py /mnt/e/Dorian2_0 ML_truth_DATA_C13_00_SWIR.npz Dorian2_0_FD_REDUCEDv2ALL.npz 00
# python3 Histogram_Match.py /mnt/e/Dorian2_6 ML_truth_DATA_C13_06_SWIR.npz Dorian2_6_FD_REDUCEDv2ALL.npz 06
# python3 Histogram_Match.py /mnt/e/Dorian3_0 ML_truth_DATA_C13_00_SWIR.npz Dorian3_0_FD_REDUCEDv2ALL.npz 00
# python3 Histogram_Match.py /mnt/e/Dorian3_6 ML_truth_DATA_C13_06_SWIR.npz Dorian3_6_FD_REDUCEDv2ALL.npz 06
# python3 Histogram_Match.py /mnt/e/Dorian4_0 ML_truth_DATA_C13_00_SWIR.npz Dorian4_0_FD_REDUCEDv2ALL.npz 00
# python3 Histogram_Match.py /mnt/e/Dorian4_6 ML_truth_DATA_C13_06_SWIR.npz Dorian4_6_FD_REDUCEDv2ALL.npz 06
# python3 Histogram_Match.py /mnt/e/Dorian5_0 ML_truth_DATA_C13_00_SWIR.npz Dorian5_0_FD_REDUCEDv2ALL.npz 00
# python3 Histogram_Match.py /mnt/e/Dorian5_6 ML_truth_DATA_C13_06_SWIR.npz Dorian5_6_FD_REDUCEDv2ALL.npz 06
# python3 Histogram_Match.py /mnt/e/Dorian6_0 ML_truth_DATA_C13_00_SWIR.npz Dorian6_0_FD_REDUCEDv2ALL.npz 00
# python3 Histogram_Match.py /mnt/e/Dorian6_6 ML_truth_DATA_C13_06_SWIR.npz Dorian6_6_FD_REDUCEDv2ALL.npz 06
python3 Histogram_Match.py /mnt/e/Dorian7_0 ML_truth_DATA_C13_00_SWIR.npz Dorian7_0_FD_REDUCEDv2ALL.npz 00
python3 Histogram_Match.py /mnt/e/Dorian7_6 ML_truth_DATA_C13_06_SWIR.npz Dorian7_6_FD_REDUCEDv2ALL.npz 06