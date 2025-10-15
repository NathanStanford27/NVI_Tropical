#! /usr/bin/bash

# ML-NVI Imagery
python3 main.py FNN-AHI-predict /mnt/d/Thesis/Soulik/08_15/12/12_SAMPLE_PM.npz M10_512_GOES_C13_10INPUT BAND_C13_model_channels
python3 main.py FNN-AHI-predict /mnt/d/Thesis/Soulik/08_15/18/18_SAMPLE_PM.npz M10_512_GOES_C13_10INPUT BAND_C13_model_channels

python3 main.py FNN-AHI-predict /mnt/d/Thesis/Soulik/08_16/12/12_SAMPLE_PM.npz M10_512_GOES_C13_10INPUT BAND_C13_model_channels
python3 main.py FNN-AHI-predict /mnt/d/Thesis/Soulik/08_16/18/18_SAMPLE_PM.npz M10_512_GOES_C13_10INPUT BAND_C13_model_channels

python3 main.py FNN-AHI-predict /mnt/d/Thesis/Soulik/08_23/12/12_SAMPLE_PM.npz M10_512_GOES_C13_10INPUT BAND_C13_model_channels
python3 main.py FNN-AHI-predict /mnt/d/Thesis/Soulik/08_23/18/18_SAMPLE_PM.npz M10_512_GOES_C13_10INPUT BAND_C13_model_channels

