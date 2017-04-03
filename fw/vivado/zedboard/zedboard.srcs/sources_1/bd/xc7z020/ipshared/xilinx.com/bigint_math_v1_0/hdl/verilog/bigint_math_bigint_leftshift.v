// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2016.2
// Copyright (C) 1986-2016 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module bigint_math_bigint_leftshift (
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
        shift
);

parameter    ap_ST_st1_fsm_0 = 8'b1;
parameter    ap_ST_st2_fsm_1 = 8'b10;
parameter    ap_ST_st3_fsm_2 = 8'b100;
parameter    ap_ST_st4_fsm_3 = 8'b1000;
parameter    ap_ST_st5_fsm_4 = 8'b10000;
parameter    ap_ST_st6_fsm_5 = 8'b100000;
parameter    ap_ST_st7_fsm_6 = 8'b1000000;
parameter    ap_ST_st8_fsm_7 = 8'b10000000;
parameter    ap_const_lv32_0 = 32'b00000000000000000000000000000000;
parameter    ap_const_lv32_1 = 32'b1;
parameter    ap_const_lv32_2 = 32'b10;
parameter    ap_const_lv32_3 = 32'b11;
parameter    ap_const_lv32_4 = 32'b100;
parameter    ap_const_lv32_5 = 32'b101;
parameter    ap_const_lv32_6 = 32'b110;
parameter    ap_const_lv9_0 = 9'b000000000;
parameter    ap_const_lv9_FF = 9'b11111111;
parameter    ap_const_lv4_0 = 4'b0000;
parameter    ap_const_lv32_7 = 32'b111;
parameter    ap_const_lv8_0 = 8'b00000000;
parameter    ap_const_lv32_8 = 32'b1000;
parameter    ap_const_lv32_FFFFFFFF = 32'b11111111111111111111111111111111;
parameter    ap_const_lv32_1F = 32'b11111;
parameter    ap_const_lv30_0 = 30'b000000000000000000000000000000;
parameter    ap_const_lv29_0 = 29'b00000000000000000000000000000;
parameter    ap_const_lv31_FF = 31'b11111111;
parameter    ap_const_lv9_100 = 9'b100000000;
parameter    ap_const_lv9_1 = 9'b1;
parameter    ap_const_lv4_8 = 4'b1000;
parameter    ap_const_lv4_1 = 4'b1;
parameter    ap_const_lv9_1FF = 9'b111111111;
parameter    ap_const_lv8_1 = 8'b1;

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
input  [31:0] shift;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg[7:0] out_r_address0;
reg out_r_ce0;
reg out_r_we0;
reg[7:0] out_r_d0;
reg[7:0] a_address0;
reg a_ce0;

(* fsm_encoding = "none" *) reg   [7:0] ap_CS_fsm;
reg    ap_sig_cseq_ST_st1_fsm_0;
reg    ap_sig_25;
wire   [0:0] tmp_fu_244_p2;
reg   [0:0] tmp_reg_493;
wire   [31:0] outputBit_5_fu_340_p3;
reg   [31:0] outputBit_5_reg_497;
wire  signed [31:0] k_cast_fu_354_p1;
reg  signed [31:0] k_cast_reg_502;
wire   [8:0] i_11_fu_364_p2;
reg    ap_sig_cseq_ST_st2_fsm_1;
reg    ap_sig_62;
reg   [7:0] a_addr_reg_518;
reg    ap_sig_cseq_ST_st3_fsm_2;
reg    ap_sig_71;
wire   [0:0] tmp_19_fu_379_p3;
wire   [7:0] j_cast1_fu_392_p1;
reg   [7:0] j_cast1_reg_523;
reg    ap_sig_cseq_ST_st4_fsm_3;
reg    ap_sig_85;
wire   [3:0] j_9_fu_402_p2;
reg   [3:0] j_9_reg_532;
wire   [31:0] p_k_1_fu_408_p3;
wire   [0:0] exitcond_fu_396_p2;
wire   [8:0] i_8_fu_416_p2;
wire   [7:0] b_fu_433_p2;
reg   [7:0] b_reg_547;
reg    ap_sig_cseq_ST_st5_fsm_4;
reg    ap_sig_104;
wire   [0:0] grp_fu_230_p2;
reg   [0:0] tmp_79_reg_553;
reg   [7:0] out_addr_2_reg_557;
wire   [31:0] grp_fu_237_p2;
reg   [31:0] k_7_reg_562;
reg   [7:0] out_addr_reg_567;
wire   [31:0] outputBit_3_fu_470_p2;
reg    ap_sig_cseq_ST_st6_fsm_5;
reg    ap_sig_125;
wire   [0:0] exitcond_i_fu_476_p2;
reg   [0:0] exitcond_i_reg_577;
reg    ap_sig_cseq_ST_st7_fsm_6;
reg    ap_sig_134;
wire   [8:0] i_10_fu_482_p2;
reg   [8:0] i_10_reg_581;
wire   [63:0] tmp_i_fu_488_p1;
reg   [63:0] tmp_i_reg_586;
reg   [8:0] i_i7_reg_131;
wire   [0:0] exitcond_i8_fu_358_p2;
reg   [8:0] i_reg_142;
reg   [31:0] k7_reg_154;
reg   [3:0] j_reg_164;
reg   [31:0] k_2_phi_fu_200_p4;
wire   [31:0] k_1_phi_fu_178_p4;
reg   [31:0] k_1_reg_175;
wire   [31:0] outputBit_phi_fu_189_p4;
reg   [31:0] outputBit_reg_186;
reg   [31:0] outputBit_1_phi_fu_211_p4;
reg   [8:0] i_i_reg_219;
reg    ap_sig_cseq_ST_st8_fsm_7;
reg    ap_sig_179;
wire   [63:0] tmp_i9_fu_370_p1;
wire   [63:0] tmp_s_fu_387_p1;
wire  signed [63:0] tmp_83_fu_438_p1;
wire  signed [63:0] tmp_80_fu_443_p1;
wire   [7:0] tmp_84_fu_457_p2;
wire   [7:0] tmp_81_fu_464_p2;
reg   [31:0] grp_fu_230_p0;
reg   [31:0] grp_fu_237_p0;
wire   [31:0] p_neg_fu_258_p2;
wire   [28:0] tmp_6_fu_264_p4;
wire   [29:0] p_lshr_cast_fu_274_p1;
wire   [28:0] tmp_7_fu_284_p4;
wire   [0:0] tmp_16_fu_250_p3;
wire   [29:0] p_neg_t_fu_278_p2;
wire   [29:0] p_lshr_f_cast_fu_294_p1;
wire   [29:0] start_fu_298_p3;
wire   [2:0] tmp_17_fu_310_p1;
wire   [2:0] tmp_18_fu_322_p1;
wire   [31:0] p_and_t_fu_326_p3;
wire   [31:0] p_neg_t5_fu_334_p2;
wire   [31:0] p_and_f_fu_314_p3;
wire  signed [30:0] start_cast_fu_306_p1;
wire   [30:0] k_fu_348_p2;
wire  signed [31:0] i_cast_fu_375_p1;
wire   [7:0] tmp_77_fu_422_p2;
wire   [7:0] tmp_78_fu_427_p2;
wire   [7:0] tmp_20_fu_448_p1;
wire   [7:0] tmp_82_fu_452_p2;
reg   [7:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_CS_fsm = 8'b1;
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_st1_fsm_0;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_sig_cseq_ST_st2_fsm_1) & (1'b0 == exitcond_i8_fu_358_p2))) begin
        i_i7_reg_131 <= i_11_fu_364_p2;
    end else if (((1'b1 == ap_sig_cseq_ST_st1_fsm_0) & ~(ap_start == 1'b0) & (tmp_fu_244_p2 == 1'b0))) begin
        i_i7_reg_131 <= ap_const_lv9_0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_sig_cseq_ST_st1_fsm_0) & ~(ap_start == 1'b0) & ~(tmp_fu_244_p2 == 1'b0))) begin
        i_i_reg_219 <= ap_const_lv9_0;
    end else if ((1'b1 == ap_sig_cseq_ST_st8_fsm_7)) begin
        i_i_reg_219 <= i_10_reg_581;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_sig_cseq_ST_st2_fsm_1) & ~(1'b0 == exitcond_i8_fu_358_p2))) begin
        i_reg_142 <= ap_const_lv9_FF;
    end else if (((1'b1 == ap_sig_cseq_ST_st4_fsm_3) & ~(1'b0 == exitcond_fu_396_p2))) begin
        i_reg_142 <= i_8_fu_416_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_sig_cseq_ST_st3_fsm_2) & (tmp_reg_493 == 1'b0) & (1'b0 == tmp_19_fu_379_p3))) begin
        j_reg_164 <= ap_const_lv4_0;
    end else if ((1'b1 == ap_sig_cseq_ST_st6_fsm_5)) begin
        j_reg_164 <= j_9_reg_532;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_sig_cseq_ST_st2_fsm_1) & ~(1'b0 == exitcond_i8_fu_358_p2))) begin
        k7_reg_154 <= k_cast_reg_502;
    end else if (((1'b1 == ap_sig_cseq_ST_st4_fsm_3) & ~(1'b0 == exitcond_fu_396_p2))) begin
        k7_reg_154 <= p_k_1_fu_408_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_sig_cseq_ST_st3_fsm_2) & (tmp_reg_493 == 1'b0) & (1'b0 == tmp_19_fu_379_p3))) begin
        k_1_reg_175 <= k7_reg_154;
    end else if ((1'b1 == ap_sig_cseq_ST_st6_fsm_5)) begin
        k_1_reg_175 <= k_2_phi_fu_200_p4;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_sig_cseq_ST_st3_fsm_2) & (tmp_reg_493 == 1'b0) & (1'b0 == tmp_19_fu_379_p3))) begin
        outputBit_reg_186 <= outputBit_5_reg_497;
    end else if ((1'b1 == ap_sig_cseq_ST_st6_fsm_5)) begin
        outputBit_reg_186 <= outputBit_3_fu_470_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_sig_cseq_ST_st3_fsm_2) & (tmp_reg_493 == 1'b0) & (1'b0 == tmp_19_fu_379_p3))) begin
        a_addr_reg_518 <= tmp_s_fu_387_p1;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_sig_cseq_ST_st5_fsm_4)) begin
        b_reg_547 <= b_fu_433_p2;
        tmp_79_reg_553 <= grp_fu_230_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_sig_cseq_ST_st7_fsm_6)) begin
        exitcond_i_reg_577 <= exitcond_i_fu_476_p2;
        i_10_reg_581 <= i_10_fu_482_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_sig_cseq_ST_st4_fsm_3)) begin
        j_9_reg_532 <= j_9_fu_402_p2;
        j_cast1_reg_523[3 : 0] <= j_cast1_fu_392_p1[3 : 0];
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_sig_cseq_ST_st5_fsm_4) & ~(1'b0 == grp_fu_230_p2))) begin
        k_7_reg_562 <= grp_fu_237_p2;
        out_addr_reg_567 <= tmp_80_fu_443_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_sig_cseq_ST_st1_fsm_0) & ~(ap_start == 1'b0) & (tmp_fu_244_p2 == 1'b0))) begin
        k_cast_reg_502 <= k_cast_fu_354_p1;
        outputBit_5_reg_497 <= outputBit_5_fu_340_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_sig_cseq_ST_st5_fsm_4) & (1'b0 == grp_fu_230_p2))) begin
        out_addr_2_reg_557 <= tmp_83_fu_438_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_sig_cseq_ST_st7_fsm_6) & (1'b0 == exitcond_i_fu_476_p2))) begin
        tmp_i_reg_586[8 : 0] <= tmp_i_fu_488_p1[8 : 0];
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_sig_cseq_ST_st1_fsm_0) & ~(ap_start == 1'b0))) begin
        tmp_reg_493 <= tmp_fu_244_p2;
    end
end

always @ (*) begin
    if ((1'b1 == ap_sig_cseq_ST_st7_fsm_6)) begin
        a_address0 = tmp_i_fu_488_p1;
    end else if ((1'b1 == ap_sig_cseq_ST_st4_fsm_3)) begin
        a_address0 = a_addr_reg_518;
    end else begin
        a_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_sig_cseq_ST_st4_fsm_3) | (1'b1 == ap_sig_cseq_ST_st7_fsm_6))) begin
        a_ce0 = 1'b1;
    end else begin
        a_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((((1'b0 == ap_start) & (1'b1 == ap_sig_cseq_ST_st1_fsm_0)) | ((1'b1 == ap_sig_cseq_ST_st3_fsm_2) & (((tmp_reg_493 == 1'b0) & ~(1'b0 == tmp_19_fu_379_p3)) | (~(tmp_reg_493 == 1'b0) & ~(1'b0 == exitcond_i_reg_577)))))) begin
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
    if (((1'b1 == ap_sig_cseq_ST_st3_fsm_2) & (((tmp_reg_493 == 1'b0) & ~(1'b0 == tmp_19_fu_379_p3)) | (~(tmp_reg_493 == 1'b0) & ~(1'b0 == exitcond_i_reg_577))))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_25) begin
        ap_sig_cseq_ST_st1_fsm_0 = 1'b1;
    end else begin
        ap_sig_cseq_ST_st1_fsm_0 = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_62) begin
        ap_sig_cseq_ST_st2_fsm_1 = 1'b1;
    end else begin
        ap_sig_cseq_ST_st2_fsm_1 = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_71) begin
        ap_sig_cseq_ST_st3_fsm_2 = 1'b1;
    end else begin
        ap_sig_cseq_ST_st3_fsm_2 = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_85) begin
        ap_sig_cseq_ST_st4_fsm_3 = 1'b1;
    end else begin
        ap_sig_cseq_ST_st4_fsm_3 = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_104) begin
        ap_sig_cseq_ST_st5_fsm_4 = 1'b1;
    end else begin
        ap_sig_cseq_ST_st5_fsm_4 = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_125) begin
        ap_sig_cseq_ST_st6_fsm_5 = 1'b1;
    end else begin
        ap_sig_cseq_ST_st6_fsm_5 = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_134) begin
        ap_sig_cseq_ST_st7_fsm_6 = 1'b1;
    end else begin
        ap_sig_cseq_ST_st7_fsm_6 = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_179) begin
        ap_sig_cseq_ST_st8_fsm_7 = 1'b1;
    end else begin
        ap_sig_cseq_ST_st8_fsm_7 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_sig_cseq_ST_st5_fsm_4)) begin
        grp_fu_230_p0 = outputBit_reg_186;
    end else if ((1'b1 == ap_sig_cseq_ST_st4_fsm_3)) begin
        grp_fu_230_p0 = outputBit_phi_fu_189_p4;
    end else begin
        grp_fu_230_p0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_sig_cseq_ST_st5_fsm_4)) begin
        grp_fu_237_p0 = k_1_reg_175;
    end else if ((1'b1 == ap_sig_cseq_ST_st4_fsm_3)) begin
        grp_fu_237_p0 = k_1_phi_fu_178_p4;
    end else begin
        grp_fu_237_p0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_sig_cseq_ST_st6_fsm_5)) begin
        if ((1'b0 == tmp_79_reg_553)) begin
            k_2_phi_fu_200_p4 = k_1_reg_175;
        end else if (~(1'b0 == tmp_79_reg_553)) begin
            k_2_phi_fu_200_p4 = k_7_reg_562;
        end else begin
            k_2_phi_fu_200_p4 = 'bx;
        end
    end else begin
        k_2_phi_fu_200_p4 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_sig_cseq_ST_st8_fsm_7)) begin
        out_r_address0 = tmp_i_reg_586;
    end else if (((1'b1 == ap_sig_cseq_ST_st6_fsm_5) & ~(1'b0 == tmp_79_reg_553))) begin
        out_r_address0 = out_addr_reg_567;
    end else if (((1'b1 == ap_sig_cseq_ST_st6_fsm_5) & (1'b0 == tmp_79_reg_553))) begin
        out_r_address0 = out_addr_2_reg_557;
    end else if ((1'b1 == ap_sig_cseq_ST_st2_fsm_1)) begin
        out_r_address0 = tmp_i9_fu_370_p1;
    end else if (((1'b1 == ap_sig_cseq_ST_st5_fsm_4) & ~(1'b0 == grp_fu_230_p2))) begin
        out_r_address0 = tmp_80_fu_443_p1;
    end else if (((1'b1 == ap_sig_cseq_ST_st5_fsm_4) & (1'b0 == grp_fu_230_p2))) begin
        out_r_address0 = tmp_83_fu_438_p1;
    end else begin
        out_r_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_sig_cseq_ST_st2_fsm_1) | ((1'b1 == ap_sig_cseq_ST_st5_fsm_4) & (1'b0 == grp_fu_230_p2)) | ((1'b1 == ap_sig_cseq_ST_st5_fsm_4) & ~(1'b0 == grp_fu_230_p2)) | ((1'b1 == ap_sig_cseq_ST_st6_fsm_5) & ~(1'b0 == tmp_79_reg_553)) | ((1'b1 == ap_sig_cseq_ST_st6_fsm_5) & (1'b0 == tmp_79_reg_553)) | (1'b1 == ap_sig_cseq_ST_st8_fsm_7))) begin
        out_r_ce0 = 1'b1;
    end else begin
        out_r_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_sig_cseq_ST_st8_fsm_7)) begin
        out_r_d0 = a_q0;
    end else if (((1'b1 == ap_sig_cseq_ST_st6_fsm_5) & ~(1'b0 == tmp_79_reg_553))) begin
        out_r_d0 = tmp_81_fu_464_p2;
    end else if (((1'b1 == ap_sig_cseq_ST_st6_fsm_5) & (1'b0 == tmp_79_reg_553))) begin
        out_r_d0 = tmp_84_fu_457_p2;
    end else if ((1'b1 == ap_sig_cseq_ST_st2_fsm_1)) begin
        out_r_d0 = ap_const_lv8_0;
    end else begin
        out_r_d0 = 'bx;
    end
end

always @ (*) begin
    if ((((1'b1 == ap_sig_cseq_ST_st2_fsm_1) & (1'b0 == exitcond_i8_fu_358_p2)) | ((1'b1 == ap_sig_cseq_ST_st6_fsm_5) & ~(1'b0 == tmp_79_reg_553)) | ((1'b1 == ap_sig_cseq_ST_st6_fsm_5) & (1'b0 == tmp_79_reg_553)) | (1'b1 == ap_sig_cseq_ST_st8_fsm_7))) begin
        out_r_we0 = 1'b1;
    end else begin
        out_r_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_sig_cseq_ST_st6_fsm_5)) begin
        if ((1'b0 == tmp_79_reg_553)) begin
            outputBit_1_phi_fu_211_p4 = outputBit_reg_186;
        end else if (~(1'b0 == tmp_79_reg_553)) begin
            outputBit_1_phi_fu_211_p4 = ap_const_lv32_0;
        end else begin
            outputBit_1_phi_fu_211_p4 = 'bx;
        end
    end else begin
        outputBit_1_phi_fu_211_p4 = 'bx;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_st1_fsm_0 : begin
            if ((~(ap_start == 1'b0) & (tmp_fu_244_p2 == 1'b0))) begin
                ap_NS_fsm = ap_ST_st2_fsm_1;
            end else if ((~(ap_start == 1'b0) & ~(tmp_fu_244_p2 == 1'b0))) begin
                ap_NS_fsm = ap_ST_st7_fsm_6;
            end else begin
                ap_NS_fsm = ap_ST_st1_fsm_0;
            end
        end
        ap_ST_st2_fsm_1 : begin
            if ((1'b0 == exitcond_i8_fu_358_p2)) begin
                ap_NS_fsm = ap_ST_st2_fsm_1;
            end else begin
                ap_NS_fsm = ap_ST_st3_fsm_2;
            end
        end
        ap_ST_st3_fsm_2 : begin
            if ((((tmp_reg_493 == 1'b0) & ~(1'b0 == tmp_19_fu_379_p3)) | (~(tmp_reg_493 == 1'b0) & ~(1'b0 == exitcond_i_reg_577)))) begin
                ap_NS_fsm = ap_ST_st1_fsm_0;
            end else begin
                ap_NS_fsm = ap_ST_st4_fsm_3;
            end
        end
        ap_ST_st4_fsm_3 : begin
            if (~(1'b0 == exitcond_fu_396_p2)) begin
                ap_NS_fsm = ap_ST_st3_fsm_2;
            end else begin
                ap_NS_fsm = ap_ST_st5_fsm_4;
            end
        end
        ap_ST_st5_fsm_4 : begin
            ap_NS_fsm = ap_ST_st6_fsm_5;
        end
        ap_ST_st6_fsm_5 : begin
            ap_NS_fsm = ap_ST_st4_fsm_3;
        end
        ap_ST_st7_fsm_6 : begin
            if ((1'b0 == exitcond_i_fu_476_p2)) begin
                ap_NS_fsm = ap_ST_st8_fsm_7;
            end else begin
                ap_NS_fsm = ap_ST_st3_fsm_2;
            end
        end
        ap_ST_st8_fsm_7 : begin
            ap_NS_fsm = ap_ST_st7_fsm_6;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

always @ (*) begin
    ap_sig_104 = (1'b1 == ap_CS_fsm[ap_const_lv32_4]);
end

always @ (*) begin
    ap_sig_125 = (1'b1 == ap_CS_fsm[ap_const_lv32_5]);
end

always @ (*) begin
    ap_sig_134 = (1'b1 == ap_CS_fsm[ap_const_lv32_6]);
end

always @ (*) begin
    ap_sig_179 = (1'b1 == ap_CS_fsm[ap_const_lv32_7]);
end

always @ (*) begin
    ap_sig_25 = (ap_CS_fsm[ap_const_lv32_0] == 1'b1);
end

always @ (*) begin
    ap_sig_62 = (1'b1 == ap_CS_fsm[ap_const_lv32_1]);
end

always @ (*) begin
    ap_sig_71 = (1'b1 == ap_CS_fsm[ap_const_lv32_2]);
end

always @ (*) begin
    ap_sig_85 = (1'b1 == ap_CS_fsm[ap_const_lv32_3]);
end

assign b_fu_433_p2 = tmp_78_fu_427_p2 >> j_cast1_reg_523;

assign exitcond_fu_396_p2 = ((j_reg_164 == ap_const_lv4_8) ? 1'b1 : 1'b0);

assign exitcond_i8_fu_358_p2 = ((i_i7_reg_131 == ap_const_lv9_100) ? 1'b1 : 1'b0);

assign exitcond_i_fu_476_p2 = ((i_i_reg_219 == ap_const_lv9_100) ? 1'b1 : 1'b0);

assign grp_fu_230_p2 = ((grp_fu_230_p0 == ap_const_lv32_8) ? 1'b1 : 1'b0);

assign grp_fu_237_p2 = ($signed(grp_fu_237_p0) + $signed(ap_const_lv32_FFFFFFFF));

assign i_10_fu_482_p2 = (i_i_reg_219 + ap_const_lv9_1);

assign i_11_fu_364_p2 = (i_i7_reg_131 + ap_const_lv9_1);

assign i_8_fu_416_p2 = ($signed(i_reg_142) + $signed(ap_const_lv9_1FF));

assign i_cast_fu_375_p1 = $signed(i_reg_142);

assign j_9_fu_402_p2 = (j_reg_164 + ap_const_lv4_1);

assign j_cast1_fu_392_p1 = j_reg_164;

assign k_1_phi_fu_178_p4 = k_1_reg_175;

assign k_cast_fu_354_p1 = $signed(k_fu_348_p2);

assign k_fu_348_p2 = ($signed(ap_const_lv31_FF) - $signed(start_cast_fu_306_p1));

assign outputBit_3_fu_470_p2 = (outputBit_1_phi_fu_211_p4 + ap_const_lv32_1);

assign outputBit_5_fu_340_p3 = ((tmp_16_fu_250_p3[0:0] === 1'b1) ? p_neg_t5_fu_334_p2 : p_and_f_fu_314_p3);

assign outputBit_phi_fu_189_p4 = outputBit_reg_186;

assign p_and_f_fu_314_p3 = {{ap_const_lv29_0}, {tmp_17_fu_310_p1}};

assign p_and_t_fu_326_p3 = {{ap_const_lv29_0}, {tmp_18_fu_322_p1}};

assign p_k_1_fu_408_p3 = ((grp_fu_230_p2[0:0] === 1'b1) ? grp_fu_237_p2 : k_1_reg_175);

assign p_lshr_cast_fu_274_p1 = tmp_6_fu_264_p4;

assign p_lshr_f_cast_fu_294_p1 = tmp_7_fu_284_p4;

assign p_neg_fu_258_p2 = (ap_const_lv32_0 - shift);

assign p_neg_t5_fu_334_p2 = (ap_const_lv32_0 - p_and_t_fu_326_p3);

assign p_neg_t_fu_278_p2 = (ap_const_lv30_0 - p_lshr_cast_fu_274_p1);

assign start_cast_fu_306_p1 = $signed(start_fu_298_p3);

assign start_fu_298_p3 = ((tmp_16_fu_250_p3[0:0] === 1'b1) ? p_neg_t_fu_278_p2 : p_lshr_f_cast_fu_294_p1);

assign tmp_16_fu_250_p3 = shift[ap_const_lv32_1F];

assign tmp_17_fu_310_p1 = shift[2:0];

assign tmp_18_fu_322_p1 = p_neg_fu_258_p2[2:0];

assign tmp_19_fu_379_p3 = i_reg_142[ap_const_lv32_8];

assign tmp_20_fu_448_p1 = outputBit_reg_186[7:0];

assign tmp_6_fu_264_p4 = {{p_neg_fu_258_p2[ap_const_lv32_1F : ap_const_lv32_3]}};

assign tmp_77_fu_422_p2 = ap_const_lv8_1 << j_cast1_reg_523;

assign tmp_78_fu_427_p2 = (tmp_77_fu_422_p2 & a_q0);

assign tmp_7_fu_284_p4 = {{shift[ap_const_lv32_1F : ap_const_lv32_3]}};

assign tmp_80_fu_443_p1 = $signed(grp_fu_237_p2);

assign tmp_81_fu_464_p2 = (out_r_q0 + b_reg_547);

assign tmp_82_fu_452_p2 = b_reg_547 << tmp_20_fu_448_p1;

assign tmp_83_fu_438_p1 = $signed(k_1_reg_175);

assign tmp_84_fu_457_p2 = (tmp_82_fu_452_p2 + out_r_q0);

assign tmp_fu_244_p2 = ((shift == ap_const_lv32_0) ? 1'b1 : 1'b0);

assign tmp_i9_fu_370_p1 = i_i7_reg_131;

assign tmp_i_fu_488_p1 = i_i_reg_219;

assign tmp_s_fu_387_p1 = $unsigned(i_cast_fu_375_p1);

always @ (posedge ap_clk) begin
    j_cast1_reg_523[7:4] <= 4'b0000;
    tmp_i_reg_586[63:9] <= 55'b0000000000000000000000000000000000000000000000000000000;
end

endmodule //bigint_math_bigint_leftshift
