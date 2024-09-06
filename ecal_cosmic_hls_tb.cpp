#include <stdio.h>
#include <stdlib.h>
#include <fstream>
#include <string>
#include "ecal_cosmic_hls.h"
using namespace std;

int main(int argc, char *argv[])
{

  TYPE_T hit_dt = 3;
  TYPE_ROWTHRESHOLD row_threshold = 1;
  hls::stream<fadc_hits_vxs> s_fadc_hits_vxs;
  hls::stream<trigger_t> s_trigger_t;

  bool CHKMAP=false;  // loop all FADC channel to see if the detector map is correct
  bool CHKCUSTOM = true;  // few designed hit patterns 

  if(CHKMAP){
     int nframe=NFADCCHAN;

     for(int ii=0; ii<nframe; ii++){
       fadc_hits_vxs new_hits;
       for(int jj=0; jj<NFADCCHAN; jj++){
         if(jj==ii){ 
           new_hits.vxs_ch[jj].e=500;
           new_hits.vxs_ch[jj].t=6;
         }
         else{
           new_hits.vxs_ch[jj].e=0;
           new_hits.vxs_ch[jj].t=0;
         }
       } 
       s_fadc_hits_vxs.write(new_hits);
     }
  }

  if(CHKCUSTOM){
     int nframe=3;
     int ii=0;
     for(ii=0; ii<nframe; ii++){

         fadc_hits_vxs new_hits;

         char filename[200];
         snprintf(filename, 200, "%s%d.txt","/daqfs/home/hanjie/Desktop/GEp/SBS_ECAL_trigger/cosmic1/frame",ii);
         ifstream infile(filename);
         if(infile.is_open())
           printf("open file: %s\n",filename);
         else
           continue;

         int nn=0;
         while( !infile.eof() && nn<NFADCCHAN)
         {
            int ee,tt;
            infile>>ee;
            infile>>tt;
            new_hits.vxs_ch[nn].e = (ap_uint<13>)ee;
            new_hits.vxs_ch[nn].t = (ap_uint<3>)tt;
            nn++;
         }
         printf("%d %d\n",ii,nn);
         infile.close();

         s_fadc_hits_vxs.write(new_hits);
     }
  }

  int nn=0;
  while(!s_fadc_hits_vxs.empty())
  {
    ecal_cosmic_hls(
     hit_dt,
     row_threshold,
     s_fadc_hits_vxs,
     s_trigger_t
    );
    nn++;
  }
  cout<<"Total "<<nn<<" frames"<<endl;

  nn=0;
  while(!s_trigger_t.empty()){
     TYPE_TRIG tt = s_trigger_t.read().trig;
     for(int ii=0; ii<8; ii++){
         if(tt[ii]==1){
            printf("Trigger at frame %d: t=%d\n",nn,ii);
         }
     }
     nn++;
  }


  return 0;
}
