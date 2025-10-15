#! /usr/bin/bash

# ML-NVI Imagery
python3 main.py FNN-AHI-predict /mnt/d/Thesis/Meari/08_10/10/10_SAMPLE_PM.npz M10_512_GOES_C13_10INPUT BAND_C13_model_channels
python3 main.py FNN-AHI-predict /mnt/d/Thesis/Meari/08_10/12/12_SAMPLE_PM.npz M10_512_GOES_C13_10INPUT BAND_C13_model_channels

