// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2023.1 (64-bit)
// Tool Version Limit: 2023.05
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================

//----------- Begin Cut here for INSTANTIATION Template ---// INST_TAG
CNN export (
  .ap_clk(ap_clk),       // input  ap_clk
  .ap_rst(ap_rst),       // input  ap_rst
  .ap_start(ap_start),       // input  ap_start
  .ap_done(ap_done),       // output  ap_done
  .ap_idle(ap_idle),       // output  ap_idle
  .ap_ready(ap_ready),       // output  ap_ready
  .InModel_address0(InModel_address0),       // output [8:0] InModel_address0
  .InModel_ce0(InModel_ce0),       // output  InModel_ce0
  .InModel_q0(InModel_q0),       // input [15:0] InModel_q0
  .OutModel(OutModel),       // output [15:0] OutModel
  .OutModel_ap_vld(OutModel_ap_vld),       // output  OutModel_ap_vld
  .Weights_address0(Weights_address0),       // output [13:0] Weights_address0
  .Weights_ce0(Weights_ce0),       // output  Weights_ce0
  .Weights_q0(Weights_q0),       // input [15:0] Weights_q0
  .Weights_address1(Weights_address1),       // output [13:0] Weights_address1
  .Weights_ce1(Weights_ce1),       // output  Weights_ce1
  .Weights_q1(Weights_q1)        // input [15:0] Weights_q1
);
// INST_TAG_END ------ End INSTANTIATION Template ---------

