import numpy as np
import os
import matplotlib.pyplot as plt
import pandas as pd
import sys

os.chdir(sys.argv[1])
file = np.load(sys.argv[2])
# x = sys.argv[3]
file.files

# Interpolate missing values from Band 7 imagery
B07 = []
for i in range(len(file['MLtruth'])):
    z = pd.DataFrame(file['MLtruth'][i])
    z.replace(np.nan, '')
    z.interpolate()
    print(z.shape)
    B07.append(z)

# Turn 2-D arrays into 3-D arrays (x,y,t)
y = np.dstack(B07)

# To get the shape (t,x,y), use rollaxis:
y = np.rollaxis(y,-1)
print(y.shape)

#Saving over npz file with corrected Band 7 imagery
# filedic = dict(np.load('12_SAMPLE.npz'))
filedic = dict(file)
filedic['MLtruth'] = y
np.savez('TEST_SAMPLE.npz',**filedic)