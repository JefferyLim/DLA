// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2016.2
// Copyright (C) 1986-2016 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module bigint_math_bigint_add (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        out_r_address0,
        out_r_ce0,
        out_r_we0,
        out_r_d0,
        out_r_q0,
        a_address0,
        a_ce0,
        a_q0,
        b_address0,
        b_ce0,
        b_q0
);

parameter    ap_ST_st1_fsm_0 = 15'b1;
parameter    ap_ST_st2_fsm_1 = 15'b10;
parameter    ap_ST_st3_fsm_2 = 15'b100;
parameter    ap_ST_st4_fsm_3 = 15'b1000;
parameter    ap_ST_st5_fsm_4 = 15'b10000;
parameter    ap_ST_st6_fsm_5 = 15'b100000;
parameter    ap_ST_st7_fsm_6 = 15'b1000000;
parameter    ap_ST_st8_fsm_7 = 15'b10000000;
parameter    ap_ST_st9_fsm_8 = 15'b100000000;
parameter    ap_ST_st10_fsm_9 = 15'b1000000000;
parameter    ap_ST_st11_fsm_10 = 15'b10000000000;
parameter    ap_ST_st12_fsm_11 = 15'b100000000000;
parameter    ap_ST_st13_fsm_12 = 15'b1000000000000;
parameter    ap_ST_st14_fsm_13 = 15'b10000000000000;
parameter    ap_ST_st15_fsm_14 = 15'b100000000000000;
parameter    ap_const_lv32_0 = 32'b00000000000000000000000000000000;
parameter    ap_const_lv32_8 = 32'b1000;
parameter    ap_const_lv32_C = 32'b1100;
parameter    ap_const_lv32_2 = 32'b10;
parameter    ap_const_lv32_4 = 32'b100;
parameter    ap_const_lv32_7 = 32'b111;
parameter    ap_const_lv32_9 = 32'b1001;
parameter    ap_const_lv32_B = 32'b1011;
parameter    ap_const_lv32_D = 32'b1101;
parameter    ap_const_lv9_0 = 9'b000000000;
parameter    ap_const_lv32_1 = 32'b1;
parameter    ap_const_lv32_3 = 32'b11;
parameter    ap_const_lv32_5 = 32'b101;
parameter    ap_const_lv9_FF = 9'b11111111;
parameter    ap_const_lv32_6 = 32'b110;
parameter    ap_const_lv32_E = 32'b1110;
parameter    ap_const_lv32_A = 32'b1010;
parameter    ap_const_lv8_1 = 8'b1;
parameter    ap_const_lv9_100 = 9'b100000000;
parameter    ap_const_lv9_1 = 9'b1;
parameter    ap_const_lv9_1FF = 9'b111111111;
parameter    ap_const_lv9_1FE = 9'b111111110;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [7:0] out_r_address0;
output   out_r_ce0;
output   out_r_we0;
output  [7:0] out_r_d0;
input  [7:0] out_r_q0;
output  [7:0] a_address0;
output   a_ce0;
input  [7:0] a_q0;
output  [7:0] b_address0;
output   b_ce0;
input  [7:0] b_q0;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg[7:0] out_r_address0;
reg out_r_ce0;
reg out_r_we0;
reg[7:0] out_r_d0;
reg a_ce0;
reg b_ce0;

(* fsm_encoding = "none" *) reg   [14:0] ap_CS_fsm;
reg    ap_sig_cseq_ST_st1_fsm_0;
reg    ap_sig_32;
reg   [7:0] reg_202;
reg    ap_sig_cseq_ST_st9_fsm_8;
reg    ap_sig_60;
reg    ap_sig_cseq_ST_st13_fsm_12;
reg    ap_sig_67;
wire   [8:0] i_15_fu_212_p2;
reg   [8:0] i_15_reg_380;
reg    ap_sig_cseq_ST_st3_fsm_2;
reg    ap_sig_77;
wire   [63:0] tmp_i_fu_218_p1;
reg   [63:0] tmp_i_reg_385;
wire   [0:0] exitcond_i_fu_206_p2;
wire   [8:0] i_4_fu_229_p2;
reg   [8:0] i_4_reg_398;
reg    ap_sig_cseq_ST_st5_fsm_4;
reg    ap_sig_94;
wire   [63:0] tmp_i1_fu_235_p1;
reg   [63:0] tmp_i1_reg_403;
wire   [0:0] exitcond_i1_fu_223_p2;
reg    ap_sig_cseq_ST_st8_fsm_7;
reg    ap_sig_110;
wire   [0:0] tmp_fu_244_p3;
reg   [7:0] out_addr_reg_426;
wire   [7:0] sum_fu_259_p2;
reg   [7:0] sum_reg_431;
wire   [0:0] tmp_25_fu_279_p3;
reg   [0:0] tmp_25_reg_436;
wire   [7:0] carry_fu_287_p1;
reg   [7:0] carry_reg_441;
wire   [0:0] tmp_26_fu_305_p3;
reg   [0:0] tmp_26_reg_446;
reg   [7:0] out_addr_3_reg_450;
wire   [7:0] tmp_110_fu_324_p2;
reg   [7:0] tmp_110_reg_455;
reg    ap_sig_cseq_ST_st10_fsm_9;
reg    ap_sig_139;
wire   [8:0] i_16_fu_329_p2;
reg   [8:0] i_16_reg_460;
reg    ap_sig_cseq_ST_st12_fsm_11;
reg    ap_sig_148;
reg   [7:0] out_addr_4_reg_465;
wire   [0:0] tmp_27_fu_353_p3;
reg   [0:0] tmp_27_reg_470;
reg   [7:0] out_addr_5_reg_474;
wire   [7:0] tmp_116_fu_372_p2;
reg   [7:0] tmp_116_reg_479;
reg    ap_sig_cseq_ST_st14_fsm_13;
reg    ap_sig_166;
reg   [7:0] tempA_address0;
reg    tempA_ce0;
reg    tempA_we0;
reg   [7:0] tempA_d0;
wire   [7:0] tempA_q0;
reg   [7:0] tempB_address0;
reg    tempB_ce0;
reg    tempB_we0;
reg   [7:0] tempB_d0;
wire   [7:0] tempB_q0;
wire    grp_bigint_math_bigint_zero_fu_182_ap_start;
wire    grp_bigint_math_bigint_zero_fu_182_ap_done;
wire    grp_bigint_math_bigint_zero_fu_182_ap_idle;
wire    grp_bigint_math_bigint_zero_fu_182_ap_ready;
wire   [7:0] grp_bigint_math_bigint_zero_fu_182_in_r_address0;
wire    grp_bigint_math_bigint_zero_fu_182_in_r_ce0;
wire    grp_bigint_math_bigint_zero_fu_182_in_r_we0;
wire   [7:0] grp_bigint_math_bigint_zero_fu_182_in_r_d0;
wire    grp_bigint_math_bigint_zero_fu_188_ap_start;
wire    grp_bigint_math_bigint_zero_fu_188_ap_done;
wire    grp_bigint_math_bigint_zero_fu_188_ap_idle;
wire    grp_bigint_math_bigint_zero_fu_188_ap_ready;
wire   [7:0] grp_bigint_math_bigint_zero_fu_188_in_r_address0;
wire    grp_bigint_math_bigint_zero_fu_188_in_r_ce0;
wire    grp_bigint_math_bigint_zero_fu_188_in_r_we0;
wire   [7:0] grp_bigint_math_bigint_zero_fu_188_in_r_d0;
reg   [8:0] i_i_reg_148;
reg    ap_sig_cseq_ST_st2_fsm_1;
reg    ap_sig_212;
reg    ap_sig_cseq_ST_st4_fsm_3;
reg    ap_sig_224;
reg   [8:0] i_i1_reg_159;
reg    ap_sig_cseq_ST_st6_fsm_5;
reg    ap_sig_233;
reg   [8:0] i_reg_170;
reg    ap_sig_cseq_ST_st7_fsm_6;
reg    ap_sig_245;
reg    ap_sig_cseq_ST_st15_fsm_14;
reg    ap_sig_254;
reg    ap_reg_grp_bigint_math_bigint_zero_fu_182_ap_start;
reg    ap_reg_grp_bigint_math_bigint_zero_fu_188_ap_start;
wire   [63:0] tmp_s_fu_252_p1;
wire  signed [63:0] tmp_108_fu_319_p1;
wire  signed [63:0] tmp_111_fu_335_p1;
wire  signed [63:0] tmp_114_fu_367_p1;
wire   [7:0] grp_fu_195_p2;
reg    ap_sig_cseq_ST_st11_fsm_10;
reg    ap_sig_286;
wire  signed [31:0] i_cast_fu_240_p1;
wire   [8:0] tmp_118_cast_fu_265_p1;
wire   [8:0] tmp_119_cast_fu_269_p1;
wire   [8:0] tmp_105_fu_273_p2;
wire   [8:0] tmp_123_cast_fu_295_p1;
wire   [8:0] tmp_122_cast_fu_291_p1;
wire   [8:0] tmp_106_fu_299_p2;
wire   [8:0] tmp_107_fu_313_p2;
wire   [8:0] tmp_134_cast_fu_344_p1;
wire   [8:0] tmp_133_cast_fu_340_p1;
wire   [8:0] tmp_112_fu_347_p2;
wire   [8:0] tmp_113_fu_361_p2;
reg   [14:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_CS_fsm = 15'b1;
#0 ap_reg_grp_bigint_math_bigint_zero_fu_182_ap_start = 1'b0;
#0 ap_reg_grp_bigint_math_bigint_zero_fu_188_ap_start = 1'b0;
end

bigint_math_bigint_add_tempA #(
    .DataWidth( 8 ),
    .AddressRange( 256 ),
    .AddressWidth( 8 ))
tempA_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(tempA_address0),
    .ce0(tempA_ce0),
    .we0(tempA_we0),
    .d0(tempA_d0),
    .q0(tempA_q0)
);

bigint_math_bigint_add_tempA #(
    .DataWidth( 8 ),
    .AddressRange( 256 ),
    .AddressWidth( 8 ))
tempB_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(tempB_address0),
    .ce0(tempB_ce0),
    .we0(tempB_we0),
    .d0(tempB_d0),
    .q0(tempB_q0)
);

bigint_math_bigint_zero grp_bigint_math_bigint_zero_fu_182(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_bigint_math_bigint_zero_fu_182_ap_start),
    .ap_done(grp_bigint_math_bigint_zero_fu_182_ap_done),
    .ap_idle(grp_bigint_math_bigint_zero_fu_182_ap_idle),
    .ap_ready(grp_bigint_math_bigint_zero_fu_182_ap_ready),
    .in_r_address0(grp_bigint_math_bigint_zero_fu_182_in_r_address0),
    .in_r_ce0(grp_bigint_math_bigint_zero_fu_182_in_r_ce0),
    .in_r_we0(grp_bigint_math_bigint_zero_fu_182_in_r_we0),
    .in_r_d0(grp_bigint_math_bigint_zero_fu_182_in_r_d0)
);

bigint_math_bigint_zero grp_bigint_math_bigint_zero_fu_188(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_bigint_math_bigint_zero_fu_188_ap_start),
    .ap_done(grp_bigint_math_bigint_zero_fu_188_ap_done),
    .ap_idle(grp_bigint_math_bigint_zero_fu_188_ap_idle),
    .ap_ready(grp_bigint_math_bigint_zero_fu_188_ap_ready),
    .in_r_address0(grp_bigint_math_bigint_zero_fu_188_in_r_address0),
    .in_r_ce0(grp_bigint_math_bigint_zero_fu_188_in_r_ce0),
    .in_r_we0(grp_bigint_math_bigint_zero_fu_188_in_r_we0),
    .in_r_d0(grp_bigint_math_bigint_zero_fu_188_in_r_d0)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_st1_fsm_0;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_reg_grp_bigint_math_bigint_zero_fu_182_ap_start <= 1'b0;
    end else begin
        if ((((1'b1 == ap_sig_cseq_ST_st1_fsm_0) & ~(ap_start == 1'b0)) | ((1'b1 == ap_sig_cseq_ST_st5_fsm_4) & ~(1'b0 == exitcond_i1_fu_223_p2)))) begin
            ap_reg_grp_bigint_math_bigint_zero_fu_182_ap_start <= 1'b1;
        end else if ((1'b1 == grp_bigint_math_bigint_zero_fu_182_ap_ready)) begin
            ap_reg_grp_bigint_math_bigint_zero_fu_182_ap_start <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_reg_grp_bigint_math_bigint_zero_fu_188_ap_start <= 1'b0;
    end else begin
        if (((1'b1 == ap_sig_cseq_ST_st1_fsm_0) & ~(ap_start == 1'b0))) begin
            ap_reg_grp_bigint_math_bigint_zero_fu_188_ap_start <= 1'b1;
        end else if ((1'b1 == grp_bigint_math_bigint_zero_fu_188_ap_ready)) begin
            ap_reg_grp_bigint_math_bigint_zero_fu_188_ap_start <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_sig_cseq_ST_st3_fsm_2) & ~(exitcond_i_fu_206_p2 == 1'b0))) begin
        i_i1_reg_159 <= ap_const_lv9_0;
    end else if ((1'b1 == ap_sig_cseq_ST_st6_fsm_5)) begin
        i_i1_reg_159 <= i_4_reg_398;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_sig_cseq_ST_st4_fsm_3)) begin
        i_i_reg_148 <= i_15_reg_380;
    end else if (((1'b1 == ap_sig_cseq_ST_st2_fsm_1) & ~((1'b0 == grp_bigint_math_bigint_zero_fu_182_ap_done) | (1'b0 == grp_bigint_math_bigint_zero_fu_188_ap_done)))) begin
        i_i_reg_148 <= ap_const_lv9_0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_sig_cseq_ST_st15_fsm_14)) begin
        i_reg_170 <= i_16_reg_460;
    end else if (((1'b1 == ap_sig_cseq_ST_st7_fsm_6) & ~(1'b0 == grp_bigint_math_bigint_zero_fu_182_ap_done))) begin
        i_reg_170 <= ap_const_lv9_FF;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_sig_cseq_ST_st9_fsm_8)) begin
        carry_reg_441[0] <= carry_fu_287_p1[0];
        sum_reg_431 <= sum_fu_259_p2;
        tmp_25_reg_436 <= tmp_105_fu_273_p2[ap_const_lv32_8];
        tmp_26_reg_446 <= tmp_106_fu_299_p2[ap_const_lv32_8];
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_sig_cseq_ST_st3_fsm_2)) begin
        i_15_reg_380 <= i_15_fu_212_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_sig_cseq_ST_st12_fsm_11)) begin
        i_16_reg_460 <= i_16_fu_329_p2;
        out_addr_4_reg_465 <= tmp_111_fu_335_p1;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_sig_cseq_ST_st5_fsm_4)) begin
        i_4_reg_398 <= i_4_fu_229_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_sig_cseq_ST_st9_fsm_8) & ~(1'b0 == tmp_26_fu_305_p3))) begin
        out_addr_3_reg_450 <= tmp_108_fu_319_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_sig_cseq_ST_st13_fsm_12) & ~(1'b0 == tmp_27_fu_353_p3))) begin
        out_addr_5_reg_474 <= tmp_114_fu_367_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_sig_cseq_ST_st8_fsm_7) & (1'b0 == tmp_fu_244_p3))) begin
        out_addr_reg_426 <= tmp_s_fu_252_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_sig_cseq_ST_st9_fsm_8) | (1'b1 == ap_sig_cseq_ST_st13_fsm_12))) begin
        reg_202 <= out_r_q0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_sig_cseq_ST_st10_fsm_9)) begin
        tmp_110_reg_455 <= tmp_110_fu_324_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_sig_cseq_ST_st14_fsm_13)) begin
        tmp_116_reg_479 <= tmp_116_fu_372_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_sig_cseq_ST_st13_fsm_12)) begin
        tmp_27_reg_470 <= tmp_112_fu_347_p2[ap_const_lv32_8];
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_sig_cseq_ST_st5_fsm_4) & (1'b0 == exitcond_i1_fu_223_p2))) begin
        tmp_i1_reg_403[8 : 0] <= tmp_i1_fu_235_p1[8 : 0];
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_sig_cseq_ST_st3_fsm_2) & (exitcond_i_fu_206_p2 == 1'b0))) begin
        tmp_i_reg_385[8 : 0] <= tmp_i_fu_218_p1[8 : 0];
    end
end

always @ (*) begin
    if ((1'b1 == ap_sig_cseq_ST_st3_fsm_2)) begin
        a_ce0 = 1'b1;
    end else begin
        a_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((((1'b0 == ap_start) & (1'b1 == ap_sig_cseq_ST_st1_fsm_0)) | ((1'b1 == ap_sig_cseq_ST_st8_fsm_7) & ~(1'b0 == tmp_fu_244_p3)))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_start) & (1'b1 == ap_sig_cseq_ST_st1_fsm_0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_sig_cseq_ST_st8_fsm_7) & ~(1'b0 == tmp_fu_244_p3))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_139) begin
        ap_sig_cseq_ST_st10_fsm_9 = 1'b1;
    end else begin
        ap_sig_cseq_ST_st10_fsm_9 = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_286) begin
        ap_sig_cseq_ST_st11_fsm_10 = 1'b1;
    end else begin
        ap_sig_cseq_ST_st11_fsm_10 = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_148) begin
        ap_sig_cseq_ST_st12_fsm_11 = 1'b1;
    end else begin
        ap_sig_cseq_ST_st12_fsm_11 = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_67) begin
        ap_sig_cseq_ST_st13_fsm_12 = 1'b1;
    end else begin
        ap_sig_cseq_ST_st13_fsm_12 = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_166) begin
        ap_sig_cseq_ST_st14_fsm_13 = 1'b1;
    end else begin
        ap_sig_cseq_ST_st14_fsm_13 = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_254) begin
        ap_sig_cseq_ST_st15_fsm_14 = 1'b1;
    end else begin
        ap_sig_cseq_ST_st15_fsm_14 = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_32) begin
        ap_sig_cseq_ST_st1_fsm_0 = 1'b1;
    end else begin
        ap_sig_cseq_ST_st1_fsm_0 = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_212) begin
        ap_sig_cseq_ST_st2_fsm_1 = 1'b1;
    end else begin
        ap_sig_cseq_ST_st2_fsm_1 = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_77) begin
        ap_sig_cseq_ST_st3_fsm_2 = 1'b1;
    end else begin
        ap_sig_cseq_ST_st3_fsm_2 = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_224) begin
        ap_sig_cseq_ST_st4_fsm_3 = 1'b1;
    end else begin
        ap_sig_cseq_ST_st4_fsm_3 = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_94) begin
        ap_sig_cseq_ST_st5_fsm_4 = 1'b1;
    end else begin
        ap_sig_cseq_ST_st5_fsm_4 = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_233) begin
        ap_sig_cseq_ST_st6_fsm_5 = 1'b1;
    end else begin
        ap_sig_cseq_ST_st6_fsm_5 = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_245) begin
        ap_sig_cseq_ST_st7_fsm_6 = 1'b1;
    end else begin
        ap_sig_cseq_ST_st7_fsm_6 = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_110) begin
        ap_sig_cseq_ST_st8_fsm_7 = 1'b1;
    end else begin
        ap_sig_cseq_ST_st8_fsm_7 = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_60) begin
        ap_sig_cseq_ST_st9_fsm_8 = 1'b1;
    end else begin
        ap_sig_cseq_ST_st9_fsm_8 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_sig_cseq_ST_st5_fsm_4)) begin
        b_ce0 = 1'b1;
    end else begin
        b_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_sig_cseq_ST_st15_fsm_14)) begin
        out_r_address0 = out_addr_4_reg_465;
    end else if ((1'b1 == ap_sig_cseq_ST_st14_fsm_13)) begin
        out_r_address0 = out_addr_5_reg_474;
    end else if ((1'b1 == ap_sig_cseq_ST_st11_fsm_10)) begin
        out_r_address0 = out_addr_reg_426;
    end else if ((1'b1 == ap_sig_cseq_ST_st10_fsm_9)) begin
        out_r_address0 = out_addr_3_reg_450;
    end else if ((1'b1 == ap_sig_cseq_ST_st13_fsm_12)) begin
        out_r_address0 = tmp_114_fu_367_p1;
    end else if ((1'b1 == ap_sig_cseq_ST_st12_fsm_11)) begin
        out_r_address0 = tmp_111_fu_335_p1;
    end else if ((1'b1 == ap_sig_cseq_ST_st9_fsm_8)) begin
        out_r_address0 = tmp_108_fu_319_p1;
    end else if ((1'b1 == ap_sig_cseq_ST_st8_fsm_7)) begin
        out_r_address0 = tmp_s_fu_252_p1;
    end else if ((1'b1 == ap_sig_cseq_ST_st7_fsm_6)) begin
        out_r_address0 = grp_bigint_math_bigint_zero_fu_182_in_r_address0;
    end else begin
        out_r_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_sig_cseq_ST_st9_fsm_8) | (1'b1 == ap_sig_cseq_ST_st13_fsm_12) | (1'b1 == ap_sig_cseq_ST_st8_fsm_7) | (1'b1 == ap_sig_cseq_ST_st10_fsm_9) | (1'b1 == ap_sig_cseq_ST_st12_fsm_11) | (1'b1 == ap_sig_cseq_ST_st14_fsm_13) | (1'b1 == ap_sig_cseq_ST_st15_fsm_14) | (1'b1 == ap_sig_cseq_ST_st11_fsm_10))) begin
        out_r_ce0 = 1'b1;
    end else if ((1'b1 == ap_sig_cseq_ST_st7_fsm_6)) begin
        out_r_ce0 = grp_bigint_math_bigint_zero_fu_182_in_r_ce0;
    end else begin
        out_r_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_sig_cseq_ST_st15_fsm_14)) begin
        out_r_d0 = tmp_116_reg_479;
    end else if ((1'b1 == ap_sig_cseq_ST_st11_fsm_10)) begin
        out_r_d0 = tmp_110_reg_455;
    end else if (((1'b1 == ap_sig_cseq_ST_st10_fsm_9) | (1'b1 == ap_sig_cseq_ST_st14_fsm_13))) begin
        out_r_d0 = grp_fu_195_p2;
    end else if ((1'b1 == ap_sig_cseq_ST_st7_fsm_6)) begin
        out_r_d0 = grp_bigint_math_bigint_zero_fu_182_in_r_d0;
    end else begin
        out_r_d0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_sig_cseq_ST_st15_fsm_14) | ((1'b1 == ap_sig_cseq_ST_st10_fsm_9) & ~(1'b0 == tmp_26_reg_446)) | (1'b1 == ap_sig_cseq_ST_st11_fsm_10) | ((1'b1 == ap_sig_cseq_ST_st14_fsm_13) & ~(1'b0 == tmp_27_reg_470)))) begin
        out_r_we0 = 1'b1;
    end else if ((1'b1 == ap_sig_cseq_ST_st7_fsm_6)) begin
        out_r_we0 = grp_bigint_math_bigint_zero_fu_182_in_r_we0;
    end else begin
        out_r_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_sig_cseq_ST_st4_fsm_3)) begin
        tempA_address0 = tmp_i_reg_385;
    end else if ((1'b1 == ap_sig_cseq_ST_st8_fsm_7)) begin
        tempA_address0 = tmp_s_fu_252_p1;
    end else if ((1'b1 == ap_sig_cseq_ST_st2_fsm_1)) begin
        tempA_address0 = grp_bigint_math_bigint_zero_fu_182_in_r_address0;
    end else begin
        tempA_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_sig_cseq_ST_st8_fsm_7) | (1'b1 == ap_sig_cseq_ST_st4_fsm_3))) begin
        tempA_ce0 = 1'b1;
    end else if ((1'b1 == ap_sig_cseq_ST_st2_fsm_1)) begin
        tempA_ce0 = grp_bigint_math_bigint_zero_fu_182_in_r_ce0;
    end else begin
        tempA_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_sig_cseq_ST_st4_fsm_3)) begin
        tempA_d0 = a_q0;
    end else if ((1'b1 == ap_sig_cseq_ST_st2_fsm_1)) begin
        tempA_d0 = grp_bigint_math_bigint_zero_fu_182_in_r_d0;
    end else begin
        tempA_d0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_sig_cseq_ST_st4_fsm_3)) begin
        tempA_we0 = 1'b1;
    end else if ((1'b1 == ap_sig_cseq_ST_st2_fsm_1)) begin
        tempA_we0 = grp_bigint_math_bigint_zero_fu_182_in_r_we0;
    end else begin
        tempA_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_sig_cseq_ST_st6_fsm_5)) begin
        tempB_address0 = tmp_i1_reg_403;
    end else if ((1'b1 == ap_sig_cseq_ST_st8_fsm_7)) begin
        tempB_address0 = tmp_s_fu_252_p1;
    end else if ((1'b1 == ap_sig_cseq_ST_st2_fsm_1)) begin
        tempB_address0 = grp_bigint_math_bigint_zero_fu_188_in_r_address0;
    end else begin
        tempB_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_sig_cseq_ST_st8_fsm_7) | (1'b1 == ap_sig_cseq_ST_st6_fsm_5))) begin
        tempB_ce0 = 1'b1;
    end else if ((1'b1 == ap_sig_cseq_ST_st2_fsm_1)) begin
        tempB_ce0 = grp_bigint_math_bigint_zero_fu_188_in_r_ce0;
    end else begin
        tempB_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_sig_cseq_ST_st6_fsm_5)) begin
        tempB_d0 = b_q0;
    end else if ((1'b1 == ap_sig_cseq_ST_st2_fsm_1)) begin
        tempB_d0 = grp_bigint_math_bigint_zero_fu_188_in_r_d0;
    end else begin
        tempB_d0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_sig_cseq_ST_st6_fsm_5)) begin
        tempB_we0 = 1'b1;
    end else if ((1'b1 == ap_sig_cseq_ST_st2_fsm_1)) begin
        tempB_we0 = grp_bigint_math_bigint_zero_fu_188_in_r_we0;
    end else begin
        tempB_we0 = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_st1_fsm_0 : begin
            if (~(ap_start == 1'b0)) begin
                ap_NS_fsm = ap_ST_st2_fsm_1;
            end else begin
                ap_NS_fsm = ap_ST_st1_fsm_0;
            end
        end
        ap_ST_st2_fsm_1 : begin
            if (~((1'b0 == grp_bigint_math_bigint_zero_fu_182_ap_done) | (1'b0 == grp_bigint_math_bigint_zero_fu_188_ap_done))) begin
                ap_NS_fsm = ap_ST_st3_fsm_2;
            end else begin
                ap_NS_fsm = ap_ST_st2_fsm_1;
            end
        end
        ap_ST_st3_fsm_2 : begin
            if (~(exitcond_i_fu_206_p2 == 1'b0)) begin
                ap_NS_fsm = ap_ST_st5_fsm_4;
            end else begin
                ap_NS_fsm = ap_ST_st4_fsm_3;
            end
        end
        ap_ST_st4_fsm_3 : begin
            ap_NS_fsm = ap_ST_st3_fsm_2;
        end
        ap_ST_st5_fsm_4 : begin
            if (~(1'b0 == exitcond_i1_fu_223_p2)) begin
                ap_NS_fsm = ap_ST_st7_fsm_6;
            end else begin
                ap_NS_fsm = ap_ST_st6_fsm_5;
            end
        end
        ap_ST_st6_fsm_5 : begin
            ap_NS_fsm = ap_ST_st5_fsm_4;
        end
        ap_ST_st7_fsm_6 : begin
            if (~(1'b0 == grp_bigint_math_bigint_zero_fu_182_ap_done)) begin
                ap_NS_fsm = ap_ST_st8_fsm_7;
            end else begin
                ap_NS_fsm = ap_ST_st7_fsm_6;
            end
        end
        ap_ST_st8_fsm_7 : begin
            if (~(1'b0 == tmp_fu_244_p3)) begin
                ap_NS_fsm = ap_ST_st1_fsm_0;
            end else begin
                ap_NS_fsm = ap_ST_st9_fsm_8;
            end
        end
        ap_ST_st9_fsm_8 : begin
            ap_NS_fsm = ap_ST_st10_fsm_9;
        end
        ap_ST_st10_fsm_9 : begin
            ap_NS_fsm = ap_ST_st11_fsm_10;
        end
        ap_ST_st11_fsm_10 : begin
            ap_NS_fsm = ap_ST_st12_fsm_11;
        end
        ap_ST_st12_fsm_11 : begin
            ap_NS_fsm = ap_ST_st13_fsm_12;
        end
        ap_ST_st13_fsm_12 : begin
            ap_NS_fsm = ap_ST_st14_fsm_13;
        end
        ap_ST_st14_fsm_13 : begin
            ap_NS_fsm = ap_ST_st15_fsm_14;
        end
        ap_ST_st15_fsm_14 : begin
            ap_NS_fsm = ap_ST_st8_fsm_7;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign a_address0 = tmp_i_fu_218_p1;

always @ (*) begin
    ap_sig_110 = (1'b1 == ap_CS_fsm[ap_const_lv32_7]);
end

always @ (*) begin
    ap_sig_139 = (1'b1 == ap_CS_fsm[ap_const_lv32_9]);
end

always @ (*) begin
    ap_sig_148 = (1'b1 == ap_CS_fsm[ap_const_lv32_B]);
end

always @ (*) begin
    ap_sig_166 = (1'b1 == ap_CS_fsm[ap_const_lv32_D]);
end

always @ (*) begin
    ap_sig_212 = (1'b1 == ap_CS_fsm[ap_const_lv32_1]);
end

always @ (*) begin
    ap_sig_224 = (1'b1 == ap_CS_fsm[ap_const_lv32_3]);
end

always @ (*) begin
    ap_sig_233 = (1'b1 == ap_CS_fsm[ap_const_lv32_5]);
end

always @ (*) begin
    ap_sig_245 = (1'b1 == ap_CS_fsm[ap_const_lv32_6]);
end

always @ (*) begin
    ap_sig_254 = (1'b1 == ap_CS_fsm[ap_const_lv32_E]);
end

always @ (*) begin
    ap_sig_286 = (1'b1 == ap_CS_fsm[ap_const_lv32_A]);
end

always @ (*) begin
    ap_sig_32 = (ap_CS_fsm[ap_const_lv32_0] == 1'b1);
end

always @ (*) begin
    ap_sig_60 = (1'b1 == ap_CS_fsm[ap_const_lv32_8]);
end

always @ (*) begin
    ap_sig_67 = (1'b1 == ap_CS_fsm[ap_const_lv32_C]);
end

always @ (*) begin
    ap_sig_77 = (1'b1 == ap_CS_fsm[ap_const_lv32_2]);
end

always @ (*) begin
    ap_sig_94 = (1'b1 == ap_CS_fsm[ap_const_lv32_4]);
end

assign b_address0 = tmp_i1_fu_235_p1;

assign carry_fu_287_p1 = tmp_25_fu_279_p3;

assign exitcond_i1_fu_223_p2 = ((i_i1_reg_159 == ap_const_lv9_100) ? 1'b1 : 1'b0);

assign exitcond_i_fu_206_p2 = ((i_i_reg_148 == ap_const_lv9_100) ? 1'b1 : 1'b0);

assign grp_bigint_math_bigint_zero_fu_182_ap_start = ap_reg_grp_bigint_math_bigint_zero_fu_182_ap_start;

assign grp_bigint_math_bigint_zero_fu_188_ap_start = ap_reg_grp_bigint_math_bigint_zero_fu_188_ap_start;

assign grp_fu_195_p2 = (ap_const_lv8_1 + out_r_q0);

assign i_15_fu_212_p2 = (i_i_reg_148 + ap_const_lv9_1);

assign i_16_fu_329_p2 = ($signed(i_reg_170) + $signed(ap_const_lv9_1FF));

assign i_4_fu_229_p2 = (i_i1_reg_159 + ap_const_lv9_1);

assign i_cast_fu_240_p1 = $signed(i_reg_170);

assign sum_fu_259_p2 = (tempA_q0 + tempB_q0);

assign tmp_105_fu_273_p2 = (tmp_118_cast_fu_265_p1 + tmp_119_cast_fu_269_p1);

assign tmp_106_fu_299_p2 = (tmp_123_cast_fu_295_p1 + tmp_122_cast_fu_291_p1);

assign tmp_107_fu_313_p2 = ($signed(ap_const_lv9_1FF) + $signed(i_reg_170));

assign tmp_108_fu_319_p1 = $signed(tmp_107_fu_313_p2);

assign tmp_110_fu_324_p2 = (sum_reg_431 + reg_202);

assign tmp_111_fu_335_p1 = $signed(i_16_fu_329_p2);

assign tmp_112_fu_347_p2 = (tmp_134_cast_fu_344_p1 + tmp_133_cast_fu_340_p1);

assign tmp_113_fu_361_p2 = ($signed(ap_const_lv9_1FE) + $signed(i_reg_170));

assign tmp_114_fu_367_p1 = $signed(tmp_113_fu_361_p2);

assign tmp_116_fu_372_p2 = (reg_202 + carry_reg_441);

assign tmp_118_cast_fu_265_p1 = tempA_q0;

assign tmp_119_cast_fu_269_p1 = tempB_q0;

assign tmp_122_cast_fu_291_p1 = out_r_q0;

assign tmp_123_cast_fu_295_p1 = sum_fu_259_p2;

assign tmp_133_cast_fu_340_p1 = out_r_q0;

assign tmp_134_cast_fu_344_p1 = tmp_25_reg_436;

assign tmp_25_fu_279_p3 = tmp_105_fu_273_p2[ap_const_lv32_8];

assign tmp_26_fu_305_p3 = tmp_106_fu_299_p2[ap_const_lv32_8];

assign tmp_27_fu_353_p3 = tmp_112_fu_347_p2[ap_const_lv32_8];

assign tmp_fu_244_p3 = i_reg_170[ap_const_lv32_8];

assign tmp_i1_fu_235_p1 = i_i1_reg_159;

assign tmp_i_fu_218_p1 = i_i_reg_148;

assign tmp_s_fu_252_p1 = $unsigned(i_cast_fu_240_p1);

always @ (posedge ap_clk) begin
    tmp_i_reg_385[63:9] <= 55'b0000000000000000000000000000000000000000000000000000000;
    tmp_i1_reg_403[63:9] <= 55'b0000000000000000000000000000000000000000000000000000000;
    carry_reg_441[7:1] <= 7'b0000000;
end

endmodule //bigint_math_bigint_add
