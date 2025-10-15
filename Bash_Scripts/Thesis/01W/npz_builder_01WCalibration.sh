#! /usr/bin/bash


# 01W

python3 main.py AHI-CROP /mnt/d/Thesis/01W/04_20 102 1558
python3 B07_correction.py /mnt/d/Thesis/01W/04_20 04_20_SAMPLE.npz 04_20 
python3 main.py PREDICT-master /mnt/d/Thesis/01W/04_20/*.npz

# python3 main.py AHI-CROP /mnt/d/Thesis/01W/04_21 101 1561
# # python3 B07_correction.py /mnt/d/Thesis/01W/04_21 04_21_SAMPLE.npz 04_21
# python3 B03_correction.py /mnt/d/Thesis/01W/04_21 04_21_SAMPLE.npz 04_21
# python3 main.py PREDICT-master /mnt/d/Thesis/01W/04_21/*.npz

# python3 main.py AHI-CROP /mnt/d/Thesis/01W/07_03/18 
# python3 B07_correction.py /mnt/d/Thesis/01W/07_03/18 18_SAMPLE.npz 18
# python3 main.py PREDICT-master /mnt/d/Thesis/01W/07_03/18/*.npz

# python3 main.py AHI-CROP /mnt/d/Thesis/01W/07_04/12  
# python3 B07_correction.py /mnt/d/Thesis/01W/07_04/12 12_SAMPLE.npz 12
# python3 main.py PREDICT-master /mnt/d/Thesis/01W/07_04/12/*.npz

# # python3 main.py AHI-CROP /mnt/d/Thesis/01W/07_04/18 
# python3 B07_correction.py /mnt/d/Thesis/01W/07_04/18 18_SAMPLE.npz 18
# python3 main.py PREDICT-master /mnt/d/Thesis/01W/07_04/18/*.npz

# # python3 main.py AHI-CROP /mnt/d/Thesis/01W/07_11/12 
# python3 B07_correction.py /mnt/d/Thesis/01W/07_11/12 12_SAMPLE.npz 12
# python3 main.py PREDICT-master /mnt/d/Thesis/01W/07_11/12/*.npz

# # python3 main.py AHI-CROP /mnt/d/Thesis/01W/07_11/18 
# python3 B07_correction.py /mnt/d/Thesis/01W/07_11/18 18_SAMPLE.npz 18
# python3 main.py PREDICT-master /mnt/d/Thesis/01W/07_11/18/*.npz
