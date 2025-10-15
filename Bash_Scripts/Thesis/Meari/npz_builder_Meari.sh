#! /usr/bin/bash


# Cimaron
python3 main.py AHI-CROP /mnt/d/Thesis/Meari/08_10/10 273 1391
python3 B07_correction.py /mnt/d/Thesis/Meari/08_10/10 10_SAMPLE.npz 10
python3 main.py PREDICT-master /mnt/d/Thesis/Meari/08_10/10/*.npz

python3 main.py AHI-CROP /mnt/d/Thesis/Meari/08_10/12 276 1386
python3 B07_correction.py /mnt/d/Thesis/Meari/08_10/12 12_SAMPLE.npz 12
python3 main.py PREDICT-master /mnt/d/Thesis/Meari/08_10/12/*.npz

