############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
## Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
############################################################
open_project SBS_ECAL_trigger_crate2
set_top ecal_cosmic_hls
add_files ecal_cosmic_hls.cpp -cflags "-DCRATE2"
open_solution "crate2" -flow_target vivado
set_part {xc7vx550t-ffg1927-1}
create_clock -period 32 -name default
config_rtl -module_prefix c2 -reset state
source "./SBS_ECAL_trigger_crate2/crate2/directives.tcl"
#csim_design
csynth_design
#cosim_design
export_design -format ip_catalog
