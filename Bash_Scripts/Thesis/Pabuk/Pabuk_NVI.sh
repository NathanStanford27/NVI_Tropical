#! /usr/bin/bash

# ML-NVI Imagery
python3 main.py FNN-AHI-predict /mnt/d/Thesis/Pabuk/12_31/12/12_SAMPLE_PM.npz M10_512_GOES_C13_10INPUT BAND_C13_model_channels
python3 main.py FNN-AHI-predict /mnt/d/Thesis/Pabuk/12_31/18/18_SAMPLE_PM.npz M10_512_GOES_C13_10INPUT BAND_C13_model_channels

python3 main.py FNN-AHI-predict /mnt/d/Thesis/Pabuk/01_01/12/12_SAMPLE_PM.npz M10_512_GOES_C13_10INPUT BAND_C13_model_channels
python3 main.py FNN-AHI-predict /mnt/d/Thesis/Pabuk/01_01/18/18_SAMPLE_PM.npz M10_512_GOES_C13_10INPUT BAND_C13_model_channels

python3 main.py FNN-AHI-predict /mnt/d/Thesis/Pabuk/01_02/12/12_SAMPLE_PM.npz M10_512_GOES_C13_10INPUT BAND_C13_model_channels
python3 main.py FNN-AHI-predict /mnt/d/Thesis/Pabuk/01_02/18/18_SAMPLE_PM.npz M10_512_GOES_C13_10INPUT BAND_C13_model_channels

python3 main.py FNN-AHI-predict /mnt/d/Thesis/Pabuk/01_03/12/12_SAMPLE_PM.npz M10_512_GOES_C13_10INPUT BAND_C13_model_channels
python3 main.py FNN-AHI-predict /mnt/d/Thesis/Pabuk/01_03/18/18_SAMPLE_PM.npz M10_512_GOES_C13_10INPUT BAND_C13_model_channels

python3 main.py FNN-AHI-predict /mnt/d/Thesis/Pabuk/01_04/12/12_SAMPLE_PM.npz M10_512_GOES_C13_10INPUT BAND_C13_model_channels
python3 main.py FNN-AHI-predict /mnt/d/Thesis/Pabuk/01_04/18/18_SAMPLE_PM.npz M10_512_GOES_C13_10INPUT BAND_C13_model_channels

python3 main.py FNN-AHI-predict /mnt/d/Thesis/Pabuk/01_05/12/12_SAMPLE_PM.npz M10_512_GOES_C13_10INPUT BAND_C13_model_channels
python3 main.py FNN-AHI-predict /mnt/d/Thesis/Pabuk/01_05/18/18_SAMPLE_PM.npz M10_512_GOES_C13_10INPUT BAND_C13_model_channels

