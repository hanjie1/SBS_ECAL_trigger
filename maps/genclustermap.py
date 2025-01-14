import pandas as pd
import numpy as np

df_cell = pd.read_csv('cell_map.csv')

def find_cell(row, col):
    if df_cell.query('row=={} and column=={}'.format(row,col)).empty:
       return -1
    
    cellid = df_cell[(df_cell['row']==row)&(df_cell['column']==col)]['cell'].iloc[0]
    return cellid

tot_crate=7
# total number of super modules for each crate per row
nsmo_crate=[ [4,6,7,7],[8,8,9],[9,9,9],[9,9,9],[9,9,9],[9,9,8],[8,7,7,6] ]
# starting offset for the super module row
col_offset=[ [0,1,0,1],[0,2,2],[2,2,2],[2,2,2],[2,2,2],[2,2,2],[0,1,0,1] ]
maxrow=[12,9,9,9,9,9,12] # maximum number of rows per crate


startrow=0
for ncrate in range(tot_crate):
    dic={'row':[],'col':[],'cluster_cell_list':[]}

    for irow in range(maxrow[ncrate]):
        startcol=col_offset[ncrate][irow//3]
        imaxcol=nsmo_crate[ncrate][irow//3]*3+startcol
   
        for icol in range(startcol,imaxcol):
            # 3x5 cluster around (irow, icol)
            c0_cell = df_cell[(df_cell['row']==(irow+startrow))&(df_cell['column']==icol)]['cell'].iloc[0]
            c1_irow = irow+startrow-2
            c1_icol = icol-1
            c1_cell = find_cell(c1_irow,c1_icol)

            c2_irow = irow+startrow-2
            c2_icol = icol
            c2_cell = find_cell(c2_irow,c2_icol)

            c3_irow = irow+startrow-2
            c3_icol = icol+1
            c3_cell = find_cell(c3_irow,c3_icol)

            c4_irow = irow+startrow-1
            c4_icol = icol-1
            c4_cell = find_cell(c4_irow,c4_icol)

            c5_irow = irow+startrow-1
            c5_icol = icol
            c5_cell = find_cell(c5_irow,c5_icol)

            c6_irow = irow+startrow-1
            c6_icol = icol+1
            c6_cell = find_cell(c6_irow,c6_icol)

            c7_irow = irow+startrow
            c7_icol = icol-1
            c7_cell = find_cell(c7_irow,c7_icol)

            c8_irow = irow+startrow
            c8_icol = icol+1
            c8_cell = find_cell(c8_irow,c8_icol)

            c9_irow = irow+startrow+1
            c9_icol = icol-1
            c9_cell = find_cell(c9_irow,c9_icol)

            c10_irow = irow+startrow+1
            c10_icol = icol
            c10_cell = find_cell(c10_irow,c10_icol)

            c11_irow = irow+startrow+1
            c11_icol = icol+1
            c11_cell = find_cell(c11_irow,c11_icol)

            c12_irow = irow+startrow+2
            c12_icol = icol-1
            c12_cell = find_cell(c12_irow,c12_icol)

            c13_irow = irow+startrow+2
            c13_icol = icol
            c13_cell = find_cell(c13_irow,c13_icol)

            c14_irow = irow+startrow+2
            c14_icol = icol+1
            c14_cell = find_cell(c14_irow,c14_icol)

            dic['row'].append(irow+startrow)
            dic['col'].append(icol)
            tmp_list = np.array([c0_cell,c1_cell,c2_cell,c3_cell,c4_cell,c5_cell,c6_cell,c7_cell,c9_cell,c10_cell,c11_cell,c12_cell,c13_cell,c14_cell])
            dic['cluster_cell_list'].append(tmp_list)

    startrow=startrow+maxrow[ncrate]
    df_tmp = pd.DataFrame(dic)
    df_tmp.to_csv("crate%d_cluster_map.csv"%(ncrate+1))
    del dic
    del df_tmp
            
