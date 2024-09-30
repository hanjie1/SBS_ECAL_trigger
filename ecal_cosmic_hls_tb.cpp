#include <stdio.h>
#include <stdlib.h>
#include <fstream>
#include <string>
#include "ecal_cosmic_hls.h"

using namespace std;

void gen_LoopCH(int ee, int tt, hls::stream<fadc_hits_vxs>& s_fadc_hits_vxs){

  int nframe=NFADCCHAN;

  for(int ii=0; ii<nframe; ii++){
    fadc_hits_vxs new_hits;
    for(int jj=0; jj<NFADCCHAN; jj++){
      if(jj==ii){ 
        new_hits.vxs_ch[jj].e=ee;
        new_hits.vxs_ch[jj].t=tt;
      }
      else{
        new_hits.vxs_ch[jj].e=0;
        new_hits.vxs_ch[jj].t=0;
      }
    } 
    s_fadc_hits_vxs.write(new_hits);
  }

  return;

}

void gen_Cstm(hls::stream<fadc_hits_vxs>& s_fadc_hits_vxs){

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

     return;
}

void get_CstmTrig(hls::stream<trigger_t>& s_trigger_t, int ntrig){


     char filename[200];
     snprintf(filename, 200, "%s","/daqfs/home/hanjie/Desktop/GEp/SBS_ECAL_trigger/cosmic1/trigger.txt");
     ifstream infile(filename);
     if(infile.is_open())
       printf("open file: %s\n",filename);
     else
       return;

     trigger_t trig_real;

     int nn=0;
     int nline_start=ntrig*4;
     int nline_stop=(ntrig+1)*4;
     string aline;

     while( getline(infile,aline) )
     {
        if(nn<=nline_start){ nn++; continue;}
        if(nn>=nline_stop) break;

        string tmps_trig;
        int tmp_frame;
        stringstream(aline)>>tmp_frame>>tmps_trig;
        TYPE_TRIG tmp_trig = stoi(tmps_trig,0,2);
        trig_real.trig = tmp_trig;
        s_trigger_t.write(trig_real);
        
        nn++;
     }
     infile.close();


     return;
}


int Compare(hls::stream<trigger_t>& s_trigger_t, hls::stream<trigger_t>& s_trigger_t_real){

  int result=0;
  int nn=0;
  while(!s_trigger_t.empty() && !s_trigger_t_real.empty()){
     TYPE_TRIG tt = s_trigger_t.read().trig;
     TYPE_TRIG tt_real = s_trigger_t_real.read().trig;

     nn++;
     if(tt != tt_real) {
        result=1;   
        printf("Compare: frame %d, trigger %d != real trigger %d\n", nn, tt.to_uint(), tt_real.to_uint());
     }

     for(int ii=0; ii<8; ii++){
         if(tt[ii]==1){
            printf("Trigger at frame %d: t=%d\n",nn,ii);
         }
     }
  
  }

  if(!s_trigger_t_real.empty()){
     result=1;
     printf("Compare: frame %d, residuals in real trigger\n", nn);
  }

  if(!s_trigger_t.empty()){
     result=1;
     printf("Compare: frame %d, residuals in trigger\n", nn);
  }

  return result;
    
}

int main(int argc, char *argv[])
{
  bool CHK1=false;
  bool CHK2=true;

  int check1=0;
  int check2=0;

// check 1: loop all channels
  if(CHK1){

     TYPE_T hit_dt = 3;
     TYPE_ROWTHRESHOLD row_threshold = 1;
     hls::stream<fadc_hits_vxs> s_fadc_hits_vxs;
     hls::stream<trigger_t> s_trigger_t;

     int ee = 500;
     int tt = 6;
     gen_LoopCH(ee, tt, s_fadc_hits_vxs);

     while(!s_fadc_hits_vxs.empty())
     {
       ecal_cosmic_hls(
        hit_dt,
        row_threshold,
        s_fadc_hits_vxs,
        s_trigger_t
       );
     }

     hls::stream<trigger_t> s_trigger_t_real;
     for(int ii=0; ii<NFADCCHAN; ii++){
         TYPE_TRIG tt_real = 1<<tt;
         trigger_t tmptrig;
         tmptrig.trig = tt_real;
         s_trigger_t_real.write(tmptrig);
     }

     printf("CHK1: entering Compare\n");
     check1 = Compare(s_trigger_t, s_trigger_t_real);
     cout<<"check 1: "<<check1<<endl; 
  }  

  if(CHK2){
     
     TYPE_T hit_dt[4] = {3,3,3,4};
     TYPE_ROWTHRESHOLD row_threshold[4] = {3,4,1,1};

     int tot=4;
     for(int ii=0; ii<tot; ii++){

         hls::stream<fadc_hits_vxs> s_fadc_hits_vxs;
         gen_Cstm(s_fadc_hits_vxs);

         hls::stream<trigger_t> s_trigger_t;

         while(!s_fadc_hits_vxs.empty())
         {
           ecal_cosmic_hls(
            hit_dt[ii],
            row_threshold[ii],
            s_fadc_hits_vxs,
            s_trigger_t
           );
         }

         hls::stream<trigger_t> s_trigger_t_real;
         get_CstmTrig(s_trigger_t_real,ii);

         printf("CHK2: entering Compare %d\n",ii);
         int tmp_check = Compare(s_trigger_t, s_trigger_t_real);
         check2 = check2 + tmp_check;
         cout<<"check 2: "<<tmp_check<<endl; 
     }
  }

  int check = check1+check2;

  return check;
}
