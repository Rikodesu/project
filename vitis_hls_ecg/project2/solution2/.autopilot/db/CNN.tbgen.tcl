set moduleName CNN
set isTopModule 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set DLRegFirstOffset 0
set DLRegItemOffset 0
set C_modelName {CNN}
set C_modelType { void 0 }
set C_modelArgList {
	{ InModel int 16 regular {array 320 { 1 3 } 1 1 }  }
	{ OutModel int 16 regular {pointer 1}  }
	{ Weights int 16 regular {array 11065 { 1 1 } 1 1 }  }
}
set hasAXIMCache 0
set AXIMCacheInstList { }
set C_modelArgMapList {[ 
	{ "Name" : "InModel", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "OutModel", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "Weights", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 17
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ InModel_address0 sc_out sc_lv 9 signal 0 } 
	{ InModel_ce0 sc_out sc_logic 1 signal 0 } 
	{ InModel_q0 sc_in sc_lv 16 signal 0 } 
	{ OutModel sc_out sc_lv 16 signal 1 } 
	{ OutModel_ap_vld sc_out sc_logic 1 outvld 1 } 
	{ Weights_address0 sc_out sc_lv 14 signal 2 } 
	{ Weights_ce0 sc_out sc_logic 1 signal 2 } 
	{ Weights_q0 sc_in sc_lv 16 signal 2 } 
	{ Weights_address1 sc_out sc_lv 14 signal 2 } 
	{ Weights_ce1 sc_out sc_logic 1 signal 2 } 
	{ Weights_q1 sc_in sc_lv 16 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "InModel_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "InModel", "role": "address0" }} , 
 	{ "name": "InModel_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "InModel", "role": "ce0" }} , 
 	{ "name": "InModel_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "InModel", "role": "q0" }} , 
 	{ "name": "OutModel", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "OutModel", "role": "default" }} , 
 	{ "name": "OutModel_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "OutModel", "role": "ap_vld" }} , 
 	{ "name": "Weights_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "Weights", "role": "address0" }} , 
 	{ "name": "Weights_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Weights", "role": "ce0" }} , 
 	{ "name": "Weights_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "Weights", "role": "q0" }} , 
 	{ "name": "Weights_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "Weights", "role": "address1" }} , 
 	{ "name": "Weights_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Weights", "role": "ce1" }} , 
 	{ "name": "Weights_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "Weights", "role": "q1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "35", "42", "45", "67", "69", "72", "94", "97", "139", "141", "144", "186", "189", "193", "195", "198", "202", "205", "209", "213", "216", "250", "272"],
		"CDFG" : "CNN",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "506338", "EstimateLatencyMax" : "506338",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "InModel", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "33", "SubInstance" : "grp_CNN_Pipeline_loop_for_channel_pad_0_fu_724", "Port" : "InModel", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "OutModel", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Weights", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "45", "SubInstance" : "grp_CNN_Pipeline_VITIS_LOOP_41_1_loop_for_ap_1_fu_746", "Port" : "Weights", "Inst_start_state" : "7", "Inst_end_state" : "8"},
					{"ID" : "205", "SubInstance" : "grp_CNN_Pipeline_VITIS_LOOP_197_1_loop_for_ap_7_loop_for_fc_7_loop_for_fa_7_fu_848", "Port" : "Weights", "Inst_start_state" : "37", "Inst_end_state" : "38"},
					{"ID" : "216", "SubInstance" : "grp_CNN_Pipeline_loop_for_a_Dense_0_fu_886", "Port" : "Weights", "Inst_start_state" : "59", "Inst_end_state" : "60"},
					{"ID" : "250", "SubInstance" : "grp_CNN_Pipeline_loop_for_a_Dense_1_fu_927", "Port" : "Weights", "Inst_start_state" : "71", "Inst_end_state" : "72"},
					{"ID" : "72", "SubInstance" : "grp_CNN_Pipeline_VITIS_LOOP_67_1_loop_for_ap_2_fu_766", "Port" : "Weights", "Inst_start_state" : "13", "Inst_end_state" : "14"},
					{"ID" : "198", "SubInstance" : "grp_CNN_Pipeline_VITIS_LOOP_171_1_loop_for_ap_6_loop_for_fc_6_loop_for_fa_6_fu_834", "Port" : "Weights", "Inst_start_state" : "33", "Inst_end_state" : "34"},
					{"ID" : "144", "SubInstance" : "grp_CNN_Pipeline_VITIS_LOOP_119_1_loop_for_ap_4_fu_800", "Port" : "Weights", "Inst_start_state" : "23", "Inst_end_state" : "24"},
					{"ID" : "35", "SubInstance" : "grp_CNN_Pipeline_VITIS_LOOP_15_1_loop_for_ap_0_fu_732", "Port" : "Weights", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "97", "SubInstance" : "grp_CNN_Pipeline_VITIS_LOOP_93_1_loop_for_ap_3_fu_780", "Port" : "Weights", "Inst_start_state" : "17", "Inst_end_state" : "18"},
					{"ID" : "189", "SubInstance" : "grp_CNN_Pipeline_VITIS_LOOP_145_1_loop_for_ap_5_loop_for_fc_5_loop_for_fa_5_fu_814", "Port" : "Weights", "Inst_start_state" : "27", "Inst_end_state" : "28"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.out_Dense_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.OutPadConv0_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.OutConv0_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.OutPadConv1_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.OutConv1_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.OutPool0_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.OutPadConv2_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.OutConv2_U", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.OutPadConv3_U", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.OutConv3_U", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.OutPool1_U", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.OutPadConv4_U", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.OutConv4_U", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.OutPadConv5_U", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.OutConv5_U", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.OutPool2_U", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.OutPadConv6_U", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.OutConv6_U", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.OutPadConv7_U", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.OutConv7_U", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.OutPool3_U", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.OutPool3_1_U", "Parent" : "0"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.OutPool3_2_U", "Parent" : "0"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.OutPool3_3_U", "Parent" : "0"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.OutPool3_4_U", "Parent" : "0"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.OutPool3_5_U", "Parent" : "0"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.OutPool3_6_U", "Parent" : "0"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.OutPool3_7_U", "Parent" : "0"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.OutPool3_8_U", "Parent" : "0"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.OutPool3_9_U", "Parent" : "0"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.OutGlobalAverPool1D_U", "Parent" : "0"},
	{"ID" : "32", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.OutDense0_U", "Parent" : "0"},
	{"ID" : "33", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_CNN_Pipeline_loop_for_channel_pad_0_fu_724", "Parent" : "0", "Child" : ["34"],
		"CDFG" : "CNN_Pipeline_loop_for_channel_pad_0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "326", "EstimateLatencyMax" : "326",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "OutPadConv0", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "InModel", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "loop_for_channel_pad_0", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "34", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_CNN_Pipeline_loop_for_channel_pad_0_fu_724.flow_control_loop_pipe_sequential_init_U", "Parent" : "33"},
	{"ID" : "35", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_CNN_Pipeline_VITIS_LOOP_15_1_loop_for_ap_0_fu_732", "Parent" : "0", "Child" : ["36", "37", "38", "39", "40", "41"],
		"CDFG" : "CNN_Pipeline_VITIS_LOOP_15_1_loop_for_ap_0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3847", "EstimateLatencyMax" : "3847",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "Weights", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "OutPadConv0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "OutConv0", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_15_1_loop_for_ap_0", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "3", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage2", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage2_subdone", "QuitState" : "ap_ST_fsm_pp0_stage2", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage2_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "36", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_CNN_Pipeline_VITIS_LOOP_15_1_loop_for_ap_0_fu_732.mul_16s_16s_24_1_1_U3", "Parent" : "35"},
	{"ID" : "37", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_CNN_Pipeline_VITIS_LOOP_15_1_loop_for_ap_0_fu_732.mac_muladd_16s_16s_24ns_24_4_1_U4", "Parent" : "35"},
	{"ID" : "38", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_CNN_Pipeline_VITIS_LOOP_15_1_loop_for_ap_0_fu_732.mac_muladd_16s_16s_24ns_24_4_1_U5", "Parent" : "35"},
	{"ID" : "39", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_CNN_Pipeline_VITIS_LOOP_15_1_loop_for_ap_0_fu_732.mac_muladd_16s_16s_24ns_24_4_1_U6", "Parent" : "35"},
	{"ID" : "40", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_CNN_Pipeline_VITIS_LOOP_15_1_loop_for_ap_0_fu_732.mac_muladd_16s_16s_24ns_24_4_1_U7", "Parent" : "35"},
	{"ID" : "41", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_CNN_Pipeline_VITIS_LOOP_15_1_loop_for_ap_0_fu_732.flow_control_loop_pipe_sequential_init_U", "Parent" : "35"},
	{"ID" : "42", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_CNN_Pipeline_loop_for_3_channel_pad_1_loop_for_channel_pad_1_fu_740", "Parent" : "0", "Child" : ["43", "44"],
		"CDFG" : "CNN_Pipeline_loop_for_3_channel_pad_1_loop_for_channel_pad_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1299", "EstimateLatencyMax" : "1299",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "OutPadConv1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "OutConv0", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "loop_for_3_channel_pad_1_loop_for_channel_pad_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "43", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_CNN_Pipeline_loop_for_3_channel_pad_1_loop_for_channel_pad_1_fu_740.mul_3ns_10ns_10_1_1_U13", "Parent" : "42"},
	{"ID" : "44", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_CNN_Pipeline_loop_for_3_channel_pad_1_loop_for_channel_pad_1_fu_740.flow_control_loop_pipe_sequential_init_U", "Parent" : "42"},
	{"ID" : "45", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_CNN_Pipeline_VITIS_LOOP_41_1_loop_for_ap_1_fu_746", "Parent" : "0", "Child" : ["46", "47", "48", "49", "50", "51", "52", "53", "54", "55", "56", "57", "58", "59", "60", "61", "62", "63", "64", "65", "66"],
		"CDFG" : "CNN_Pipeline_VITIS_LOOP_41_1_loop_for_ap_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "14093", "EstimateLatencyMax" : "14093",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "Weights", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "OutPadConv1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "OutConv1", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_41_1_loop_for_ap_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "11", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "46", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_CNN_Pipeline_VITIS_LOOP_41_1_loop_for_ap_1_fu_746.mul_16s_16s_24_1_1_U17", "Parent" : "45"},
	{"ID" : "47", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_CNN_Pipeline_VITIS_LOOP_41_1_loop_for_ap_1_fu_746.mac_muladd_16s_16s_24ns_24_4_1_U18", "Parent" : "45"},
	{"ID" : "48", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_CNN_Pipeline_VITIS_LOOP_41_1_loop_for_ap_1_fu_746.mac_muladd_16s_16s_24ns_24_4_1_U19", "Parent" : "45"},
	{"ID" : "49", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_CNN_Pipeline_VITIS_LOOP_41_1_loop_for_ap_1_fu_746.mac_muladd_16s_16s_24ns_24_4_1_U20", "Parent" : "45"},
	{"ID" : "50", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_CNN_Pipeline_VITIS_LOOP_41_1_loop_for_ap_1_fu_746.mac_muladd_16s_16s_24ns_24_4_1_U21", "Parent" : "45"},
	{"ID" : "51", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_CNN_Pipeline_VITIS_LOOP_41_1_loop_for_ap_1_fu_746.mac_muladd_16s_16s_24ns_24_4_1_U22", "Parent" : "45"},
	{"ID" : "52", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_CNN_Pipeline_VITIS_LOOP_41_1_loop_for_ap_1_fu_746.mac_muladd_16s_16s_24ns_24_4_1_U23", "Parent" : "45"},
	{"ID" : "53", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_CNN_Pipeline_VITIS_LOOP_41_1_loop_for_ap_1_fu_746.mac_muladd_16s_16s_24ns_24_4_1_U24", "Parent" : "45"},
	{"ID" : "54", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_CNN_Pipeline_VITIS_LOOP_41_1_loop_for_ap_1_fu_746.mac_muladd_16s_16s_24ns_24_4_1_U25", "Parent" : "45"},
	{"ID" : "55", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_CNN_Pipeline_VITIS_LOOP_41_1_loop_for_ap_1_fu_746.mac_muladd_16s_16s_24ns_24_4_1_U26", "Parent" : "45"},
	{"ID" : "56", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_CNN_Pipeline_VITIS_LOOP_41_1_loop_for_ap_1_fu_746.mac_muladd_16s_16s_24ns_24_4_1_U27", "Parent" : "45"},
	{"ID" : "57", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_CNN_Pipeline_VITIS_LOOP_41_1_loop_for_ap_1_fu_746.mac_muladd_16s_16s_24ns_24_4_1_U28", "Parent" : "45"},
	{"ID" : "58", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_CNN_Pipeline_VITIS_LOOP_41_1_loop_for_ap_1_fu_746.mac_muladd_16s_16s_24ns_24_4_1_U29", "Parent" : "45"},
	{"ID" : "59", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_CNN_Pipeline_VITIS_LOOP_41_1_loop_for_ap_1_fu_746.mac_muladd_16s_16s_24ns_24_4_1_U30", "Parent" : "45"},
	{"ID" : "60", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_CNN_Pipeline_VITIS_LOOP_41_1_loop_for_ap_1_fu_746.mac_muladd_16s_16s_24ns_24_4_1_U31", "Parent" : "45"},
	{"ID" : "61", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_CNN_Pipeline_VITIS_LOOP_41_1_loop_for_ap_1_fu_746.mac_muladd_16s_16s_24ns_24_4_1_U32", "Parent" : "45"},
	{"ID" : "62", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_CNN_Pipeline_VITIS_LOOP_41_1_loop_for_ap_1_fu_746.mac_muladd_16s_16s_24ns_24_4_1_U33", "Parent" : "45"},
	{"ID" : "63", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_CNN_Pipeline_VITIS_LOOP_41_1_loop_for_ap_1_fu_746.mac_muladd_16s_16s_24ns_24_4_1_U34", "Parent" : "45"},
	{"ID" : "64", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_CNN_Pipeline_VITIS_LOOP_41_1_loop_for_ap_1_fu_746.mac_muladd_16s_16s_24ns_24_4_1_U35", "Parent" : "45"},
	{"ID" : "65", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_CNN_Pipeline_VITIS_LOOP_41_1_loop_for_ap_1_fu_746.mac_muladd_16s_16s_24ns_24_4_1_U36", "Parent" : "45"},
	{"ID" : "66", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_CNN_Pipeline_VITIS_LOOP_41_1_loop_for_ap_1_fu_746.flow_control_loop_pipe_sequential_init_U", "Parent" : "45"},
	{"ID" : "67", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_CNN_Pipeline_loop_for_channel_pool_0_loop_for_weight_pool_0_fu_754", "Parent" : "0", "Child" : ["68"],
		"CDFG" : "CNN_Pipeline_loop_for_channel_pool_0_loop_for_weight_pool_0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "643", "EstimateLatencyMax" : "643",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "OutConv1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "OutPool0", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "loop_for_channel_pool_0_loop_for_weight_pool_0", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "68", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_CNN_Pipeline_loop_for_channel_pool_0_loop_for_weight_pool_0_fu_754.flow_control_loop_pipe_sequential_init_U", "Parent" : "67"},
	{"ID" : "69", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_CNN_Pipeline_loop_for_3_channel_pad_2_loop_for_channel_pad_2_fu_760", "Parent" : "0", "Child" : ["70", "71"],
		"CDFG" : "CNN_Pipeline_loop_for_3_channel_pad_2_loop_for_channel_pad_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "659", "EstimateLatencyMax" : "659",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "OutPadConv2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "OutPool0", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "loop_for_3_channel_pad_2_loop_for_channel_pad_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "70", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_CNN_Pipeline_loop_for_3_channel_pad_2_loop_for_channel_pad_2_fu_760.mul_3ns_9ns_9_1_1_U42", "Parent" : "69"},
	{"ID" : "71", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_CNN_Pipeline_loop_for_3_channel_pad_2_loop_for_channel_pad_2_fu_760.flow_control_loop_pipe_sequential_init_U", "Parent" : "69"},
	{"ID" : "72", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_CNN_Pipeline_VITIS_LOOP_67_1_loop_for_ap_2_fu_766", "Parent" : "0", "Child" : ["73", "74", "75", "76", "77", "78", "79", "80", "81", "82", "83", "84", "85", "86", "87", "88", "89", "90", "91", "92", "93"],
		"CDFG" : "CNN_Pipeline_VITIS_LOOP_67_1_loop_for_ap_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "14094", "EstimateLatencyMax" : "14094",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "Weights", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "OutPadConv2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "OutConv2", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_67_1_loop_for_ap_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "11", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage1", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage1_subdone", "QuitState" : "ap_ST_fsm_pp0_stage1", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage1_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "73", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_CNN_Pipeline_VITIS_LOOP_67_1_loop_for_ap_2_fu_766.mul_16s_16s_24_1_1_U46", "Parent" : "72"},
	{"ID" : "74", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_CNN_Pipeline_VITIS_LOOP_67_1_loop_for_ap_2_fu_766.mac_muladd_16s_16s_24ns_24_4_1_U47", "Parent" : "72"},
	{"ID" : "75", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_CNN_Pipeline_VITIS_LOOP_67_1_loop_for_ap_2_fu_766.mac_muladd_16s_16s_24ns_24_4_1_U48", "Parent" : "72"},
	{"ID" : "76", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_CNN_Pipeline_VITIS_LOOP_67_1_loop_for_ap_2_fu_766.mac_muladd_16s_16s_24ns_24_4_1_U49", "Parent" : "72"},
	{"ID" : "77", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_CNN_Pipeline_VITIS_LOOP_67_1_loop_for_ap_2_fu_766.mac_muladd_16s_16s_24ns_24_4_1_U50", "Parent" : "72"},
	{"ID" : "78", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_CNN_Pipeline_VITIS_LOOP_67_1_loop_for_ap_2_fu_766.mac_muladd_16s_16s_24ns_24_4_1_U51", "Parent" : "72"},
	{"ID" : "79", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_CNN_Pipeline_VITIS_LOOP_67_1_loop_for_ap_2_fu_766.mac_muladd_16s_16s_24ns_24_4_1_U52", "Parent" : "72"},
	{"ID" : "80", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_CNN_Pipeline_VITIS_LOOP_67_1_loop_for_ap_2_fu_766.mac_muladd_16s_16s_24ns_24_4_1_U53", "Parent" : "72"},
	{"ID" : "81", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_CNN_Pipeline_VITIS_LOOP_67_1_loop_for_ap_2_fu_766.mac_muladd_16s_16s_24ns_24_4_1_U54", "Parent" : "72"},
	{"ID" : "82", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_CNN_Pipeline_VITIS_LOOP_67_1_loop_for_ap_2_fu_766.mac_muladd_16s_16s_24ns_24_4_1_U55", "Parent" : "72"},
	{"ID" : "83", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_CNN_Pipeline_VITIS_LOOP_67_1_loop_for_ap_2_fu_766.mac_muladd_16s_16s_24ns_24_4_1_U56", "Parent" : "72"},
	{"ID" : "84", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_CNN_Pipeline_VITIS_LOOP_67_1_loop_for_ap_2_fu_766.mac_muladd_16s_16s_24ns_24_4_1_U57", "Parent" : "72"},
	{"ID" : "85", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_CNN_Pipeline_VITIS_LOOP_67_1_loop_for_ap_2_fu_766.mac_muladd_16s_16s_24ns_24_4_1_U58", "Parent" : "72"},
	{"ID" : "86", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_CNN_Pipeline_VITIS_LOOP_67_1_loop_for_ap_2_fu_766.mac_muladd_16s_16s_24ns_24_4_1_U59", "Parent" : "72"},
	{"ID" : "87", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_CNN_Pipeline_VITIS_LOOP_67_1_loop_for_ap_2_fu_766.mac_muladd_16s_16s_24ns_24_4_1_U60", "Parent" : "72"},
	{"ID" : "88", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_CNN_Pipeline_VITIS_LOOP_67_1_loop_for_ap_2_fu_766.mac_muladd_16s_16s_24ns_24_4_1_U61", "Parent" : "72"},
	{"ID" : "89", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_CNN_Pipeline_VITIS_LOOP_67_1_loop_for_ap_2_fu_766.mac_muladd_16s_16s_24ns_24_4_1_U62", "Parent" : "72"},
	{"ID" : "90", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_CNN_Pipeline_VITIS_LOOP_67_1_loop_for_ap_2_fu_766.mac_muladd_16s_16s_24ns_24_4_1_U63", "Parent" : "72"},
	{"ID" : "91", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_CNN_Pipeline_VITIS_LOOP_67_1_loop_for_ap_2_fu_766.mac_muladd_16s_16s_24ns_24_4_1_U64", "Parent" : "72"},
	{"ID" : "92", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_CNN_Pipeline_VITIS_LOOP_67_1_loop_for_ap_2_fu_766.mac_muladd_16s_16s_24ns_24_4_1_U65", "Parent" : "72"},
	{"ID" : "93", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_CNN_Pipeline_VITIS_LOOP_67_1_loop_for_ap_2_fu_766.flow_control_loop_pipe_sequential_init_U", "Parent" : "72"},
	{"ID" : "94", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_CNN_Pipeline_loop_for_3_channel_pad_3_loop_for_channel_pad_3_fu_774", "Parent" : "0", "Child" : ["95", "96"],
		"CDFG" : "CNN_Pipeline_loop_for_3_channel_pad_3_loop_for_channel_pad_3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1316", "EstimateLatencyMax" : "1316",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "OutPadConv3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "OutConv2", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "loop_for_3_channel_pad_3_loop_for_channel_pad_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter3", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter3", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "95", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_CNN_Pipeline_loop_for_3_channel_pad_3_loop_for_channel_pad_3_fu_774.mac_muladd_4ns_8ns_8ns_11_4_1_U69", "Parent" : "94"},
	{"ID" : "96", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_CNN_Pipeline_loop_for_3_channel_pad_3_loop_for_channel_pad_3_fu_774.flow_control_loop_pipe_sequential_init_U", "Parent" : "94"},
	{"ID" : "97", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_CNN_Pipeline_VITIS_LOOP_93_1_loop_for_ap_3_fu_780", "Parent" : "0", "Child" : ["98", "99", "100", "101", "102", "103", "104", "105", "106", "107", "108", "109", "110", "111", "112", "113", "114", "115", "116", "117", "118", "119", "120", "121", "122", "123", "124", "125", "126", "127", "128", "129", "130", "131", "132", "133", "134", "135", "136", "137", "138"],
		"CDFG" : "CNN_Pipeline_VITIS_LOOP_93_1_loop_for_ap_3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "26904", "EstimateLatencyMax" : "26904",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "Weights", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "OutPadConv3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "OutConv3", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_93_1_loop_for_ap_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "21", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage1", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage1_subdone", "QuitState" : "ap_ST_fsm_pp0_stage1", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage1_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "98", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_CNN_Pipeline_VITIS_LOOP_93_1_loop_for_ap_3_fu_780.mul_16s_16s_24_1_1_U73", "Parent" : "97"},
	{"ID" : "99", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_CNN_Pipeline_VITIS_LOOP_93_1_loop_for_ap_3_fu_780.mac_muladd_16s_16s_24ns_24_4_1_U74", "Parent" : "97"},
	{"ID" : "100", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_CNN_Pipeline_VITIS_LOOP_93_1_loop_for_ap_3_fu_780.mac_muladd_16s_16s_24ns_24_4_1_U75", "Parent" : "97"},
	{"ID" : "101", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_CNN_Pipeline_VITIS_LOOP_93_1_loop_for_ap_3_fu_780.mac_muladd_16s_16s_24ns_24_4_1_U76", "Parent" : "97"},
	{"ID" : "102", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_CNN_Pipeline_VITIS_LOOP_93_1_loop_for_ap_3_fu_780.mac_muladd_16s_16s_24ns_24_4_1_U77", "Parent" : "97"},
	{"ID" : "103", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_CNN_Pipeline_VITIS_LOOP_93_1_loop_for_ap_3_fu_780.mac_muladd_16s_16s_24ns_24_4_1_U78", "Parent" : "97"},
	{"ID" : "104", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_CNN_Pipeline_VITIS_LOOP_93_1_loop_for_ap_3_fu_780.mac_muladd_16s_16s_24ns_24_4_1_U79", "Parent" : "97"},
	{"ID" : "105", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_CNN_Pipeline_VITIS_LOOP_93_1_loop_for_ap_3_fu_780.mac_muladd_16s_16s_24ns_24_4_1_U80", "Parent" : "97"},
	{"ID" : "106", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_CNN_Pipeline_VITIS_LOOP_93_1_loop_for_ap_3_fu_780.mac_muladd_16s_16s_24ns_24_4_1_U81", "Parent" : "97"},
	{"ID" : "107", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_CNN_Pipeline_VITIS_LOOP_93_1_loop_for_ap_3_fu_780.mac_muladd_16s_16s_24ns_24_4_1_U82", "Parent" : "97"},
	{"ID" : "108", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_CNN_Pipeline_VITIS_LOOP_93_1_loop_for_ap_3_fu_780.mac_muladd_16s_16s_24ns_24_4_1_U83", "Parent" : "97"},
	{"ID" : "109", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_CNN_Pipeline_VITIS_LOOP_93_1_loop_for_ap_3_fu_780.mac_muladd_16s_16s_24ns_24_4_1_U84", "Parent" : "97"},
	{"ID" : "110", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_CNN_Pipeline_VITIS_LOOP_93_1_loop_for_ap_3_fu_780.mac_muladd_16s_16s_24ns_24_4_1_U85", "Parent" : "97"},
	{"ID" : "111", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_CNN_Pipeline_VITIS_LOOP_93_1_loop_for_ap_3_fu_780.mac_muladd_16s_16s_24ns_24_4_1_U86", "Parent" : "97"},
	{"ID" : "112", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_CNN_Pipeline_VITIS_LOOP_93_1_loop_for_ap_3_fu_780.mac_muladd_16s_16s_24ns_24_4_1_U87", "Parent" : "97"},
	{"ID" : "113", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_CNN_Pipeline_VITIS_LOOP_93_1_loop_for_ap_3_fu_780.mac_muladd_16s_16s_24ns_24_4_1_U88", "Parent" : "97"},
	{"ID" : "114", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_CNN_Pipeline_VITIS_LOOP_93_1_loop_for_ap_3_fu_780.mac_muladd_16s_16s_24ns_24_4_1_U89", "Parent" : "97"},
	{"ID" : "115", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_CNN_Pipeline_VITIS_LOOP_93_1_loop_for_ap_3_fu_780.mac_muladd_16s_16s_24ns_24_4_1_U90", "Parent" : "97"},
	{"ID" : "116", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_CNN_Pipeline_VITIS_LOOP_93_1_loop_for_ap_3_fu_780.mac_muladd_16s_16s_24ns_24_4_1_U91", "Parent" : "97"},
	{"ID" : "117", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_CNN_Pipeline_VITIS_LOOP_93_1_loop_for_ap_3_fu_780.mac_muladd_16s_16s_24ns_24_4_1_U92", "Parent" : "97"},
	{"ID" : "118", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_CNN_Pipeline_VITIS_LOOP_93_1_loop_for_ap_3_fu_780.mac_muladd_16s_16s_24ns_24_4_1_U93", "Parent" : "97"},
	{"ID" : "119", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_CNN_Pipeline_VITIS_LOOP_93_1_loop_for_ap_3_fu_780.mac_muladd_16s_16s_24ns_24_4_1_U94", "Parent" : "97"},
	{"ID" : "120", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_CNN_Pipeline_VITIS_LOOP_93_1_loop_for_ap_3_fu_780.mac_muladd_16s_16s_24ns_24_4_1_U95", "Parent" : "97"},
	{"ID" : "121", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_CNN_Pipeline_VITIS_LOOP_93_1_loop_for_ap_3_fu_780.mac_muladd_16s_16s_24ns_24_4_1_U96", "Parent" : "97"},
	{"ID" : "122", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_CNN_Pipeline_VITIS_LOOP_93_1_loop_for_ap_3_fu_780.mac_muladd_16s_16s_24ns_24_4_1_U97", "Parent" : "97"},
	{"ID" : "123", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_CNN_Pipeline_VITIS_LOOP_93_1_loop_for_ap_3_fu_780.mac_muladd_16s_16s_24ns_24_4_1_U98", "Parent" : "97"},
	{"ID" : "124", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_CNN_Pipeline_VITIS_LOOP_93_1_loop_for_ap_3_fu_780.mac_muladd_16s_16s_24ns_24_4_1_U99", "Parent" : "97"},
	{"ID" : "125", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_CNN_Pipeline_VITIS_LOOP_93_1_loop_for_ap_3_fu_780.mac_muladd_16s_16s_24ns_24_4_1_U100", "Parent" : "97"},
	{"ID" : "126", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_CNN_Pipeline_VITIS_LOOP_93_1_loop_for_ap_3_fu_780.mac_muladd_16s_16s_24ns_24_4_1_U101", "Parent" : "97"},
	{"ID" : "127", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_CNN_Pipeline_VITIS_LOOP_93_1_loop_for_ap_3_fu_780.mac_muladd_16s_16s_24ns_24_4_1_U102", "Parent" : "97"},
	{"ID" : "128", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_CNN_Pipeline_VITIS_LOOP_93_1_loop_for_ap_3_fu_780.mac_muladd_16s_16s_24ns_24_4_1_U103", "Parent" : "97"},
	{"ID" : "129", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_CNN_Pipeline_VITIS_LOOP_93_1_loop_for_ap_3_fu_780.mac_muladd_16s_16s_24ns_24_4_1_U104", "Parent" : "97"},
	{"ID" : "130", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_CNN_Pipeline_VITIS_LOOP_93_1_loop_for_ap_3_fu_780.mac_muladd_16s_16s_24ns_24_4_1_U105", "Parent" : "97"},
	{"ID" : "131", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_CNN_Pipeline_VITIS_LOOP_93_1_loop_for_ap_3_fu_780.mac_muladd_16s_16s_24ns_24_4_1_U106", "Parent" : "97"},
	{"ID" : "132", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_CNN_Pipeline_VITIS_LOOP_93_1_loop_for_ap_3_fu_780.mac_muladd_16s_16s_24ns_24_4_1_U107", "Parent" : "97"},
	{"ID" : "133", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_CNN_Pipeline_VITIS_LOOP_93_1_loop_for_ap_3_fu_780.mac_muladd_16s_16s_24ns_24_4_1_U108", "Parent" : "97"},
	{"ID" : "134", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_CNN_Pipeline_VITIS_LOOP_93_1_loop_for_ap_3_fu_780.mac_muladd_16s_16s_24ns_24_4_1_U109", "Parent" : "97"},
	{"ID" : "135", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_CNN_Pipeline_VITIS_LOOP_93_1_loop_for_ap_3_fu_780.mac_muladd_16s_16s_24ns_24_4_1_U110", "Parent" : "97"},
	{"ID" : "136", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_CNN_Pipeline_VITIS_LOOP_93_1_loop_for_ap_3_fu_780.mac_muladd_16s_16s_24ns_24_4_1_U111", "Parent" : "97"},
	{"ID" : "137", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_CNN_Pipeline_VITIS_LOOP_93_1_loop_for_ap_3_fu_780.mac_muladd_16s_16s_24ns_24_4_1_U112", "Parent" : "97"},
	{"ID" : "138", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_CNN_Pipeline_VITIS_LOOP_93_1_loop_for_ap_3_fu_780.flow_control_loop_pipe_sequential_init_U", "Parent" : "97"},
	{"ID" : "139", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_CNN_Pipeline_loop_for_channel_pool_1_loop_for_weight_pool_1_fu_788", "Parent" : "0", "Child" : ["140"],
		"CDFG" : "CNN_Pipeline_loop_for_channel_pool_1_loop_for_weight_pool_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "644", "EstimateLatencyMax" : "644",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "OutConv3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "OutPool1", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "loop_for_channel_pool_1_loop_for_weight_pool_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter3", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter3", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "140", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_CNN_Pipeline_loop_for_channel_pool_1_loop_for_weight_pool_1_fu_788.flow_control_loop_pipe_sequential_init_U", "Parent" : "139"},
	{"ID" : "141", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_CNN_Pipeline_loop_for_3_channel_pad_4_loop_for_channel_pad_4_fu_794", "Parent" : "0", "Child" : ["142", "143"],
		"CDFG" : "CNN_Pipeline_loop_for_3_channel_pad_4_loop_for_channel_pad_4",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "676", "EstimateLatencyMax" : "676",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "OutPadConv4", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "OutPool1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "loop_for_3_channel_pad_4_loop_for_channel_pad_4", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter3", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter3", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "142", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_CNN_Pipeline_loop_for_3_channel_pad_4_loop_for_channel_pad_4_fu_794.mac_muladd_4ns_7ns_7ns_10_4_1_U118", "Parent" : "141"},
	{"ID" : "143", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_CNN_Pipeline_loop_for_3_channel_pad_4_loop_for_channel_pad_4_fu_794.flow_control_loop_pipe_sequential_init_U", "Parent" : "141"},
	{"ID" : "144", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_CNN_Pipeline_VITIS_LOOP_119_1_loop_for_ap_4_fu_800", "Parent" : "0", "Child" : ["145", "146", "147", "148", "149", "150", "151", "152", "153", "154", "155", "156", "157", "158", "159", "160", "161", "162", "163", "164", "165", "166", "167", "168", "169", "170", "171", "172", "173", "174", "175", "176", "177", "178", "179", "180", "181", "182", "183", "184", "185"],
		"CDFG" : "CNN_Pipeline_VITIS_LOOP_119_1_loop_for_ap_4",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "26904", "EstimateLatencyMax" : "26904",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "Weights", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "OutPadConv4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "OutConv4", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_119_1_loop_for_ap_4", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "21", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage1", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage1_subdone", "QuitState" : "ap_ST_fsm_pp0_stage1", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage1_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "145", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_CNN_Pipeline_VITIS_LOOP_119_1_loop_for_ap_4_fu_800.mul_16s_16s_24_1_1_U122", "Parent" : "144"},
	{"ID" : "146", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_CNN_Pipeline_VITIS_LOOP_119_1_loop_for_ap_4_fu_800.mac_muladd_16s_16s_24ns_24_4_1_U123", "Parent" : "144"},
	{"ID" : "147", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_CNN_Pipeline_VITIS_LOOP_119_1_loop_for_ap_4_fu_800.mac_muladd_16s_16s_24ns_24_4_1_U124", "Parent" : "144"},
	{"ID" : "148", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_CNN_Pipeline_VITIS_LOOP_119_1_loop_for_ap_4_fu_800.mac_muladd_16s_16s_24ns_24_4_1_U125", "Parent" : "144"},
	{"ID" : "149", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_CNN_Pipeline_VITIS_LOOP_119_1_loop_for_ap_4_fu_800.mac_muladd_16s_16s_24ns_24_4_1_U126", "Parent" : "144"},
	{"ID" : "150", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_CNN_Pipeline_VITIS_LOOP_119_1_loop_for_ap_4_fu_800.mac_muladd_16s_16s_24ns_24_4_1_U127", "Parent" : "144"},
	{"ID" : "151", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_CNN_Pipeline_VITIS_LOOP_119_1_loop_for_ap_4_fu_800.mac_muladd_16s_16s_24ns_24_4_1_U128", "Parent" : "144"},
	{"ID" : "152", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_CNN_Pipeline_VITIS_LOOP_119_1_loop_for_ap_4_fu_800.mac_muladd_16s_16s_24ns_24_4_1_U129", "Parent" : "144"},
	{"ID" : "153", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_CNN_Pipeline_VITIS_LOOP_119_1_loop_for_ap_4_fu_800.mac_muladd_16s_16s_24ns_24_4_1_U130", "Parent" : "144"},
	{"ID" : "154", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_CNN_Pipeline_VITIS_LOOP_119_1_loop_for_ap_4_fu_800.mac_muladd_16s_16s_24ns_24_4_1_U131", "Parent" : "144"},
	{"ID" : "155", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_CNN_Pipeline_VITIS_LOOP_119_1_loop_for_ap_4_fu_800.mac_muladd_16s_16s_24ns_24_4_1_U132", "Parent" : "144"},
	{"ID" : "156", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_CNN_Pipeline_VITIS_LOOP_119_1_loop_for_ap_4_fu_800.mac_muladd_16s_16s_24ns_24_4_1_U133", "Parent" : "144"},
	{"ID" : "157", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_CNN_Pipeline_VITIS_LOOP_119_1_loop_for_ap_4_fu_800.mac_muladd_16s_16s_24ns_24_4_1_U134", "Parent" : "144"},
	{"ID" : "158", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_CNN_Pipeline_VITIS_LOOP_119_1_loop_for_ap_4_fu_800.mac_muladd_16s_16s_24ns_24_4_1_U135", "Parent" : "144"},
	{"ID" : "159", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_CNN_Pipeline_VITIS_LOOP_119_1_loop_for_ap_4_fu_800.mac_muladd_16s_16s_24ns_24_4_1_U136", "Parent" : "144"},
	{"ID" : "160", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_CNN_Pipeline_VITIS_LOOP_119_1_loop_for_ap_4_fu_800.mac_muladd_16s_16s_24ns_24_4_1_U137", "Parent" : "144"},
	{"ID" : "161", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_CNN_Pipeline_VITIS_LOOP_119_1_loop_for_ap_4_fu_800.mac_muladd_16s_16s_24ns_24_4_1_U138", "Parent" : "144"},
	{"ID" : "162", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_CNN_Pipeline_VITIS_LOOP_119_1_loop_for_ap_4_fu_800.mac_muladd_16s_16s_24ns_24_4_1_U139", "Parent" : "144"},
	{"ID" : "163", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_CNN_Pipeline_VITIS_LOOP_119_1_loop_for_ap_4_fu_800.mac_muladd_16s_16s_24ns_24_4_1_U140", "Parent" : "144"},
	{"ID" : "164", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_CNN_Pipeline_VITIS_LOOP_119_1_loop_for_ap_4_fu_800.mac_muladd_16s_16s_24ns_24_4_1_U141", "Parent" : "144"},
	{"ID" : "165", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_CNN_Pipeline_VITIS_LOOP_119_1_loop_for_ap_4_fu_800.mac_muladd_16s_16s_24ns_24_4_1_U142", "Parent" : "144"},
	{"ID" : "166", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_CNN_Pipeline_VITIS_LOOP_119_1_loop_for_ap_4_fu_800.mac_muladd_16s_16s_24ns_24_4_1_U143", "Parent" : "144"},
	{"ID" : "167", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_CNN_Pipeline_VITIS_LOOP_119_1_loop_for_ap_4_fu_800.mac_muladd_16s_16s_24ns_24_4_1_U144", "Parent" : "144"},
	{"ID" : "168", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_CNN_Pipeline_VITIS_LOOP_119_1_loop_for_ap_4_fu_800.mac_muladd_16s_16s_24ns_24_4_1_U145", "Parent" : "144"},
	{"ID" : "169", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_CNN_Pipeline_VITIS_LOOP_119_1_loop_for_ap_4_fu_800.mac_muladd_16s_16s_24ns_24_4_1_U146", "Parent" : "144"},
	{"ID" : "170", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_CNN_Pipeline_VITIS_LOOP_119_1_loop_for_ap_4_fu_800.mac_muladd_16s_16s_24ns_24_4_1_U147", "Parent" : "144"},
	{"ID" : "171", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_CNN_Pipeline_VITIS_LOOP_119_1_loop_for_ap_4_fu_800.mac_muladd_16s_16s_24ns_24_4_1_U148", "Parent" : "144"},
	{"ID" : "172", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_CNN_Pipeline_VITIS_LOOP_119_1_loop_for_ap_4_fu_800.mac_muladd_16s_16s_24ns_24_4_1_U149", "Parent" : "144"},
	{"ID" : "173", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_CNN_Pipeline_VITIS_LOOP_119_1_loop_for_ap_4_fu_800.mac_muladd_16s_16s_24ns_24_4_1_U150", "Parent" : "144"},
	{"ID" : "174", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_CNN_Pipeline_VITIS_LOOP_119_1_loop_for_ap_4_fu_800.mac_muladd_16s_16s_24ns_24_4_1_U151", "Parent" : "144"},
	{"ID" : "175", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_CNN_Pipeline_VITIS_LOOP_119_1_loop_for_ap_4_fu_800.mac_muladd_16s_16s_24ns_24_4_1_U152", "Parent" : "144"},
	{"ID" : "176", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_CNN_Pipeline_VITIS_LOOP_119_1_loop_for_ap_4_fu_800.mac_muladd_16s_16s_24ns_24_4_1_U153", "Parent" : "144"},
	{"ID" : "177", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_CNN_Pipeline_VITIS_LOOP_119_1_loop_for_ap_4_fu_800.mac_muladd_16s_16s_24ns_24_4_1_U154", "Parent" : "144"},
	{"ID" : "178", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_CNN_Pipeline_VITIS_LOOP_119_1_loop_for_ap_4_fu_800.mac_muladd_16s_16s_24ns_24_4_1_U155", "Parent" : "144"},
	{"ID" : "179", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_CNN_Pipeline_VITIS_LOOP_119_1_loop_for_ap_4_fu_800.mac_muladd_16s_16s_24ns_24_4_1_U156", "Parent" : "144"},
	{"ID" : "180", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_CNN_Pipeline_VITIS_LOOP_119_1_loop_for_ap_4_fu_800.mac_muladd_16s_16s_24ns_24_4_1_U157", "Parent" : "144"},
	{"ID" : "181", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_CNN_Pipeline_VITIS_LOOP_119_1_loop_for_ap_4_fu_800.mac_muladd_16s_16s_24ns_24_4_1_U158", "Parent" : "144"},
	{"ID" : "182", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_CNN_Pipeline_VITIS_LOOP_119_1_loop_for_ap_4_fu_800.mac_muladd_16s_16s_24ns_24_4_1_U159", "Parent" : "144"},
	{"ID" : "183", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_CNN_Pipeline_VITIS_LOOP_119_1_loop_for_ap_4_fu_800.mac_muladd_16s_16s_24ns_24_4_1_U160", "Parent" : "144"},
	{"ID" : "184", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_CNN_Pipeline_VITIS_LOOP_119_1_loop_for_ap_4_fu_800.mac_muladd_16s_16s_24ns_24_4_1_U161", "Parent" : "144"},
	{"ID" : "185", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_CNN_Pipeline_VITIS_LOOP_119_1_loop_for_ap_4_fu_800.flow_control_loop_pipe_sequential_init_U", "Parent" : "144"},
	{"ID" : "186", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_CNN_Pipeline_loop_for_3_channel_pad_5_loop_for_channel_pad_5_fu_808", "Parent" : "0", "Child" : ["187", "188"],
		"CDFG" : "CNN_Pipeline_loop_for_3_channel_pad_5_loop_for_channel_pad_5",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1348", "EstimateLatencyMax" : "1348",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "OutPadConv5", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "OutConv4", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "loop_for_3_channel_pad_5_loop_for_channel_pad_5", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter3", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter3", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "187", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_CNN_Pipeline_loop_for_3_channel_pad_5_loop_for_channel_pad_5_fu_808.mac_muladd_5ns_7ns_7ns_11_4_1_U165", "Parent" : "186"},
	{"ID" : "188", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_CNN_Pipeline_loop_for_3_channel_pad_5_loop_for_channel_pad_5_fu_808.flow_control_loop_pipe_sequential_init_U", "Parent" : "186"},
	{"ID" : "189", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_CNN_Pipeline_VITIS_LOOP_145_1_loop_for_ap_5_loop_for_fc_5_loop_for_fa_5_fu_814", "Parent" : "0", "Child" : ["190", "191", "192"],
		"CDFG" : "CNN_Pipeline_VITIS_LOOP_145_1_loop_for_ap_5_loop_for_fc_5_loop_for_fa_5",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "102409", "EstimateLatencyMax" : "102409",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "Weights", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "OutPadConv5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "OutConv5", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_145_1_loop_for_ap_5_loop_for_fc_5_loop_for_fa_5", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter9", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter9", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "190", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_CNN_Pipeline_VITIS_LOOP_145_1_loop_for_ap_5_loop_for_fc_5_loop_for_fa_5_fu_814.mac_muladd_5ns_7ns_7ns_11_4_1_U169", "Parent" : "189"},
	{"ID" : "191", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_CNN_Pipeline_VITIS_LOOP_145_1_loop_for_ap_5_loop_for_fc_5_loop_for_fa_5_fu_814.mac_muladd_16s_16s_24ns_24_4_1_U170", "Parent" : "189"},
	{"ID" : "192", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_CNN_Pipeline_VITIS_LOOP_145_1_loop_for_ap_5_loop_for_fc_5_loop_for_fa_5_fu_814.flow_control_loop_pipe_sequential_init_U", "Parent" : "189"},
	{"ID" : "193", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_CNN_Pipeline_loop_for_channel_pool_2_loop_for_weight_pool_2_fu_822", "Parent" : "0", "Child" : ["194"],
		"CDFG" : "CNN_Pipeline_loop_for_channel_pool_2_loop_for_weight_pool_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "644", "EstimateLatencyMax" : "644",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "OutConv5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "OutPool2", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "loop_for_channel_pool_2_loop_for_weight_pool_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter3", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter3", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "194", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_CNN_Pipeline_loop_for_channel_pool_2_loop_for_weight_pool_2_fu_822.flow_control_loop_pipe_sequential_init_U", "Parent" : "193"},
	{"ID" : "195", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_CNN_Pipeline_loop_for_3_channel_pad_6_loop_for_channel_pad_6_fu_828", "Parent" : "0", "Child" : ["196", "197"],
		"CDFG" : "CNN_Pipeline_loop_for_3_channel_pad_6_loop_for_channel_pad_6",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "708", "EstimateLatencyMax" : "708",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "OutPadConv6", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "OutPool2", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "loop_for_3_channel_pad_6_loop_for_channel_pad_6", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter3", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter3", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "196", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_CNN_Pipeline_loop_for_3_channel_pad_6_loop_for_channel_pad_6_fu_828.mac_muladd_5ns_6ns_6ns_10_4_1_U176", "Parent" : "195"},
	{"ID" : "197", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_CNN_Pipeline_loop_for_3_channel_pad_6_loop_for_channel_pad_6_fu_828.flow_control_loop_pipe_sequential_init_U", "Parent" : "195"},
	{"ID" : "198", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_CNN_Pipeline_VITIS_LOOP_171_1_loop_for_ap_6_loop_for_fc_6_loop_for_fa_6_fu_834", "Parent" : "0", "Child" : ["199", "200", "201"],
		"CDFG" : "CNN_Pipeline_VITIS_LOOP_171_1_loop_for_ap_6_loop_for_fc_6_loop_for_fa_6",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "102409", "EstimateLatencyMax" : "102409",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "Weights", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "OutPadConv6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "OutConv6", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_171_1_loop_for_ap_6_loop_for_fc_6_loop_for_fa_6", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter9", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter9", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "199", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_CNN_Pipeline_VITIS_LOOP_171_1_loop_for_ap_6_loop_for_fc_6_loop_for_fa_6_fu_834.mac_muladd_5ns_6ns_6ns_10_4_1_U180", "Parent" : "198"},
	{"ID" : "200", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_CNN_Pipeline_VITIS_LOOP_171_1_loop_for_ap_6_loop_for_fc_6_loop_for_fa_6_fu_834.mac_muladd_16s_16s_24ns_24_4_1_U181", "Parent" : "198"},
	{"ID" : "201", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_CNN_Pipeline_VITIS_LOOP_171_1_loop_for_ap_6_loop_for_fc_6_loop_for_fa_6_fu_834.flow_control_loop_pipe_sequential_init_U", "Parent" : "198"},
	{"ID" : "202", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_CNN_Pipeline_loop_for_3_channel_pad_7_loop_for_channel_pad_7_fu_842", "Parent" : "0", "Child" : ["203", "204"],
		"CDFG" : "CNN_Pipeline_loop_for_3_channel_pad_7_loop_for_channel_pad_7",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1412", "EstimateLatencyMax" : "1412",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "OutPadConv7", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "OutConv6", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "loop_for_3_channel_pad_7_loop_for_channel_pad_7", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter3", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter3", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "203", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_CNN_Pipeline_loop_for_3_channel_pad_7_loop_for_channel_pad_7_fu_842.mac_muladd_6ns_6ns_6ns_11_4_1_U185", "Parent" : "202"},
	{"ID" : "204", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_CNN_Pipeline_loop_for_3_channel_pad_7_loop_for_channel_pad_7_fu_842.flow_control_loop_pipe_sequential_init_U", "Parent" : "202"},
	{"ID" : "205", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_CNN_Pipeline_VITIS_LOOP_197_1_loop_for_ap_7_loop_for_fc_7_loop_for_fa_7_fu_848", "Parent" : "0", "Child" : ["206", "207", "208"],
		"CDFG" : "CNN_Pipeline_VITIS_LOOP_197_1_loop_for_ap_7_loop_for_fc_7_loop_for_fa_7",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "204809", "EstimateLatencyMax" : "204809",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "Weights", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "OutPadConv7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "OutConv7", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_197_1_loop_for_ap_7_loop_for_fc_7_loop_for_fa_7", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter9", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter9", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "206", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_CNN_Pipeline_VITIS_LOOP_197_1_loop_for_ap_7_loop_for_fc_7_loop_for_fa_7_fu_848.mac_muladd_6ns_6ns_6ns_11_4_1_U189", "Parent" : "205"},
	{"ID" : "207", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_CNN_Pipeline_VITIS_LOOP_197_1_loop_for_ap_7_loop_for_fc_7_loop_for_fa_7_fu_848.mac_muladd_16s_16s_24ns_24_4_1_U190", "Parent" : "205"},
	{"ID" : "208", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_CNN_Pipeline_VITIS_LOOP_197_1_loop_for_ap_7_loop_for_fc_7_loop_for_fa_7_fu_848.flow_control_loop_pipe_sequential_init_U", "Parent" : "205"},
	{"ID" : "209", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_CNN_Pipeline_loop_for_channel_pool_3_loop_for_weight_pool_3_fu_856", "Parent" : "0", "Child" : ["210", "211", "212"],
		"CDFG" : "CNN_Pipeline_loop_for_channel_pool_3_loop_for_weight_pool_3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "649", "EstimateLatencyMax" : "649",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "OutPool3_9", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "OutPool3_8", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "OutPool3_7", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "OutPool3_6", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "OutPool3_5", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "OutPool3_4", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "OutPool3_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "OutPool3_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "OutPool3_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "OutPool3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "OutConv7", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "loop_for_channel_pool_3_loop_for_weight_pool_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter8", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter8", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "210", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_CNN_Pipeline_loop_for_channel_pool_3_loop_for_weight_pool_3_fu_856.urem_5ns_5ns_4_9_1_U194", "Parent" : "209"},
	{"ID" : "211", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_CNN_Pipeline_loop_for_channel_pool_3_loop_for_weight_pool_3_fu_856.mul_5ns_7ns_11_1_1_U195", "Parent" : "209"},
	{"ID" : "212", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_CNN_Pipeline_loop_for_channel_pool_3_loop_for_weight_pool_3_fu_856.flow_control_loop_pipe_sequential_init_U", "Parent" : "209"},
	{"ID" : "213", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_CNN_Pipeline_VITIS_LOOP_93_1_fu_871", "Parent" : "0", "Child" : ["214", "215"],
		"CDFG" : "CNN_Pipeline_VITIS_LOOP_93_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "36", "EstimateLatencyMax" : "36",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "OutPool3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "OutPool3_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "OutPool3_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "OutPool3_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "OutPool3_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "OutPool3_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "OutPool3_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "OutPool3_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "OutPool3_8", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "OutPool3_9", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "OutGlobalAverPool1D", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_93_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter3", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter3", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "214", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_CNN_Pipeline_VITIS_LOOP_93_1_fu_871.mul_16s_18ns_34_1_1_U209", "Parent" : "213"},
	{"ID" : "215", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_CNN_Pipeline_VITIS_LOOP_93_1_fu_871.flow_control_loop_pipe_sequential_init_U", "Parent" : "213"},
	{"ID" : "216", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_CNN_Pipeline_loop_for_a_Dense_0_fu_886", "Parent" : "0", "Child" : ["217", "218", "219", "220", "221", "222", "223", "224", "225", "226", "227", "228", "229", "230", "231", "232", "233", "234", "235", "236", "237", "238", "239", "240", "241", "242", "243", "244", "245", "246", "247", "248", "249"],
		"CDFG" : "CNN_Pipeline_loop_for_a_Dense_0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "359", "EstimateLatencyMax" : "359",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "Weights", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sext_ln9", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln9_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln9_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln9_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln9_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln9_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln9_6", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln9_7", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln9_8", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln9_9", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln9_10", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln9_11", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln9_12", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln9_13", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln9_14", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln9_15", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln9_16", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln9_17", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln9_18", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln9_19", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln9_20", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln9_21", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln9_22", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln9_23", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln9_24", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln9_25", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln9_26", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln9_27", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln9_28", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln9_29", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln9_30", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln9_31", "Type" : "None", "Direction" : "I"},
			{"Name" : "OutDense0", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "loop_for_a_Dense_0", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "17", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "217", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_CNN_Pipeline_loop_for_a_Dense_0_fu_886.mul_16s_12s_24_1_1_U222", "Parent" : "216"},
	{"ID" : "218", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_CNN_Pipeline_loop_for_a_Dense_0_fu_886.mac_muladd_16s_12s_24ns_24_4_1_U223", "Parent" : "216"},
	{"ID" : "219", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_CNN_Pipeline_loop_for_a_Dense_0_fu_886.mac_muladd_16s_12s_24ns_24_4_1_U224", "Parent" : "216"},
	{"ID" : "220", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_CNN_Pipeline_loop_for_a_Dense_0_fu_886.mac_muladd_16s_12s_24ns_24_4_1_U225", "Parent" : "216"},
	{"ID" : "221", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_CNN_Pipeline_loop_for_a_Dense_0_fu_886.mac_muladd_16s_12s_24ns_24_4_1_U226", "Parent" : "216"},
	{"ID" : "222", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_CNN_Pipeline_loop_for_a_Dense_0_fu_886.mac_muladd_16s_12s_24ns_24_4_1_U227", "Parent" : "216"},
	{"ID" : "223", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_CNN_Pipeline_loop_for_a_Dense_0_fu_886.mac_muladd_16s_12s_24ns_24_4_1_U228", "Parent" : "216"},
	{"ID" : "224", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_CNN_Pipeline_loop_for_a_Dense_0_fu_886.mac_muladd_16s_12s_24ns_24_4_1_U229", "Parent" : "216"},
	{"ID" : "225", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_CNN_Pipeline_loop_for_a_Dense_0_fu_886.mac_muladd_16s_12s_24ns_24_4_1_U230", "Parent" : "216"},
	{"ID" : "226", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_CNN_Pipeline_loop_for_a_Dense_0_fu_886.mac_muladd_16s_12s_24ns_24_4_1_U231", "Parent" : "216"},
	{"ID" : "227", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_CNN_Pipeline_loop_for_a_Dense_0_fu_886.mac_muladd_16s_12s_24ns_24_4_1_U232", "Parent" : "216"},
	{"ID" : "228", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_CNN_Pipeline_loop_for_a_Dense_0_fu_886.mac_muladd_16s_12s_24ns_24_4_1_U233", "Parent" : "216"},
	{"ID" : "229", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_CNN_Pipeline_loop_for_a_Dense_0_fu_886.mac_muladd_16s_12s_24ns_24_4_1_U234", "Parent" : "216"},
	{"ID" : "230", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_CNN_Pipeline_loop_for_a_Dense_0_fu_886.mac_muladd_16s_12s_24ns_24_4_1_U235", "Parent" : "216"},
	{"ID" : "231", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_CNN_Pipeline_loop_for_a_Dense_0_fu_886.mac_muladd_16s_12s_24ns_24_4_1_U236", "Parent" : "216"},
	{"ID" : "232", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_CNN_Pipeline_loop_for_a_Dense_0_fu_886.mac_muladd_16s_12s_24ns_24_4_1_U237", "Parent" : "216"},
	{"ID" : "233", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_CNN_Pipeline_loop_for_a_Dense_0_fu_886.mac_muladd_16s_12s_24ns_24_4_1_U238", "Parent" : "216"},
	{"ID" : "234", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_CNN_Pipeline_loop_for_a_Dense_0_fu_886.mac_muladd_16s_12s_24ns_24_4_1_U239", "Parent" : "216"},
	{"ID" : "235", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_CNN_Pipeline_loop_for_a_Dense_0_fu_886.mac_muladd_16s_12s_24ns_24_4_1_U240", "Parent" : "216"},
	{"ID" : "236", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_CNN_Pipeline_loop_for_a_Dense_0_fu_886.mac_muladd_16s_12s_24ns_24_4_1_U241", "Parent" : "216"},
	{"ID" : "237", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_CNN_Pipeline_loop_for_a_Dense_0_fu_886.mac_muladd_16s_12s_24ns_24_4_1_U242", "Parent" : "216"},
	{"ID" : "238", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_CNN_Pipeline_loop_for_a_Dense_0_fu_886.mac_muladd_16s_12s_24ns_24_4_1_U243", "Parent" : "216"},
	{"ID" : "239", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_CNN_Pipeline_loop_for_a_Dense_0_fu_886.mac_muladd_16s_12s_24ns_24_4_1_U244", "Parent" : "216"},
	{"ID" : "240", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_CNN_Pipeline_loop_for_a_Dense_0_fu_886.mac_muladd_16s_12s_24ns_24_4_1_U245", "Parent" : "216"},
	{"ID" : "241", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_CNN_Pipeline_loop_for_a_Dense_0_fu_886.mac_muladd_16s_12s_24ns_24_4_1_U246", "Parent" : "216"},
	{"ID" : "242", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_CNN_Pipeline_loop_for_a_Dense_0_fu_886.mac_muladd_16s_12s_24ns_24_4_1_U247", "Parent" : "216"},
	{"ID" : "243", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_CNN_Pipeline_loop_for_a_Dense_0_fu_886.mac_muladd_16s_12s_24ns_24_4_1_U248", "Parent" : "216"},
	{"ID" : "244", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_CNN_Pipeline_loop_for_a_Dense_0_fu_886.mac_muladd_16s_12s_24ns_24_4_1_U249", "Parent" : "216"},
	{"ID" : "245", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_CNN_Pipeline_loop_for_a_Dense_0_fu_886.mac_muladd_16s_12s_24ns_24_4_1_U250", "Parent" : "216"},
	{"ID" : "246", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_CNN_Pipeline_loop_for_a_Dense_0_fu_886.mac_muladd_16s_12s_24ns_24_4_1_U251", "Parent" : "216"},
	{"ID" : "247", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_CNN_Pipeline_loop_for_a_Dense_0_fu_886.mac_muladd_16s_12s_24ns_24_4_1_U252", "Parent" : "216"},
	{"ID" : "248", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_CNN_Pipeline_loop_for_a_Dense_0_fu_886.mac_muladd_16s_12s_24ns_24_4_1_U253", "Parent" : "216"},
	{"ID" : "249", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_CNN_Pipeline_loop_for_a_Dense_0_fu_886.flow_control_loop_pipe_sequential_init_U", "Parent" : "216"},
	{"ID" : "250", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_CNN_Pipeline_loop_for_a_Dense_1_fu_927", "Parent" : "0", "Child" : ["251", "252", "253", "254", "255", "256", "257", "258", "259", "260", "261", "262", "263", "264", "265", "266", "267", "268", "269", "270", "271"],
		"CDFG" : "CNN_Pipeline_loop_for_a_Dense_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "68", "EstimateLatencyMax" : "68",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "Weights", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sext_ln21", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln21_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln21_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln21_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln21_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln21_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln21_6", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln21_7", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln21_8", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln21_9", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln21_10", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln21_11", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln21_12", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln21_13", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln21_14", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln21_15", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln21_16", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln21_17", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln21_18", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln21_19", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_Dense", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "loop_for_a_Dense_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "11", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "251", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_CNN_Pipeline_loop_for_a_Dense_1_fu_927.mul_16s_16s_24_1_1_U290", "Parent" : "250"},
	{"ID" : "252", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_CNN_Pipeline_loop_for_a_Dense_1_fu_927.mac_muladd_16s_16s_24ns_24_4_1_U291", "Parent" : "250"},
	{"ID" : "253", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_CNN_Pipeline_loop_for_a_Dense_1_fu_927.mac_muladd_16s_16s_24ns_24_4_1_U292", "Parent" : "250"},
	{"ID" : "254", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_CNN_Pipeline_loop_for_a_Dense_1_fu_927.mac_muladd_16s_16s_24ns_24_4_1_U293", "Parent" : "250"},
	{"ID" : "255", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_CNN_Pipeline_loop_for_a_Dense_1_fu_927.mac_muladd_16s_16s_24ns_24_4_1_U294", "Parent" : "250"},
	{"ID" : "256", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_CNN_Pipeline_loop_for_a_Dense_1_fu_927.mac_muladd_16s_16s_24ns_24_4_1_U295", "Parent" : "250"},
	{"ID" : "257", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_CNN_Pipeline_loop_for_a_Dense_1_fu_927.mac_muladd_16s_16s_24ns_24_4_1_U296", "Parent" : "250"},
	{"ID" : "258", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_CNN_Pipeline_loop_for_a_Dense_1_fu_927.mac_muladd_16s_16s_24ns_24_4_1_U297", "Parent" : "250"},
	{"ID" : "259", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_CNN_Pipeline_loop_for_a_Dense_1_fu_927.mac_muladd_16s_16s_24ns_24_4_1_U298", "Parent" : "250"},
	{"ID" : "260", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_CNN_Pipeline_loop_for_a_Dense_1_fu_927.mac_muladd_16s_16s_24ns_24_4_1_U299", "Parent" : "250"},
	{"ID" : "261", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_CNN_Pipeline_loop_for_a_Dense_1_fu_927.mac_muladd_16s_16s_24ns_24_4_1_U300", "Parent" : "250"},
	{"ID" : "262", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_CNN_Pipeline_loop_for_a_Dense_1_fu_927.mac_muladd_16s_16s_24ns_24_4_1_U301", "Parent" : "250"},
	{"ID" : "263", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_CNN_Pipeline_loop_for_a_Dense_1_fu_927.mac_muladd_16s_16s_24ns_24_4_1_U302", "Parent" : "250"},
	{"ID" : "264", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_CNN_Pipeline_loop_for_a_Dense_1_fu_927.mac_muladd_16s_16s_24ns_24_4_1_U303", "Parent" : "250"},
	{"ID" : "265", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_CNN_Pipeline_loop_for_a_Dense_1_fu_927.mac_muladd_16s_16s_24ns_24_4_1_U304", "Parent" : "250"},
	{"ID" : "266", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_CNN_Pipeline_loop_for_a_Dense_1_fu_927.mac_muladd_16s_16s_24ns_24_4_1_U305", "Parent" : "250"},
	{"ID" : "267", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_CNN_Pipeline_loop_for_a_Dense_1_fu_927.mac_muladd_16s_16s_24ns_24_4_1_U306", "Parent" : "250"},
	{"ID" : "268", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_CNN_Pipeline_loop_for_a_Dense_1_fu_927.mac_muladd_16s_16s_24ns_24_4_1_U307", "Parent" : "250"},
	{"ID" : "269", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_CNN_Pipeline_loop_for_a_Dense_1_fu_927.mac_muladd_16s_16s_24ns_24_4_1_U308", "Parent" : "250"},
	{"ID" : "270", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_CNN_Pipeline_loop_for_a_Dense_1_fu_927.mac_muladd_16s_16s_24ns_24_4_1_U309", "Parent" : "250"},
	{"ID" : "271", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_CNN_Pipeline_loop_for_a_Dense_1_fu_927.flow_control_loop_pipe_sequential_init_U", "Parent" : "250"},
	{"ID" : "272", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_CNN_Pipeline_loop_detect_fu_956", "Parent" : "0", "Child" : ["273"],
		"CDFG" : "CNN_Pipeline_loop_detect",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "6", "EstimateLatencyMax" : "6",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "maxindex", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_Dense", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv_i_i_i137_i_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "loop_detect", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "273", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_CNN_Pipeline_loop_detect_fu_956.flow_control_loop_pipe_sequential_init_U", "Parent" : "272"}]}


set ArgLastReadFirstWriteLatency {
	CNN {
		InModel {Type I LastRead 0 FirstWrite -1}
		OutModel {Type O LastRead -1 FirstWrite 76}
		Weights {Type I LastRead 33 FirstWrite -1}}
	CNN_Pipeline_loop_for_channel_pad_0 {
		OutPadConv0 {Type O LastRead -1 FirstWrite 1}
		InModel {Type I LastRead 0 FirstWrite -1}}
	CNN_Pipeline_VITIS_LOOP_15_1_loop_for_ap_0 {
		Weights {Type I LastRead 6 FirstWrite -1}
		OutPadConv0 {Type I LastRead 3 FirstWrite -1}
		OutConv0 {Type O LastRead -1 FirstWrite 8}}
	CNN_Pipeline_loop_for_3_channel_pad_1_loop_for_channel_pad_1 {
		OutPadConv1 {Type O LastRead -1 FirstWrite 2}
		OutConv0 {Type I LastRead 1 FirstWrite -1}}
	CNN_Pipeline_VITIS_LOOP_41_1_loop_for_ap_1 {
		Weights {Type I LastRead 10 FirstWrite -1}
		OutPadConv1 {Type I LastRead 10 FirstWrite -1}
		OutConv1 {Type O LastRead -1 FirstWrite 22}}
	CNN_Pipeline_loop_for_channel_pool_0_loop_for_weight_pool_0 {
		OutConv1 {Type I LastRead 1 FirstWrite -1}
		OutPool0 {Type O LastRead -1 FirstWrite 2}}
	CNN_Pipeline_loop_for_3_channel_pad_2_loop_for_channel_pad_2 {
		OutPadConv2 {Type O LastRead -1 FirstWrite 2}
		OutPool0 {Type I LastRead 1 FirstWrite -1}}
	CNN_Pipeline_VITIS_LOOP_67_1_loop_for_ap_2 {
		Weights {Type I LastRead 11 FirstWrite -1}
		OutPadConv2 {Type I LastRead 10 FirstWrite -1}
		OutConv2 {Type O LastRead -1 FirstWrite 23}}
	CNN_Pipeline_loop_for_3_channel_pad_3_loop_for_channel_pad_3 {
		OutPadConv3 {Type O LastRead -1 FirstWrite 3}
		OutConv2 {Type I LastRead 2 FirstWrite -1}}
	CNN_Pipeline_VITIS_LOOP_93_1_loop_for_ap_3 {
		Weights {Type I LastRead 21 FirstWrite -1}
		OutPadConv3 {Type I LastRead 20 FirstWrite -1}
		OutConv3 {Type O LastRead -1 FirstWrite 43}}
	CNN_Pipeline_loop_for_channel_pool_1_loop_for_weight_pool_1 {
		OutConv3 {Type I LastRead 2 FirstWrite -1}
		OutPool1 {Type O LastRead -1 FirstWrite 3}}
	CNN_Pipeline_loop_for_3_channel_pad_4_loop_for_channel_pad_4 {
		OutPadConv4 {Type O LastRead -1 FirstWrite 3}
		OutPool1 {Type I LastRead 2 FirstWrite -1}}
	CNN_Pipeline_VITIS_LOOP_119_1_loop_for_ap_4 {
		Weights {Type I LastRead 21 FirstWrite -1}
		OutPadConv4 {Type I LastRead 20 FirstWrite -1}
		OutConv4 {Type O LastRead -1 FirstWrite 43}}
	CNN_Pipeline_loop_for_3_channel_pad_5_loop_for_channel_pad_5 {
		OutPadConv5 {Type O LastRead -1 FirstWrite 3}
		OutConv4 {Type I LastRead 2 FirstWrite -1}}
	CNN_Pipeline_VITIS_LOOP_145_1_loop_for_ap_5_loop_for_fc_5_loop_for_fa_5 {
		Weights {Type I LastRead 7 FirstWrite -1}
		OutPadConv5 {Type I LastRead 5 FirstWrite -1}
		OutConv5 {Type O LastRead -1 FirstWrite 9}}
	CNN_Pipeline_loop_for_channel_pool_2_loop_for_weight_pool_2 {
		OutConv5 {Type I LastRead 2 FirstWrite -1}
		OutPool2 {Type O LastRead -1 FirstWrite 3}}
	CNN_Pipeline_loop_for_3_channel_pad_6_loop_for_channel_pad_6 {
		OutPadConv6 {Type O LastRead -1 FirstWrite 3}
		OutPool2 {Type I LastRead 2 FirstWrite -1}}
	CNN_Pipeline_VITIS_LOOP_171_1_loop_for_ap_6_loop_for_fc_6_loop_for_fa_6 {
		Weights {Type I LastRead 7 FirstWrite -1}
		OutPadConv6 {Type I LastRead 5 FirstWrite -1}
		OutConv6 {Type O LastRead -1 FirstWrite 9}}
	CNN_Pipeline_loop_for_3_channel_pad_7_loop_for_channel_pad_7 {
		OutPadConv7 {Type O LastRead -1 FirstWrite 3}
		OutConv6 {Type I LastRead 2 FirstWrite -1}}
	CNN_Pipeline_VITIS_LOOP_197_1_loop_for_ap_7_loop_for_fc_7_loop_for_fa_7 {
		Weights {Type I LastRead 7 FirstWrite -1}
		OutPadConv7 {Type I LastRead 5 FirstWrite -1}
		OutConv7 {Type O LastRead -1 FirstWrite 9}}
	CNN_Pipeline_loop_for_channel_pool_3_loop_for_weight_pool_3 {
		OutPool3_9 {Type O LastRead -1 FirstWrite 8}
		OutPool3_8 {Type O LastRead -1 FirstWrite 8}
		OutPool3_7 {Type O LastRead -1 FirstWrite 8}
		OutPool3_6 {Type O LastRead -1 FirstWrite 8}
		OutPool3_5 {Type O LastRead -1 FirstWrite 8}
		OutPool3_4 {Type O LastRead -1 FirstWrite 8}
		OutPool3_3 {Type O LastRead -1 FirstWrite 8}
		OutPool3_2 {Type O LastRead -1 FirstWrite 8}
		OutPool3_1 {Type O LastRead -1 FirstWrite 8}
		OutPool3 {Type O LastRead -1 FirstWrite 8}
		OutConv7 {Type I LastRead 7 FirstWrite -1}}
	CNN_Pipeline_VITIS_LOOP_93_1 {
		OutPool3 {Type I LastRead 1 FirstWrite -1}
		OutPool3_1 {Type I LastRead 1 FirstWrite -1}
		OutPool3_2 {Type I LastRead 1 FirstWrite -1}
		OutPool3_3 {Type I LastRead 1 FirstWrite -1}
		OutPool3_4 {Type I LastRead 1 FirstWrite -1}
		OutPool3_5 {Type I LastRead 1 FirstWrite -1}
		OutPool3_6 {Type I LastRead 1 FirstWrite -1}
		OutPool3_7 {Type I LastRead 1 FirstWrite -1}
		OutPool3_8 {Type I LastRead 1 FirstWrite -1}
		OutPool3_9 {Type I LastRead 1 FirstWrite -1}
		OutGlobalAverPool1D {Type O LastRead -1 FirstWrite 3}}
	CNN_Pipeline_loop_for_a_Dense_0 {
		Weights {Type I LastRead 33 FirstWrite -1}
		sext_ln9 {Type I LastRead 0 FirstWrite -1}
		sext_ln9_1 {Type I LastRead 0 FirstWrite -1}
		sext_ln9_2 {Type I LastRead 0 FirstWrite -1}
		sext_ln9_3 {Type I LastRead 0 FirstWrite -1}
		sext_ln9_4 {Type I LastRead 0 FirstWrite -1}
		sext_ln9_5 {Type I LastRead 0 FirstWrite -1}
		sext_ln9_6 {Type I LastRead 0 FirstWrite -1}
		sext_ln9_7 {Type I LastRead 0 FirstWrite -1}
		sext_ln9_8 {Type I LastRead 0 FirstWrite -1}
		sext_ln9_9 {Type I LastRead 0 FirstWrite -1}
		sext_ln9_10 {Type I LastRead 0 FirstWrite -1}
		sext_ln9_11 {Type I LastRead 0 FirstWrite -1}
		sext_ln9_12 {Type I LastRead 0 FirstWrite -1}
		sext_ln9_13 {Type I LastRead 0 FirstWrite -1}
		sext_ln9_14 {Type I LastRead 0 FirstWrite -1}
		sext_ln9_15 {Type I LastRead 0 FirstWrite -1}
		sext_ln9_16 {Type I LastRead 0 FirstWrite -1}
		sext_ln9_17 {Type I LastRead 0 FirstWrite -1}
		sext_ln9_18 {Type I LastRead 0 FirstWrite -1}
		sext_ln9_19 {Type I LastRead 0 FirstWrite -1}
		sext_ln9_20 {Type I LastRead 0 FirstWrite -1}
		sext_ln9_21 {Type I LastRead 0 FirstWrite -1}
		sext_ln9_22 {Type I LastRead 0 FirstWrite -1}
		sext_ln9_23 {Type I LastRead 0 FirstWrite -1}
		sext_ln9_24 {Type I LastRead 0 FirstWrite -1}
		sext_ln9_25 {Type I LastRead 0 FirstWrite -1}
		sext_ln9_26 {Type I LastRead 0 FirstWrite -1}
		sext_ln9_27 {Type I LastRead 0 FirstWrite -1}
		sext_ln9_28 {Type I LastRead 0 FirstWrite -1}
		sext_ln9_29 {Type I LastRead 0 FirstWrite -1}
		sext_ln9_30 {Type I LastRead 0 FirstWrite -1}
		sext_ln9_31 {Type I LastRead 0 FirstWrite -1}
		OutDense0 {Type O LastRead -1 FirstWrite 34}}
	CNN_Pipeline_loop_for_a_Dense_1 {
		Weights {Type I LastRead 21 FirstWrite -1}
		sext_ln21 {Type I LastRead 0 FirstWrite -1}
		sext_ln21_1 {Type I LastRead 0 FirstWrite -1}
		sext_ln21_2 {Type I LastRead 0 FirstWrite -1}
		sext_ln21_3 {Type I LastRead 0 FirstWrite -1}
		sext_ln21_4 {Type I LastRead 0 FirstWrite -1}
		sext_ln21_5 {Type I LastRead 0 FirstWrite -1}
		sext_ln21_6 {Type I LastRead 0 FirstWrite -1}
		sext_ln21_7 {Type I LastRead 0 FirstWrite -1}
		sext_ln21_8 {Type I LastRead 0 FirstWrite -1}
		sext_ln21_9 {Type I LastRead 0 FirstWrite -1}
		sext_ln21_10 {Type I LastRead 0 FirstWrite -1}
		sext_ln21_11 {Type I LastRead 0 FirstWrite -1}
		sext_ln21_12 {Type I LastRead 0 FirstWrite -1}
		sext_ln21_13 {Type I LastRead 0 FirstWrite -1}
		sext_ln21_14 {Type I LastRead 0 FirstWrite -1}
		sext_ln21_15 {Type I LastRead 0 FirstWrite -1}
		sext_ln21_16 {Type I LastRead 0 FirstWrite -1}
		sext_ln21_17 {Type I LastRead 0 FirstWrite -1}
		sext_ln21_18 {Type I LastRead 0 FirstWrite -1}
		sext_ln21_19 {Type I LastRead 0 FirstWrite -1}
		out_Dense {Type O LastRead -1 FirstWrite 22}}
	CNN_Pipeline_loop_detect {
		maxindex {Type I LastRead 0 FirstWrite -1}
		out_Dense {Type I LastRead 0 FirstWrite -1}
		conv_i_i_i137_i_out {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "506338", "Max" : "506338"}
	, {"Name" : "Interval", "Min" : "506339", "Max" : "506339"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	InModel { ap_memory {  { InModel_address0 mem_address 1 9 }  { InModel_ce0 mem_ce 1 1 }  { InModel_q0 mem_dout 0 16 } } }
	OutModel { ap_vld {  { OutModel out_data 1 16 }  { OutModel_ap_vld out_vld 1 1 } } }
	Weights { ap_memory {  { Weights_address0 mem_address 1 14 }  { Weights_ce0 mem_ce 1 1 }  { Weights_q0 mem_dout 0 16 }  { Weights_address1 MemPortADDR2 1 14 }  { Weights_ce1 MemPortCE2 1 1 }  { Weights_q1 MemPortDOUT2 0 16 } } }
}

set maxi_interface_dict [dict create]

# RTL port scheduling information:
set fifoSchedulingInfoList { 
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
