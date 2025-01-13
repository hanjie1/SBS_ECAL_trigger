import pandas as pd

# total number of cells in each crate
tot_crate=7
tot_cell_crate=[216,225,243,243,243,234,252]
crate_name=["SBS_ECALVTP1_ROCID","SBS_ECALVTP2_ROCID","SBS_ECALVTP3_ROCID","SBS_ECALVTP4_ROCID","SBS_ECALVTP5_ROCID","SBS_ECALVTP6_ROCID","SBS_ECALVTP7_ROCID"]

# total number of super modules for each crate per row
nsmo_crate=[ [4,6,7,7],[8,8,9],[9,9,9],[9,9,9],[9,9,9],[9,9,8],[8,7,7,6] ]
# starting offset for the super module row
col_offset=[ [0,1,0,1],[0,2,2],[2,2,2],[2,2,2],[2,2,2],[2,2,2],[0,1,0,1] ]
slot_num=[3,4,5,6,7,8,9,10,13,14,15,16,17,18,19,20]

# generate the (cell no., row, col, rocid, slot, ch) for each cell
# lists to form the data frame
cell_list=[]
row_list=[]
col_list=[]
crate_list=[]
slot_list=[]
ch_list=[]

# intial value
ncell=0
nrow=0

for ncrate in range(tot_crate):      # loop 7 crates
    nsmorow=0
    cell_offset=ncell
    for nsmo in nsmo_crate[ncrate]:  # loop over super modules row by row
        for ii in range(nsmo):       # loop the super modules for that row
            for jj in range(9):      # loop the 3x3 cells of a super module
                tmpcell = ncell+ii*3+(jj//3)*nsmo*3+jj%3
                tmprow = nrow+jj//3
                tmpcol = ii*3+jj%3+col_offset[ncrate][nsmorow] 
                tmpslot = (tmpcell-cell_offset)//16 
                tmpchan = (tmpcell-cell_offset)%16

                cell_list.append(tmpcell)
                row_list.append(tmprow)
                col_list.append(tmpcol)
                crate_list.append(crate_name[ncrate])
                slot_list.append(slot_num[tmpslot])
                ch_list.append(tmpchan)
        ncell = ncell+9*nsmo
        nrow = nrow+3 
        nsmorow=nsmorow+1

dic_gen={'cell':cell_list, 'row':row_list, 'column':col_list, 'crate':crate_list, 'slot':slot_list, 'chan':ch_list}
df_gen=pd.DataFrame(dic_gen)

# generate the bin number for each cell
bin_dic={'cell':[],'bin':[]}
startrow=0
maxrow=[12,9,9,9,9,9,12] # maximum number of rows per crate
for ncrate in range(tot_crate):
    lastrow=0
    bin_offset=0
    maxbin_per_row=[]
 
    for irow in range(maxrow[ncrate]):
        startcol=col_offset[ncrate][irow//3]
        imaxcol=nsmo_crate[ncrate][irow//3]*3+startcol
        # 3x3 binning
        if irow//3 != lastrow//3:
           bin_offset=max(maxbin_per_row)+1
           maxbin_per_row.clear()
         
        for icol in range(startcol,imaxcol):
            ibin=icol//3 + bin_offset # 3x3 binning
            icell=df_gen[(df_gen['row']==(irow+startrow))&(df_gen['column']==icol)]['cell'].iloc[0]
            bin_dic['cell'].append(icell)
            bin_dic['bin'].append(ibin)

        maxbin_per_row.append(ibin)
        lastrow=irow
    startrow=startrow+irow+1

df_bin=pd.DataFrame(bin_dic)

# generate the fiber maps for the perimeter blocks of each crate
for ncrate in range(tot_crate):
        

df=pd.merge(df_gen, df_bin, on='cell')
df.set_index('cell',inplace=True)
df_sorted=df.sort_index()
df_sorted.to_csv("map.csv")
