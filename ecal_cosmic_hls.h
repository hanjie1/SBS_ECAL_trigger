#ifndef ecal_cosmic_h
#define ecal_cosmic_h

#include <ap_int.h>
#include <hls_stream.h>

#define NCHAN 27

// single channel hit samples (time-over-threshold from FADC)
// 8 samples: '1'=hit/'0'=no-hit, 4ns each
// hit[0] @ 0ns, hit[1] @ 4ns, ... hit[7] @ 28ns
typedef struct
{
  ap_uint<8> hit;
} fadc_hit_t;

// fadc hits for whole VXS crate (16 slots, 16 channels each)
// updated every 32ns
// hits[0]   ... hits[15] : fadc slot 3  ch[0] ... ch[15]
//    hits are in order of FADC slot/ch
//    fadc slots are 3 to 10, 13 to 20
//    note: slots 11 and 12 are VXS switch slots (FADCs aren't populated there)
typedef struct
{
  fadc_hit_t hits[NCHAN];
} fadc_vxs_hits_t;

void ecal_cosmic_hls(
    ap_uint<3> hit_dt,
    ap_uint<3> smo_dt,
    ap_uint<2> nsmo_threshold,       // how many super module is required to be fired
    ap_uint<4> mltp_threshold[3],    // how many PMTs are required to be fired per super module
    hls::stream<fadc_vxs_hits_t> &s_fadc_vxs_hits,
    hls::stream<uint16_t> (&s_smo_trig_t)[3],
    hls::stream<uint8_t> &s_trigger_t
)

ap_uint<1> smo_multi_trig(ap_uint<9> fadc_hits,ap_uint<4> multp_thr);
ap_uint<16> newsmo_trig( ap_uint<16> trig, ap_uint<3> smo_dt );
ap_uint<8> gen_trig(ap_uint<8> strig[3], ap_uint<2> multp_thr);

#endif
