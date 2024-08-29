#include "ecal_cosmic_hls.h"
using namespace std;

/* detector channels maps
 * row, col, super module 
 * row -- row number
 * col -- colum number for that row
 * super module -- which super module for that crate it belongs to
 * Crate 1 -7 have different maps
 * Here is the map for crate 1
*/ 
block_coords detmap[NDETCHAN] = { {1,1,1},{1,2,1},{1,3,1},{1,4,2},{1,5,2},{1,6,2},{1,7,3},{1,8,3},{1,9,3},{1,10,4},{1,11,4},{1,12,4},{2,1,1},{2,2,1},{2,3,1},{2,4,2},{2,5,2},{2,6,2},{2,7,3},{2,8,3},{2,9,3},{2,10,4},{2,11,4},{2,12,4},{3,1,1},{3,2,1},{3,3,1},{3,4,2},{3,5,2},{3,6,2},{3,7,3},{3,8,3},{3,9,3},{3,10,4},{3,11,4},{3,12,4},{4,1,5},{4,2,5},{4,3,5},{4,4,6},{4,5,6},{4,6,6},{4,7,7},{4,8,7},{4,9,7},{4,10,8},{4,11,8},{4,12,8},{4,13,9},{4,14,9},{4,15,9},{4,16,10},{4,17,10},{4,18,10},{5,1,5},{5,2,5},{5,3,5},{5,4,6},{5,5,6},{5,6,6},{5,7,7},{5,8,7},{5,9,7},{5,10,8},{5,11,8},{5,12,8},{5,13,9},{5,14,9},{5,15,9},{5,16,10},{5,17,10},{5,18,10},{6,1,5},{6,2,5},{6,3,5},{6,4,6},{6,5,6},{6,6,6},{6,7,7},{6,8,7},{6,9,7},{6,10,8},{6,11,8},{6,12,8},{6,13,9},{6,14,9},{6,15,9},{6,16,10},{6,17,10},{6,18,10},{7,1,11},{7,2,11},{7,3,11},{7,4,12},{7,5,12},{7,6,12},{7,7,13},{7,8,13},{7,9,13},{7,10,14},{7,11,14},{7,12,14},{7,13,15},{7,14,15},{7,15,15},{7,16,16},{7,17,16},{7,18,16},{7,19,17},{7,20,17},{7,21,17},{8,1,11},{8,2,11},{8,3,11},{8,4,12},{8,5,12},{8,6,12},{8,7,13},{8,8,13},{8,9,13},{8,10,14},{8,11,14},{8,12,14},{8,13,15},{8,14,15},{8,15,15},{8,16,16},{8,17,16},{8,18,16},{8,19,17},{8,20,17},{8,21,17},{9,1,11},{9,2,11},{9,3,11},{9,4,12},{9,5,12},{9,6,12},{9,7,13},{9,8,13},{9,9,13},{9,10,14},{9,11,14},{9,12,14},{9,13,15},{9,14,15},{9,15,15},{9,16,16},{9,17,16},{9,18,16},{9,19,17},{9,20,17},{9,21,17},{10,1,18},{10,2,18},{10,3,18},{10,4,19},{10,5,19},{10,6,19},{10,7,20},{10,8,20},{10,9,20},{10,10,21},{10,11,21},{10,12,21},{10,13,22},{10,14,22},{10,15,22},{10,16,23},{10,17,23},{10,18,23},{10,19,24},{10,20,24},{10,21,24},{11,1,18},{11,2,18},{11,3,18},{11,4,19},{11,5,19},{11,6,19},{11,7,20},{11,8,20},{11,9,20},{11,10,21},{11,11,21},{11,12,21},{11,13,22},{11,14,22},{11,15,22},{11,16,23},{11,17,23},{11,18,23},{11,19,24},{11,20,24},{11,21,24},{12,1,18},{12,2,18},{12,3,18},{12,4,19},{12,5,19},{12,6,19},{12,7,20},{12,8,20},{12,9,20},{12,10,21},{12,11,21},{12,12,21},{12,13,22},{12,14,22},{12,15,22},{12,16,23},{12,17,23},{12,18,23},{12,19,24},{12,20,24},{12,21,24}};

// ecal_cosmic_hls:
void ecal_cosmic_hls(
    TYPE_T hit_width,
    TYPE_ROWTHRESHOLD row_threshold,       // how many rows is required to be in coincidence
    hls::stream<fadc_hits_vxs> &s_fadc_hits_vxs,
    hls::stream<trigger_t> &s_trigger_t

)
{

#pragma HLS INTERFACE ap_fifo port=s_fadc_hits_vxs
#pragma HLS INTERFACE ap_fifo port=s_trigger_t

#pragma HLS PIPELINE II=1 style=flp

  fadc_hits_vxs fadc_hits = s_fadc_hits_vxs.read();
  static TYPE_LONGT fadc_hits_stream[NFADCCHAN]={0};

// for a single channel,if there is a hit, register the hit in fadc_hits_stream[ch][t]=1,
// and extend the hit time from the leading edge t to t+hit_width
// the follwoing hits within [t,t+hit_width] are ignored 
// This is similar to a discriminator module with adjustable output pulse width defined by hit_width
  int ch=0;
  int dt=0;
  for(ch=0; ch<NFADCCHAN; ch++){
     TYPE_T tt = fadc_hits.vxs_ch[ch].t;
     ap_uint<1> first = !fadc_hits_stream[ch][tt];   // check if there is already a hit at t
     for(dt=0; dt<8; dt++){
         if(fadc_hits.vxs_ch[ch].e>0 && dt<=hit_width && first){
            fadc_hits_stream[ch][tt+dt]=1;
         }
     }
  }

// Take OR of all columns of a row
  TYPE_TRIG row_or_hits[NROW] = {0};
  for(dt=0; dt<8; dt++){
     for(ch=0; ch<NFADCCHAN; ch++){
      TYPE_ROW tmp_row = detmap[ch].row;
      row_or_hits[tmp_row-1][dt] |= fadc_hits_stream[ch][dt];

#ifndef __SYNTHESIS__
      if(fadc_hits_stream[ch][dt])
         printf("hits at tt = %d, row = %d, col = %d, fadc chan=%d\n",dt,tmp_row.to_uint(),detmap[ch].col.to_uint(),ch);
#endif
     }
  }

#ifndef __SYNTHESIS__
  for(int ii=0; ii<NROW; ii++){
     int bit0 = row_or_hits[ii][0];
     int bit1 = row_or_hits[ii][1];
     int bit2 = row_or_hits[ii][2];
     int bit3 = row_or_hits[ii][3];
     int bit4 = row_or_hits[ii][4];
     int bit5 = row_or_hits[ii][5];
     int bit6 = row_or_hits[ii][6];
     int bit7 = row_or_hits[ii][7];
     if(row_or_hits[ii]) printf("row = %d hits time = %d%d%d%d%d%d%d%d\n",ii+1, bit0, bit1, bit2, bit3, bit4, bit5, bit6, bit7);
  }
#endif


// Pass the results of all the rows through a multiplicity threshold
  TYPE_TRIG multi_row_trig;  
  multi_row_trig = Trig_multiplicity(row_or_hits, row_threshold);
  
// Pass the multiplicity OR through a discriminator and the rising edge is the trigger time
  static ap_uint<1> lastT=0;  // the last time bit in the previous time frame
  TYPE_TRIG trig_t=0;

  trig_t = Disc(multi_row_trig, lastT); 

  trigger_t final_trig;
  final_trig.trig = trig_t;
  s_trigger_t.write(final_trig);

  lastT = multi_row_trig[7];

  for(ch=0; ch<NFADCCHAN; ch++)
      fadc_hits_stream[ch] = fadc_hits_stream[ch]>>8;

  return;
}

TYPE_TRIG Trig_multiplicity(TYPE_TRIG row_hits[NROW], TYPE_ROWTHRESHOLD row_threshold){

  int nrow=0;
  int tt=0;
  TYPE_ROW tot_hits[8]={0}; // number of planes fired per 4 ns

#ifndef __SYNTHESIS__
  for(int ii=0; ii<NROW; ii++){
     int bit0 = row_hits[ii][0];
     int bit1 = row_hits[ii][1];
     int bit2 = row_hits[ii][2];
     int bit3 = row_hits[ii][3];
     int bit4 = row_hits[ii][4];
     int bit5 = row_hits[ii][5];
     int bit6 = row_hits[ii][6];
     int bit7 = row_hits[ii][7];
     if(row_hits[ii]) printf("TRIG_MULTI: row = %d hits time = %d%d%d%d%d%d%d%d\n",ii+1, bit0, bit1, bit2, bit3, bit4, bit5, bit6, bit7);
  }
#endif


  TYPE_TRIG trig_t=0;
  for(tt=0; tt<8; tt++){
     for(nrow=0; nrow<NROW; nrow++){
        tot_hits[tt] += row_hits[nrow][tt]; 
     }  
     trig_t[tt] = (tot_hits[tt]>=row_threshold)?1:0;
  }

  return trig_t;
}


TYPE_TRIG Disc( TYPE_TRIG t_stream, ap_uint<1> lastT){
  
  int dt=0;
  TYPE_TRIG pre_t;
  TYPE_TRIG cur_t;

  pre_t[0] = lastT;
  for(dt=1; dt<8; dt++)
     pre_t[dt] = t_stream[dt-1];

  for(dt=0; dt<8; dt++)
     cur_t[dt] = t_stream[dt];

#ifndef __SYNTHESIS__
  int bit0 = pre_t[0];
  int bit1 = pre_t[1];
  int bit2 = pre_t[2];
  int bit3 = pre_t[3];
  int bit4 = pre_t[4];
  int bit5 = pre_t[5];
  int bit6 = pre_t[6];
  int bit7 = pre_t[7];
  printf("Disc: pre_t = %d%d%d%d%d%d%d%d\n",bit0, bit1, bit2, bit3, bit4, bit5, bit6, bit7);

  bit0 = cur_t[0];
  bit1 = cur_t[1];
  bit2 = cur_t[2];
  bit3 = cur_t[3];
  bit4 = cur_t[4];
  bit5 = cur_t[5];
  bit6 = cur_t[6];
  bit7 = cur_t[7];
  printf("Disc: cur_t = %d%d%d%d%d%d%d%d\n",bit0, bit1, bit2, bit3, bit4, bit5, bit6, bit7);
#endif
 

// if there is a rising edge, the trigger is geneated at the leading edge. 
  TYPE_TRIG trig_t=0;
  for(dt=0; dt<8; dt++)
     if(pre_t[dt]==0 && cur_t[dt]==1) trig_t[dt]=1;   

  return trig_t;
}
