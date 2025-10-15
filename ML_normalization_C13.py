import numpy as np
import os
import matplotlib.pyplot as plt
import pandas as pd
import sys

os.chdir(sys.argv[1])
file = np.load(sys.argv[2])
time_stamp = sys.argv[3]

# os.chdir('/mnt/d/Thesis/Usagi/11_21/18')

# file = np.load('ML_truth_DATA_SINGLESAMPLE_MODEL_M10_512_GOES_C13_10INPUT_2023-08-23T0327.npz')
# file.files
x = file['MLtruth']*100

MLtruth = []
for i in x:
    brightness_value = i*2.55
    MLtruth.append(brightness_value)
    
y = np.dstack(MLtruth)

# To get the shape (t,x,y), use rollaxis:
y = np.rollaxis(y,-1)
print(y.shape)

#Saving over npz file with corrected Band 7 imagery
# filedic = dict(np.load('12_SAMPLE.npz'))
filedic = dict(file)
filedic['MLtruth'] = y
np.savez(f'ML_truth_DATA_C13_{time_stamp}.npz',**filedic)