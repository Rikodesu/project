// ==============================================================
// Generated by Vitis HLS v2023.2
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// ==============================================================

`timescale 1 ns / 1 ps 

module CNN_CNN_Pipeline_loop_for_3_channel_pad_2_loop_for_channel_pad_2 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        OutPadConv2_address0,
        OutPadConv2_ce0,
        OutPadConv2_we0,
        OutPadConv2_d0,
        OutPool0_address0,
        OutPool0_ce0,
        OutPool0_q0
);

parameter    ap_ST_fsm_pp0_stage0 = 1'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [9:0] OutPadConv2_address0;
output   OutPadConv2_ce0;
output   OutPadConv2_we0;
output  [15:0] OutPadConv2_d0;
output  [9:0] OutPool0_address0;
output   OutPool0_ce0;
input  [15:0] OutPool0_q0;

reg ap_idle;
reg OutPadConv2_ce0;
reg OutPadConv2_we0;
reg OutPool0_ce0;

(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln57_fu_114_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire   [0:0] icmp_ln59_fu_129_p2;
reg   [0:0] icmp_ln59_reg_308;
wire   [7:0] select_ln57_fu_135_p3;
reg   [7:0] select_ln57_reg_313;
wire   [0:0] icmp_ln60_fu_153_p2;
reg   [0:0] icmp_ln60_reg_320;
reg   [0:0] icmp_ln60_reg_320_pp0_iter1_reg;
wire   [0:0] icmp_ln60_1_fu_215_p2;
reg   [0:0] icmp_ln60_1_reg_325;
wire   [9:0] add_ln60_fu_220_p2;
reg   [9:0] add_ln60_reg_330;
wire   [63:0] zext_ln60_2_fu_256_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln60_fu_270_p1;
reg   [7:0] n_fu_58;
wire   [7:0] add_ln59_fu_159_p2;
wire    ap_loop_init;
reg   [7:0] ap_sig_allocacmp_n_load;
reg   [2:0] c_fu_62;
wire   [2:0] select_ln57_1_fu_184_p3;
reg   [9:0] indvar_flatten27_fu_66;
wire   [9:0] add_ln57_fu_120_p2;
reg   [9:0] ap_sig_allocacmp_indvar_flatten27_load;
wire   [6:0] tmp_fu_143_p4;
wire   [2:0] add_ln57_1_fu_178_p2;
wire   [2:0] mul_ln59_fu_199_p0;
wire   [8:0] mul_ln59_fu_199_p2;
wire   [9:0] zext_ln59_2_fu_209_p1;
wire   [9:0] zext_ln59_1_fu_205_p1;
wire   [1:0] empty_fu_195_p1;
wire   [8:0] tmp5_fu_226_p4;
wire   [8:0] zext_ln59_3_fu_212_p1;
wire   [8:0] add_ln60_1_fu_240_p2;
wire  signed [9:0] sext_ln60_fu_246_p1;
wire   [9:0] zext_ln60_1_fu_236_p1;
wire   [9:0] add_ln60_2_fu_250_p2;
wire   [0:0] or_ln60_fu_266_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire   [8:0] mul_ln59_fu_199_p00;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 n_fu_58 = 8'd0;
#0 c_fu_62 = 3'd0;
#0 indvar_flatten27_fu_66 = 10'd0;
#0 ap_done_reg = 1'b0;
end

CNN_mul_3ns_9ns_9_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 3 ),
    .din1_WIDTH( 9 ),
    .dout_WIDTH( 9 ))
mul_3ns_9ns_9_1_1_U42(
    .din0(mul_ln59_fu_199_p0),
    .din1(9'd164),
    .dout(mul_ln59_fu_199_p2)
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
    .ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),
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
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage0)) begin
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
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            c_fu_62 <= 3'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            c_fu_62 <= select_ln57_1_fu_184_p3;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln57_fu_114_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            indvar_flatten27_fu_66 <= add_ln57_fu_120_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten27_fu_66 <= 10'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln57_fu_114_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            n_fu_58 <= add_ln59_fu_159_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            n_fu_58 <= 8'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln60_reg_330 <= add_ln60_fu_220_p2;
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        icmp_ln59_reg_308 <= icmp_ln59_fu_129_p2;
        icmp_ln60_1_reg_325 <= icmp_ln60_1_fu_215_p2;
        icmp_ln60_reg_320 <= icmp_ln60_fu_153_p2;
        icmp_ln60_reg_320_pp0_iter1_reg <= icmp_ln60_reg_320;
        select_ln57_reg_313 <= select_ln57_fu_135_p3;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        OutPadConv2_ce0 = 1'b1;
    end else begin
        OutPadConv2_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        OutPadConv2_we0 = 1'b1;
    end else begin
        OutPadConv2_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        OutPool0_ce0 = 1'b1;
    end else begin
        OutPool0_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln57_fu_114_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
    end
end

always @ (*) begin
    if (((ap_idle_pp0 == 1'b1) & (ap_start_int == 1'b0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
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
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_indvar_flatten27_load = 10'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten27_load = indvar_flatten27_fu_66;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_n_load = 8'd0;
    end else begin
        ap_sig_allocacmp_n_load = n_fu_58;
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

assign OutPadConv2_address0 = zext_ln60_fu_270_p1;

assign OutPadConv2_d0 = ((or_ln60_fu_266_p2[0:0] == 1'b1) ? 16'd0 : OutPool0_q0);

assign OutPool0_address0 = zext_ln60_2_fu_256_p1;

assign add_ln57_1_fu_178_p2 = (c_fu_62 + 3'd1);

assign add_ln57_fu_120_p2 = (ap_sig_allocacmp_indvar_flatten27_load + 10'd1);

assign add_ln59_fu_159_p2 = (select_ln57_fu_135_p3 + 8'd1);

assign add_ln60_1_fu_240_p2 = ($signed(zext_ln59_3_fu_212_p1) + $signed(9'd510));

assign add_ln60_2_fu_250_p2 = ($signed(sext_ln60_fu_246_p1) + $signed(zext_ln60_1_fu_236_p1));

assign add_ln60_fu_220_p2 = (zext_ln59_2_fu_209_p1 + zext_ln59_1_fu_205_p1);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_reg_pp0_iter0 = ap_start_int;

assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;

assign empty_fu_195_p1 = select_ln57_1_fu_184_p3[1:0];

assign icmp_ln57_fu_114_p2 = ((ap_sig_allocacmp_indvar_flatten27_load == 10'd656) ? 1'b1 : 1'b0);

assign icmp_ln59_fu_129_p2 = ((ap_sig_allocacmp_n_load == 8'd164) ? 1'b1 : 1'b0);

assign icmp_ln60_1_fu_215_p2 = ((select_ln57_reg_313 > 8'd161) ? 1'b1 : 1'b0);

assign icmp_ln60_fu_153_p2 = ((tmp_fu_143_p4 == 7'd0) ? 1'b1 : 1'b0);

assign mul_ln59_fu_199_p0 = mul_ln59_fu_199_p00;

assign mul_ln59_fu_199_p00 = select_ln57_1_fu_184_p3;

assign or_ln60_fu_266_p2 = (icmp_ln60_reg_320_pp0_iter1_reg | icmp_ln60_1_reg_325);

assign select_ln57_1_fu_184_p3 = ((icmp_ln59_reg_308[0:0] == 1'b1) ? add_ln57_1_fu_178_p2 : c_fu_62);

assign select_ln57_fu_135_p3 = ((icmp_ln59_fu_129_p2[0:0] == 1'b1) ? 8'd0 : ap_sig_allocacmp_n_load);

assign sext_ln60_fu_246_p1 = $signed(add_ln60_1_fu_240_p2);

assign tmp5_fu_226_p4 = {{{empty_fu_195_p1}, {empty_fu_195_p1}}, {5'd0}};

assign tmp_fu_143_p4 = {{select_ln57_fu_135_p3[7:1]}};

assign zext_ln59_1_fu_205_p1 = mul_ln59_fu_199_p2;

assign zext_ln59_2_fu_209_p1 = select_ln57_reg_313;

assign zext_ln59_3_fu_212_p1 = select_ln57_reg_313;

assign zext_ln60_1_fu_236_p1 = tmp5_fu_226_p4;

assign zext_ln60_2_fu_256_p1 = add_ln60_2_fu_250_p2;

assign zext_ln60_fu_270_p1 = add_ln60_reg_330;

endmodule //CNN_CNN_Pipeline_loop_for_3_channel_pad_2_loop_for_channel_pad_2
