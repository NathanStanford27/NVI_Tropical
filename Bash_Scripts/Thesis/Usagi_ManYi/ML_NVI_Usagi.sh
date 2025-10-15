#! /usr/bin/bash

# ML-NVI Imagery C13
python3 main.py FNN-AHI-predict /mnt/d/Thesis/Usagi/11_21/12/12_SAMPLE_PM.npz M10_512_GOES_C13_10INPUT BAND_C13_model_channels
python3 main.py FNN-AHI-predict /mnt/d/Thesis/Usagi/11_21/18/18_SAMPLE_PM.npz M10_512_GOES_C13_10INPUT BAND_C13_model_channels
python3 main.py FNN-AHI-predict /mnt/d/Thesis/Usagi/11_22/12/12_SAMPLE_PM.npz M10_512_GOES_C13_10INPUT BAND_C13_model_channels
python3 main.py FNN-AHI-predict /mnt/d/Thesis/Usagi/11_22/18/18_SAMPLE_PM.npz M10_512_GOES_C13_10INPUT BAND_C13_model_channels
python3 main.py FNN-AHI-predict /mnt/d/Thesis/Usagi/11_25/12/12_SAMPLE_PM.npz M10_512_GOES_C13_10INPUT BAND_C13_model_channels
python3 main.py FNN-AHI-predict /mnt/d/Thesis/Usagi/11_25/18/18_SAMPLE_PM.npz M10_512_GOES_C13_10INPUT BAND_C13_model_channels

# # ML-NVI Imagery GOES-ALL
# python3 main.py FNN-AHI-predict /mnt/d/Thesis/Usagi/11_20/12/12_SAMPLE_PM.npz M10_512_GOES_C13_10INPUT BAND_C13_model_channels
# python3 main.py FNN-AHI-predict /mnt/d/Thesis/Usagi/11_20/18/18_SAMPLE_PM.npz M10_512_GOES_C13_10INPUT BAND_C13_model_channels
# python3 main.py FNN-AHI-predict /mnt/d/Thesis/Usagi/11_21/12/12_SAMPLE_PM.npz M10_512_GOES_C13_10INPUT BAND_C13_model_channels
# python3 main.py FNN-AHI-predict /mnt/d/Thesis/Usagi/11_26/12/12_SAMPLE_PM.npz M10_512_GOES_C13_10INPUT BAND_C13_model_channels
# python3 main.py FNN-AHI-predict /mnt/d/Thesis/Usagi/11_26/18/18_SAMPLE_PM.npz M10_512_GOES_C13_10INPUT BAND_C13_model_channels
# python3 main.py FNN-AHI-predict /mnt/d/Thesis/Usagi/11_27/12/12_SAMPLE_PM.npz M10_512_GOES_C13_10INPUT BAND_C13_model_channels
