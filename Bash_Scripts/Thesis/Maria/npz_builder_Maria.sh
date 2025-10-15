#! /usr/bin/bash


# Maria

# python3 main.py AHI-CROP /mnt/d/Thesis/Maria/07_03/12 
python3 B07_correction.py /mnt/d/Thesis/Maria/07_03/12 12_SAMPLE.npz 12
python3 main.py PREDICT-master /mnt/d/Thesis/Maria/07_03/12/*.npz

# python3 main.py AHI-CROP /mnt/d/Thesis/Maria/07_03/18 
python3 B07_correction.py /mnt/d/Thesis/Maria/07_03/18 18_SAMPLE.npz 18
python3 main.py PREDICT-master /mnt/d/Thesis/Maria/07_03/18/*.npz

# python3 main.py AHI-CROP /mnt/d/Thesis/Maria/07_04/12  
python3 B07_correction.py /mnt/d/Thesis/Maria/07_04/12 12_SAMPLE.npz 12
python3 main.py PREDICT-master /mnt/d/Thesis/Maria/07_04/12/*.npz

# python3 main.py AHI-CROP /mnt/d/Thesis/Maria/07_04/18 
python3 B07_correction.py /mnt/d/Thesis/Maria/07_04/18 18_SAMPLE.npz 18
python3 main.py PREDICT-master /mnt/d/Thesis/Maria/07_04/18/*.npz

# python3 main.py AHI-CROP /mnt/d/Thesis/Maria/07_11/12 
python3 B07_correction.py /mnt/d/Thesis/Maria/07_11/12 12_SAMPLE.npz 12
python3 main.py PREDICT-master /mnt/d/Thesis/Maria/07_11/12/*.npz

# python3 main.py AHI-CROP /mnt/d/Thesis/Maria/07_11/18 
python3 B07_correction.py /mnt/d/Thesis/Maria/07_11/18 18_SAMPLE.npz 18
python3 main.py PREDICT-master /mnt/d/Thesis/Maria/07_11/18/*.npz
