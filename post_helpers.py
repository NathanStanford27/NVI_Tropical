#import statements
import matplotlib as mpl
import numpy as np
from matplotlib import pyplot as plt
import numpy as np
import gzip
import math
from PIL import Image
from sklearn.metrics import mean_squared_error, mean_absolute_error
from sklearn.metrics import explained_variance_score
from sklearn.metrics import r2_score
from matplotlib import cm
from matplotlib.colors import Normalize 
from scipy.interpolate import interpn
from common import log

from sklearn.preprocessing import MinMaxScaler
#ensurefigdir

def ensure_outdir(models_path, npz_path, nick):
    f = models_path / 'MLR' / f'{npz_path.parent.name}_{nick}'
    f.mkdir(exist_ok=True, parents=True)
    fig = f / 'FIGURES'
    fig.mkdir(exist_ok=True, parents=True)
    return f, fig


#channel stats
def basic_stats(dic, casename):
    for channel, x in dic.items():
        if x.mean() <1:
            
            print(f'{channel} min/med/max/mean/std {x.min():.2g}/{np.median(x):.2g}/{x.max():.2g}/{x.mean():.2g}/{x.std():.2g}')
            
        else:
            print(f'{channel} min/med/max/mean/std {x.min():.2f}/{np.median(x):.2f}/{x.max():.2f}/{x.mean():.2f}/{x.std():.2f}')
 
 
###basic historgram/PDFs of data ( maybe go in the same code above?)    
    
  #helper function for plotting histogram and PDFs #need to readjsut the inputs


         
              
def plotdata(array1, array2):
    # define min max scaler
    scaler = MinMaxScaler()
    Y1 = scaler.fit_transform(array1.reshape(-1,1))
    Y2 = scaler.fit_transform(array2.reshape(-1,1))

    #plotting basics
    # set figure defaults
    mpl.rcParams['figure.dpi'] = 150
    plt.rcParams['figure.figsize'] = (10.0/2, 8.0/2)
    xinc = 0.1
    xbins = np.arange(-1, 1.5, xinc)

    #histogram counts
    plt.figure()
    hY1 = np.histogram(Y1,xbins)
    hY2 = np.histogram(Y2,xbins)

    #plt.xlabel('value')
    #plt.ylabel('counts')

    #plt.bar(hY1[1][:-1],hY1[0],edgecolor = 'r', color = [], width = .2, label = 'truth', linewidth = 2)
    #plt.bar(hY2[1][:-1],hY2[0],edgecolor = 'b', color = [], width = .2, label = 'MLR', linewidth = 2)
   
    #plt.legend()
    #plt.title( 'by count')
    #plt.savefig("fitted_MLR_histogram2020AOI18.png")
    #plt.show()
    #plt.close()
    
    #make as PDF value 1
    plt.figure()
    xvals = hY1[1][:-1]
    fvalsY1 = hY1[0].astype(float)/(np.size(Y1)*xinc)
    fvalsY2 = hY2[0].astype(float)/(np.size(Y2)*xinc)

    plt.plot(xvals+xinc/2,fvalsY1,'r', label = 'truth')
    plt.plot(xvals+xinc/2,fvalsY2,'b', label = 'MLR')
    plt.xlabel('value')
    plt.ylabel('frequency')
    plt.title(' PDFs')
    plt.legend()
    plt.savefig("fitted_FNN_PDF2020.png")
    #plt.show()
    plt.close()  


def plotdata2(array1, array2, channel_name, figdir, nick):
    Y1 = scaler.fit_transform(array1.reshape(-1,1))
    Y2 = scaler.fit_transform(array2.reshape(-1,1))

    #plotting basics
    # set figure defaults
    mpl.rcParams['figure.dpi'] = 150
    plt.rcParams['figure.figsize'] = (10.0/2, 8.0/2)
    xinc = 0.1
    xbins = np.arange(-4, 4.2, xinc)

    #histogram counts
    plt.figure()
    hY1 = np.histogram(Y1,xbins)
    hY2 = np.histogram(Y2,xbins)

    plt.xlabel('value')
    plt.ylabel('counts')

    plt.bar(hY1[1][:-1],hY1[0],edgecolor = 'r', color = [], width = .2, label = 'truth', linewidth = 2)
    plt.bar(hY2[1][:-1],hY2[0],edgecolor = 'b', color = [], width = .2, label = 'MLR', linewidth = 2)
   
    plt.legend()
    plt.title(channel_name + ' by count')
    plt.savefig(figdir / f"fitted_{channel_name}_FNN_histogram.png")
    #plt.show()
    plt.close()
    
    #make as PDF value 1
    plt.figure()
    xvals = hY1[1][:-1]
    fvalsY1 = hY1[0].astype(float)/(np.size(Y1)*xinc)
    fvalsY2 = hY2[0].astype(float)/(np.size(Y2)*xinc)

    plt.plot(xvals+xinc/2,fvalsY1,'r', label = 'truth')
    plt.plot(xvals+xinc/2,fvalsY2,'b', label = 'MLR')
    plt.xlabel('value')
    plt.ylabel('frequency')
    plt.title(channel_name + ' PDFs')
    plt.legend()
    plt.savefig("fitted_FNN_PDF_2020.png")
    #plt.show()
    plt.close()  
                     
    
def xy_relations(array1, array2):
    y_true = array1.flatten() #DNB
    y_pred = array2.flatten() #ML
     
    CC = np.corrcoef(y_true, y_pred)
    print( "the Pearson's Coorelation for DNB and MLdata is", CC)
    MSE =  mean_squared_error(y_true, y_pred, sample_weight=None, multioutput='uniform_average', squared=True)
    print( "the MSE for DNB and MLdata is", MSE)
    MAE = mean_absolute_error(y_true, y_pred)
    print( "the MAE for DNB and MLdata is", MAE)
    Explained_var = explained_variance_score(y_true, y_pred)
    print( "the Explained Variance for DNB and MLdata is", Explained_var)
    R2 = r2_score(y_true, y_pred)
    print( "the R2 for DNB and MLdata is", R2)
    
    data1 = y_true
    data2 = y_pred
    
    #calcualte the coorelation coffecticent
    from numpy import cov

    # calculate covariance matrix
    covariance = cov(data1, data2)
    print("covariance for DNB and MLdata is ", covariance)
    # calculate Pearson's correlation
    from scipy.stats import pearsonr
    corrp, _ = pearsonr(data1, data2)
    print('Pearsons correlation for DNB and MLdata: %.3f' % corrp)

    from scipy.stats import spearmanr
    # calculate spearman's correlation
    corrs, _ = spearmanr(data1, data2)
    print('Spearmans correlation for DNB and MLdata: %.3f' % corrs)

    from numpy import corrcoef
    COVAR = corrcoef(data1, data2)
    print("COVAR values for DNB and MLdata are", COVAR)
        #need to save all of this in a file to reference later
    write_stats(f"M{made}_FNN_model_stats_{args.npz_path[:-4]}", args.npz_path, CC, MSE, MAE, Explained_var, R2)

    
    
def write_stats(path, inputfile, CC, MSE, MAE, Explained_var, R2):
    with open (path, "w") as f:
        print(inputfile, file =f)
        print(CC)
        print(MSE)
        print(MAE)
        print(Explained_var)
        print(R2)  
        print(file =f)
        
        write_stats(f"M{made}_FNN_model_stats_{args.npz_path[:-4]}", args.npz_path, CC, MSE, MAE, Explained_var, R2)
    
def cloudfree(truths):
    CLOUD = truths['DNB_log_FMN'].flatten()>0.5
    percent = np.count_nonzero(CLOUD)/len(CLOUD)#percent above the threshold given
    print(f"percent of the data that is \"cloud free\" using 0.5  {percent}")
          
          
#making images 


#def quadplot(truth_array, ML_array, Diff, IR):
  #  for i in range(len(truth_array)):
       # DNB=truth_array[i]
       # ML=ML_array[i]
       # DIFF= x-y #diff in truth vs ML
        #IR = 

     #   fig, axs = plt.subplots(2,2,figsize=(15,7.5))
     #   im1 = axs[0,0].imshow(DNB[i]), vmin= 0, vmax=1)
     #   axs[0,0].set_title("DNB_Reflectance", fontsize=16)

      #  im2 = axs[0,1].imshow(ML[i], vmin=0, vmax=1)
      #  axs[0,1].set_title("ML_Reflectance", fontsize=16)

      #  im3 = axs[1,0].imshow(Diff[i], vmin=0, vmax=1)#, cmap='gist_rainbow', vmin=-30, vmax=50)
      #  axs[1,0].set_title("Truth - ML Difference", fontsize=16)

      #  im4 = axs[1,1].imshow(IR[i])# cmap='gist_rainbow', vmin=-30, vmax=50)
      #  axs[1,1].set_title("M15 Imagery", fontsize=16)
#
     #   cbar_ax = fig.add_axes([0.95, 0.15, 0.02, 0.7])
    #    fig.colorbar(im1, cax=cbar_ax)







                
def colordiff(data_dic, name):
    imagedir = mkIMG()
    for i in range(len(data_dic['M12'])): #patches
        print(f"starting DNBdiff on patch {i}")
        for label in data_dic:
            image_array = data_dic[label][i]
            p = imagedir / f'{name}_HEATMAP_{label}_{i}.png'
            if label == "DNB_raddiff":
                fig = plt.figure(figsize =(6,5))
                ax = fig.add_subplot(1,1,1,)
                #vmin = -0.000000002, vmax = 0.000002,
                im =ax.contourf(image_array, cmap = "seismic", extend='both')  
                ax.set_title("value differences between ML radiances and DNB raw radiances", fontsize =14)
                plt.colorbar(im)
                fig.savefig(str(p), dpi =300, bbox_inches='tight')   
            if label == "DNB_normdiff":
                fig = plt.figure(figsize =(6,5))
                ax = fig.add_subplot(1,1,1,)
                im =ax.contourf(image_array, cmap = "seismic", extend='both')  
                ax.set_title("value differences between ML normalized radiances and DNB FMN radiances", fontsize =14)
                plt.colorbar(im)
                fig.savefig(str(p), dpi =300, bbox_inches='tight') 

# #hexbin instead of scatter plot
def hex_plt(x,y):
    mpl.rcParams['agg.path.chunksize'] = 10000
    #plt.hexbin(x, y, C=None, gridsize=100, bins=None, xscale='linear', yscale='linear', extent=None, cmap=None, norm=None, 
#vmin=None, vmax=None, alpha=None, linewidths=None, edgecolors='face', reduce_C_function=<function mean>, mincnt=None, marginals=False, *, data=None, **kwargs)
    sample_mx = 10_000_000
    x = x.flatten()
    #x = x[:sample_mx]
    y = y.flatten()
    #y=y[:sample_mx]
    #print(f'number of data points is {sample_mx}')
    print(f'number of data points')
    print(len(x))
    plt.hexbin(x, y, edgecolors=None, label='DNB', bins=100)#, gridsize = 50) # alpha =.002,
    plt.xlabel('X value = Truth DNB lunar reflectance')
    plt.ylabel('Y value = ML DNB lunar reflectance')
    plt.legend()
    plt.title('True DNB Reflectance vs ML Reflectance for Full Moon')
    plt.colorbar()
    #plt.show()

    plt.plot(x, y)
    fig = plt.gcf()
    fig.savefig('hexplot2020.jpg')

# #density scatter plot for larger datsets
def density_scatter(x, y, ax=None, sort=True, bins=1000, **kwargs):
    """
    Scatter plot colored by 2d histogram
    """
    if ax is None:
        fig , ax = plt.subplots()
    data , x_e, y_e = np.histogram2d( x, y, bins = bins, density = True )
    z = interpn( ( 0.5*(x_e[1:] + x_e[:-1]) , 0.5*(y_e[1:]+y_e[:-1]) ) , data , np.vstack([x,y]).T , method = "splinef2d", bounds_error = False)

    #To be sure to plot all data
    z[np.where(np.isnan(z))] = 0.0

    # Sort the points by density, so that the densest points are plotted last
    if sort :
        idx = z.argsort()
        x, y, z = x[idx], y[idx], z[idx]

    ax.scatter( x, y, c=z, **kwargs )

    norm = Normalize(vmin = np.min(z), vmax = np.max(z))
    cbar = fig.colorbar(cm.ScalarMappable(norm = norm), ax=ax)
    cbar.ax.set_ylabel('Density')
    #add labels
    return ax
                           
                


def plotit(truth_array,ML_array):
    for i in range(len(truth_array)):
        x=truth_array[i]
        y=ML_array[i]
      
        img = x
        imgplot = plt.imshow(img, cmap='gray', vmin =0, vmax=1)

        plt.title('DNB Reflectance truth')
        plt.colorbar()
        #plt.show()
        plt.savefig(f"DNB_truth_2020_AOI_0_30at_{i}.png") 
        plt.clf()
        plt.close()


        img2 = y
        imgplot= plt.imshow(img2, cmap='gray', vmin=0, vmax=1)
        plt.title("DNB Reflectance ML")
        plt.colorbar()
        #plt.show()
        plt.savefig(f"DNB_Ref_ML_2020_AOI_0_30at_{i}.png") 
        plt.clf()
        plt.close()

                


#hexbin instead of scatter plot

def hexy_plt (x,y):
    #plt.hexbin(x, y, C=None, gridsize=100, bins=None, xscale='linear', yscale='linear', extent=None, cmap=None, norm=None, 
#vmin=None, vmax=None, alpha=None, linewidths=None, edgecolors='face', reduce_C_function=<function mean>, mincnt=None, marginals=False, *, data=None, **kwargs)
    plt.hexbin(x,y, edgecolors = None, label='DNB')#alpha =.002,
    plt.xlabel('X value = Truth DNB Lunar Reflectance')
    plt.ylabel('Y value = ML DNB Lunar Reflectance')
    plt.legend()
    plt.title('truth DNB vs ML DNB for Full Moon Norm Radiances')
    plt.colorbar()
    plt.show()
    plt.savefig(f"hexy2020_.png") 


# #density scatter plot for larger datsets
def density_scatter( x , y, ax = None, sort = True, bins = 1000, **kwargs )   :
    """
    Scatter plot colored by 2d histogram
    """
    if ax is None :
        fig , ax = plt.subplots()
    data , x_e, y_e = np.histogram2d( x, y, bins = bins, density = True )
    z = interpn( ( 0.5*(x_e[1:] + x_e[:-1]) , 0.5*(y_e[1:]+y_e[:-1]) ) , data , np.vstack([x,y]).T , method = "splinef2d", bounds_error = False)

    #To be sure to plot all data
    z[np.where(np.isnan(z))] = 0.0

    # Sort the points by density, so that the densest points are plotted last
    if sort :
        idx = z.argsort()
        x, y, z = x[idx], y[idx], z[idx]

    ax.scatter( x, y, c=z, **kwargs )

    norm = Normalize(vmin = np.min(z), vmax = np.max(z))
    cbar = fig.colorbar(cm.ScalarMappable(norm = norm), ax=ax)
    cbar.ax.set_ylabel('Density')
    #add labels
    return ax
















