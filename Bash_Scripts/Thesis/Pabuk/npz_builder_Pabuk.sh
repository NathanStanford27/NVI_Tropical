#! /usr/bin/bash


# Pabuk

python3 main.py AHI-CROP /mnt/d/Thesis/Pabuk/12_31/12 73 1113
python3 B07_correction.py /mnt/d/Thesis/Pabuk/12_31/12 12_SAMPLE.npz 12
python3 main.py PREDICT-master /mnt/d/Thesis/Pabuk/12_31/12/*.npz

python3 main.py AHI-CROP /mnt/d/Thesis/Pabuk/12_31/18 70 1110
python3 B07_correction.py /mnt/d/Thesis/Pabuk/12_31/18 18_SAMPLE.npz 18
python3 main.py PREDICT-master /mnt/d/Thesis/Pabuk/12_31/18/*.npz

python3 main.py AHI-CROP /mnt/d/Thesis/Pabuk/01_01/12 59 1098
python3 B07_correction.py /mnt/d/Thesis/Pabuk/01_01/12 12_SAMPLE.npz 12
python3 main.py PREDICT-master /mnt/d/Thesis/Pabuk/01_01/12/*.npz

python3 main.py AHI-CROP /mnt/d/Thesis/Pabuk/01_01/18 58 1092
python3 B07_correction.py /mnt/d/Thesis/Pabuk/01_01/18 18_SAMPLE.npz 18
python3 main.py PREDICT-master /mnt/d/Thesis/Pabuk/01_01/18/*.npz

python3 main.py AHI-CROP /mnt/d/Thesis/Pabuk/01_02/12 60 1070
python3 B07_correction.py /mnt/d/Thesis/Pabuk/01_02/12 12_SAMPLE.npz 12
python3 main.py PREDICT-master /mnt/d/Thesis/Pabuk/01_02/12/*.npz

python3 main.py AHI-CROP /mnt/d/Thesis/Pabuk/01_02/18 59 1062
python3 B07_correction.py /mnt/d/Thesis/Pabuk/01_02/18 18_SAMPLE.npz 18
python3 main.py PREDICT-master /mnt/d/Thesis/Pabuk/01_02/18/*.npz

python3 main.py AHI-CROP /mnt/d/Thesis/Pabuk/01_03/12 66 1035
python3 B07_correction.py /mnt/d/Thesis/Pabuk/01_03/12 12_SAMPLE.npz 12
python3 main.py PREDICT-master /mnt/d/Thesis/Pabuk/01_03/12/*.npz

python3 main.py AHI-CROP /mnt/d/Thesis/Pabuk/01_03/18 73 1027
python3 B07_correction.py /mnt/d/Thesis/Pabuk/01_03/18 18_SAMPLE.npz 18
python3 main.py PREDICT-master /mnt/d/Thesis/Pabuk/01_03/18/*.npz

python3 main.py AHI-CROP /mnt/d/Thesis/Pabuk/01_04/12 83 996
python3 B07_correction.py /mnt/d/Thesis/Pabuk/01_04/12 12_SAMPLE.npz 12
python3 main.py PREDICT-master /mnt/d/Thesis/Pabuk/01_04/12/*.npz

python3 main.py AHI-CROP /mnt/d/Thesis/Pabuk/01_04/18 86 990
python3 B07_correction.py /mnt/d/Thesis/Pabuk/01_04/18 18_SAMPLE.npz 18
python3 main.py PREDICT-master /mnt/d/Thesis/Pabuk/01_04/18/*.npz

python3 main.py AHI-CROP /mnt/d/Thesis/Pabuk/01_05/12 101 973
python3 B07_correction.py /mnt/d/Thesis/Pabuk/01_05/12 12_SAMPLE.npz 12
python3 main.py PREDICT-master /mnt/d/Thesis/Pabuk/01_05/12/*.npz

python3 main.py AHI-CROP /mnt/d/Thesis/Pabuk/01_05/18 104 965
python3 B07_correction.py /mnt/d/Thesis/Pabuk/01_05/18 18_SAMPLE.npz 18
python3 main.py PREDICT-master /mnt/d/Thesis/Pabuk/01_05/18/*.npz