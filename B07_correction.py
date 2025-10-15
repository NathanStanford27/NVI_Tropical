import numpy as np
import os
import matplotlib.pyplot as plt
import pandas as pd
import sys

os.chdir(sys.argv[1])
file = np.load(sys.argv[2])
filedic = dict(file)

# Interpolate missing values from Band 7 imagery
B07 = []
for i in range(len(file['B07'])):
    t = pd.DataFrame(file['B07'][i]).interpolate()
    print(t.shape)
    B07.append(t)

# Turn 2-D arrays into 3-D arrays (x,y,t)
y = np.dstack(B07)

# To get the shape (t,x,y), use rollaxis:
y = np.rollaxis(y, -1)
print(y.shape)

# Overwrite the original npz file with corrected Band 7 imagery
filedic['B07'] = y
np.savez(sys.argv[2], **filedic)   # overwrite original file
