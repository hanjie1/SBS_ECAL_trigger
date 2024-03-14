#include "ecal_cosmic_hls.h"
using namespace std;

block_coords block_map[NCHAN] = {{1,1},{1,2},{1,3},{1,4},{1,5},{1,6},{1,7},{1,8},{1,9},
{2,1},{2,2},{2,3},{2,4},{2,5},{2,6},{2,7},{2,8},{2,9},
{3,1},{3,2},{3,3},{3,4},{3,5},{3,6},{3,7},{3,8},{3,9}
};

ap_uint<5> smodule_ch[3][9] = { {0,1,2,3,4,5,6,7,8}, {9,10,11,12,13,14,15,16,17}, {18,19,20,21,22,23,24,25,26}   };

// ecal_cosmic_hls:
void ecal_cosmic_hls(
    ap_uint<3> hit_dt,
    ap_uint<3> smo_dt,
    ap_uint<2> nsmo_threshold,       // how many super module is required to be fired
    ap_uint<4> mltp_threshold[3],    // how many PMTs are required to be fired per super module
    hls::stream<fadc_hits_vxs> &s_fadc_hits_vxs,
    hls::stream<all_smodule_t> &s_all_smodule_t,
    hls::stream<trigger_t> &s_trigger_t

)
{
  fadc_hits_vxs fadc_hits = s_fadc_hits_vxs.read();
#pragma HLS ARRAY_PARTITION variable=fadc_hits.vxs_ch dim=1 type=complete

  static hit_t pre_fadc_hits[NCHAN];
#pragma HLS ARRAY_PARTITION variable=pre_fadc_hits dim=1 type=complete

  static hit_t pre_pre_fadc_hits[NCHAN];
#pragma HLS ARRAY_PARTITION variable=pre_pre_fadc_hits dim=1 type=complete


  all_smodule_t all_smo;
  ap_uint<8> smo_trigger_t[3];

  ap_uint<2> ii=0;
  for(ii=0; ii<3; ii++){
     ap_uint<4> jj=0;
     hit_t smo_hits[9];
     hit_t pre_smo_hits[9];
     hit_t pre_pre_smo_hits[9];

cout<<"---------- smo "<<ii<<" -------------"<<endl;
     for(jj=0; jj<9; jj++){
         ap_uint<5> ch=smodule_ch[ii][jj];
         smo_hits[jj] = fadc_hits.vxs_ch[ch];
         pre_smo_hits[jj] = pre_fadc_hits[ch];
         pre_pre_smo_hits[jj] = pre_pre_fadc_hits[ch];
cout<<jj<<"  "<<smo_hits[jj].e<<endl;
     }

     for(jj=0; jj<9; jj++){
cout<<"---------- block "<<jj<<" -------------"<<endl;
         all_smo.smo[ii][jj] = Find_Hits(jj, pre_pre_smo_hits, pre_smo_hits, smo_hits, hit_dt, mltp_threshold[ii]);
     } 

     smo_trigger_t[ii] = smoGenTrigger(all_smo.smo[ii]); 
  }

  trigger_t trigger; 

  trigger = GenTrigger(smo_trigger_t, smo_dt, nsmo_threshold);
  
  ap_uint<5> ch=0;

  for(ch=0; ch<NCHAN; ch++){
      pre_pre_fadc_hits[ch] = pre_fadc_hits[ch];
  }

  for(ch=0; ch<NCHAN; ch++){
      pre_fadc_hits[ch] = fadc_hits.vxs_ch[ch];
  }

  s_all_smodule_t.write(all_smo);
  s_trigger_t.write(trigger);

  return;
}

trigger_t GenTrigger(ap_uint<8> smo_trigger_t[3], ap_uint<3> smo_dt, ap_uint<2> nsmo_threshold){
          
    ap_uint<8> t0 = smo_trigger_t[0];
    ap_uint<8> t1 = smo_trigger_t[1];
    ap_uint<8> t2 = smo_trigger_t[2];

    trigger_t tt;
    tt.trig=0;

    ap_uint<4> ii=0;

    for(ii=0; ii<8; ){
        ap_uint<2> tmp_t = t0[ii]+t1[ii]+t2[ii];
        if(tmp_t==0){
           ii = ii+1;
           continue;
        }

        ap_uint<4> jj = ii;
        ap_uint<4> tmax = jj+smo_dt;
        ap_uint<3> newtmax = tmax[3]? (ap_uint<3>)7:tmax(2,0);
     
        ap_uint<1> nsmo[3]={0};
        for(;jj<=newtmax;jj++){
            if(t0[jj]==1)nsmo[0]=1;
            if(t1[jj]==1)nsmo[1]=1;
            if(t2[jj]==1)nsmo[2]=1;
        }

        ap_uint<2> tot_smo = nsmo[0]+nsmo[1]+nsmo[2];
        if(tot_smo>=nsmo_threshold) tt.trig[ii]=1;
        ii = newtmax+1;
    }

    return tt;

}

ap_uint<8> smoGenTrigger(smodule_t one_smo[9]){

   ap_uint<8> tt=0;
   ap_uint<4> ii=0;
   for(ii=0; ii<9; ii++){
      if(one_smo[ii].nhits>0){
         tt[one_smo[ii].t]=1; 
      }
   }

   return tt;
}

smodule_t Find_Hits(ap_uint<4> nblock, hit_t pre_fadc_hits[9], hit_t cur_fadc_hits[9], hit_t aft_fadc_hits[9], ap_uint<3> hit_dt, ap_uint<4> mltp_threshold){

   smodule_t smo_final;
   smo_final.n=nblock+1;
   smo_final.t=0;
   smo_final.nhits=0;

   if(cur_fadc_hits[nblock].e==0) return smo_final;

   ap_uint<4> t_min = cur_fadc_hits[nblock].t;
   ap_uint<1> tmp_nhits[9]={0,0,0,0,0,0,0,0,0};

   ap_uint<1> bad=0;

   ap_uint<4> jj=0;
   for(jj=0; jj<9; jj++){
       ap_uint<2> status=0;
cout<<"111:  "<<cur_fadc_hits[jj].e<<"  "<<pre_fadc_hits[jj].e<<"  "<<aft_fadc_hits[jj].e<<endl;
cout<<"222:  "<<cur_fadc_hits[jj].t<<"  "<<pre_fadc_hits[jj].t<<"  "<<aft_fadc_hits[jj].t<<endl;
       if(cur_fadc_hits[jj].e>0)
          status = hit_coin_t(t_min, cur_fadc_hits[jj].t, hit_dt); 
       else if(pre_fadc_hits[jj].e>0)
          status = hit_coin_t(t_min+8, pre_fadc_hits[jj].t, hit_dt); 
       else if(aft_fadc_hits[jj].e>0)
          status = hit_coin_t(t_min, aft_fadc_hits[jj].t+8, hit_dt); 

       switch(status){
          case 1: tmp_nhits[jj]=1;break;
          case 2: bad=1; break;
       }
cout<<nblock<<"  "<<jj<<"  "<<status<<"  "<<t_min<<"  "<<tmp_nhits[jj]<<endl;
   }

   ap_uint<4> all_nhits=0;
   for(jj=0; jj<9; jj++){
      all_nhits +=  tmp_nhits[jj];
   }

   if(bad==0 && all_nhits>=mltp_threshold){
      smo_final.n=nblock+1;
      smo_final.t=t_min;
      smo_final.nhits=all_nhits;
   }

   
   return smo_final;
   
}

ap_uint<2> hit_coin_t(ap_uint<4> t1, ap_uint<4> t2, ap_uint<3> dt) {
  ap_uint<2> status=0;
  
  ap_uint<4> diff = (t1<t2) ? (t2-t1) : (t1-t2);

  if(diff<=dt){
     if(t1<=t2) status=1;
     else status=2;   // t1 is not the leading time
  }

  return status;
}

