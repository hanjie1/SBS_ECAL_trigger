open_project SBS_ECAL_trigger
set_top ecal_cosmic_hls
add_files ecal_cosmic_hls.cpp -cflags "-DCRATE1"
open_solution "crate1" -flow_target vivado
set_part {xc7vx550t-ffg1927-1}
create_clock -period 32 -name default
config_rtl -module_prefix c1 -reset state
csynth_design
close_project

open_project SBS_ECAL_trigger
set_top ecal_cosmic_hls
add_files ecal_cosmic_hls.cpp -cflags "-DCRATE2"
open_solution "crate2" -flow_target vivado
set_part {xc7vx550t-ffg1927-1}
create_clock -period 32 -name default
config_rtl -module_prefix c2 -reset state
csynth_design
close_project

open_project SBS_ECAL_trigger
set_top ecal_cosmic_hls
add_files ecal_cosmic_hls.cpp -cflags "-DCRATE3_4_5"
open_solution "crate3_4_5" -flow_target vivado
set_part {xc7vx550t-ffg1927-1}
create_clock -period 32 -name default
config_rtl -module_prefix c3_4_5 -reset state
csynth_design
close_project

open_project SBS_ECAL_trigger
set_top ecal_cosmic_hls
add_files ecal_cosmic_hls.cpp -cflags "-DCRATE6"
open_solution "crate6" -flow_target vivado
set_part {xc7vx550t-ffg1927-1}
create_clock -period 32 -name default
config_rtl -module_prefix c6 -reset state
csynth_design
close_project

open_project SBS_ECAL_trigger
set_top ecal_cosmic_hls
add_files ecal_cosmic_hls.cpp -cflags "-DCRATE7"
open_solution "crate7" -flow_target vivado
set_part {xc7vx550t-ffg1927-1}
create_clock -period 32 -name default
config_rtl -module_prefix c7 -reset state
csynth_design
close_project
