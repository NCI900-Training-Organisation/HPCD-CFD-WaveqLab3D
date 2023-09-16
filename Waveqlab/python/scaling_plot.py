import matplotlib.pyplot as plt
import numpy as np
upw2 = [325, 152.9, 89, 46, 25]
upw3 = [359, 188, 101, 46, 23]
upw4 = [421, 213, 118, 51, 26]
upw5 = [480.2, 249.1, 134.0, 55.7, 27.5]
upw6 = [581.1, 274.9, 155.2, 66.01, 30.4]
upw7 = [646.6, 317.5, 167.9, 76.4, 32.3]
upw8 = [702.2, 353.2, 186.8, 84.6, 39.3]
upw9 = [772.7, 384.0, 201.6, 94.5, 42.8]
exp2 = [1,2,4,8,16]

# cast data to a matrix
data = np.array([upw2, upw3, upw4, upw5, upw6, upw7, upw8, upw9, exp2])
print(data)

# calculate speedup from time data
def speedup(time_list):
    
    # base case
    speedup_list = [1]

    for i in range(1,len(time_list)):

        speedup_list.append(time_list[0]/time_list[i])
    
    return speedup_list
print(speedup(upw2))




def speedup_plot(data):
    
    for i in range((np.shape(data)[0])-1):

        data[i,:] = speedup(data[i,:])
        print(data)
        #test_num = [(i+1)**2 for i in range(np.shape(data)[1])]
        #print(test_num)
        plt.plot(data[-1,:], data[i,:],  '--o', label = 'upw ' +str(i+2),   linewidth = 2)
    plt.plot(data[-1,:], data[-1,:], '--k', label = "ideal ", linewidth = 2)
    plt.legend(loc = "upper left", fontsize=24)
    plt.xlabel('Number of login nodes ', fontsize=36)
    plt.ylabel('Speedups ', fontsize = 36)
    plt.show()


def scaling_plot(data):

    for i in range((np.shape(data)[0])-1):

        #data[i,:] = speedup(data[i,:])
        #print(data)
        #test_num = [(i+1)**2 for i in range(np.shape(data)[1])]
        #print(test_num)
        plt.loglog(data[-1,:], data[i,:],  '--o', label = 'upw ' +str(i+2),   linewidth = 2)
    #plt.plot(data[-1,:], data[-1,:], '--k', label = "ideal ", linewidth = 2)
    plt.legend(loc = "upper right", fontsize=21)
    plt.xlabel('Number of login nodes ', fontsize=36)
    plt.ylabel('Wallclock in seconds', fontsize =36)
    plt.show()






scaling_plot(data)
speedup_plot(data)