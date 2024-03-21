// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2023.2 (64-bit)
// Tool Version Limit: 2023.10
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================

extern "C" void AESL_WRAP_ecal_cosmic_hls (
char hit_dt,
char smo_dt,
char nsmo_threshold,
volatile void* mltp_threshold,
hls::stream<int > s_fadc_vxs_hits,
hls::stream<int > s_smo_trig_t_0,
hls::stream<int > s_smo_trig_t_1,
hls::stream<int > s_smo_trig_t_2,
hls::stream<int > s_trigger_t);
