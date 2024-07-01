set moduleName CNN_Pipeline_loop_for_a_Dense_0
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
set C_modelName {CNN_Pipeline_loop_for_a_Dense_0}
set C_modelType { void 0 }
set C_modelArgList {
	{ Weights int 16 regular {array 11065 { 1 1 } 1 1 }  }
	{ sext_ln9 int 12 regular  }
	{ sext_ln9_1 int 12 regular  }
	{ sext_ln9_2 int 12 regular  }
	{ sext_ln9_3 int 12 regular  }
	{ sext_ln9_4 int 12 regular  }
	{ sext_ln9_5 int 12 regular  }
	{ sext_ln9_6 int 12 regular  }
	{ sext_ln9_7 int 12 regular  }
	{ sext_ln9_8 int 12 regular  }
	{ sext_ln9_9 int 12 regular  }
	{ sext_ln9_10 int 12 regular  }
	{ sext_ln9_11 int 12 regular  }
	{ sext_ln9_12 int 12 regular  }
	{ sext_ln9_13 int 12 regular  }
	{ sext_ln9_14 int 12 regular  }
	{ sext_ln9_15 int 12 regular  }
	{ sext_ln9_16 int 12 regular  }
	{ sext_ln9_17 int 12 regular  }
	{ sext_ln9_18 int 12 regular  }
	{ sext_ln9_19 int 12 regular  }
	{ sext_ln9_20 int 12 regular  }
	{ sext_ln9_21 int 12 regular  }
	{ sext_ln9_22 int 12 regular  }
	{ sext_ln9_23 int 12 regular  }
	{ sext_ln9_24 int 12 regular  }
	{ sext_ln9_25 int 12 regular  }
	{ sext_ln9_26 int 12 regular  }
	{ sext_ln9_27 int 12 regular  }
	{ sext_ln9_28 int 12 regular  }
	{ sext_ln9_29 int 12 regular  }
	{ sext_ln9_30 int 12 regular  }
	{ sext_ln9_31 int 12 regular  }
	{ OutDense0 int 16 regular {array 20 { 0 3 } 0 1 }  }
}
set hasAXIMCache 0
set AXIMCacheInstList { }
set C_modelArgMapList {[ 
	{ "Name" : "Weights", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "sext_ln9", "interface" : "wire", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "sext_ln9_1", "interface" : "wire", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "sext_ln9_2", "interface" : "wire", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "sext_ln9_3", "interface" : "wire", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "sext_ln9_4", "interface" : "wire", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "sext_ln9_5", "interface" : "wire", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "sext_ln9_6", "interface" : "wire", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "sext_ln9_7", "interface" : "wire", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "sext_ln9_8", "interface" : "wire", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "sext_ln9_9", "interface" : "wire", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "sext_ln9_10", "interface" : "wire", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "sext_ln9_11", "interface" : "wire", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "sext_ln9_12", "interface" : "wire", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "sext_ln9_13", "interface" : "wire", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "sext_ln9_14", "interface" : "wire", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "sext_ln9_15", "interface" : "wire", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "sext_ln9_16", "interface" : "wire", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "sext_ln9_17", "interface" : "wire", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "sext_ln9_18", "interface" : "wire", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "sext_ln9_19", "interface" : "wire", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "sext_ln9_20", "interface" : "wire", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "sext_ln9_21", "interface" : "wire", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "sext_ln9_22", "interface" : "wire", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "sext_ln9_23", "interface" : "wire", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "sext_ln9_24", "interface" : "wire", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "sext_ln9_25", "interface" : "wire", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "sext_ln9_26", "interface" : "wire", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "sext_ln9_27", "interface" : "wire", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "sext_ln9_28", "interface" : "wire", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "sext_ln9_29", "interface" : "wire", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "sext_ln9_30", "interface" : "wire", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "sext_ln9_31", "interface" : "wire", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "OutDense0", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 48
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
	{ sext_ln9 sc_in sc_lv 12 signal 1 } 
	{ sext_ln9_1 sc_in sc_lv 12 signal 2 } 
	{ sext_ln9_2 sc_in sc_lv 12 signal 3 } 
	{ sext_ln9_3 sc_in sc_lv 12 signal 4 } 
	{ sext_ln9_4 sc_in sc_lv 12 signal 5 } 
	{ sext_ln9_5 sc_in sc_lv 12 signal 6 } 
	{ sext_ln9_6 sc_in sc_lv 12 signal 7 } 
	{ sext_ln9_7 sc_in sc_lv 12 signal 8 } 
	{ sext_ln9_8 sc_in sc_lv 12 signal 9 } 
	{ sext_ln9_9 sc_in sc_lv 12 signal 10 } 
	{ sext_ln9_10 sc_in sc_lv 12 signal 11 } 
	{ sext_ln9_11 sc_in sc_lv 12 signal 12 } 
	{ sext_ln9_12 sc_in sc_lv 12 signal 13 } 
	{ sext_ln9_13 sc_in sc_lv 12 signal 14 } 
	{ sext_ln9_14 sc_in sc_lv 12 signal 15 } 
	{ sext_ln9_15 sc_in sc_lv 12 signal 16 } 
	{ sext_ln9_16 sc_in sc_lv 12 signal 17 } 
	{ sext_ln9_17 sc_in sc_lv 12 signal 18 } 
	{ sext_ln9_18 sc_in sc_lv 12 signal 19 } 
	{ sext_ln9_19 sc_in sc_lv 12 signal 20 } 
	{ sext_ln9_20 sc_in sc_lv 12 signal 21 } 
	{ sext_ln9_21 sc_in sc_lv 12 signal 22 } 
	{ sext_ln9_22 sc_in sc_lv 12 signal 23 } 
	{ sext_ln9_23 sc_in sc_lv 12 signal 24 } 
	{ sext_ln9_24 sc_in sc_lv 12 signal 25 } 
	{ sext_ln9_25 sc_in sc_lv 12 signal 26 } 
	{ sext_ln9_26 sc_in sc_lv 12 signal 27 } 
	{ sext_ln9_27 sc_in sc_lv 12 signal 28 } 
	{ sext_ln9_28 sc_in sc_lv 12 signal 29 } 
	{ sext_ln9_29 sc_in sc_lv 12 signal 30 } 
	{ sext_ln9_30 sc_in sc_lv 12 signal 31 } 
	{ sext_ln9_31 sc_in sc_lv 12 signal 32 } 
	{ OutDense0_address0 sc_out sc_lv 5 signal 33 } 
	{ OutDense0_ce0 sc_out sc_logic 1 signal 33 } 
	{ OutDense0_we0 sc_out sc_logic 1 signal 33 } 
	{ OutDense0_d0 sc_out sc_lv 16 signal 33 } 
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
 	{ "name": "sext_ln9", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "sext_ln9", "role": "default" }} , 
 	{ "name": "sext_ln9_1", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "sext_ln9_1", "role": "default" }} , 
 	{ "name": "sext_ln9_2", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "sext_ln9_2", "role": "default" }} , 
 	{ "name": "sext_ln9_3", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "sext_ln9_3", "role": "default" }} , 
 	{ "name": "sext_ln9_4", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "sext_ln9_4", "role": "default" }} , 
 	{ "name": "sext_ln9_5", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "sext_ln9_5", "role": "default" }} , 
 	{ "name": "sext_ln9_6", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "sext_ln9_6", "role": "default" }} , 
 	{ "name": "sext_ln9_7", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "sext_ln9_7", "role": "default" }} , 
 	{ "name": "sext_ln9_8", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "sext_ln9_8", "role": "default" }} , 
 	{ "name": "sext_ln9_9", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "sext_ln9_9", "role": "default" }} , 
 	{ "name": "sext_ln9_10", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "sext_ln9_10", "role": "default" }} , 
 	{ "name": "sext_ln9_11", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "sext_ln9_11", "role": "default" }} , 
 	{ "name": "sext_ln9_12", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "sext_ln9_12", "role": "default" }} , 
 	{ "name": "sext_ln9_13", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "sext_ln9_13", "role": "default" }} , 
 	{ "name": "sext_ln9_14", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "sext_ln9_14", "role": "default" }} , 
 	{ "name": "sext_ln9_15", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "sext_ln9_15", "role": "default" }} , 
 	{ "name": "sext_ln9_16", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "sext_ln9_16", "role": "default" }} , 
 	{ "name": "sext_ln9_17", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "sext_ln9_17", "role": "default" }} , 
 	{ "name": "sext_ln9_18", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "sext_ln9_18", "role": "default" }} , 
 	{ "name": "sext_ln9_19", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "sext_ln9_19", "role": "default" }} , 
 	{ "name": "sext_ln9_20", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "sext_ln9_20", "role": "default" }} , 
 	{ "name": "sext_ln9_21", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "sext_ln9_21", "role": "default" }} , 
 	{ "name": "sext_ln9_22", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "sext_ln9_22", "role": "default" }} , 
 	{ "name": "sext_ln9_23", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "sext_ln9_23", "role": "default" }} , 
 	{ "name": "sext_ln9_24", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "sext_ln9_24", "role": "default" }} , 
 	{ "name": "sext_ln9_25", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "sext_ln9_25", "role": "default" }} , 
 	{ "name": "sext_ln9_26", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "sext_ln9_26", "role": "default" }} , 
 	{ "name": "sext_ln9_27", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "sext_ln9_27", "role": "default" }} , 
 	{ "name": "sext_ln9_28", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "sext_ln9_28", "role": "default" }} , 
 	{ "name": "sext_ln9_29", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "sext_ln9_29", "role": "default" }} , 
 	{ "name": "sext_ln9_30", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "sext_ln9_30", "role": "default" }} , 
 	{ "name": "sext_ln9_31", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "sext_ln9_31", "role": "default" }} , 
 	{ "name": "OutDense0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "OutDense0", "role": "address0" }} , 
 	{ "name": "OutDense0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "OutDense0", "role": "ce0" }} , 
 	{ "name": "OutDense0_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "OutDense0", "role": "we0" }} , 
 	{ "name": "OutDense0_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "OutDense0", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33"],
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
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_16s_12s_24_1_1_U222", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_12s_24ns_24_4_1_U223", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_12s_24ns_24_4_1_U224", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_12s_24ns_24_4_1_U225", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_12s_24ns_24_4_1_U226", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_12s_24ns_24_4_1_U227", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_12s_24ns_24_4_1_U228", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_12s_24ns_24_4_1_U229", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_12s_24ns_24_4_1_U230", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_12s_24ns_24_4_1_U231", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_12s_24ns_24_4_1_U232", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_12s_24ns_24_4_1_U233", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_12s_24ns_24_4_1_U234", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_12s_24ns_24_4_1_U235", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_12s_24ns_24_4_1_U236", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_12s_24ns_24_4_1_U237", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_12s_24ns_24_4_1_U238", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_12s_24ns_24_4_1_U239", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_12s_24ns_24_4_1_U240", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_12s_24ns_24_4_1_U241", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_12s_24ns_24_4_1_U242", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_12s_24ns_24_4_1_U243", "Parent" : "0"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_12s_24ns_24_4_1_U244", "Parent" : "0"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_12s_24ns_24_4_1_U245", "Parent" : "0"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_12s_24ns_24_4_1_U246", "Parent" : "0"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_12s_24ns_24_4_1_U247", "Parent" : "0"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_12s_24ns_24_4_1_U248", "Parent" : "0"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_12s_24ns_24_4_1_U249", "Parent" : "0"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_12s_24ns_24_4_1_U250", "Parent" : "0"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_12s_24ns_24_4_1_U251", "Parent" : "0"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_12s_24ns_24_4_1_U252", "Parent" : "0"},
	{"ID" : "32", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_12s_24ns_24_4_1_U253", "Parent" : "0"},
	{"ID" : "33", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
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
		OutDense0 {Type O LastRead -1 FirstWrite 34}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "359", "Max" : "359"}
	, {"Name" : "Interval", "Min" : "359", "Max" : "359"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	Weights { ap_memory {  { Weights_address0 mem_address 1 14 }  { Weights_ce0 mem_ce 1 1 }  { Weights_q0 in_data 0 16 }  { Weights_address1 MemPortADDR2 1 14 }  { Weights_ce1 MemPortCE2 1 1 }  { Weights_q1 in_data 0 16 } } }
	sext_ln9 { ap_none {  { sext_ln9 in_data 0 12 } } }
	sext_ln9_1 { ap_none {  { sext_ln9_1 in_data 0 12 } } }
	sext_ln9_2 { ap_none {  { sext_ln9_2 in_data 0 12 } } }
	sext_ln9_3 { ap_none {  { sext_ln9_3 in_data 0 12 } } }
	sext_ln9_4 { ap_none {  { sext_ln9_4 in_data 0 12 } } }
	sext_ln9_5 { ap_none {  { sext_ln9_5 in_data 0 12 } } }
	sext_ln9_6 { ap_none {  { sext_ln9_6 in_data 0 12 } } }
	sext_ln9_7 { ap_none {  { sext_ln9_7 in_data 0 12 } } }
	sext_ln9_8 { ap_none {  { sext_ln9_8 in_data 0 12 } } }
	sext_ln9_9 { ap_none {  { sext_ln9_9 in_data 0 12 } } }
	sext_ln9_10 { ap_none {  { sext_ln9_10 in_data 0 12 } } }
	sext_ln9_11 { ap_none {  { sext_ln9_11 in_data 0 12 } } }
	sext_ln9_12 { ap_none {  { sext_ln9_12 in_data 0 12 } } }
	sext_ln9_13 { ap_none {  { sext_ln9_13 in_data 0 12 } } }
	sext_ln9_14 { ap_none {  { sext_ln9_14 in_data 0 12 } } }
	sext_ln9_15 { ap_none {  { sext_ln9_15 in_data 0 12 } } }
	sext_ln9_16 { ap_none {  { sext_ln9_16 in_data 0 12 } } }
	sext_ln9_17 { ap_none {  { sext_ln9_17 in_data 0 12 } } }
	sext_ln9_18 { ap_none {  { sext_ln9_18 in_data 0 12 } } }
	sext_ln9_19 { ap_none {  { sext_ln9_19 in_data 0 12 } } }
	sext_ln9_20 { ap_none {  { sext_ln9_20 in_data 0 12 } } }
	sext_ln9_21 { ap_none {  { sext_ln9_21 in_data 0 12 } } }
	sext_ln9_22 { ap_none {  { sext_ln9_22 in_data 0 12 } } }
	sext_ln9_23 { ap_none {  { sext_ln9_23 in_data 0 12 } } }
	sext_ln9_24 { ap_none {  { sext_ln9_24 in_data 0 12 } } }
	sext_ln9_25 { ap_none {  { sext_ln9_25 in_data 0 12 } } }
	sext_ln9_26 { ap_none {  { sext_ln9_26 in_data 0 12 } } }
	sext_ln9_27 { ap_none {  { sext_ln9_27 in_data 0 12 } } }
	sext_ln9_28 { ap_none {  { sext_ln9_28 in_data 0 12 } } }
	sext_ln9_29 { ap_none {  { sext_ln9_29 in_data 0 12 } } }
	sext_ln9_30 { ap_none {  { sext_ln9_30 in_data 0 12 } } }
	sext_ln9_31 { ap_none {  { sext_ln9_31 in_data 0 12 } } }
	OutDense0 { ap_memory {  { OutDense0_address0 mem_address 1 5 }  { OutDense0_ce0 mem_ce 1 1 }  { OutDense0_we0 mem_we 1 1 }  { OutDense0_d0 mem_din 1 16 } } }
}
