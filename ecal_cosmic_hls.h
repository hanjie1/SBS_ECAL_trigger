#ifndef ecal_cosmic_h
#define ecal_cosmic_h

#include <ap_int.h>
#include <hls_stream.h>

#define NFADCCHAN 256
#define NDETCHAN 27

// hit_t:
// - every 32ns each fadc channel reports 13 bit energy, and 3 bit hit time (time offset in current 32ns clock: 0=0ns, 1=4ns, 2=8ns, ..., 7=28ns)
// - if the channel has no hit, then the energy, e, will be reported as 0
// - energy, e, will saturate at 8191 (e.g. if the FADC integral (after pedestal subtraction and gain) is greater than 8191, the FADC report 8191
typedef struct
{
  ap_uint<13> e;
  ap_uint<3> t;
} hit_t;

// fadc_hits_vxs:
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
typedef struct
{
  hit_t vxs_ch[NFADCCHAN];
} fadc_hits_vxs;

typedef struct
{
  ap_uint<16> trig;
} smo_trig_t;

typedef struct
{
  ap_uint<8> trig;
} trigger_t;



void ecal_cosmic_hls(
    ap_uint<3> hit_dt,
    ap_uint<3> smo_dt,    // smo_dt>=hit_dt
    ap_uint<2> nsmo_threshold,       // how many super module is required to be fired
    ap_uint<4> mltp_threshold[3],    // how many PMTs are required to be fired per super module
    hls::stream<fadc_hits_vxs> &s_fadc_hits_vxs,
    hls::stream<smo_trig_t> (&s_smo_trig_t)[3],
    hls::stream<trigger_t> &s_trigger_t
);

ap_uint<8> disc(ap_uint<8> trig);
ap_uint<1> smo_multi_trig(ap_uint<9> fadc_hits,ap_uint<4> multp_thr);
ap_uint<16> newsmo_trig( ap_uint<16> trig_stream, ap_uint<8> trig_cur, ap_uint<3> smo_dt );
ap_uint<8> gen_trig(smo_trig_t strig[3], ap_uint<2> multp_thr);

#endif
