#include <stdio.h>
#include <stdlib.h>
#include <fstream>
#include <string>
#include "ecal_cosmic_hls.h"
using namespace std;

int main(int argc, char *argv[])
{

  ap_uint<3> hit_dt = 3;
  ap_uint<3> smo_dt = 3;
  ap_uint<2> nsmo_threshold = 1;
  ap_uint<4> mltp_threshold[3] = {1,1,1};
  hls::stream<fadc_hits_vxs> s_fadc_hits_vxs;
  hls::stream<smo_trig_t> s_smo_trig_t[3];
  hls::stream<trigger_t> s_trigger_t;

  int nframe=29;
  int ii=0;
  for(ii=0; ii<nframe; ii++){

      fadc_hits_vxs new_hits_vxs;

      char filename[200];
      snprintf(filename, 200, "%s%d.txt","/daqfs/home/hanjie/Desktop/GEp/SBS_ECAL_trigger/data1/frame",ii);
      ifstream infile(filename);
      if(infile.is_open())
        printf("open file: %s\n",filename);
      else
        continue;

      int nn=0;
      while( !infile.eof() && nn<NCHAN) 
      {
         int ee,tt;
         infile>>ee;
         infile>>tt;
         new_hits_vxs.vxs_ch[nn].e = (ap_uint<13>)ee;
         new_hits_vxs.vxs_ch[nn].t = (ap_uint<3>)tt;
         nn++;
      }
      printf("%d %d\n",ii,nn);
      infile.close();

      s_fadc_hits_vxs.write(new_hits_vxs);
  }

  int nn=0;
  while(!s_fadc_hits_vxs.empty())
  {
    cout<<"=============================== frame "<<nn<<endl;
    ecal_cosmic_hls(
     hit_dt,
     smo_dt,
     nsmo_threshold,       // how many super module is required to be fired
     mltp_threshold,    // how many PMTs are required to be fired per super module
     s_fadc_hits_vxs,
     s_smo_trig_t,
     s_trigger_t
    );

    nn++;
  }

  nn=0;
  while(!s_smo_trig_t[0].empty()){
     for(int ii=0; ii<3; ii++){
       ap_uint<16> tmp = s_smo_trig_t[ii].read().trig;
       printf("Find smodule hit at frame %d: nsmo=%d, t=%16x\n",nn,ii,tmp.to_uint());
       }
     nn++;
  }

  nn=0;
  while(!s_trigger_t.empty()){
     ap_uint<8> tt = s_trigger_t.read().trig;
     for(int ii=0; ii<8; ii++){
         if(tt[ii]==1){
            printf("Trigger at frame %d: t=%d\n",nn,ii);
         }
     }
     nn++;
  }


  return 0;
}
