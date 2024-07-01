//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
//Date        : Thu Jun 27 10:53:18 2024
//Host        : DESKTOP-FFIISC0 running 64-bit major release  (build 9200)
//Command     : generate_target bd_0.bd
//Design      : bd_0
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "bd_0,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=bd_0,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=1,numReposBlks=1,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=1,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "bd_0.hwdef" *) 
module bd_0
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
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.INMODEL_ADDRESS0 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.INMODEL_ADDRESS0, LAYERED_METADATA undef" *) output [8:0]InModel_address0;
  output InModel_ce0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.INMODEL_Q0 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.INMODEL_Q0, LAYERED_METADATA undef" *) input [15:0]InModel_q0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.OUTMODEL DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.OUTMODEL, LAYERED_METADATA undef" *) output [15:0]OutModel;
  output OutModel_ap_vld;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.WEIGHTS_ADDRESS0 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.WEIGHTS_ADDRESS0, LAYERED_METADATA undef" *) output [13:0]Weights_address0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.WEIGHTS_ADDRESS1 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.WEIGHTS_ADDRESS1, LAYERED_METADATA undef" *) output [13:0]Weights_address1;
  output Weights_ce0;
  output Weights_ce1;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.WEIGHTS_Q0 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.WEIGHTS_Q0, LAYERED_METADATA undef" *) input [15:0]Weights_q0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.WEIGHTS_Q1 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.WEIGHTS_Q1, LAYERED_METADATA undef" *) input [15:0]Weights_q1;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.AP_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.AP_CLK, ASSOCIATED_RESET ap_rst, CLK_DOMAIN bd_0_ap_clk_0, FREQ_HZ 200000000.0, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input ap_clk;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl " *) output ap_ctrl_done;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl " *) output ap_ctrl_idle;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl " *) output ap_ctrl_ready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl " *) input ap_ctrl_start;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.AP_RST RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.AP_RST, INSERT_VIP 0, POLARITY ACTIVE_HIGH" *) input ap_rst;

  wire [15:0]InModel_q0_0_1;
  wire [15:0]Weights_q0_0_1;
  wire [15:0]Weights_q1_0_1;
  wire ap_clk_0_1;
  wire ap_ctrl_0_1_done;
  wire ap_ctrl_0_1_idle;
  wire ap_ctrl_0_1_ready;
  wire ap_ctrl_0_1_start;
  wire ap_rst_0_1;
  wire [8:0]hls_inst_InModel_address0;
  wire hls_inst_InModel_ce0;
  wire [15:0]hls_inst_OutModel;
  wire hls_inst_OutModel_ap_vld;
  wire [13:0]hls_inst_Weights_address0;
  wire [13:0]hls_inst_Weights_address1;
  wire hls_inst_Weights_ce0;
  wire hls_inst_Weights_ce1;

  assign InModel_address0[8:0] = hls_inst_InModel_address0;
  assign InModel_ce0 = hls_inst_InModel_ce0;
  assign InModel_q0_0_1 = InModel_q0[15:0];
  assign OutModel[15:0] = hls_inst_OutModel;
  assign OutModel_ap_vld = hls_inst_OutModel_ap_vld;
  assign Weights_address0[13:0] = hls_inst_Weights_address0;
  assign Weights_address1[13:0] = hls_inst_Weights_address1;
  assign Weights_ce0 = hls_inst_Weights_ce0;
  assign Weights_ce1 = hls_inst_Weights_ce1;
  assign Weights_q0_0_1 = Weights_q0[15:0];
  assign Weights_q1_0_1 = Weights_q1[15:0];
  assign ap_clk_0_1 = ap_clk;
  assign ap_ctrl_0_1_start = ap_ctrl_start;
  assign ap_ctrl_done = ap_ctrl_0_1_done;
  assign ap_ctrl_idle = ap_ctrl_0_1_idle;
  assign ap_ctrl_ready = ap_ctrl_0_1_ready;
  assign ap_rst_0_1 = ap_rst;
  bd_0_hls_inst_0 hls_inst
       (.InModel_address0(hls_inst_InModel_address0),
        .InModel_ce0(hls_inst_InModel_ce0),
        .InModel_q0(InModel_q0_0_1),
        .OutModel(hls_inst_OutModel),
        .OutModel_ap_vld(hls_inst_OutModel_ap_vld),
        .Weights_address0(hls_inst_Weights_address0),
        .Weights_address1(hls_inst_Weights_address1),
        .Weights_ce0(hls_inst_Weights_ce0),
        .Weights_ce1(hls_inst_Weights_ce1),
        .Weights_q0(Weights_q0_0_1),
        .Weights_q1(Weights_q1_0_1),
        .ap_clk(ap_clk_0_1),
        .ap_done(ap_ctrl_0_1_done),
        .ap_idle(ap_ctrl_0_1_idle),
        .ap_ready(ap_ctrl_0_1_ready),
        .ap_rst(ap_rst_0_1),
        .ap_start(ap_ctrl_0_1_start));
endmodule
