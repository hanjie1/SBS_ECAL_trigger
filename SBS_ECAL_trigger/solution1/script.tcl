############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
## Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
############################################################
open_project SBS_ECAL_trigger
set_top ecal_cosmic_hls
add_files ecal_cosmic_hls.cpp
add_files -tb ecal_cosmic_hls_tb.cpp
open_solution "solution1" -flow_target vivado
set_part {xc7vx550tffg1927-1}
create_clock -period 32 -name default
#source "./SBS_ECAL_trigger/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -format ip_catalog
