#include "hls_design_meta.h"
const Port_Property HLS_Design_Meta::port_props[]={
	Port_Property("ap_clk", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_rst", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_start", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_done", 1, hls_out, -1, "", "", 1),
	Port_Property("ap_idle", 1, hls_out, -1, "", "", 1),
	Port_Property("ap_ready", 1, hls_out, -1, "", "", 1),
	Port_Property("s_fadc_hits_vxs_dout", 3456, hls_in, 2, "ap_fifo", "fifo_data_in", 1),
	Port_Property("s_fadc_hits_vxs_empty_n", 1, hls_in, 2, "ap_fifo", "fifo_status", 1),
	Port_Property("s_fadc_hits_vxs_read", 1, hls_out, 2, "ap_fifo", "fifo_port_we", 1),
	Port_Property("s_trigger_t_din", 8, hls_out, 3, "ap_fifo", "fifo_data_in", 1),
	Port_Property("s_trigger_t_full_n", 1, hls_in, 3, "ap_fifo", "fifo_status", 1),
	Port_Property("s_trigger_t_write", 1, hls_out, 3, "ap_fifo", "fifo_port_we", 1),
	Port_Property("hit_width", 3, hls_in, 0, "ap_none", "in_data", 1),
	Port_Property("row_threshold", 4, hls_in, 1, "ap_none", "in_data", 1),
};
const char* HLS_Design_Meta::dut_name = "ecal_cosmic_hls";
