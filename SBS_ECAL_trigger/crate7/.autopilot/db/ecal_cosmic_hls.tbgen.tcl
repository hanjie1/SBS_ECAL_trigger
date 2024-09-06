set moduleName ecal_cosmic_hls
set isTopModule 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type function_flushable
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set DLRegFirstOffset 0
set DLRegItemOffset 0
set C_modelName {ecal_cosmic_hls}
set C_modelType { void 0 }
set C_modelArgList {
	{ hit_width int 3 regular  }
	{ row_threshold int 4 regular  }
	{ s_fadc_hits_vxs int 4032 regular {fifo 0 volatile }  }
	{ s_trigger_t int 8 regular {fifo 1 volatile }  }
}
set hasAXIMCache 0
set AXIMCacheInstList { }
set C_modelArgMapList {[ 
	{ "Name" : "hit_width", "interface" : "wire", "bitwidth" : 3, "direction" : "READONLY"} , 
 	{ "Name" : "row_threshold", "interface" : "wire", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "s_fadc_hits_vxs", "interface" : "fifo", "bitwidth" : 4032, "direction" : "READONLY"} , 
 	{ "Name" : "s_trigger_t", "interface" : "fifo", "bitwidth" : 8, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 14
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ s_fadc_hits_vxs_dout sc_in sc_lv 4032 signal 2 } 
	{ s_fadc_hits_vxs_empty_n sc_in sc_logic 1 signal 2 } 
	{ s_fadc_hits_vxs_read sc_out sc_logic 1 signal 2 } 
	{ s_trigger_t_din sc_out sc_lv 8 signal 3 } 
	{ s_trigger_t_full_n sc_in sc_logic 1 signal 3 } 
	{ s_trigger_t_write sc_out sc_logic 1 signal 3 } 
	{ hit_width sc_in sc_lv 3 signal 0 } 
	{ row_threshold sc_in sc_lv 4 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "s_fadc_hits_vxs_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":4032, "type": "signal", "bundle":{"name": "s_fadc_hits_vxs", "role": "dout" }} , 
 	{ "name": "s_fadc_hits_vxs_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s_fadc_hits_vxs", "role": "empty_n" }} , 
 	{ "name": "s_fadc_hits_vxs_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s_fadc_hits_vxs", "role": "read" }} , 
 	{ "name": "s_trigger_t_din", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "s_trigger_t", "role": "din" }} , 
 	{ "name": "s_trigger_t_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s_trigger_t", "role": "full_n" }} , 
 	{ "name": "s_trigger_t_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s_trigger_t", "role": "write" }} , 
 	{ "name": "hit_width", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "hit_width", "role": "default" }} , 
 	{ "name": "row_threshold", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "row_threshold", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "ecal_cosmic_hls",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Unaligned", "UnalignedPipeline" : "1", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "hit_width", "Type" : "None", "Direction" : "I"},
			{"Name" : "row_threshold", "Type" : "None", "Direction" : "I"},
			{"Name" : "s_fadc_hits_vxs", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "s_fadc_hits_vxs_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "s_trigger_t", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "s_trigger_t_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ecal_cosmic_hls_ap_uint_ap_uint_stream_stream_fadc_hits_stream_9", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "ecal_cosmic_hls_ap_uint_ap_uint_stream_stream_fadc_hits_stream_8", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "ecal_cosmic_hls_ap_uint_ap_uint_stream_stream_fadc_hits_stream_7", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "ecal_cosmic_hls_ap_uint_ap_uint_stream_stream_fadc_hits_stream_6", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "ecal_cosmic_hls_ap_uint_ap_uint_stream_stream_fadc_hits_stream_5", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "ecal_cosmic_hls_ap_uint_ap_uint_stream_stream_fadc_hits_stream_4", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "ecal_cosmic_hls_ap_uint_ap_uint_stream_stream_fadc_hits_stream_3", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "ecal_cosmic_hls_ap_uint_ap_uint_stream_stream_fadc_hits_stream_2", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "ecal_cosmic_hls_ap_uint_ap_uint_stream_stream_fadc_hits_stream_1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "ecal_cosmic_hls_ap_uint_ap_uint_stream_stream_fadc_hits_stream", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_241", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_252", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_263", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_274", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_285", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_296", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_307", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_318", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_329", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_340", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_351", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_362", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_373", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_98", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_87", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_76", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_73", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_72", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_71", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_70", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_69", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_68", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_67", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_66", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_65", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_64", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_63", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_62", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_61", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_60", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_59", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_58", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_57", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_56", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_55", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_54", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_53", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_52", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_51", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_50", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_49", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_48", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_47", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_46", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_45", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_44", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_43", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_42", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_41", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_40", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_39", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_38", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_37", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_36", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_35", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_34", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_33", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_32", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_31", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_30", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_29", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_28", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_27", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_26", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_25", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_24", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_23", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_22", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_21", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_20", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_19", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_18", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_17", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_16", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_15", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_14", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_13", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_12", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_11", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_10", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_9", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_8", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_7", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_6", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_5", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_4", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_3", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_2", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_242", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_243", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_244", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_245", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_246", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_247", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_248", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_249", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_250", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_251", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_253", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_254", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_255", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_256", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_257", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_258", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_259", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_260", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_261", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_262", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_264", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_265", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_266", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_267", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_268", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_269", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_270", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_271", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_272", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_273", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_275", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_276", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_277", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_278", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_279", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_280", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_281", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_282", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_283", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_284", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_286", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_287", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_288", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_289", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_290", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_291", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_292", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_293", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_294", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_295", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_297", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_298", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_299", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_300", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_301", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_302", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_303", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_304", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_305", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_306", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_308", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_309", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_310", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_311", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_312", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_313", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_314", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_315", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_316", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_317", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_319", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_320", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_321", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_322", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_323", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_324", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_325", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_326", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_327", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_328", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_330", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_331", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_332", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_333", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_334", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_335", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_336", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_337", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_338", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_339", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_341", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_342", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_343", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_344", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_345", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_346", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_347", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_348", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_349", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_350", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_352", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_353", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_354", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_355", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_356", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_357", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_358", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_359", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_360", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_361", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_363", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_364", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_365", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_366", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_367", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_368", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_369", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_370", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_371", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_372", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_374", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_375", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_376", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_377", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_378", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_379", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_380", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_381", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_382", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_99", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_97", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_96", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_95", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_94", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_93", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_92", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_91", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_90", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_89", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_88", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_86", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_85", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_84", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_83", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_82", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_81", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_80", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_79", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_78", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_77", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_75", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_74", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "lastT", "Type" : "OVld", "Direction" : "IO"}]}]}


set ArgLastReadFirstWriteLatency {
	ecal_cosmic_hls {
		hit_width {Type I LastRead 0 FirstWrite -1}
		row_threshold {Type I LastRead 0 FirstWrite -1}
		s_fadc_hits_vxs {Type I LastRead 0 FirstWrite -1}
		s_trigger_t {Type O LastRead -1 FirstWrite 1}
		ecal_cosmic_hls_ap_uint_ap_uint_stream_stream_fadc_hits_stream_9 {Type IO LastRead -1 FirstWrite -1}
		ecal_cosmic_hls_ap_uint_ap_uint_stream_stream_fadc_hits_stream_8 {Type IO LastRead -1 FirstWrite -1}
		ecal_cosmic_hls_ap_uint_ap_uint_stream_stream_fadc_hits_stream_7 {Type IO LastRead -1 FirstWrite -1}
		ecal_cosmic_hls_ap_uint_ap_uint_stream_stream_fadc_hits_stream_6 {Type IO LastRead -1 FirstWrite -1}
		ecal_cosmic_hls_ap_uint_ap_uint_stream_stream_fadc_hits_stream_5 {Type IO LastRead -1 FirstWrite -1}
		ecal_cosmic_hls_ap_uint_ap_uint_stream_stream_fadc_hits_stream_4 {Type IO LastRead -1 FirstWrite -1}
		ecal_cosmic_hls_ap_uint_ap_uint_stream_stream_fadc_hits_stream_3 {Type IO LastRead -1 FirstWrite -1}
		ecal_cosmic_hls_ap_uint_ap_uint_stream_stream_fadc_hits_stream_2 {Type IO LastRead -1 FirstWrite -1}
		ecal_cosmic_hls_ap_uint_ap_uint_stream_stream_fadc_hits_stream_1 {Type IO LastRead -1 FirstWrite -1}
		ecal_cosmic_hls_ap_uint_ap_uint_stream_stream_fadc_hits_stream {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_241 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_252 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_263 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_274 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_285 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_296 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_307 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_318 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_329 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_340 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_351 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_362 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_373 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_98 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_87 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_76 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_73 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_72 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_71 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_70 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_69 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_68 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_67 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_66 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_65 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_64 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_63 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_62 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_61 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_60 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_59 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_58 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_57 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_56 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_55 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_54 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_53 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_52 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_51 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_50 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_49 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_48 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_47 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_46 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_45 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_44 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_43 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_42 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_41 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_40 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_39 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_38 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_37 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_36 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_35 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_34 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_33 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_32 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_31 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_30 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_29 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_28 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_27 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_26 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_25 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_24 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_23 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_22 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_21 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_20 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_19 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_18 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_17 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_16 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_15 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_14 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_13 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_12 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_11 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_10 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_9 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_8 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_7 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_6 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_5 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_4 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_3 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_2 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_1 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_242 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_243 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_244 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_245 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_246 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_247 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_248 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_249 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_250 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_251 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_253 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_254 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_255 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_256 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_257 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_258 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_259 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_260 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_261 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_262 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_264 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_265 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_266 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_267 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_268 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_269 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_270 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_271 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_272 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_273 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_275 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_276 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_277 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_278 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_279 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_280 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_281 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_282 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_283 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_284 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_286 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_287 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_288 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_289 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_290 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_291 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_292 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_293 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_294 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_295 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_297 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_298 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_299 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_300 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_301 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_302 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_303 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_304 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_305 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_306 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_308 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_309 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_310 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_311 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_312 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_313 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_314 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_315 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_316 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_317 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_319 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_320 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_321 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_322 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_323 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_324 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_325 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_326 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_327 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_328 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_330 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_331 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_332 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_333 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_334 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_335 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_336 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_337 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_338 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_339 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_341 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_342 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_343 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_344 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_345 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_346 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_347 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_348 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_349 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_350 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_352 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_353 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_354 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_355 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_356 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_357 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_358 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_359 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_360 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_361 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_363 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_364 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_365 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_366 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_367 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_368 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_369 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_370 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_371 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_372 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_374 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_375 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_376 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_377 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_378 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_379 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_380 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_381 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_382 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_99 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_97 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_96 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_95 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_94 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_93 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_92 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_91 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_90 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_89 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_88 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_86 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_85 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_84 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_83 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_82 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_81 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_80 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_79 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_78 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_77 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_75 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_74 {Type IO LastRead -1 FirstWrite -1}
		lastT {Type IO LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1", "Max" : "1"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	hit_width { ap_none {  { hit_width in_data 0 3 } } }
	row_threshold { ap_none {  { row_threshold in_data 0 4 } } }
	s_fadc_hits_vxs { ap_fifo {  { s_fadc_hits_vxs_dout fifo_data_in 0 4032 }  { s_fadc_hits_vxs_empty_n fifo_status 0 1 }  { s_fadc_hits_vxs_read fifo_port_we 1 1 } } }
	s_trigger_t { ap_fifo {  { s_trigger_t_din fifo_data_in 1 8 }  { s_trigger_t_full_n fifo_status 0 1 }  { s_trigger_t_write fifo_port_we 1 1 } } }
}

set maxi_interface_dict [dict create]

# RTL port scheduling information:
set fifoSchedulingInfoList { 
	s_fadc_hits_vxs { fifo_read 1 no_conditional }
	s_trigger_t { fifo_write 1 no_conditional }
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
set moduleName ecal_cosmic_hls
set isTopModule 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type function_flushable
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set DLRegFirstOffset 0
set DLRegItemOffset 0
set C_modelName {ecal_cosmic_hls}
set C_modelType { void 0 }
set C_modelArgList {
	{ hit_width int 3 regular  }
	{ row_threshold int 4 regular  }
	{ s_fadc_hits_vxs int 4032 regular {fifo 0 volatile }  }
	{ s_trigger_t int 8 regular {fifo 1 volatile }  }
}
set hasAXIMCache 0
set AXIMCacheInstList { }
set C_modelArgMapList {[ 
	{ "Name" : "hit_width", "interface" : "wire", "bitwidth" : 3, "direction" : "READONLY"} , 
 	{ "Name" : "row_threshold", "interface" : "wire", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "s_fadc_hits_vxs", "interface" : "fifo", "bitwidth" : 4032, "direction" : "READONLY"} , 
 	{ "Name" : "s_trigger_t", "interface" : "fifo", "bitwidth" : 8, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 14
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ s_fadc_hits_vxs_dout sc_in sc_lv 4032 signal 2 } 
	{ s_fadc_hits_vxs_empty_n sc_in sc_logic 1 signal 2 } 
	{ s_fadc_hits_vxs_read sc_out sc_logic 1 signal 2 } 
	{ s_trigger_t_din sc_out sc_lv 8 signal 3 } 
	{ s_trigger_t_full_n sc_in sc_logic 1 signal 3 } 
	{ s_trigger_t_write sc_out sc_logic 1 signal 3 } 
	{ hit_width sc_in sc_lv 3 signal 0 } 
	{ row_threshold sc_in sc_lv 4 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "s_fadc_hits_vxs_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":4032, "type": "signal", "bundle":{"name": "s_fadc_hits_vxs", "role": "dout" }} , 
 	{ "name": "s_fadc_hits_vxs_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s_fadc_hits_vxs", "role": "empty_n" }} , 
 	{ "name": "s_fadc_hits_vxs_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s_fadc_hits_vxs", "role": "read" }} , 
 	{ "name": "s_trigger_t_din", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "s_trigger_t", "role": "din" }} , 
 	{ "name": "s_trigger_t_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s_trigger_t", "role": "full_n" }} , 
 	{ "name": "s_trigger_t_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s_trigger_t", "role": "write" }} , 
 	{ "name": "hit_width", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "hit_width", "role": "default" }} , 
 	{ "name": "row_threshold", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "row_threshold", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "ecal_cosmic_hls",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Unaligned", "UnalignedPipeline" : "1", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "hit_width", "Type" : "None", "Direction" : "I"},
			{"Name" : "row_threshold", "Type" : "None", "Direction" : "I"},
			{"Name" : "s_fadc_hits_vxs", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "s_fadc_hits_vxs_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "s_trigger_t", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "s_trigger_t_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ecal_cosmic_hls_ap_uint_ap_uint_stream_stream_fadc_hits_stream_9", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "ecal_cosmic_hls_ap_uint_ap_uint_stream_stream_fadc_hits_stream_8", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "ecal_cosmic_hls_ap_uint_ap_uint_stream_stream_fadc_hits_stream_7", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "ecal_cosmic_hls_ap_uint_ap_uint_stream_stream_fadc_hits_stream_6", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "ecal_cosmic_hls_ap_uint_ap_uint_stream_stream_fadc_hits_stream_5", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "ecal_cosmic_hls_ap_uint_ap_uint_stream_stream_fadc_hits_stream_4", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "ecal_cosmic_hls_ap_uint_ap_uint_stream_stream_fadc_hits_stream_3", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "ecal_cosmic_hls_ap_uint_ap_uint_stream_stream_fadc_hits_stream_2", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "ecal_cosmic_hls_ap_uint_ap_uint_stream_stream_fadc_hits_stream_1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "ecal_cosmic_hls_ap_uint_ap_uint_stream_stream_fadc_hits_stream", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_241", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_252", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_263", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_274", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_285", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_296", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_307", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_318", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_329", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_340", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_351", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_362", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_373", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_98", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_87", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_76", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_73", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_72", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_71", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_70", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_69", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_68", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_67", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_66", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_65", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_64", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_63", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_62", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_61", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_60", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_59", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_58", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_57", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_56", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_55", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_54", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_53", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_52", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_51", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_50", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_49", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_48", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_47", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_46", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_45", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_44", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_43", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_42", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_41", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_40", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_39", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_38", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_37", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_36", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_35", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_34", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_33", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_32", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_31", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_30", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_29", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_28", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_27", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_26", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_25", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_24", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_23", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_22", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_21", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_20", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_19", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_18", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_17", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_16", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_15", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_14", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_13", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_12", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_11", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_10", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_9", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_8", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_7", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_6", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_5", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_4", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_3", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_2", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_242", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_243", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_244", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_245", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_246", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_247", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_248", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_249", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_250", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_251", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_253", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_254", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_255", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_256", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_257", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_258", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_259", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_260", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_261", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_262", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_264", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_265", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_266", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_267", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_268", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_269", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_270", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_271", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_272", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_273", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_275", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_276", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_277", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_278", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_279", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_280", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_281", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_282", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_283", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_284", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_286", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_287", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_288", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_289", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_290", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_291", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_292", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_293", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_294", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_295", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_297", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_298", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_299", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_300", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_301", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_302", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_303", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_304", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_305", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_306", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_308", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_309", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_310", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_311", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_312", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_313", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_314", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_315", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_316", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_317", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_319", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_320", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_321", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_322", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_323", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_324", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_325", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_326", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_327", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_328", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_330", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_331", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_332", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_333", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_334", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_335", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_336", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_337", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_338", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_339", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_341", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_342", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_343", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_344", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_345", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_346", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_347", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_348", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_349", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_350", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_352", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_353", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_354", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_355", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_356", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_357", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_358", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_359", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_360", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_361", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_363", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_364", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_365", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_366", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_367", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_368", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_369", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_370", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_371", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_372", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_374", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_375", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_376", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_377", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_378", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_379", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_380", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_381", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_382", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_99", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_97", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_96", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_95", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_94", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_93", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_92", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_91", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_90", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_89", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_88", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_86", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_85", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_84", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_83", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_82", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_81", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_80", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_79", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_78", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_77", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_75", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_74", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "lastT", "Type" : "OVld", "Direction" : "IO"}]}]}


set ArgLastReadFirstWriteLatency {
	ecal_cosmic_hls {
		hit_width {Type I LastRead 0 FirstWrite -1}
		row_threshold {Type I LastRead 0 FirstWrite -1}
		s_fadc_hits_vxs {Type I LastRead 0 FirstWrite -1}
		s_trigger_t {Type O LastRead -1 FirstWrite 1}
		ecal_cosmic_hls_ap_uint_ap_uint_stream_stream_fadc_hits_stream_9 {Type IO LastRead -1 FirstWrite -1}
		ecal_cosmic_hls_ap_uint_ap_uint_stream_stream_fadc_hits_stream_8 {Type IO LastRead -1 FirstWrite -1}
		ecal_cosmic_hls_ap_uint_ap_uint_stream_stream_fadc_hits_stream_7 {Type IO LastRead -1 FirstWrite -1}
		ecal_cosmic_hls_ap_uint_ap_uint_stream_stream_fadc_hits_stream_6 {Type IO LastRead -1 FirstWrite -1}
		ecal_cosmic_hls_ap_uint_ap_uint_stream_stream_fadc_hits_stream_5 {Type IO LastRead -1 FirstWrite -1}
		ecal_cosmic_hls_ap_uint_ap_uint_stream_stream_fadc_hits_stream_4 {Type IO LastRead -1 FirstWrite -1}
		ecal_cosmic_hls_ap_uint_ap_uint_stream_stream_fadc_hits_stream_3 {Type IO LastRead -1 FirstWrite -1}
		ecal_cosmic_hls_ap_uint_ap_uint_stream_stream_fadc_hits_stream_2 {Type IO LastRead -1 FirstWrite -1}
		ecal_cosmic_hls_ap_uint_ap_uint_stream_stream_fadc_hits_stream_1 {Type IO LastRead -1 FirstWrite -1}
		ecal_cosmic_hls_ap_uint_ap_uint_stream_stream_fadc_hits_stream {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_241 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_252 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_263 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_274 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_285 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_296 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_307 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_318 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_329 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_340 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_351 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_362 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_373 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_98 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_87 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_76 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_73 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_72 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_71 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_70 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_69 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_68 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_67 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_66 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_65 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_64 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_63 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_62 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_61 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_60 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_59 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_58 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_57 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_56 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_55 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_54 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_53 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_52 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_51 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_50 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_49 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_48 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_47 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_46 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_45 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_44 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_43 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_42 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_41 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_40 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_39 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_38 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_37 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_36 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_35 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_34 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_33 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_32 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_31 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_30 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_29 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_28 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_27 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_26 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_25 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_24 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_23 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_22 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_21 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_20 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_19 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_18 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_17 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_16 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_15 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_14 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_13 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_12 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_11 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_10 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_9 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_8 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_7 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_6 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_5 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_4 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_3 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_2 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_1 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_242 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_243 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_244 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_245 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_246 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_247 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_248 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_249 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_250 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_251 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_253 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_254 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_255 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_256 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_257 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_258 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_259 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_260 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_261 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_262 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_264 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_265 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_266 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_267 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_268 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_269 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_270 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_271 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_272 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_273 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_275 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_276 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_277 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_278 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_279 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_280 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_281 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_282 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_283 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_284 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_286 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_287 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_288 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_289 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_290 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_291 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_292 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_293 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_294 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_295 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_297 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_298 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_299 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_300 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_301 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_302 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_303 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_304 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_305 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_306 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_308 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_309 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_310 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_311 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_312 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_313 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_314 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_315 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_316 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_317 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_319 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_320 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_321 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_322 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_323 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_324 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_325 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_326 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_327 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_328 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_330 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_331 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_332 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_333 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_334 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_335 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_336 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_337 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_338 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_339 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_341 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_342 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_343 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_344 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_345 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_346 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_347 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_348 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_349 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_350 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_352 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_353 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_354 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_355 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_356 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_357 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_358 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_359 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_360 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_361 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_363 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_364 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_365 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_366 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_367 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_368 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_369 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_370 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_371 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_372 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_374 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_375 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_376 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_377 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_378 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_379 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_380 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_381 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_382 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_99 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_97 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_96 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_95 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_94 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_93 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_92 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_91 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_90 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_89 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_88 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_86 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_85 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_84 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_83 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_82 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_81 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_80 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_79 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_78 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_77 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_75 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ15ecal_cosmic_hls7ap_uintILi3EES_ILi4EERN3hls6streamI13fadc_hits_vxsLi0EEERNS_74 {Type IO LastRead -1 FirstWrite -1}
		lastT {Type IO LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1", "Max" : "1"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	hit_width { ap_none {  { hit_width in_data 0 3 } } }
	row_threshold { ap_none {  { row_threshold in_data 0 4 } } }
	s_fadc_hits_vxs { ap_fifo {  { s_fadc_hits_vxs_dout fifo_data_in 0 4032 }  { s_fadc_hits_vxs_empty_n fifo_status 0 1 }  { s_fadc_hits_vxs_read fifo_port_we 1 1 } } }
	s_trigger_t { ap_fifo {  { s_trigger_t_din fifo_data_in 1 8 }  { s_trigger_t_full_n fifo_status 0 1 }  { s_trigger_t_write fifo_port_we 1 1 } } }
}

set maxi_interface_dict [dict create]

# RTL port scheduling information:
set fifoSchedulingInfoList { 
	s_fadc_hits_vxs { fifo_read 1 no_conditional }
	s_trigger_t { fifo_write 1 no_conditional }
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
