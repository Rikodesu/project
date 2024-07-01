// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Thu Jun 27 10:57:30 2024
// Host        : DESKTOP-FFIISC0 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               f:/Ky2nam3/do_an_1/code/doan1/project2/solution2/impl/verilog/project.gen/sources_1/bd/bd_0/ip/bd_0_hls_inst_0/bd_0_hls_inst_0_stub.v
// Design      : bd_0_hls_inst_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xck26-sfvc784-2LV-c
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "CNN,Vivado 2023.1" *)
module bd_0_hls_inst_0(InModel_ce0, OutModel_ap_vld, Weights_ce0, 
  Weights_ce1, ap_clk, ap_rst, ap_start, ap_done, ap_idle, ap_ready, InModel_address0, InModel_q0, 
  OutModel, Weights_address0, Weights_q0, Weights_address1, Weights_q1)
/* synthesis syn_black_box black_box_pad_pin="InModel_ce0,OutModel_ap_vld,Weights_ce0,Weights_ce1,ap_rst,ap_start,ap_done,ap_idle,ap_ready,InModel_address0[8:0],InModel_q0[15:0],OutModel[15:0],Weights_address0[13:0],Weights_q0[15:0],Weights_address1[13:0],Weights_q1[15:0]" */
/* synthesis syn_force_seq_prim="ap_clk" */;
  output InModel_ce0;
  output OutModel_ap_vld;
  output Weights_ce0;
  output Weights_ce1;
  input ap_clk /* synthesis syn_isclock = 1 */;
  input ap_rst;
  input ap_start;
  output ap_done;
  output ap_idle;
  output ap_ready;
  output [8:0]InModel_address0;
  input [15:0]InModel_q0;
  output [15:0]OutModel;
  output [13:0]Weights_address0;
  input [15:0]Weights_q0;
  output [13:0]Weights_address1;
  input [15:0]Weights_q1;
endmodule
