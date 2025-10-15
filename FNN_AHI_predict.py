# attempt to run model

# import statements
import numpy as np
import tensorflow as tf
from tensorflow import keras
from matplotlib import pyplot as plt
import gzip
import math
import time
import tensorflow.keras.layers as layers
import pandas as pd
import IPython.display as dis
from PIL import Image
import datetime as date
import os

import FNN_train
from common import log, rgb, reset, blue, orange, yellow, bold


def write_channels_AHI(path, inputfile, PREDICTORS):
    with open(path, "w") as f:
        print(inputfile, file=f)
        for p in PREDICTORS:
            print(p, file=f, end=" ")
        print(file=f)


def read_channels(path):
    with open(path) as f:
        lines = f.readlines()
        PREDICTORS = lines[2].strip().split()
        return PREDICTORS


def function_AHI(model, case, PREDICTORS):
    # using subset of B bands
    Bbands = [
        "B07norm", "B11norm", "B13norm", "B15norm",
        "normBTD_B07B11", "normBTD_B07B13", "normBTD_B07B15",
        "normBTD_B11B13", "normBTD_B11B15", "normBTD_B13B15"
    ]

    # just to get the original shape back
    tandish = case['B07norm']
    tors = np.stack([case[c] for c in Bbands], axis=-1)  # X in array

    TORS = tors.reshape(-1, len(PREDICTORS))
    TORS9999 = np.nan_to_num(TORS, copy=True, nan=9999)

    o_shape = tandish.shape

    print("stacked channels now predicting on")
    log.info('model.predict has started')
    model_output = model.predict(TORS9999)
    log.info('model.predict has ended')
    print("im done predicting")

    # replace NANs where input had them
    NANindex = np.isnan(TORS).any(axis=1)
    model_output[NANindex] = np.nan
    model_outputfinal = model_output.reshape(o_shape)
    return model_outputfinal


def predict(args):
    print("i am in predict and args are ", args)
    case = np.load(args.npz_path)
    print("I loaded the case")
    print("the files in the case are", case.files)

    print("args.modelpath is", args.model_path)
    model = tf.keras.models.load_model(args.model_path)
    print("I loaded the model")

    # only need predictors now
    PREDICTORS = read_channels(args.channel_path)
    print("my predictors are", PREDICTORS)
    print("I loaded the channels list")

    # run prediction
    MLvalues = function_AHI(model, case, PREDICTORS)
    print("I am now saving ML values")

    # build save path in same folder as input npz
    folder = os.path.dirname(args.npz_path)
    made = time.strftime("%Y-%m-%dT%H%M")

    # extract HHMM from case filename (e.g. HIMAWARI8_20190121_1200_SAMPLE_PM.npz → "1200")
    base = os.path.basename(args.npz_path)
    try:
        hour_str = base.split("_")[2]  # assuming format NAME_DATE_HHMM_SAMPLE_PM.npz
    except Exception:
        hour_str = "0000"

    save_filename = f"ML_truth_DATA_C13_{hour_str}_SWIR.npz"
    savepath = os.path.join(folder, save_filename)

    np.savez_compressed(savepath, MLtruth=MLvalues, channel=[PREDICTORS])
    print(f"[INFO] Saved ML truth file: {savepath}")

