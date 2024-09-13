open_project -reset SBS_ECAL_trigger_crate2
set_top ecal_cosmic_hls
add_files ecal_cosmic_hls.cpp -cflags "-DCRATE2"
open_solution "crate2" -flow_target vivado
set_part {xc7vx550t-ffg1927-1}
create_clock -period 32 -name default
config_rtl -module_prefix c2 -reset state
csynth_design
close_project
