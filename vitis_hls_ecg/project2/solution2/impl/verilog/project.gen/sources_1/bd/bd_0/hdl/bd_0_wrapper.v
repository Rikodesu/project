//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
//Date        : Thu Jun 27 10:53:18 2024
//Host        : DESKTOP-FFIISC0 running 64-bit major release  (build 9200)
//Command     : generate_target bd_0_wrapper.bd
//Design      : bd_0_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module bd_0_wrapper
   (InModel_address0,
    InModel_ce0,
    InModel_q0,
    OutModel,
    OutModel_ap_vld,
    Weights_address0,
    Weights_address1,
    Weights_ce0,
    Weights_ce1,
    Weights_q0,
    Weights_q1,
    ap_clk,
    ap_ctrl_done,
    ap_ctrl_idle,
    ap_ctrl_ready,
    ap_ctrl_start,
    ap_rst);
  output [8:0]InModel_address0;
  output InModel_ce0;
  input [15:0]InModel_q0;
  output [15:0]OutModel;
  output OutModel_ap_vld;
  output [13:0]Weights_address0;
  output [13:0]Weights_address1;
  output Weights_ce0;
  output Weights_ce1;
  input [15:0]Weights_q0;
  input [15:0]Weights_q1;
  input ap_clk;
  output ap_ctrl_done;
  output ap_ctrl_idle;
  output ap_ctrl_ready;
  input ap_ctrl_start;
  input ap_rst;

  wire [8:0]InModel_address0;
  wire InModel_ce0;
  wire [15:0]InModel_q0;
  wire [15:0]OutModel;
  wire OutModel_ap_vld;
  wire [13:0]Weights_address0;
  wire [13:0]Weights_address1;
  wire Weights_ce0;
  wire Weights_ce1;
  wire [15:0]Weights_q0;
  wire [15:0]Weights_q1;
  wire ap_clk;
  wire ap_ctrl_done;
  wire ap_ctrl_idle;
  wire ap_ctrl_ready;
  wire ap_ctrl_start;
  wire ap_rst;

  bd_0 bd_0_i
       (.InModel_address0(InModel_address0),
        .InModel_ce0(InModel_ce0),
        .InModel_q0(InModel_q0),
        .OutModel(OutModel),
        .OutModel_ap_vld(OutModel_ap_vld),
        .Weights_address0(Weights_address0),
        .Weights_address1(Weights_address1),
        .Weights_ce0(Weights_ce0),
        .Weights_ce1(Weights_ce1),
        .Weights_q0(Weights_q0),
        .Weights_q1(Weights_q1),
        .ap_clk(ap_clk),
        .ap_ctrl_done(ap_ctrl_done),
        .ap_ctrl_idle(ap_ctrl_idle),
        .ap_ctrl_ready(ap_ctrl_ready),
        .ap_ctrl_start(ap_ctrl_start),
        .ap_rst(ap_rst));
endmodule
