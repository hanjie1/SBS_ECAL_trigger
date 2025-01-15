import pandas as pd
import numpy as np

df_cell = pd.read_csv('cell_map.csv')
np.savetxt("cell_table.txt",df_cell.values, fmt=['(%s','%s','%s','%s','%s','%s','%s','%s','%s','%s','%s','%s'],delimiter=',',newline='),\n')

tot_crate=7
for ncrate in range(tot_crate):
    df_cluster = pd.read_csv('crate%d_cluster_map.csv'%(ncrate+1),usecols=['cluster_cell_list'])
    np.savetxt("crate%d_cluster_table.txt"%(ncrate+1),df_cluster.values, fmt='%s',delimiter=',',newline=',\n')
    del df_cluster
