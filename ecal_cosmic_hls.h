#ifndef ecal_cosmic_h
#define ecal_cosmic_h

#include <ap_int.h>
#include <hls_stream.h>

#define NCHAN 27

// hit_t:
// - every 32ns each fadc channel reports 13 bit energy, and 3 bit hit time (time offset in current 32ns clock: 0=0ns, 1=4ns, 2=8ns, ..., 7=28ns)
// - if the channel has no hit, then the energy, e, will be reported as 0
// - energy, e, will saturate at 8191 (e.g. if the FADC integral (after pedestal subtraction and gain) is greater than 8191, the FADC report 8191
typedef struct
{
  ap_uint<13> e;
  ap_uint<3> t;
} hit_t;

// fadc_hits_t:
// - contains 256 VXS channels worth + 32 fiber of hit_t reported each 32ns
// - vxs_ch[  0] to vxs_ch[ 15]: VME slot 3, ch 0 to 15 FADC channels
//   vxs_ch[ 16] to vxs_ch[ 31]: VME slot 4, ch 0 to 15 FADC channels
//   ...
//   vxs_ch[112] to vxs_ch[127]: VME slot 10, ch 0 to 15 FADC channels
//   (VXS switch A & B are at VME slot positions 11,12, so the FADC never can be installed here)
//   vxs_ch[128] to vxs_ch[143]: VME slot 13, ch 0 to 15 FADC channels
//   vxs_ch[144] to vxs_ch[159]: VME slot 14, ch 0 to 15 FADC channels
//   ...
//   vxs_ch[240] to vxs_ch[255]: VME slot 20, ch 0 to 15 FADC channels
//
//   fiber_ch[0] to fiber_ch[31]: these come from the other crate
typedef struct
{
  hit_t vxs_ch[NCHAN];
} fadc_hits_vxs;


// smodule_t: hits of a super module
// - n: block number of the leading hit
// - t: hit time of the leading hit
// - nhits: number of hit channels in one super module
typedef struct
{
  ap_uint<4> n;
  ap_uint<3> t;
  ap_uint<4>  nhits;
} smodule_t;

typedef struct
{
  smodule_t smo[3][9];
}all_smodule_t;

// trigger_t:
// - code works with 32ns of data at a time. hits & trigger have 4ns resolution, so 8 trigger decisions per iteration are computed.
// - trig: [0]=>0ns, [1]=>4ns, [2]=>8ns, ..., [7]=28ns, when bit=0 no trigger, when bit=1 trigger
typedef struct
{
  ap_uint<8> trig;
} trigger_t;


// hit_dt,   time difference between different PMTs within a super module
// smo_dt,
// nsmo_threshold,        how many super module is required to be fired
// mltp_threshold[3],     how many PMTs are required to be fired per super module

void ecal_cosmic_hls(
    ap_uint<3> hit_dt,
    ap_uint<3> smo_dt,
    ap_uint<2> nsmo_threshold,       // how many super module is required to be fired
    ap_uint<4> mltp_threshold[3],    // how many PMTs are required to be fired per super module
    hls::stream<fadc_hits_vxs> &s_fadc_hits_vxs,
    hls::stream<all_smodule_t> &s_all_smodule_t,
    hls::stream<trigger_t> &s_trigger_t
);

typedef struct{
   ap_uint<2> ns;
   ap_uint<4> nb;
}block_coords;

trigger_t GenTrigger(ap_uint<8> smo_trigger_t[3], ap_uint<3> smo_dt, ap_uint<2> nsmo_threshold);
ap_uint<8> smoGenTrigger(smodule_t one_smo[9]);
smodule_t Find_Hits(ap_uint<4> nblock, hit_t pre_fadc_hits[9], hit_t cur_fadc_hits[9], hit_t aft_fadc_hits[9], ap_uint<3> hit_dt, ap_uint<4> mltp_threshold);
ap_uint<2> hit_coin_t(ap_uint<4> t1, ap_uint<4> t2, ap_uint<3> dt);



#endif
