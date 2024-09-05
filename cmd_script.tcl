open_project ebio_rx_tcpudp_hls
set_top ebio_rx_tcpudp_hls
add_files -cflags "-Dsolution1" ../ebio_rx_tcpudp_hls.cpp
open_solution "solution1" -flow_target vivado
set_part {xc7z030-fbg676-3}
create_clock -period 6.4 -name default
config_export -vivado_clock 6.4
config_rtl -reset state
#set_directive_top -name ebio_rx_tcpudp_hls "ebio_rx_tcpudp_hls"
csynth_design

open_project ebio_rx_tcpudp_hls
set_top ebio_rx_tcpudp_hls
add_files -cflags "-Dsolution2" ../ebio_rx_tcpudp_hls.cpp
open_solution "solution2" -flow_target vivado
set_part {xc7z030-fbg676-3}
create_clock -period 6.4 -name default
config_export -vivado_clock 6.4
config_rtl -reset state
#set_directive_top -name ebio_rx_tcpudp_hls "ebio_rx_tcpudp_hls"
csynth_design

