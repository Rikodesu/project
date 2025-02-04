// ==============================================================
// Generated by Vitis HLS v2023.2
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// ==============================================================

`timescale 1 ns / 1 ps 

module CNN_CNN_Pipeline_VITIS_LOOP_197_1_loop_for_ap_7_loop_for_fc_7_loop_for_fa_7 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        Weights_address0,
        Weights_ce0,
        Weights_q0,
        Weights_address1,
        Weights_ce1,
        Weights_q1,
        OutPadConv7_address0,
        OutPadConv7_ce0,
        OutPadConv7_q0,
        OutConv7_address0,
        OutConv7_ce0,
        OutConv7_we0,
        OutConv7_d0
);

parameter    ap_ST_fsm_pp0_stage0 = 1'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [13:0] Weights_address0;
output   Weights_ce0;
input  [15:0] Weights_q0;
output  [13:0] Weights_address1;
output   Weights_ce1;
input  [15:0] Weights_q1;
output  [10:0] OutPadConv7_address0;
output   OutPadConv7_ce0;
input  [15:0] OutPadConv7_q0;
output  [10:0] OutConv7_address0;
output   OutConv7_ce0;
output   OutConv7_we0;
output  [15:0] OutConv7_d0;

reg ap_idle;
reg Weights_ce0;
reg Weights_ce1;
reg OutPadConv7_ce0;
reg OutConv7_ce0;
reg OutConv7_we0;

(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_enable_reg_pp0_iter4;
reg    ap_enable_reg_pp0_iter5;
reg    ap_enable_reg_pp0_iter6;
reg    ap_enable_reg_pp0_iter7;
reg    ap_enable_reg_pp0_iter8;
reg    ap_enable_reg_pp0_iter9;
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln197_fu_230_p2;
reg    ap_condition_exit_pp0_iter1_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire   [0:0] icmp_ln199_fu_242_p2;
reg   [0:0] icmp_ln199_reg_783;
reg   [0:0] icmp_ln199_reg_783_pp0_iter2_reg;
reg   [0:0] icmp_ln199_reg_783_pp0_iter3_reg;
wire   [0:0] xor_ln197_fu_248_p2;
reg   [0:0] xor_ln197_reg_791;
wire   [0:0] icmp_ln202_fu_254_p2;
reg   [0:0] icmp_ln202_reg_796;
wire   [0:0] and_ln197_1_fu_260_p2;
reg   [0:0] and_ln197_1_reg_801;
reg   [0:0] and_ln197_1_reg_801_pp0_iter2_reg;
reg   [0:0] and_ln197_1_reg_801_pp0_iter3_reg;
wire   [0:0] or_ln199_fu_266_p2;
reg   [0:0] or_ln199_reg_807;
reg   [0:0] or_ln199_reg_807_pp0_iter2_reg;
reg   [0:0] or_ln199_reg_807_pp0_iter3_reg;
reg   [0:0] or_ln199_reg_807_pp0_iter4_reg;
reg   [0:0] or_ln199_reg_807_pp0_iter5_reg;
reg   [0:0] or_ln199_reg_807_pp0_iter6_reg;
reg   [0:0] or_ln199_reg_807_pp0_iter7_reg;
wire   [2:0] select_ln200_fu_371_p3;
reg   [2:0] select_ln200_reg_813;
reg   [2:0] select_ln200_reg_813_pp0_iter3_reg;
wire   [5:0] select_ln202_fu_379_p3;
reg   [5:0] select_ln202_reg_819;
reg   [5:0] select_ln202_reg_819_pp0_iter3_reg;
wire   [4:0] empty_157_fu_391_p1;
reg   [4:0] empty_157_reg_829;
reg   [4:0] empty_157_reg_829_pp0_iter3_reg;
wire   [0:0] icmp_ln204_1_fu_401_p2;
reg   [0:0] icmp_ln204_1_reg_834;
reg   [0:0] icmp_ln204_1_reg_834_pp0_iter3_reg;
reg   [0:0] icmp_ln204_1_reg_834_pp0_iter4_reg;
reg   [0:0] icmp_ln204_1_reg_834_pp0_iter5_reg;
reg   [0:0] icmp_ln204_1_reg_834_pp0_iter6_reg;
reg   [0:0] icmp_ln204_1_reg_834_pp0_iter7_reg;
reg   [0:0] icmp_ln204_1_reg_834_pp0_iter8_reg;
wire   [0:0] icmp_ln202_1_fu_407_p2;
reg   [0:0] icmp_ln202_1_reg_838;
reg   [0:0] icmp_ln202_1_reg_838_pp0_iter3_reg;
reg   [0:0] icmp_ln202_1_reg_838_pp0_iter4_reg;
reg   [0:0] icmp_ln202_1_reg_838_pp0_iter5_reg;
reg   [0:0] icmp_ln202_1_reg_838_pp0_iter6_reg;
reg   [0:0] icmp_ln202_1_reg_838_pp0_iter7_reg;
reg   [0:0] icmp_ln202_1_reg_838_pp0_iter8_reg;
wire   [5:0] select_ln197_1_fu_442_p3;
reg   [5:0] select_ln197_1_reg_842;
reg   [5:0] select_ln197_1_reg_842_pp0_iter5_reg;
reg   [5:0] select_ln197_1_reg_842_pp0_iter6_reg;
wire   [13:0] add_ln205_3_fu_572_p2;
reg   [13:0] add_ln205_3_reg_852;
wire   [10:0] add_ln207_1_fu_588_p2;
reg   [10:0] add_ln207_1_reg_857;
reg   [10:0] add_ln207_1_reg_857_pp0_iter5_reg;
reg   [10:0] add_ln207_1_reg_857_pp0_iter6_reg;
reg   [10:0] add_ln207_1_reg_857_pp0_iter7_reg;
reg   [10:0] add_ln207_1_reg_857_pp0_iter8_reg;
reg  signed [15:0] Weights_load_reg_887;
wire   [63:0] zext_ln205_5_fu_608_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln205_1_fu_604_p1;
wire   [63:0] arrayidx51_sum_cast_fu_629_p1;
wire   [63:0] zext_ln207_1_fu_682_p1;
reg   [15:0] s_fu_98;
wire  signed [15:0] s_1_fu_655_p4;
reg   [15:0] ap_sig_allocacmp_s_load;
wire    ap_loop_init;
reg   [2:0] j_fu_102;
wire   [2:0] add_ln204_fu_395_p2;
reg   [5:0] k_fu_106;
reg   [8:0] indvar_flatten196_fu_110;
wire   [8:0] select_ln202_1_fu_278_p3;
reg   [5:0] y_fu_114;
wire   [5:0] select_ln199_1_fu_455_p3;
reg   [13:0] indvar_flatten211_fu_118;
wire   [13:0] select_ln199_3_fu_292_p3;
reg   [5:0] n_fu_122;
reg   [17:0] indvar_flatten235_fu_126;
wire   [17:0] add_ln197_fu_236_p2;
wire   [8:0] add_ln202_1_fu_272_p2;
wire   [13:0] add_ln199_1_fu_286_p2;
wire   [0:0] xor_ln199_fu_334_p2;
wire   [0:0] icmp_ln204_fu_321_p2;
wire   [0:0] and_ln197_fu_344_p2;
wire   [0:0] or_ln199_1_fu_339_p2;
wire   [5:0] select_ln199_fu_327_p3;
wire   [0:0] and_ln199_fu_349_p2;
wire   [0:0] or_ln200_fu_361_p2;
wire   [0:0] or_ln200_1_fu_366_p2;
wire   [5:0] add_ln202_fu_355_p2;
wire   [5:0] add_ln197_1_fu_436_p2;
wire   [5:0] select_ln197_fu_429_p3;
wire   [5:0] add_ln199_fu_449_p2;
wire   [4:0] empty_fu_462_p1;
wire   [11:0] p_shl_fu_466_p3;
wire   [9:0] p_shl14_fu_478_p3;
wire   [7:0] p_shl15_fu_490_p3;
wire   [6:0] p_shl16_fu_509_p3;
wire   [5:0] zext_ln204_2_fu_523_p1;
wire   [5:0] add_ln205_fu_526_p2;
wire   [9:0] zext_ln202_fu_506_p1;
wire   [9:0] add_ln205_2_fu_536_p2;
wire   [12:0] zext_ln205_2_fu_542_p1;
wire   [12:0] p_shl55_cast_fu_474_p1;
wire   [12:0] add_ln205_5_fu_546_p2;
wire   [12:0] zext_ln204_1_fu_520_p1;
wire   [12:0] add_ln205_6_fu_556_p2;
wire   [12:0] p_shl57_cast_fu_516_p1;
wire   [12:0] add_ln205_7_fu_562_p2;
wire   [13:0] zext_ln205_4_fu_568_p1;
wire   [13:0] zext_ln205_3_fu_552_p1;
wire   [8:0] zext_ln199_fu_498_p1;
wire   [8:0] zext_ln199_1_fu_502_p1;
wire   [8:0] add_ln207_3_fu_578_p2;
wire   [10:0] zext_ln207_fu_584_p1;
wire   [10:0] p_shl56_cast_fu_486_p1;
wire   [10:0] grp_fu_705_p3;
wire   [13:0] zext_ln197_fu_620_p1;
wire   [13:0] arrayidx51_sum_fu_623_p2;
wire   [15:0] select_ln199_2_fu_637_p3;
wire  signed [23:0] s_1_fu_655_p1;
wire   [23:0] grp_fu_714_p3;
wire  signed [16:0] sext_ln207_fu_664_p1;
wire  signed [16:0] conv_i_i13_i93_i448_fu_652_p1;
wire   [16:0] add_ln207_fu_668_p2;
wire   [0:0] tmp_fu_674_p3;
wire   [15:0] add_ln207_2_fu_686_p2;
wire   [5:0] grp_fu_705_p0;
wire   [5:0] grp_fu_705_p1;
wire   [5:0] grp_fu_705_p2;
wire   [23:0] grp_fu_714_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg    ap_loop_exit_ready_pp0_iter4_reg;
reg    ap_loop_exit_ready_pp0_iter5_reg;
reg    ap_loop_exit_ready_pp0_iter6_reg;
reg    ap_loop_exit_ready_pp0_iter7_reg;
reg    ap_loop_exit_ready_pp0_iter8_reg;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire   [10:0] grp_fu_705_p00;
wire   [10:0] grp_fu_705_p20;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter5 = 1'b0;
#0 ap_enable_reg_pp0_iter6 = 1'b0;
#0 ap_enable_reg_pp0_iter7 = 1'b0;
#0 ap_enable_reg_pp0_iter8 = 1'b0;
#0 ap_enable_reg_pp0_iter9 = 1'b0;
#0 s_fu_98 = 16'd0;
#0 j_fu_102 = 3'd0;
#0 k_fu_106 = 6'd0;
#0 indvar_flatten196_fu_110 = 9'd0;
#0 y_fu_114 = 6'd0;
#0 indvar_flatten211_fu_118 = 14'd0;
#0 n_fu_122 = 6'd0;
#0 indvar_flatten235_fu_126 = 18'd0;
#0 ap_done_reg = 1'b0;
end

CNN_mac_muladd_6ns_6ns_6ns_11_4_1 #(
    .ID( 1 ),
    .NUM_STAGE( 4 ),
    .din0_WIDTH( 6 ),
    .din1_WIDTH( 6 ),
    .din2_WIDTH( 6 ),
    .dout_WIDTH( 11 ))
mac_muladd_6ns_6ns_6ns_11_4_1_U189(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(grp_fu_705_p0),
    .din1(grp_fu_705_p1),
    .din2(grp_fu_705_p2),
    .ce(1'b1),
    .dout(grp_fu_705_p3)
);

CNN_mac_muladd_16s_16s_24ns_24_4_1 #(
    .ID( 1 ),
    .NUM_STAGE( 4 ),
    .din0_WIDTH( 16 ),
    .din1_WIDTH( 16 ),
    .din2_WIDTH( 24 ),
    .dout_WIDTH( 24 ))
mac_muladd_16s_16s_24ns_24_4_1_U190(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(OutPadConv7_q0),
    .din1(Weights_q1),
    .din2(grp_fu_714_p2),
    .ce(1'b1),
    .dout(grp_fu_714_p3)
);

CNN_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(ap_start),
    .ap_ready(ap_ready),
    .ap_done(ap_done),
    .ap_start_int(ap_start_int),
    .ap_loop_init(ap_loop_init),
    .ap_ready_int(ap_ready_int),
    .ap_loop_exit_ready(ap_condition_exit_pp0_iter1_stage0),
    .ap_loop_exit_done(ap_done_int),
    .ap_continue_int(ap_continue_int),
    .ap_done_int(ap_done_int)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_pp0_stage0;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_done_reg <= 1'b0;
    end else begin
        if ((ap_continue_int == 1'b1)) begin
            ap_done_reg <= 1'b0;
        end else if (((ap_loop_exit_ready_pp0_iter8_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter1_stage0)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter1 <= ap_start_int;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter1_stage0)) begin
            ap_enable_reg_pp0_iter2 <= 1'b0;
        end else if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter4 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter5 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter5 <= ap_enable_reg_pp0_iter4;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter6 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter6 <= ap_enable_reg_pp0_iter5;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter7 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter7 <= ap_enable_reg_pp0_iter6;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter8 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter8 <= ap_enable_reg_pp0_iter7;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter9 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter9 <= ap_enable_reg_pp0_iter8;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            indvar_flatten196_fu_110 <= 9'd0;
        end else if (((icmp_ln197_fu_230_p2 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
            indvar_flatten196_fu_110 <= select_ln202_1_fu_278_p3;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            indvar_flatten211_fu_118 <= 14'd0;
        end else if (((icmp_ln197_fu_230_p2 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
            indvar_flatten211_fu_118 <= select_ln199_3_fu_292_p3;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            indvar_flatten235_fu_126 <= 18'd0;
        end else if (((icmp_ln197_fu_230_p2 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
            indvar_flatten235_fu_126 <= add_ln197_fu_236_p2;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            j_fu_102 <= 3'd0;
        end else if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
            j_fu_102 <= add_ln204_fu_395_p2;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            k_fu_106 <= 6'd0;
        end else if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
            k_fu_106 <= select_ln202_fu_379_p3;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            n_fu_122 <= 6'd0;
        end else if ((ap_enable_reg_pp0_iter4 == 1'b1)) begin
            n_fu_122 <= select_ln197_1_fu_442_p3;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            s_fu_98 <= 16'd0;
        end else if ((ap_enable_reg_pp0_iter9 == 1'b1)) begin
            s_fu_98 <= {{s_1_fu_655_p1[23:8]}};
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            y_fu_114 <= 6'd0;
        end else if ((ap_enable_reg_pp0_iter4 == 1'b1)) begin
            y_fu_114 <= select_ln199_1_fu_455_p3;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1))) begin
        Weights_load_reg_887 <= Weights_q0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        add_ln205_3_reg_852 <= add_ln205_3_fu_572_p2;
        add_ln207_1_reg_857 <= add_ln207_1_fu_588_p2;
        add_ln207_1_reg_857_pp0_iter5_reg <= add_ln207_1_reg_857;
        add_ln207_1_reg_857_pp0_iter6_reg <= add_ln207_1_reg_857_pp0_iter5_reg;
        add_ln207_1_reg_857_pp0_iter7_reg <= add_ln207_1_reg_857_pp0_iter6_reg;
        add_ln207_1_reg_857_pp0_iter8_reg <= add_ln207_1_reg_857_pp0_iter7_reg;
        and_ln197_1_reg_801_pp0_iter2_reg <= and_ln197_1_reg_801;
        and_ln197_1_reg_801_pp0_iter3_reg <= and_ln197_1_reg_801_pp0_iter2_reg;
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
        ap_loop_exit_ready_pp0_iter6_reg <= ap_loop_exit_ready_pp0_iter5_reg;
        ap_loop_exit_ready_pp0_iter7_reg <= ap_loop_exit_ready_pp0_iter6_reg;
        ap_loop_exit_ready_pp0_iter8_reg <= ap_loop_exit_ready_pp0_iter7_reg;
        empty_157_reg_829 <= empty_157_fu_391_p1;
        empty_157_reg_829_pp0_iter3_reg <= empty_157_reg_829;
        icmp_ln199_reg_783_pp0_iter2_reg <= icmp_ln199_reg_783;
        icmp_ln199_reg_783_pp0_iter3_reg <= icmp_ln199_reg_783_pp0_iter2_reg;
        icmp_ln202_1_reg_838 <= icmp_ln202_1_fu_407_p2;
        icmp_ln202_1_reg_838_pp0_iter3_reg <= icmp_ln202_1_reg_838;
        icmp_ln202_1_reg_838_pp0_iter4_reg <= icmp_ln202_1_reg_838_pp0_iter3_reg;
        icmp_ln202_1_reg_838_pp0_iter5_reg <= icmp_ln202_1_reg_838_pp0_iter4_reg;
        icmp_ln202_1_reg_838_pp0_iter6_reg <= icmp_ln202_1_reg_838_pp0_iter5_reg;
        icmp_ln202_1_reg_838_pp0_iter7_reg <= icmp_ln202_1_reg_838_pp0_iter6_reg;
        icmp_ln202_1_reg_838_pp0_iter8_reg <= icmp_ln202_1_reg_838_pp0_iter7_reg;
        icmp_ln204_1_reg_834 <= icmp_ln204_1_fu_401_p2;
        icmp_ln204_1_reg_834_pp0_iter3_reg <= icmp_ln204_1_reg_834;
        icmp_ln204_1_reg_834_pp0_iter4_reg <= icmp_ln204_1_reg_834_pp0_iter3_reg;
        icmp_ln204_1_reg_834_pp0_iter5_reg <= icmp_ln204_1_reg_834_pp0_iter4_reg;
        icmp_ln204_1_reg_834_pp0_iter6_reg <= icmp_ln204_1_reg_834_pp0_iter5_reg;
        icmp_ln204_1_reg_834_pp0_iter7_reg <= icmp_ln204_1_reg_834_pp0_iter6_reg;
        icmp_ln204_1_reg_834_pp0_iter8_reg <= icmp_ln204_1_reg_834_pp0_iter7_reg;
        or_ln199_reg_807_pp0_iter2_reg <= or_ln199_reg_807;
        or_ln199_reg_807_pp0_iter3_reg <= or_ln199_reg_807_pp0_iter2_reg;
        or_ln199_reg_807_pp0_iter4_reg <= or_ln199_reg_807_pp0_iter3_reg;
        or_ln199_reg_807_pp0_iter5_reg <= or_ln199_reg_807_pp0_iter4_reg;
        or_ln199_reg_807_pp0_iter6_reg <= or_ln199_reg_807_pp0_iter5_reg;
        or_ln199_reg_807_pp0_iter7_reg <= or_ln199_reg_807_pp0_iter6_reg;
        select_ln197_1_reg_842 <= select_ln197_1_fu_442_p3;
        select_ln197_1_reg_842_pp0_iter5_reg <= select_ln197_1_reg_842;
        select_ln197_1_reg_842_pp0_iter6_reg <= select_ln197_1_reg_842_pp0_iter5_reg;
        select_ln200_reg_813 <= select_ln200_fu_371_p3;
        select_ln200_reg_813_pp0_iter3_reg <= select_ln200_reg_813;
        select_ln202_reg_819 <= select_ln202_fu_379_p3;
        select_ln202_reg_819_pp0_iter3_reg <= select_ln202_reg_819;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        and_ln197_1_reg_801 <= and_ln197_1_fu_260_p2;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready;
        icmp_ln199_reg_783 <= icmp_ln199_fu_242_p2;
        icmp_ln202_reg_796 <= icmp_ln202_fu_254_p2;
        or_ln199_reg_807 <= or_ln199_fu_266_p2;
        xor_ln197_reg_791 <= xor_ln197_fu_248_p2;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        OutConv7_ce0 = 1'b1;
    end else begin
        OutConv7_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (icmp_ln202_1_reg_838_pp0_iter8_reg == 1'd1) & (icmp_ln204_1_reg_834_pp0_iter8_reg == 1'd1))) begin
        OutConv7_we0 = 1'b1;
    end else begin
        OutConv7_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        OutPadConv7_ce0 = 1'b1;
    end else begin
        OutPadConv7_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1))) begin
        Weights_ce0 = 1'b1;
    end else begin
        Weights_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        Weights_ce1 = 1'b1;
    end else begin
        Weights_ce1 = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln197_fu_230_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter1_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter1_stage0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter8_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
    end
end

always @ (*) begin
    if (((ap_start_int == 1'b0) & (ap_idle_pp0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        ap_sig_allocacmp_s_load = {{s_1_fu_655_p1[23:8]}};
    end else begin
        ap_sig_allocacmp_s_load = s_fu_98;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            ap_NS_fsm = ap_ST_fsm_pp0_stage0;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign OutConv7_address0 = zext_ln207_1_fu_682_p1;

assign OutConv7_d0 = ((tmp_fu_674_p3[0:0] == 1'b1) ? 16'd0 : add_ln207_2_fu_686_p2);

assign OutPadConv7_address0 = zext_ln205_1_fu_604_p1;

assign Weights_address0 = arrayidx51_sum_cast_fu_629_p1;

assign Weights_address1 = zext_ln205_5_fu_608_p1;

assign add_ln197_1_fu_436_p2 = (n_fu_122 + 6'd1);

assign add_ln197_fu_236_p2 = (indvar_flatten235_fu_126 + 18'd1);

assign add_ln199_1_fu_286_p2 = (indvar_flatten211_fu_118 + 14'd1);

assign add_ln199_fu_449_p2 = (select_ln197_fu_429_p3 + 6'd1);

assign add_ln202_1_fu_272_p2 = (indvar_flatten196_fu_110 + 9'd1);

assign add_ln202_fu_355_p2 = (select_ln199_fu_327_p3 + 6'd1);

assign add_ln204_fu_395_p2 = (select_ln200_fu_371_p3 + 3'd1);

assign add_ln205_2_fu_536_p2 = (p_shl14_fu_478_p3 + zext_ln202_fu_506_p1);

assign add_ln205_3_fu_572_p2 = (zext_ln205_4_fu_568_p1 + zext_ln205_3_fu_552_p1);

assign add_ln205_5_fu_546_p2 = (zext_ln205_2_fu_542_p1 + p_shl55_cast_fu_474_p1);

assign add_ln205_6_fu_556_p2 = ($signed(zext_ln204_1_fu_520_p1) + $signed(13'd5148));

assign add_ln205_7_fu_562_p2 = (add_ln205_6_fu_556_p2 + p_shl57_cast_fu_516_p1);

assign add_ln205_fu_526_p2 = (select_ln199_1_fu_455_p3 + zext_ln204_2_fu_523_p1);

assign add_ln207_1_fu_588_p2 = (zext_ln207_fu_584_p1 + p_shl56_cast_fu_486_p1);

assign add_ln207_2_fu_686_p2 = ($signed(Weights_load_reg_887) + $signed(s_1_fu_655_p4));

assign add_ln207_3_fu_578_p2 = (zext_ln199_fu_498_p1 + zext_ln199_1_fu_502_p1);

assign add_ln207_fu_668_p2 = ($signed(sext_ln207_fu_664_p1) + $signed(conv_i_i13_i93_i448_fu_652_p1));

assign and_ln197_1_fu_260_p2 = (xor_ln197_fu_248_p2 & icmp_ln202_fu_254_p2);

assign and_ln197_fu_344_p2 = (xor_ln197_reg_791 & icmp_ln204_fu_321_p2);

assign and_ln199_fu_349_p2 = (or_ln199_1_fu_339_p2 & and_ln197_fu_344_p2);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_reg_pp0_iter0 = ap_start_int;

assign ap_loop_exit_ready = ap_condition_exit_pp0_iter1_stage0;

assign arrayidx51_sum_cast_fu_629_p1 = arrayidx51_sum_fu_623_p2;

assign arrayidx51_sum_fu_623_p2 = ($signed(zext_ln197_fu_620_p1) + $signed(14'd10268));

assign conv_i_i13_i93_i448_fu_652_p1 = Weights_load_reg_887;

assign empty_157_fu_391_p1 = select_ln202_fu_379_p3[4:0];

assign empty_fu_462_p1 = select_ln197_1_fu_442_p3[4:0];

assign grp_fu_705_p0 = grp_fu_705_p00;

assign grp_fu_705_p00 = select_ln202_fu_379_p3;

assign grp_fu_705_p1 = 11'd44;

assign grp_fu_705_p2 = grp_fu_705_p20;

assign grp_fu_705_p20 = add_ln205_fu_526_p2;

assign grp_fu_714_p2 = {{select_ln199_2_fu_637_p3}, {8'd0}};

assign icmp_ln197_fu_230_p2 = ((indvar_flatten235_fu_126 == 18'd204800) ? 1'b1 : 1'b0);

assign icmp_ln199_fu_242_p2 = ((indvar_flatten211_fu_118 == 14'd6400) ? 1'b1 : 1'b0);

assign icmp_ln202_1_fu_407_p2 = ((select_ln202_fu_379_p3 == 6'd31) ? 1'b1 : 1'b0);

assign icmp_ln202_fu_254_p2 = ((indvar_flatten196_fu_110 == 9'd160) ? 1'b1 : 1'b0);

assign icmp_ln204_1_fu_401_p2 = ((add_ln204_fu_395_p2 == 3'd5) ? 1'b1 : 1'b0);

assign icmp_ln204_fu_321_p2 = ((j_fu_102 == 3'd5) ? 1'b1 : 1'b0);

assign or_ln199_1_fu_339_p2 = (xor_ln199_fu_334_p2 | icmp_ln199_reg_783);

assign or_ln199_fu_266_p2 = (icmp_ln199_fu_242_p2 | and_ln197_1_fu_260_p2);

assign or_ln200_1_fu_366_p2 = (or_ln200_fu_361_p2 | icmp_ln199_reg_783);

assign or_ln200_fu_361_p2 = (and_ln199_fu_349_p2 | and_ln197_1_reg_801);

assign p_shl14_fu_478_p3 = {{empty_fu_462_p1}, {5'd0}};

assign p_shl15_fu_490_p3 = {{empty_fu_462_p1}, {3'd0}};

assign p_shl16_fu_509_p3 = {{empty_157_reg_829_pp0_iter3_reg}, {2'd0}};

assign p_shl55_cast_fu_474_p1 = p_shl_fu_466_p3;

assign p_shl56_cast_fu_486_p1 = p_shl14_fu_478_p3;

assign p_shl57_cast_fu_516_p1 = p_shl16_fu_509_p3;

assign p_shl_fu_466_p3 = {{empty_fu_462_p1}, {7'd0}};

assign s_1_fu_655_p1 = grp_fu_714_p3;

assign s_1_fu_655_p4 = {{s_1_fu_655_p1[23:8]}};

assign select_ln197_1_fu_442_p3 = ((icmp_ln199_reg_783_pp0_iter3_reg[0:0] == 1'b1) ? add_ln197_1_fu_436_p2 : n_fu_122);

assign select_ln197_fu_429_p3 = ((icmp_ln199_reg_783_pp0_iter3_reg[0:0] == 1'b1) ? 6'd0 : y_fu_114);

assign select_ln199_1_fu_455_p3 = ((and_ln197_1_reg_801_pp0_iter3_reg[0:0] == 1'b1) ? add_ln199_fu_449_p2 : select_ln197_fu_429_p3);

assign select_ln199_2_fu_637_p3 = ((or_ln199_reg_807_pp0_iter7_reg[0:0] == 1'b1) ? 16'd0 : ap_sig_allocacmp_s_load);

assign select_ln199_3_fu_292_p3 = ((icmp_ln199_fu_242_p2[0:0] == 1'b1) ? 14'd1 : add_ln199_1_fu_286_p2);

assign select_ln199_fu_327_p3 = ((or_ln199_reg_807[0:0] == 1'b1) ? 6'd0 : k_fu_106);

assign select_ln200_fu_371_p3 = ((or_ln200_1_fu_366_p2[0:0] == 1'b1) ? 3'd0 : j_fu_102);

assign select_ln202_1_fu_278_p3 = ((or_ln199_fu_266_p2[0:0] == 1'b1) ? 9'd1 : add_ln202_1_fu_272_p2);

assign select_ln202_fu_379_p3 = ((and_ln199_fu_349_p2[0:0] == 1'b1) ? add_ln202_fu_355_p2 : select_ln199_fu_327_p3);

assign sext_ln207_fu_664_p1 = s_1_fu_655_p4;

assign tmp_fu_674_p3 = add_ln207_fu_668_p2[32'd16];

assign xor_ln197_fu_248_p2 = (icmp_ln199_fu_242_p2 ^ 1'd1);

assign xor_ln199_fu_334_p2 = (icmp_ln202_reg_796 ^ 1'd1);

assign zext_ln197_fu_620_p1 = select_ln197_1_reg_842_pp0_iter6_reg;

assign zext_ln199_1_fu_502_p1 = select_ln199_1_fu_455_p3;

assign zext_ln199_fu_498_p1 = p_shl15_fu_490_p3;

assign zext_ln202_fu_506_p1 = select_ln202_reg_819_pp0_iter3_reg;

assign zext_ln204_1_fu_520_p1 = select_ln200_reg_813_pp0_iter3_reg;

assign zext_ln204_2_fu_523_p1 = select_ln200_reg_813_pp0_iter3_reg;

assign zext_ln205_1_fu_604_p1 = grp_fu_705_p3;

assign zext_ln205_2_fu_542_p1 = add_ln205_2_fu_536_p2;

assign zext_ln205_3_fu_552_p1 = add_ln205_5_fu_546_p2;

assign zext_ln205_4_fu_568_p1 = add_ln205_7_fu_562_p2;

assign zext_ln205_5_fu_608_p1 = add_ln205_3_reg_852;

assign zext_ln207_1_fu_682_p1 = add_ln207_1_reg_857_pp0_iter8_reg;

assign zext_ln207_fu_584_p1 = add_ln207_3_fu_578_p2;

endmodule //CNN_CNN_Pipeline_VITIS_LOOP_197_1_loop_for_ap_7_loop_for_fc_7_loop_for_fa_7
