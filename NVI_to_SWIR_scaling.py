import numpy as np
import os
import matplotlib.pyplot as plt
import pandas as pd
import sys

os.chdir(sys.argv[1])
file = np.load(sys.argv[2])
x = sys.argv[3]
file.files

r_min = 0
r_max = 1
t_min = 320
t_max = 130

# Scale reflectance (0-100) to brightness value (130-320)
BV = []
for i in range(len(file['MLtruth'])):
    t = ((pd.DataFrame(file['MLtruth'][i])-r_min)/(r_max-r_min))*(t_max-t_min)+t_min
    print(t.shape)
    BV.append(t)

# Turn 2-D arrays into 3-D arrays (x,y,t)
y = np.dstack(BV)

# To get the shape (t,x,y), use rollaxis:
y = np.rollaxis(y,-1)
print(y.shape)

#Saving over npz file with corrected NVI imagery
# filedic = dict(np.load('12_SAMPLE.npz'))
filedic = dict(file)
filedic['MLtruth'] = y
np.savez(f'ML_truth_DATA_C13_{x[:2]}_SWIR.npz', **filedic)