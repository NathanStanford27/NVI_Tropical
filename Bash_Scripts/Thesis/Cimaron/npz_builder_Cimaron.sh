#! /usr/bin/bash


# Cimaron
# python3 main.py AHI-CROP /mnt/d/Thesis/Cimaron/08_17/12 130 1569 
python3 B07_correction.py /mnt/d/Thesis/Cimaron/08_17/12 12_SAMPLE.npz 12
python3 main.py PREDICT-master /mnt/d/Thesis/Cimaron/08_17/12/*.npz

# python3 main.py AHI-CROP /mnt/d/Thesis/Cimaron/08_17/18 134 1557
python3 B07_correction.py /mnt/d/Thesis/Cimaron/08_17/18 18_SAMPLE.npz 18
python3 main.py PREDICT-master /mnt/d/Thesis/Cimaron/08_17/18/*.npz

# python3 main.py AHI-CROP /mnt/d/Thesis/Cimaron/08_18/12 144 1537
python3 B07_correction.py /mnt/d/Thesis/Cimaron/08_18/12 12_SAMPLE.npz 12
python3 main.py PREDICT-master /mnt/d/Thesis/Cimaron/08_18/12/*.npz

# python3 main.py AHI-CROP /mnt/d/Thesis/Cimaron/08_18/18 148 1529
python3 B07_correction.py /mnt/d/Thesis/Cimaron/08_18/18 18_SAMPLE.npz 18
python3 main.py PREDICT-master /mnt/d/Thesis/Cimaron/08_18/18/*.npz

# python3 main.py AHI-CROP /mnt/d/Thesis/Cimaron/08_19/12 158 1506
python3 B07_correction.py /mnt/d/Thesis/Cimaron/08_19/12 12_SAMPLE.npz 12
python3 main.py PREDICT-master /mnt/d/Thesis/Cimaron/08_19/12/*.npz

# python3 main.py AHI-CROP /mnt/d/Thesis/Cimaron/08_19/18 164 1500
python3 B07_correction.py /mnt/d/Thesis/Cimaron/08_19/18 18_SAMPLE.npz 18
python3 main.py PREDICT-master /mnt/d/Thesis/Cimaron/08_19/18/*.npz

# python3 main.py AHI-CROP /mnt/d/Thesis/Cimaron/08_23/18 365 1351
python3 B07_correction.py /mnt/d/Thesis/Cimaron/08_23/18 18_SAMPLE.npz 18
python3 main.py PREDICT-master /mnt/d/Thesis/Cimaron/08_23/18/*.npz