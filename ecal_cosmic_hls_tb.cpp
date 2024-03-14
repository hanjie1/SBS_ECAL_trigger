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
  hls::stream<all_smodule_t> s_all_smodule_t;
  hls::stream<trigger_t> s_trigger_t;

  int nframe=29;
  int ii=0;
  for(ii=0; ii<nframe; ii++){

      fadc_hits_vxs new_hits_vxs;

      char filename[200];
      snprintf(filename, 200, "%s%d.txt","/daqfs/home/hanjie/Desktop/GEp/SBS_ECAL_trigger/data/frame",ii);
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
    cout<<"frame  "<<nn<<endl;
    ecal_cosmic_hls(
     hit_dt,
     smo_dt,
     nsmo_threshold,       // how many super module is required to be fired
     mltp_threshold,    // how many PMTs are required to be fired per super module
     s_fadc_hits_vxs,
     s_all_smodule_t,
     s_trigger_t
    );

    nn++;
  }

  nn=0;
  while(!s_all_smodule_t.empty()){
     all_smodule_t tmp = s_all_smodule_t.read();
     for(int ii=0; ii<3; ii++){
       for(int jj=0; jj<9; jj++){
           smodule_t tmpsmo = tmp.smo[ii][jj];
           if(tmpsmo.nhits>0){
              int tmpn = tmpsmo.n.to_uint();
              int tmpt = tmpsmo.t.to_uint()*4+(nn-1)*8*4;
              int tmpnhits = tmpsmo.nhits.to_uint();
  
              printf("Find smodule hit at frame %d: n=%d, t=%d, nhits=%d\n",nn-1,tmpn,tmpt,tmpnhits);
           }
       }
     }
     nn++;
  }

  nn=0;
  while(!s_trigger_t.empty()){
     trigger_t tmp = s_trigger_t.read();
     ap_uint<8> tt = tmp.trig;
     for(int ii=0; ii<8; ii++){
         if(tt[ii]==1){
            printf("Trigger at frame %d: t=%d\n",nn-1,ii);
         }
     }
     nn++;
  }


  return 0;
}
