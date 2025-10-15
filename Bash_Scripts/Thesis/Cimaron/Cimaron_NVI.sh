#! /usr/bin/bash

# ML-NVI Imagery
python3 main.py FNN-AHI-predict /mnt/d/Thesis/Cimaron/08_17/12/12_SAMPLE_PM.npz M10_512_GOES_C13_10INPUT BAND_C13_model_channels
python3 main.py FNN-AHI-predict /mnt/d/Thesis/Cimaron/08_17/18/18_SAMPLE_PM.npz M10_512_GOES_C13_10INPUT BAND_C13_model_channels

python3 main.py FNN-AHI-predict /mnt/d/Thesis/Cimaron/08_18/12/12_SAMPLE_PM.npz M10_512_GOES_C13_10INPUT BAND_C13_model_channels
python3 main.py FNN-AHI-predict /mnt/d/Thesis/Cimaron/08_18/18/18_SAMPLE_PM.npz M10_512_GOES_C13_10INPUT BAND_C13_model_channels

python3 main.py FNN-AHI-predict /mnt/d/Thesis/Cimaron/08_19/12/12_SAMPLE_PM.npz M10_512_GOES_C13_10INPUT BAND_C13_model_channels
python3 main.py FNN-AHI-predict /mnt/d/Thesis/Cimaron/08_19/18/18_SAMPLE_PM.npz M10_512_GOES_C13_10INPUT BAND_C13_model_channels

python3 main.py FNN-AHI-predict /mnt/d/Thesis/Cimaron/08_23/18/18_SAMPLE_PM.npz M10_512_GOES_C13_10INPUT BAND_C13_model_channels

