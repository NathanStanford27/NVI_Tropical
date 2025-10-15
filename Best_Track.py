import numpy as np
import os
import matplotlib.pyplot as plt
import pandas as pd
import sys

os.chdir('/mnt/e/MET499')
Best_Track = pd.read_excel('Best_Track.xlsx')

os.chdir(sys.argv[1])
file = np.load(sys.argv[2])
x = sys.argv[3]
t1 = int(sys.argv[4])
t2 = int(sys.argv[5])

#Saving over npz file with corrected Band 7 imagery
# filedic = dict(np.load('12_SAMPLE.npz'))
filedic = dict(file)
filedic['Center_Lat'] = Best_Track['Lat'][t1:t2]
filedic['Center_Lon'] = Best_Track['Lon'][t1:t2]
filedic['Vmax'] = Best_Track['Vmax'][t1:t2]
np.savez(f'{x}_SAMPLE.npz',**filedic)