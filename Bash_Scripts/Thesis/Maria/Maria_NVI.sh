#! /usr/bin/bash

# ML-NVI Imagery
python3 main.py FNN-AHI-predict /mnt/d/Thesis/Maria/07_03/12/12_SAMPLE_PM.npz M10_512_GOES_C13_10INPUT BAND_C13_model_channels
python3 main.py FNN-AHI-predict /mnt/d/Thesis/Maria/07_03/18/18_SAMPLE_PM.npz M10_512_GOES_C13_10INPUT BAND_C13_model_channels

python3 main.py FNN-AHI-predict /mnt/d/Thesis/Maria/07_04/12/12_SAMPLE_PM.npz M10_512_GOES_C13_10INPUT BAND_C13_model_channels
python3 main.py FNN-AHI-predict /mnt/d/Thesis/Maria/07_04/18/18_SAMPLE_PM.npz M10_512_GOES_C13_10INPUT BAND_C13_model_channels

python3 main.py FNN-AHI-predict /mnt/d/Thesis/Maria/07_11/12/12_SAMPLE_PM.npz M10_512_GOES_C13_10INPUT BAND_C13_model_channels
python3 main.py FNN-AHI-predict /mnt/d/Thesis/Maria/07_11/18/18_SAMPLE_PM.npz M10_512_GOES_C13_10INPUT BAND_C13_model_channels

