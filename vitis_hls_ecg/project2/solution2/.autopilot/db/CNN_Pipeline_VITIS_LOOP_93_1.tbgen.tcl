set moduleName CNN_Pipeline_VITIS_LOOP_93_1
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
set C_modelName {CNN_Pipeline_VITIS_LOOP_93_1}
set C_modelType { void 0 }
set C_modelArgList {
	{ OutPool3 int 16 regular {array 64 { 1 1 } 1 1 }  }
	{ OutPool3_1 int 16 regular {array 64 { 1 1 } 1 1 }  }
	{ OutPool3_2 int 16 regular {array 64 { 1 1 } 1 1 }  }
	{ OutPool3_3 int 16 regular {array 64 { 1 1 } 1 1 }  }
	{ OutPool3_4 int 16 regular {array 64 { 1 1 } 1 1 }  }
	{ OutPool3_5 int 16 regular {array 64 { 1 1 } 1 1 }  }
	{ OutPool3_6 int 16 regular {array 64 { 1 1 } 1 1 }  }
	{ OutPool3_7 int 16 regular {array 64 { 1 1 } 1 1 }  }
	{ OutPool3_8 int 16 regular {array 64 { 1 1 } 1 1 }  }
	{ OutPool3_9 int 16 regular {array 64 { 1 1 } 1 1 }  }
	{ OutGlobalAverPool1D int 12 regular {array 32 { 0 3 } 0 1 }  }
}
set hasAXIMCache 0
set AXIMCacheInstList { }
set C_modelArgMapList {[ 
	{ "Name" : "OutPool3", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "OutPool3_1", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "OutPool3_2", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "OutPool3_3", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "OutPool3_4", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "OutPool3_5", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "OutPool3_6", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "OutPool3_7", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "OutPool3_8", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "OutPool3_9", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "OutGlobalAverPool1D", "interface" : "memory", "bitwidth" : 12, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 70
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ OutPool3_address0 sc_out sc_lv 6 signal 0 } 
	{ OutPool3_ce0 sc_out sc_logic 1 signal 0 } 
	{ OutPool3_q0 sc_in sc_lv 16 signal 0 } 
	{ OutPool3_address1 sc_out sc_lv 6 signal 0 } 
	{ OutPool3_ce1 sc_out sc_logic 1 signal 0 } 
	{ OutPool3_q1 sc_in sc_lv 16 signal 0 } 
	{ OutPool3_1_address0 sc_out sc_lv 6 signal 1 } 
	{ OutPool3_1_ce0 sc_out sc_logic 1 signal 1 } 
	{ OutPool3_1_q0 sc_in sc_lv 16 signal 1 } 
	{ OutPool3_1_address1 sc_out sc_lv 6 signal 1 } 
	{ OutPool3_1_ce1 sc_out sc_logic 1 signal 1 } 
	{ OutPool3_1_q1 sc_in sc_lv 16 signal 1 } 
	{ OutPool3_2_address0 sc_out sc_lv 6 signal 2 } 
	{ OutPool3_2_ce0 sc_out sc_logic 1 signal 2 } 
	{ OutPool3_2_q0 sc_in sc_lv 16 signal 2 } 
	{ OutPool3_2_address1 sc_out sc_lv 6 signal 2 } 
	{ OutPool3_2_ce1 sc_out sc_logic 1 signal 2 } 
	{ OutPool3_2_q1 sc_in sc_lv 16 signal 2 } 
	{ OutPool3_3_address0 sc_out sc_lv 6 signal 3 } 
	{ OutPool3_3_ce0 sc_out sc_logic 1 signal 3 } 
	{ OutPool3_3_q0 sc_in sc_lv 16 signal 3 } 
	{ OutPool3_3_address1 sc_out sc_lv 6 signal 3 } 
	{ OutPool3_3_ce1 sc_out sc_logic 1 signal 3 } 
	{ OutPool3_3_q1 sc_in sc_lv 16 signal 3 } 
	{ OutPool3_4_address0 sc_out sc_lv 6 signal 4 } 
	{ OutPool3_4_ce0 sc_out sc_logic 1 signal 4 } 
	{ OutPool3_4_q0 sc_in sc_lv 16 signal 4 } 
	{ OutPool3_4_address1 sc_out sc_lv 6 signal 4 } 
	{ OutPool3_4_ce1 sc_out sc_logic 1 signal 4 } 
	{ OutPool3_4_q1 sc_in sc_lv 16 signal 4 } 
	{ OutPool3_5_address0 sc_out sc_lv 6 signal 5 } 
	{ OutPool3_5_ce0 sc_out sc_logic 1 signal 5 } 
	{ OutPool3_5_q0 sc_in sc_lv 16 signal 5 } 
	{ OutPool3_5_address1 sc_out sc_lv 6 signal 5 } 
	{ OutPool3_5_ce1 sc_out sc_logic 1 signal 5 } 
	{ OutPool3_5_q1 sc_in sc_lv 16 signal 5 } 
	{ OutPool3_6_address0 sc_out sc_lv 6 signal 6 } 
	{ OutPool3_6_ce0 sc_out sc_logic 1 signal 6 } 
	{ OutPool3_6_q0 sc_in sc_lv 16 signal 6 } 
	{ OutPool3_6_address1 sc_out sc_lv 6 signal 6 } 
	{ OutPool3_6_ce1 sc_out sc_logic 1 signal 6 } 
	{ OutPool3_6_q1 sc_in sc_lv 16 signal 6 } 
	{ OutPool3_7_address0 sc_out sc_lv 6 signal 7 } 
	{ OutPool3_7_ce0 sc_out sc_logic 1 signal 7 } 
	{ OutPool3_7_q0 sc_in sc_lv 16 signal 7 } 
	{ OutPool3_7_address1 sc_out sc_lv 6 signal 7 } 
	{ OutPool3_7_ce1 sc_out sc_logic 1 signal 7 } 
	{ OutPool3_7_q1 sc_in sc_lv 16 signal 7 } 
	{ OutPool3_8_address0 sc_out sc_lv 6 signal 8 } 
	{ OutPool3_8_ce0 sc_out sc_logic 1 signal 8 } 
	{ OutPool3_8_q0 sc_in sc_lv 16 signal 8 } 
	{ OutPool3_8_address1 sc_out sc_lv 6 signal 8 } 
	{ OutPool3_8_ce1 sc_out sc_logic 1 signal 8 } 
	{ OutPool3_8_q1 sc_in sc_lv 16 signal 8 } 
	{ OutPool3_9_address0 sc_out sc_lv 6 signal 9 } 
	{ OutPool3_9_ce0 sc_out sc_logic 1 signal 9 } 
	{ OutPool3_9_q0 sc_in sc_lv 16 signal 9 } 
	{ OutPool3_9_address1 sc_out sc_lv 6 signal 9 } 
	{ OutPool3_9_ce1 sc_out sc_logic 1 signal 9 } 
	{ OutPool3_9_q1 sc_in sc_lv 16 signal 9 } 
	{ OutGlobalAverPool1D_address0 sc_out sc_lv 5 signal 10 } 
	{ OutGlobalAverPool1D_ce0 sc_out sc_logic 1 signal 10 } 
	{ OutGlobalAverPool1D_we0 sc_out sc_logic 1 signal 10 } 
	{ OutGlobalAverPool1D_d0 sc_out sc_lv 12 signal 10 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "OutPool3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "OutPool3", "role": "address0" }} , 
 	{ "name": "OutPool3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "OutPool3", "role": "ce0" }} , 
 	{ "name": "OutPool3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "OutPool3", "role": "q0" }} , 
 	{ "name": "OutPool3_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "OutPool3", "role": "address1" }} , 
 	{ "name": "OutPool3_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "OutPool3", "role": "ce1" }} , 
 	{ "name": "OutPool3_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "OutPool3", "role": "q1" }} , 
 	{ "name": "OutPool3_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "OutPool3_1", "role": "address0" }} , 
 	{ "name": "OutPool3_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "OutPool3_1", "role": "ce0" }} , 
 	{ "name": "OutPool3_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "OutPool3_1", "role": "q0" }} , 
 	{ "name": "OutPool3_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "OutPool3_1", "role": "address1" }} , 
 	{ "name": "OutPool3_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "OutPool3_1", "role": "ce1" }} , 
 	{ "name": "OutPool3_1_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "OutPool3_1", "role": "q1" }} , 
 	{ "name": "OutPool3_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "OutPool3_2", "role": "address0" }} , 
 	{ "name": "OutPool3_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "OutPool3_2", "role": "ce0" }} , 
 	{ "name": "OutPool3_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "OutPool3_2", "role": "q0" }} , 
 	{ "name": "OutPool3_2_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "OutPool3_2", "role": "address1" }} , 
 	{ "name": "OutPool3_2_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "OutPool3_2", "role": "ce1" }} , 
 	{ "name": "OutPool3_2_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "OutPool3_2", "role": "q1" }} , 
 	{ "name": "OutPool3_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "OutPool3_3", "role": "address0" }} , 
 	{ "name": "OutPool3_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "OutPool3_3", "role": "ce0" }} , 
 	{ "name": "OutPool3_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "OutPool3_3", "role": "q0" }} , 
 	{ "name": "OutPool3_3_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "OutPool3_3", "role": "address1" }} , 
 	{ "name": "OutPool3_3_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "OutPool3_3", "role": "ce1" }} , 
 	{ "name": "OutPool3_3_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "OutPool3_3", "role": "q1" }} , 
 	{ "name": "OutPool3_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "OutPool3_4", "role": "address0" }} , 
 	{ "name": "OutPool3_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "OutPool3_4", "role": "ce0" }} , 
 	{ "name": "OutPool3_4_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "OutPool3_4", "role": "q0" }} , 
 	{ "name": "OutPool3_4_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "OutPool3_4", "role": "address1" }} , 
 	{ "name": "OutPool3_4_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "OutPool3_4", "role": "ce1" }} , 
 	{ "name": "OutPool3_4_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "OutPool3_4", "role": "q1" }} , 
 	{ "name": "OutPool3_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "OutPool3_5", "role": "address0" }} , 
 	{ "name": "OutPool3_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "OutPool3_5", "role": "ce0" }} , 
 	{ "name": "OutPool3_5_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "OutPool3_5", "role": "q0" }} , 
 	{ "name": "OutPool3_5_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "OutPool3_5", "role": "address1" }} , 
 	{ "name": "OutPool3_5_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "OutPool3_5", "role": "ce1" }} , 
 	{ "name": "OutPool3_5_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "OutPool3_5", "role": "q1" }} , 
 	{ "name": "OutPool3_6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "OutPool3_6", "role": "address0" }} , 
 	{ "name": "OutPool3_6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "OutPool3_6", "role": "ce0" }} , 
 	{ "name": "OutPool3_6_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "OutPool3_6", "role": "q0" }} , 
 	{ "name": "OutPool3_6_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "OutPool3_6", "role": "address1" }} , 
 	{ "name": "OutPool3_6_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "OutPool3_6", "role": "ce1" }} , 
 	{ "name": "OutPool3_6_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "OutPool3_6", "role": "q1" }} , 
 	{ "name": "OutPool3_7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "OutPool3_7", "role": "address0" }} , 
 	{ "name": "OutPool3_7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "OutPool3_7", "role": "ce0" }} , 
 	{ "name": "OutPool3_7_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "OutPool3_7", "role": "q0" }} , 
 	{ "name": "OutPool3_7_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "OutPool3_7", "role": "address1" }} , 
 	{ "name": "OutPool3_7_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "OutPool3_7", "role": "ce1" }} , 
 	{ "name": "OutPool3_7_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "OutPool3_7", "role": "q1" }} , 
 	{ "name": "OutPool3_8_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "OutPool3_8", "role": "address0" }} , 
 	{ "name": "OutPool3_8_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "OutPool3_8", "role": "ce0" }} , 
 	{ "name": "OutPool3_8_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "OutPool3_8", "role": "q0" }} , 
 	{ "name": "OutPool3_8_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "OutPool3_8", "role": "address1" }} , 
 	{ "name": "OutPool3_8_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "OutPool3_8", "role": "ce1" }} , 
 	{ "name": "OutPool3_8_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "OutPool3_8", "role": "q1" }} , 
 	{ "name": "OutPool3_9_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "OutPool3_9", "role": "address0" }} , 
 	{ "name": "OutPool3_9_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "OutPool3_9", "role": "ce0" }} , 
 	{ "name": "OutPool3_9_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "OutPool3_9", "role": "q0" }} , 
 	{ "name": "OutPool3_9_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "OutPool3_9", "role": "address1" }} , 
 	{ "name": "OutPool3_9_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "OutPool3_9", "role": "ce1" }} , 
 	{ "name": "OutPool3_9_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "OutPool3_9", "role": "q1" }} , 
 	{ "name": "OutGlobalAverPool1D_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "OutGlobalAverPool1D", "role": "address0" }} , 
 	{ "name": "OutGlobalAverPool1D_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "OutGlobalAverPool1D", "role": "ce0" }} , 
 	{ "name": "OutGlobalAverPool1D_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "OutGlobalAverPool1D", "role": "we0" }} , 
 	{ "name": "OutGlobalAverPool1D_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "OutGlobalAverPool1D", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
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
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_16s_18ns_34_1_1_U209", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
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
		OutGlobalAverPool1D {Type O LastRead -1 FirstWrite 3}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "36", "Max" : "36"}
	, {"Name" : "Interval", "Min" : "36", "Max" : "36"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	OutPool3 { ap_memory {  { OutPool3_address0 mem_address 1 6 }  { OutPool3_ce0 mem_ce 1 1 }  { OutPool3_q0 in_data 0 16 }  { OutPool3_address1 MemPortADDR2 1 6 }  { OutPool3_ce1 MemPortCE2 1 1 }  { OutPool3_q1 in_data 0 16 } } }
	OutPool3_1 { ap_memory {  { OutPool3_1_address0 mem_address 1 6 }  { OutPool3_1_ce0 mem_ce 1 1 }  { OutPool3_1_q0 in_data 0 16 }  { OutPool3_1_address1 MemPortADDR2 1 6 }  { OutPool3_1_ce1 MemPortCE2 1 1 }  { OutPool3_1_q1 in_data 0 16 } } }
	OutPool3_2 { ap_memory {  { OutPool3_2_address0 mem_address 1 6 }  { OutPool3_2_ce0 mem_ce 1 1 }  { OutPool3_2_q0 in_data 0 16 }  { OutPool3_2_address1 MemPortADDR2 1 6 }  { OutPool3_2_ce1 MemPortCE2 1 1 }  { OutPool3_2_q1 in_data 0 16 } } }
	OutPool3_3 { ap_memory {  { OutPool3_3_address0 mem_address 1 6 }  { OutPool3_3_ce0 mem_ce 1 1 }  { OutPool3_3_q0 in_data 0 16 }  { OutPool3_3_address1 MemPortADDR2 1 6 }  { OutPool3_3_ce1 MemPortCE2 1 1 }  { OutPool3_3_q1 in_data 0 16 } } }
	OutPool3_4 { ap_memory {  { OutPool3_4_address0 mem_address 1 6 }  { OutPool3_4_ce0 mem_ce 1 1 }  { OutPool3_4_q0 in_data 0 16 }  { OutPool3_4_address1 MemPortADDR2 1 6 }  { OutPool3_4_ce1 MemPortCE2 1 1 }  { OutPool3_4_q1 in_data 0 16 } } }
	OutPool3_5 { ap_memory {  { OutPool3_5_address0 mem_address 1 6 }  { OutPool3_5_ce0 mem_ce 1 1 }  { OutPool3_5_q0 in_data 0 16 }  { OutPool3_5_address1 MemPortADDR2 1 6 }  { OutPool3_5_ce1 MemPortCE2 1 1 }  { OutPool3_5_q1 in_data 0 16 } } }
	OutPool3_6 { ap_memory {  { OutPool3_6_address0 mem_address 1 6 }  { OutPool3_6_ce0 mem_ce 1 1 }  { OutPool3_6_q0 in_data 0 16 }  { OutPool3_6_address1 MemPortADDR2 1 6 }  { OutPool3_6_ce1 MemPortCE2 1 1 }  { OutPool3_6_q1 in_data 0 16 } } }
	OutPool3_7 { ap_memory {  { OutPool3_7_address0 mem_address 1 6 }  { OutPool3_7_ce0 mem_ce 1 1 }  { OutPool3_7_q0 in_data 0 16 }  { OutPool3_7_address1 MemPortADDR2 1 6 }  { OutPool3_7_ce1 MemPortCE2 1 1 }  { OutPool3_7_q1 in_data 0 16 } } }
	OutPool3_8 { ap_memory {  { OutPool3_8_address0 mem_address 1 6 }  { OutPool3_8_ce0 mem_ce 1 1 }  { OutPool3_8_q0 in_data 0 16 }  { OutPool3_8_address1 MemPortADDR2 1 6 }  { OutPool3_8_ce1 MemPortCE2 1 1 }  { OutPool3_8_q1 in_data 0 16 } } }
	OutPool3_9 { ap_memory {  { OutPool3_9_address0 mem_address 1 6 }  { OutPool3_9_ce0 mem_ce 1 1 }  { OutPool3_9_q0 in_data 0 16 }  { OutPool3_9_address1 MemPortADDR2 1 6 }  { OutPool3_9_ce1 MemPortCE2 1 1 }  { OutPool3_9_q1 in_data 0 16 } } }
	OutGlobalAverPool1D { ap_memory {  { OutGlobalAverPool1D_address0 mem_address 1 5 }  { OutGlobalAverPool1D_ce0 mem_ce 1 1 }  { OutGlobalAverPool1D_we0 mem_we 1 1 }  { OutGlobalAverPool1D_d0 mem_din 1 12 } } }
}
