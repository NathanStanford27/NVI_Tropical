#attempt to run model

#import statements
import numpy as np
import tensorflow as tf
from tensorflow import keras
from matplotlib import pyplot as plt
import numpy as np
import gzip
import math
import time
import tensorflow.keras.layers as layers
import pandas as pd
import IPython.display as dis
from PIL import Image
import datetime as date
import FNN_train
from common import log, rgb, reset, blue, orange, yellow, bold

def write_channels(path, inputfile, PREDICTORS, PREDICTAND):
    with open (path, "w") as f:
        print(inputfile, file =f)
        print(PREDICTAND, file = f)
        for p in PREDICTORS:
            print(p, file = f, end = " ")
        #for p in TORS:
         #   print(p, file = f, end = "\n")   
        print(file =f)


#def read_channels(path):
 #   with open (path) as f:
  #      lines = f.readlines()
   #     PREDICTAND = lines[1].strip()
    #    PREDICTORS = lines[2].strip().split()
     #   return PREDICTORS, PREDICTAND
def read_channels(path):
    with open (path) as f:
        lines = f.readlines()
        PREDICTAND = "SM_reflectance"
        PREDICTORS = lines[2].strip().split()
        return PREDICTORS, PREDICTAND    
    

def function(model, case, PREDICTORS, PREDICTAND):
    tors = np.stack([case[c] for c in PREDICTORS], axis = -1) #X in array
    tand = case[PREDICTAND] #y in array, 

    TORS = tors.reshape(-1, len(PREDICTORS))
    TORS9999 = np.nan_to_num(TORS, copy=True, nan=9999, posinf=None, neginf=None)
    
    o_shape = tand.shape

    #lets predict on all the data
    print("stacked channels now predicting")
    log.info(f' model.predict has started')
    model_output= model.predict(TORS9999)
    #replace the 9999 with NANs 
    log.info(f' model.predict has ended')
    print("im done predicting")
    NANindex =np.isnan(TORS).any(axis =1) 
    model_output[NANindex] = np.nan
    model_outputfinal= model_output.reshape(o_shape)
    return model_outputfinal

def predict(args):
    print("i am in predict and args are ", args)
    case = np.load(args.npz_path)
    print("I loaded the case")
    print("args.modelpath is", args.model_path)
    model = tf.keras.models.load_model(args.model_path)#
    print("I loaded the model")
    PREDICTORS, PREDICTAND = read_channels(args.channel_path)
    print("my predictand is", PREDICTAND)
    print("my predictors are", PREDICTORS)
    print("I loaded the channels list")
    MLvalues = function(model, case, PREDICTORS, PREDICTAND)
    print("I am now saving ML values")
    #save the ML truths 
    made =time.strftime("%Y-%m-%dT%H%M")     
    #TODO make this a folder path resovled
    #if different folders need to remvoe the fodler path
    #CLASS_RefGOES_SVCC_0-20_PATCHED_512_aoi_50_0_-127_180_predict_master.npz
    #savepath = f"ML_truth_DATAis_{PREDICTORS[2]}_{args.npz_path[-70:-4]}_MODELis_{args.model_path}_{made}.npz"
    #### NEED TO CHANGE THE LENGTH EVERYTIME NEED A BETTERWAY TO DO THIS MAYBE BY SPLIT VS _?
    savepath = f"ML_truth_{PREDICTORS[0]}_{args.npz_path[-22:-4]}_MODELis_{args.model_path}.npz"
    #savepath = f"ML_truth_DATA_{args.npz_path[:-4]}_MODEL_{args.model_path}_{made}.npz" #[0:9]  
    #savepath = f"ML_truth_{made}_BY_{args.npz_path[:-4]}_FROM_FNN_C2019_2021-12-06T1801.npz" #[0:9]   
    np.savez_compressed(savepath, MLtruth = MLvalues, channel = [PREDICTAND])

    #log.info(f' i am saving the channels')
    #write_channels(f"FNN_predict_channels_{args.npz_path[:-4]}_{made}", args.npz_path, PREDICTORS, PREDICTAND)
