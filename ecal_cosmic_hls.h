#ifndef ecal_cosmic_h
#define ecal_cosmic_h

#include <ap_int.h>
#include <hls_stream.h>

#ifdef CRATE1
#define NFADCCHAN 216
#define NDETCHAN 216
#define NCOL 21
#define NROW 12
#endif

#ifdef CRATE2
#define NFADCCHAN 225
#define NDETCHAN 225
#define NCOL 27
#define NROW 9
#endif

#if defined(CRATE3) || defined(CRATE4) || defined(CRATE5)
#define NFADCCHAN 243
#define NDETCHAN 243
#define NCOL 27
#define NROW 9
#endif

#ifdef CRATE6
#define NFADCCHAN 234
#define NDETCHAN 234
#define NCOL 27
#define NROW 9
#endif

#ifdef CRATE7
#define NFADCCHAN 252
#define NDETCHAN 252
#define NCOL 24
#define NROW 12
#endif


typedef ap_uint<13> TYPE_E;
typedef ap_uint<3> TYPE_T;
typedef ap_uint<4> TYPE_ROW;
typedef ap_uint<5> TYPE_COL;
typedef ap_uint<5> TYPE_SMO;
typedef ap_uint<8> TYPE_TRIG;
typedef ap_uint<16> TYPE_LONGT;
typedef ap_uint<4> TYPE_ROWTHRESHOLD;

// hit_t:
// - every 32ns each fadc channel reports 13 bit energy, and 3 bit hit time (time offset in current 32ns clock: 0=0ns, 1=4ns, 2=8ns, ..., 7=28ns)
// - if the channel has no hit, then the energy, e, will be reported as 0
// - energy, e, will saturate at 8191 (e.g. if the FADC integral (after pedestal subtraction and gain) is greater than 8191, the FADC report 8191
typedef struct
{
  TYPE_E e;
  TYPE_T t;
} hit_t;

// FADC channel to the detector channel map
// row --- row number (start at 1)
// col --- column number (start at 1)
// smo --- super module number (start at 1)
typedef struct{
   TYPE_ROW row;
   TYPE_COL col;
   TYPE_SMO smo;
}block_coords;


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
  TYPE_TRIG trig;
} trigger_t;

void ecal_cosmic_hls(
    TYPE_T hit_width,
    TYPE_ROWTHRESHOLD row_threshold,       // number of rows is required to be in coincidence
    hls::stream<fadc_hits_vxs> &s_fadc_hits_vxs,
    hls::stream<trigger_t> &s_trigger_t
);

TYPE_TRIG Trig_multiplicity(TYPE_TRIG row_hits[NROW], TYPE_ROWTHRESHOLD row_threshold);
TYPE_TRIG Disc( TYPE_TRIG t_stream, ap_uint<1> lastT);

#endif
