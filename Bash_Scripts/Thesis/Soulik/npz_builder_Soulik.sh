#! /usr/bin/bash


# Soulik
# python3 main.py AHI-CROP /mnt/d/Thesis/Soulik/08_15/12 127 1444
python3 B07_correction.py /mnt/d/Thesis/Soulik/08_15/12 12_SAMPLE.npz 12
python3 main.py PREDICT-master /mnt/d/Thesis/Soulik/08_15/12/*.npz

# python3 main.py AHI-CROP /mnt/d/Thesis/Soulik/08_15/18 137 1439
python3 B07_correction.py /mnt/d/Thesis/Soulik/08_15/18 18_SAMPLE.npz 18
python3 main.py PREDICT-master /mnt/d/Thesis/Soulik/08_15/18/*.npz

# python3 main.py AHI-CROP /mnt/d/Thesis/Soulik/08_16/12 185 1419
python3 B07_correction.py /mnt/d/Thesis/Soulik/08_16/12 12_SAMPLE.npz 12
python3 main.py PREDICT-master /mnt/d/Thesis/Soulik/08_16/12/*.npz

# python3 main.py AHI-CROP /mnt/d/Thesis/Soulik/08_16/18 202 1414
python3 B07_correction.py /mnt/d/Thesis/Soulik/08_16/18 18_SAMPLE.npz 18
python3 main.py PREDICT-master /mnt/d/Thesis/Soulik/08_16/18/*.npz

# python3 main.py AHI-CROP /mnt/d/Thesis/Soulik/08_23/12 347 1263
python3 B07_correction.py /mnt/d/Thesis/Soulik/08_23/12 12_SAMPLE.npz 12
python3 main.py PREDICT-master /mnt/d/Thesis/Soulik/08_23/12/*.npz

# python3 main.py AHI-CROP /mnt/d/Thesis/Soulik/08_23/18 359 1274
python3 B07_correction.py /mnt/d/Thesis/Soulik/08_23/18 18_SAMPLE.npz 18
python3 main.py PREDICT-master /mnt/d/Thesis/Soulik/08_23/18/*.npz





