import numpy as np
import os
import sys

# Change working directory to the one passed as first argument
os.chdir(sys.argv[1])

# Load the input files
NVI = np.load(sys.argv[2])
Infrared = np.load(sys.argv[3])
x = sys.argv[4]  # e.g. '1200', '1800'

Histogram_matching = []

for i in range(len(NVI['MLtruth'])):
    source = NVI['MLtruth'][i]*-1
    template = Infrared['B07'][i]

    def hist_match(source, template):
        oldshape = source.shape
        source = source.ravel()
        template = template.ravel()

        # get the set of unique pixel values and their corresponding indices and counts
        s_values, bin_idx, s_counts = np.unique(source, return_inverse=True, return_counts=True)
        t_values, t_counts = np.unique(template, return_counts=True)

        # take the cumsum of the counts and normalize by the number of pixels
        # to get the empirical cumulative distribution functions
        s_quantiles = np.cumsum(s_counts).astype(np.float64)
        s_quantiles /= s_quantiles[-1]
        t_quantiles = np.cumsum(t_counts).astype(np.float64)
        t_quantiles /= t_quantiles[-1]

        # interpolate linearly to find the pixel values in the template image
        # that correspond most closely to the quantiles in the source image
        interp_t_values = np.interp(s_quantiles, t_quantiles, t_values)

        return interp_t_values[bin_idx].reshape(oldshape)

    matched = hist_match(source, template)
    Histogram_matching.append(matched)

# Saving over npz file with corrected NVI imagery
filedic = dict(NVI)
filedic['MLtruth'] = Histogram_matching

# Only keep the first two digits (HH) from x for filename
hour_str = x[:2]

np.savez(f'ML_truth_DATA_C13_{hour_str}_SWIR.npz', **filedic)
