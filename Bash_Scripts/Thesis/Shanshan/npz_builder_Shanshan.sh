#! /usr/bin/bash


# Shanshan
# python3 main.py AHI-CROP /mnt/d/Thesis/Shanshan/08_03/12 185 1500
python3 B07_correction.py /mnt/d/Thesis/Shanshan/08_03/12 12_SAMPLE.npz 12
python3 main.py PREDICT-master /mnt/d/Thesis/Shanshan/08_03/12/*.npz

# python3 main.py AHI-CROP /mnt/d/Thesis/Shanshan/08_03/18 193 1496
python3 B07_correction.py /mnt/d/Thesis/Shanshan/08_03/18 18_SAMPLE.npz 18
python3 main.py PREDICT-master /mnt/d/Thesis/Shanshan/08_03/18/*.npz

# python3 main.py AHI-CROP /mnt/d/Thesis/Shanshan/08_08/18 353 1410
python3 B07_correction.py /mnt/d/Thesis/Shanshan/08_08/18 18_SAMPLE.npz 18
python3 main.py PREDICT-master /mnt/d/Thesis/Shanshan/08_08/18/*.npz

# python3 main.py AHI-CROP /mnt/d/Thesis/Shanshan/08_09/12 380 1425
python3 B07_correction.py /mnt/d/Thesis/Shanshan/08_09/12 12_SAMPLE.npz 12
python3 main.py PREDICT-master /mnt/d/Thesis/Shanshan/08_09/12/*.npz

# python3 main.py AHI-CROP /mnt/d/Thesis/Shanshan/08_09/18 390 1446
python3 B07_correction.py /mnt/d/Thesis/Shanshan/08_09/18 18_SAMPLE.npz 18
python3 main.py PREDICT-master /mnt/d/Thesis/Shanshan/08_09/18/*.npz