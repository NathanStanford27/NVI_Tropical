#! /usr/bin/bash


# Cimaron
python3 main.py AHI-CROP /mnt/d/Thesis/Mawar/05_18/12 54 1491 
python3 B07_correction.py /mnt/d/Thesis/Mawar/05_18/12 12_SAMPLE.npz 12
python3 main.py PREDICT-master /mnt/d/Thesis/Mawar/05_18/12/*.npz

python3 main.py AHI-CROP /mnt/d/Thesis/Mawar/05_18/18 54 1491
python3 B07_correction.py /mnt/d/Thesis/Mawar/05_18/18 18_SAMPLE.npz 18
python3 main.py PREDICT-master /mnt/d/Thesis/Mawar/05_18/18/*.npz

python3 main.py AHI-CROP /mnt/d/Thesis/Mawar/05_19/12 54 1491 
python3 B07_correction.py /mnt/d/Thesis/Mawar/05_19/12 12_SAMPLE.npz 12
python3 main.py PREDICT-master /mnt/d/Thesis/Mawar/05_19/12/*.npz

python3 main.py AHI-CROP /mnt/d/Thesis/Mawar/05_19/18 54 1491
python3 B07_correction.py /mnt/d/Thesis/Mawar/05_19/18 18_SAMPLE.npz 18
python3 main.py PREDICT-master /mnt/d/Thesis/Mawar/05_19/18/*.npz

