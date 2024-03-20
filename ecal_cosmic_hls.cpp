#include "ecal_cosmic_hls.h"
using namespace std;

ap_uint<5> smodule_ch[NCHAN] = [0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26];

// ecal_cosmic_hls:
void ecal_cosmic_hls(
    ap_uint<3> hit_dt,
    ap_uint<3> smo_dt,
    ap_uint<2> nsmo_threshold,       // how many super module is required to be fired
    ap_uint<4> mltp_threshold[3],    // how many PMTs are required to be fired per super module
    hls::stream<fadc_vxs_hits_t> &s_fadc_vxs_hits,
    hls::stream<uint16_t> (&s_smo_trig_t)[3],
    hls::stream<uint8_t> &s_trigger_t

)
{
  fadc_vxs_hits_t fadc_hits = s_fadc_vxs_hits.read();
  static ap_uint<16> fadc_hits_stream[NCHAN];
 
  for(int ch=0; ch<NCHAN; ch++){
    for(int t=0; t<8; t++){
      if(fadc_hits.hits[ch].hit[t] && !fadc_hits_stream[ch][t]){
        for(int ii=t; ii<=(t+hit_dt); ii++)
            fadc_hits_stream[ch][ii]=1;
      }
    }
  }

  ap_uint<8> smo_trig[3];
  
// trigger candidate from each super module for the current frame
 
  for(int t=0; t<8; t++){
      ap_uint<NCHAN> tmp_fadc_hits=0;
      for(int nn=0; nn<NCHAN; nn++){
          ap_uint<5> ch = smodule_ch[nn];
          tmp_fadc_hits[nn] = fadc_hits_stream[ch][t];  // organize the hits according to block number
      }

      smo_trig[0][t] = smo_multi_trig(tmp_fadc_hits(8,0),mltp_threshold[0]);
      smo_trig[1][t] = smo_multi_trig(tmp_fadc_hits(17,9),mltp_threshold[1]);
      smo_trig[2][t] = smo_multi_trig(tmp_fadc_hits(26,18),mltp_threshold[2]);
  } 

// combine the current frame and the previous frame

  static ap_uint<16> smo_trig_stream[3];

  for(int ii=0; ii<3; ii++)
    for(int t=0; t<8; t++)
      smo_trig_stream[ii][t] = smo_trig_stream[ii][t] | smo_trig[ii][t];

  for(int ii=0; ii<3; ii++)
      smo_trig_stream[ii] = newsmo_trig(smo_trig_stream[ii]);
  
  ap_uint<8> trigger = gen_trig(smo_trig_stream, nsmo_threshold);

  for(int ii=0; ii<3; ii++)
     s_smo_trig_t[ii].write(smo_trig_stream[ii]);

  s_trig_t.write(trigger);

  for(int ch=0; ch<NCHAN; ch++)
      fadc_hits_stream[ch] = fadc_hits_stream[ch]>>8;

  for(int ii=0; ii<3; ii++)
     smo_trig_stream[ii] = smo_trig_stream[ii]>>8;


  return;
}

ap_uint<1> smo_multi_trig(ap_uint<9> fadc_hits,ap_uint<4> multp_thr)
{
  ap_uint<4> hit_cnt = 0;

  for(int i=0;i<9;i++)
    hit_cnt+= fadc_hits[i] ? 1 : 0;

  if(hit_cnt >= multp_thr)
    return 1;

  return 0;
}

ap_uint<16> newsmo_trig( ap_uint<16> trig, ap_uint<3> smo_dt ){

  ap_uint<1> first=1;
  ap_uint<16> newtrig = trig;
  for(int t=0; t<8; t++){
      if(trig[t] && first){
         first=0;
         for(int ii=t; ii<=(t+smo_dt); ii++)
             newtrig[ii]=1;
       
      }
      else{
          first=1;
      }
  }

  return newtrig;
}

ap_uint<8> gen_trig(ap_uint<8> strig[3], ap_uint<2> multp_thr){

  ap_uint<8> trig=0; 
 
  for(int t=0; t<8; t++){
      ap_uint<2> hit_cnt = strig[0][t]+strig[1][t]+strig[2][t];
      if(hit_cnt >= multp_thr)
         trig[t]=1;
  }  

  return trig;
}
