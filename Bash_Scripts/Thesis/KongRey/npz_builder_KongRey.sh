#! /usr/bin/bash


# KongRey
# python3 main.py AHI-CROP /mnt/d/Thesis/KongRey/09_28/12 97 1480
python3 B07_correction.py /mnt/d/Thesis/KongRey/09_28/12 12_SAMPLE.npz 12
python3 main.py PREDICT-master /mnt/d/Thesis/KongRey/09_28/12/*.npz

# python3 main.py AHI-CROP /mnt/d/Thesis/KongRey/09_28/18 112 1465
python3 B07_correction.py /mnt/d/Thesis/KongRey/09_28/18 18_SAMPLE.npz 18
python3 main.py PREDICT-master /mnt/d/Thesis/KongRey/09_28/18/*.npz

# python3 main.py AHI-CROP /mnt/d/Thesis/KongRey/09_29/12 127 1407
python3 B07_correction.py /mnt/d/Thesis/KongRey/09_29/12 12_SAMPLE.npz 12
python3 main.py PREDICT-master /mnt/d/Thesis/KongRey/09_29/12/*.npz




