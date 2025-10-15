import numpy as np
import os
import matplotlib.pyplot as plt
import pandas as pd
import sys

os.chdir(sys.argv[1])
file = np.load(sys.argv[2])
x = sys.argv[3]
file.files

# Scale reflectance (0-100) to brightness value (0-255)
B03 = []
for i in range(len(file['B03'])):
    t = pd.DataFrame(file['B03'][i])*2.55
    print(t.shape)
    B03.append(t)

# Turn 2-D arrays into 3-D arrays (x,y,t)
y = np.dstack(B03)

# To get the shape (t,x,y), use rollaxis:
y = np.rollaxis(y,-1)
print(y.shape)

#Saving over npz file with corrected Band 7 imagery
# filedic = dict(np.load('12_SAMPLE.npz'))
filedic = dict(file)
filedic['B03'] = y
np.savez(f'{x}_SAMPLE.npz',**filedic)