set moduleName CNN_Pipeline_loop_for_a_Dense_1
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set DLRegFirstOffset 0
set DLRegItemOffset 0
set C_modelName {CNN_Pipeline_loop_for_a_Dense_1}
set C_modelType { void 0 }
set C_modelArgList {
	{ Weights int 16 regular {array 11065 { 1 1 } 1 1 }  }
	{ sext_ln21 int 16 regular  }
	{ sext_ln21_1 int 16 regular  }
	{ sext_ln21_2 int 16 regular  }
	{ sext_ln21_3 int 16 regular  }
	{ sext_ln21_4 int 16 regular  }
	{ sext_ln21_5 int 16 regular  }
	{ sext_ln21_6 int 16 regular  }
	{ sext_ln21_7 int 16 regular  }
	{ sext_ln21_8 int 16 regular  }
	{ sext_ln21_9 int 16 regular  }
	{ sext_ln21_10 int 16 regular  }
	{ sext_ln21_11 int 16 regular  }
	{ sext_ln21_12 int 16 regular  }
	{ sext_ln21_13 int 16 regular  }
	{ sext_ln21_14 int 16 regular  }
	{ sext_ln21_15 int 16 regular  }
	{ sext_ln21_16 int 16 regular  }
	{ sext_ln21_17 int 16 regular  }
	{ sext_ln21_18 int 16 regular  }
	{ sext_ln21_19 int 16 regular  }
	{ out_Dense int 16 regular {array 5 { 0 3 } 0 1 }  }
}
set hasAXIMCache 0
set AXIMCacheInstList { }
set C_modelArgMapList {[ 
	{ "Name" : "Weights", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "sext_ln21", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "sext_ln21_1", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "sext_ln21_2", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "sext_ln21_3", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "sext_ln21_4", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "sext_ln21_5", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "sext_ln21_6", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "sext_ln21_7", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "sext_ln21_8", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "sext_ln21_9", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "sext_ln21_10", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "sext_ln21_11", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "sext_ln21_12", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "sext_ln21_13", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "sext_ln21_14", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "sext_ln21_15", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "sext_ln21_16", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "sext_ln21_17", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "sext_ln21_18", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "sext_ln21_19", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "out_Dense", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 36
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ Weights_address0 sc_out sc_lv 14 signal 0 } 
	{ Weights_ce0 sc_out sc_logic 1 signal 0 } 
	{ Weights_q0 sc_in sc_lv 16 signal 0 } 
	{ Weights_address1 sc_out sc_lv 14 signal 0 } 
	{ Weights_ce1 sc_out sc_logic 1 signal 0 } 
	{ Weights_q1 sc_in sc_lv 16 signal 0 } 
	{ sext_ln21 sc_in sc_lv 16 signal 1 } 
	{ sext_ln21_1 sc_in sc_lv 16 signal 2 } 
	{ sext_ln21_2 sc_in sc_lv 16 signal 3 } 
	{ sext_ln21_3 sc_in sc_lv 16 signal 4 } 
	{ sext_ln21_4 sc_in sc_lv 16 signal 5 } 
	{ sext_ln21_5 sc_in sc_lv 16 signal 6 } 
	{ sext_ln21_6 sc_in sc_lv 16 signal 7 } 
	{ sext_ln21_7 sc_in sc_lv 16 signal 8 } 
	{ sext_ln21_8 sc_in sc_lv 16 signal 9 } 
	{ sext_ln21_9 sc_in sc_lv 16 signal 10 } 
	{ sext_ln21_10 sc_in sc_lv 16 signal 11 } 
	{ sext_ln21_11 sc_in sc_lv 16 signal 12 } 
	{ sext_ln21_12 sc_in sc_lv 16 signal 13 } 
	{ sext_ln21_13 sc_in sc_lv 16 signal 14 } 
	{ sext_ln21_14 sc_in sc_lv 16 signal 15 } 
	{ sext_ln21_15 sc_in sc_lv 16 signal 16 } 
	{ sext_ln21_16 sc_in sc_lv 16 signal 17 } 
	{ sext_ln21_17 sc_in sc_lv 16 signal 18 } 
	{ sext_ln21_18 sc_in sc_lv 16 signal 19 } 
	{ sext_ln21_19 sc_in sc_lv 16 signal 20 } 
	{ out_Dense_address0 sc_out sc_lv 3 signal 21 } 
	{ out_Dense_ce0 sc_out sc_logic 1 signal 21 } 
	{ out_Dense_we0 sc_out sc_logic 1 signal 21 } 
	{ out_Dense_d0 sc_out sc_lv 16 signal 21 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "Weights_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "Weights", "role": "address0" }} , 
 	{ "name": "Weights_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Weights", "role": "ce0" }} , 
 	{ "name": "Weights_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "Weights", "role": "q0" }} , 
 	{ "name": "Weights_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "Weights", "role": "address1" }} , 
 	{ "name": "Weights_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Weights", "role": "ce1" }} , 
 	{ "name": "Weights_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "Weights", "role": "q1" }} , 
 	{ "name": "sext_ln21", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "sext_ln21", "role": "default" }} , 
 	{ "name": "sext_ln21_1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "sext_ln21_1", "role": "default" }} , 
 	{ "name": "sext_ln21_2", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "sext_ln21_2", "role": "default" }} , 
 	{ "name": "sext_ln21_3", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "sext_ln21_3", "role": "default" }} , 
 	{ "name": "sext_ln21_4", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "sext_ln21_4", "role": "default" }} , 
 	{ "name": "sext_ln21_5", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "sext_ln21_5", "role": "default" }} , 
 	{ "name": "sext_ln21_6", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "sext_ln21_6", "role": "default" }} , 
 	{ "name": "sext_ln21_7", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "sext_ln21_7", "role": "default" }} , 
 	{ "name": "sext_ln21_8", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "sext_ln21_8", "role": "default" }} , 
 	{ "name": "sext_ln21_9", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "sext_ln21_9", "role": "default" }} , 
 	{ "name": "sext_ln21_10", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "sext_ln21_10", "role": "default" }} , 
 	{ "name": "sext_ln21_11", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "sext_ln21_11", "role": "default" }} , 
 	{ "name": "sext_ln21_12", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "sext_ln21_12", "role": "default" }} , 
 	{ "name": "sext_ln21_13", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "sext_ln21_13", "role": "default" }} , 
 	{ "name": "sext_ln21_14", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "sext_ln21_14", "role": "default" }} , 
 	{ "name": "sext_ln21_15", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "sext_ln21_15", "role": "default" }} , 
 	{ "name": "sext_ln21_16", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "sext_ln21_16", "role": "default" }} , 
 	{ "name": "sext_ln21_17", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "sext_ln21_17", "role": "default" }} , 
 	{ "name": "sext_ln21_18", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "sext_ln21_18", "role": "default" }} , 
 	{ "name": "sext_ln21_19", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "sext_ln21_19", "role": "default" }} , 
 	{ "name": "out_Dense_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "out_Dense", "role": "address0" }} , 
 	{ "name": "out_Dense_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_Dense", "role": "ce0" }} , 
 	{ "name": "out_Dense_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_Dense", "role": "we0" }} , 
 	{ "name": "out_Dense_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "out_Dense", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21"],
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
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_16s_16s_24_1_1_U290", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_24ns_24_4_1_U291", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_24ns_24_4_1_U292", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_24ns_24_4_1_U293", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_24ns_24_4_1_U294", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_24ns_24_4_1_U295", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_24ns_24_4_1_U296", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_24ns_24_4_1_U297", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_24ns_24_4_1_U298", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_24ns_24_4_1_U299", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_24ns_24_4_1_U300", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_24ns_24_4_1_U301", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_24ns_24_4_1_U302", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_24ns_24_4_1_U303", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_24ns_24_4_1_U304", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_24ns_24_4_1_U305", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_24ns_24_4_1_U306", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_24ns_24_4_1_U307", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_24ns_24_4_1_U308", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_16s_24ns_24_4_1_U309", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
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
		out_Dense {Type O LastRead -1 FirstWrite 22}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "68", "Max" : "68"}
	, {"Name" : "Interval", "Min" : "68", "Max" : "68"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	Weights { ap_memory {  { Weights_address0 mem_address 1 14 }  { Weights_ce0 mem_ce 1 1 }  { Weights_q0 in_data 0 16 }  { Weights_address1 MemPortADDR2 1 14 }  { Weights_ce1 MemPortCE2 1 1 }  { Weights_q1 in_data 0 16 } } }
	sext_ln21 { ap_none {  { sext_ln21 in_data 0 16 } } }
	sext_ln21_1 { ap_none {  { sext_ln21_1 in_data 0 16 } } }
	sext_ln21_2 { ap_none {  { sext_ln21_2 in_data 0 16 } } }
	sext_ln21_3 { ap_none {  { sext_ln21_3 in_data 0 16 } } }
	sext_ln21_4 { ap_none {  { sext_ln21_4 in_data 0 16 } } }
	sext_ln21_5 { ap_none {  { sext_ln21_5 in_data 0 16 } } }
	sext_ln21_6 { ap_none {  { sext_ln21_6 in_data 0 16 } } }
	sext_ln21_7 { ap_none {  { sext_ln21_7 in_data 0 16 } } }
	sext_ln21_8 { ap_none {  { sext_ln21_8 in_data 0 16 } } }
	sext_ln21_9 { ap_none {  { sext_ln21_9 in_data 0 16 } } }
	sext_ln21_10 { ap_none {  { sext_ln21_10 in_data 0 16 } } }
	sext_ln21_11 { ap_none {  { sext_ln21_11 in_data 0 16 } } }
	sext_ln21_12 { ap_none {  { sext_ln21_12 in_data 0 16 } } }
	sext_ln21_13 { ap_none {  { sext_ln21_13 in_data 0 16 } } }
	sext_ln21_14 { ap_none {  { sext_ln21_14 in_data 0 16 } } }
	sext_ln21_15 { ap_none {  { sext_ln21_15 in_data 0 16 } } }
	sext_ln21_16 { ap_none {  { sext_ln21_16 in_data 0 16 } } }
	sext_ln21_17 { ap_none {  { sext_ln21_17 in_data 0 16 } } }
	sext_ln21_18 { ap_none {  { sext_ln21_18 in_data 0 16 } } }
	sext_ln21_19 { ap_none {  { sext_ln21_19 in_data 0 16 } } }
	out_Dense { ap_memory {  { out_Dense_address0 mem_address 1 3 }  { out_Dense_ce0 mem_ce 1 1 }  { out_Dense_we0 mem_we 1 1 }  { out_Dense_d0 mem_din 1 16 } } }
}
