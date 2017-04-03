// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2016.2
// Copyright (C) 1986-2016 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module bigint_math_bigint_rightshift (
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
        a_q0
);

parameter    ap_ST_st1_fsm_0 = 6'b1;
parameter    ap_ST_st2_fsm_1 = 6'b10;
parameter    ap_ST_st3_fsm_2 = 6'b100;
parameter    ap_ST_st4_fsm_3 = 6'b1000;
parameter    ap_ST_st5_fsm_4 = 6'b10000;
parameter    ap_ST_st6_fsm_5 = 6'b100000;
parameter    ap_const_lv32_0 = 32'b00000000000000000000000000000000;
parameter    ap_const_lv32_1 = 32'b1;
parameter    ap_const_lv32_2 = 32'b10;
parameter    ap_const_lv32_3 = 32'b11;
parameter    ap_const_lv32_4 = 32'b100;
parameter    ap_const_lv32_5 = 32'b101;
parameter    ap_const_lv9_0 = 9'b000000000;
parameter    ap_const_lv4_7 = 4'b111;
parameter    ap_const_lv32_6 = 32'b110;
parameter    ap_const_lv32_7 = 32'b111;
parameter    ap_const_lv8_0 = 8'b00000000;
parameter    ap_const_lv9_100 = 9'b100000000;
parameter    ap_const_lv9_1 = 9'b1;
parameter    ap_const_lv8_1 = 8'b1;
parameter    ap_const_lv32_FFFFFFFF = 32'b11111111111111111111111111111111;
parameter    ap_const_lv8_7 = 8'b111;
parameter    ap_const_lv4_F = 4'b1111;

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

reg ap_done;
reg ap_idle;
reg ap_ready;
reg[7:0] out_r_address0;
reg out_r_ce0;
reg out_r_we0;
reg[7:0] out_r_d0;
reg a_ce0;

(* fsm_encoding = "none" *) reg   [5:0] ap_CS_fsm;
reg    ap_sig_cseq_ST_st1_fsm_0;
reg    ap_sig_23;
wire   [8:0] i_5_fu_186_p2;
reg    ap_sig_cseq_ST_st2_fsm_1;
reg    ap_sig_47;
wire   [8:0] i_3_fu_203_p2;
reg   [8:0] i_3_reg_335;
reg    ap_sig_cseq_ST_st3_fsm_2;
reg    ap_sig_56;
reg   [7:0] a_addr_reg_340;
wire   [0:0] exitcond_fu_197_p2;
wire  signed [7:0] j_cast_fu_214_p1;
reg  signed [7:0] j_cast_reg_345;
reg    ap_sig_cseq_ST_st4_fsm_3;
reg    ap_sig_71;
wire   [31:0] p_k_1_fu_238_p3;
wire   [0:0] tmp_4_fu_218_p3;
wire   [7:0] b_fu_257_p2;
reg   [7:0] b_reg_359;
reg    ap_sig_cseq_ST_st5_fsm_4;
reg    ap_sig_86;
wire   [0:0] tmp_17_fu_262_p2;
reg   [0:0] tmp_17_reg_365;
reg   [7:0] out_addr_1_reg_369;
wire   [31:0] k_4_fu_273_p2;
reg   [31:0] k_4_reg_374;
reg   [7:0] out_addr_reg_379;
wire   [31:0] outputBit_2_fu_312_p2;
reg    ap_sig_cseq_ST_st6_fsm_5;
reg    ap_sig_107;
wire   [3:0] j_4_fu_318_p2;
reg   [8:0] i_i_reg_88;
wire   [0:0] exitcond_i_fu_180_p2;
reg   [8:0] i_reg_99;
reg   [31:0] k_reg_110;
reg   [3:0] j_reg_122;
reg   [31:0] k_1_reg_134;
reg   [31:0] k_2_phi_fu_161_p4;
reg   [31:0] outputBit_reg_145;
reg   [31:0] outputBit_1_phi_fu_172_p4;
wire   [63:0] tmp_i_fu_192_p1;
wire   [63:0] tmp_fu_209_p1;
wire  signed [63:0] tmp_21_fu_268_p1;
wire  signed [63:0] tmp_18_fu_279_p1;
wire   [7:0] tmp_22_fu_293_p2;
wire   [7:0] tmp_19_fu_305_p2;
wire   [0:0] tmp_s_fu_226_p2;
wire   [31:0] k_3_fu_232_p2;
wire   [7:0] tmp_15_fu_246_p2;
wire   [7:0] tmp_16_fu_251_p2;
wire   [7:0] tmp_6_fu_284_p1;
wire   [7:0] tmp_20_fu_288_p2;
wire   [7:0] tmp_5_fu_300_p2;
reg   [5:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_CS_fsm = 6'b1;
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_st1_fsm_0;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_sig_cseq_ST_st2_fsm_1) & (1'b0 == exitcond_i_fu_180_p2))) begin
        i_i_reg_88 <= i_5_fu_186_p2;
    end else if (((1'b1 == ap_sig_cseq_ST_st1_fsm_0) & ~(ap_start == 1'b0))) begin
        i_i_reg_88 <= ap_const_lv9_0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_sig_cseq_ST_st2_fsm_1) & ~(1'b0 == exitcond_i_fu_180_p2))) begin
        i_reg_99 <= ap_const_lv9_0;
    end else if (((1'b1 == ap_sig_cseq_ST_st4_fsm_3) & ~(1'b0 == tmp_4_fu_218_p3))) begin
        i_reg_99 <= i_3_reg_335;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_sig_cseq_ST_st6_fsm_5)) begin
        j_reg_122 <= j_4_fu_318_p2;
    end else if (((1'b1 == ap_sig_cseq_ST_st3_fsm_2) & (exitcond_fu_197_p2 == 1'b0))) begin
        j_reg_122 <= ap_const_lv4_7;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_sig_cseq_ST_st6_fsm_5)) begin
        k_1_reg_134 <= k_2_phi_fu_161_p4;
    end else if (((1'b1 == ap_sig_cseq_ST_st3_fsm_2) & (exitcond_fu_197_p2 == 1'b0))) begin
        k_1_reg_134 <= k_reg_110;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_sig_cseq_ST_st2_fsm_1) & ~(1'b0 == exitcond_i_fu_180_p2))) begin
        k_reg_110 <= ap_const_lv32_0;
    end else if (((1'b1 == ap_sig_cseq_ST_st4_fsm_3) & ~(1'b0 == tmp_4_fu_218_p3))) begin
        k_reg_110 <= p_k_1_fu_238_p3;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_sig_cseq_ST_st6_fsm_5)) begin
        outputBit_reg_145 <= outputBit_2_fu_312_p2;
    end else if (((1'b1 == ap_sig_cseq_ST_st3_fsm_2) & (exitcond_fu_197_p2 == 1'b0))) begin
        outputBit_reg_145 <= ap_const_lv32_6;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_sig_cseq_ST_st3_fsm_2) & (exitcond_fu_197_p2 == 1'b0))) begin
        a_addr_reg_340 <= tmp_fu_209_p1;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_sig_cseq_ST_st5_fsm_4)) begin
        b_reg_359 <= b_fu_257_p2;
        tmp_17_reg_365 <= tmp_17_fu_262_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_sig_cseq_ST_st3_fsm_2)) begin
        i_3_reg_335 <= i_3_fu_203_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_sig_cseq_ST_st4_fsm_3)) begin
        j_cast_reg_345 <= j_cast_fu_214_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_sig_cseq_ST_st5_fsm_4) & ~(1'b0 == tmp_17_fu_262_p2))) begin
        k_4_reg_374 <= k_4_fu_273_p2;
        out_addr_reg_379 <= tmp_18_fu_279_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_sig_cseq_ST_st5_fsm_4) & (1'b0 == tmp_17_fu_262_p2))) begin
        out_addr_1_reg_369 <= tmp_21_fu_268_p1;
    end
end

always @ (*) begin
    if ((1'b1 == ap_sig_cseq_ST_st4_fsm_3)) begin
        a_ce0 = 1'b1;
    end else begin
        a_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((((1'b0 == ap_start) & (1'b1 == ap_sig_cseq_ST_st1_fsm_0)) | ((1'b1 == ap_sig_cseq_ST_st3_fsm_2) & ~(exitcond_fu_197_p2 == 1'b0)))) begin
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
    if (((1'b1 == ap_sig_cseq_ST_st3_fsm_2) & ~(exitcond_fu_197_p2 == 1'b0))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_23) begin
        ap_sig_cseq_ST_st1_fsm_0 = 1'b1;
    end else begin
        ap_sig_cseq_ST_st1_fsm_0 = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_47) begin
        ap_sig_cseq_ST_st2_fsm_1 = 1'b1;
    end else begin
        ap_sig_cseq_ST_st2_fsm_1 = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_56) begin
        ap_sig_cseq_ST_st3_fsm_2 = 1'b1;
    end else begin
        ap_sig_cseq_ST_st3_fsm_2 = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_71) begin
        ap_sig_cseq_ST_st4_fsm_3 = 1'b1;
    end else begin
        ap_sig_cseq_ST_st4_fsm_3 = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_86) begin
        ap_sig_cseq_ST_st5_fsm_4 = 1'b1;
    end else begin
        ap_sig_cseq_ST_st5_fsm_4 = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_107) begin
        ap_sig_cseq_ST_st6_fsm_5 = 1'b1;
    end else begin
        ap_sig_cseq_ST_st6_fsm_5 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_sig_cseq_ST_st6_fsm_5)) begin
        if ((1'b0 == tmp_17_reg_365)) begin
            k_2_phi_fu_161_p4 = k_1_reg_134;
        end else if (~(1'b0 == tmp_17_reg_365)) begin
            k_2_phi_fu_161_p4 = k_4_reg_374;
        end else begin
            k_2_phi_fu_161_p4 = 'bx;
        end
    end else begin
        k_2_phi_fu_161_p4 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_sig_cseq_ST_st6_fsm_5) & ~(1'b0 == tmp_17_reg_365))) begin
        out_r_address0 = out_addr_reg_379;
    end else if (((1'b1 == ap_sig_cseq_ST_st6_fsm_5) & (1'b0 == tmp_17_reg_365))) begin
        out_r_address0 = out_addr_1_reg_369;
    end else if ((1'b1 == ap_sig_cseq_ST_st2_fsm_1)) begin
        out_r_address0 = tmp_i_fu_192_p1;
    end else if (((1'b1 == ap_sig_cseq_ST_st5_fsm_4) & ~(1'b0 == tmp_17_fu_262_p2))) begin
        out_r_address0 = tmp_18_fu_279_p1;
    end else if (((1'b1 == ap_sig_cseq_ST_st5_fsm_4) & (1'b0 == tmp_17_fu_262_p2))) begin
        out_r_address0 = tmp_21_fu_268_p1;
    end else begin
        out_r_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_sig_cseq_ST_st2_fsm_1) | ((1'b1 == ap_sig_cseq_ST_st5_fsm_4) & (1'b0 == tmp_17_fu_262_p2)) | ((1'b1 == ap_sig_cseq_ST_st5_fsm_4) & ~(1'b0 == tmp_17_fu_262_p2)) | ((1'b1 == ap_sig_cseq_ST_st6_fsm_5) & ~(1'b0 == tmp_17_reg_365)) | ((1'b1 == ap_sig_cseq_ST_st6_fsm_5) & (1'b0 == tmp_17_reg_365)))) begin
        out_r_ce0 = 1'b1;
    end else begin
        out_r_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_sig_cseq_ST_st6_fsm_5) & ~(1'b0 == tmp_17_reg_365))) begin
        out_r_d0 = tmp_19_fu_305_p2;
    end else if (((1'b1 == ap_sig_cseq_ST_st6_fsm_5) & (1'b0 == tmp_17_reg_365))) begin
        out_r_d0 = tmp_22_fu_293_p2;
    end else if ((1'b1 == ap_sig_cseq_ST_st2_fsm_1)) begin
        out_r_d0 = ap_const_lv8_0;
    end else begin
        out_r_d0 = 'bx;
    end
end

always @ (*) begin
    if ((((1'b1 == ap_sig_cseq_ST_st2_fsm_1) & (1'b0 == exitcond_i_fu_180_p2)) | ((1'b1 == ap_sig_cseq_ST_st6_fsm_5) & ~(1'b0 == tmp_17_reg_365)) | ((1'b1 == ap_sig_cseq_ST_st6_fsm_5) & (1'b0 == tmp_17_reg_365)))) begin
        out_r_we0 = 1'b1;
    end else begin
        out_r_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_sig_cseq_ST_st6_fsm_5)) begin
        if ((1'b0 == tmp_17_reg_365)) begin
            outputBit_1_phi_fu_172_p4 = outputBit_reg_145;
        end else if (~(1'b0 == tmp_17_reg_365)) begin
            outputBit_1_phi_fu_172_p4 = ap_const_lv32_7;
        end else begin
            outputBit_1_phi_fu_172_p4 = 'bx;
        end
    end else begin
        outputBit_1_phi_fu_172_p4 = 'bx;
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
            if ((1'b0 == exitcond_i_fu_180_p2)) begin
                ap_NS_fsm = ap_ST_st2_fsm_1;
            end else begin
                ap_NS_fsm = ap_ST_st3_fsm_2;
            end
        end
        ap_ST_st3_fsm_2 : begin
            if (~(exitcond_fu_197_p2 == 1'b0)) begin
                ap_NS_fsm = ap_ST_st1_fsm_0;
            end else begin
                ap_NS_fsm = ap_ST_st4_fsm_3;
            end
        end
        ap_ST_st4_fsm_3 : begin
            if (~(1'b0 == tmp_4_fu_218_p3)) begin
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
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign a_address0 = a_addr_reg_340;

always @ (*) begin
    ap_sig_107 = (1'b1 == ap_CS_fsm[ap_const_lv32_5]);
end

always @ (*) begin
    ap_sig_23 = (ap_CS_fsm[ap_const_lv32_0] == 1'b1);
end

always @ (*) begin
    ap_sig_47 = (1'b1 == ap_CS_fsm[ap_const_lv32_1]);
end

always @ (*) begin
    ap_sig_56 = (1'b1 == ap_CS_fsm[ap_const_lv32_2]);
end

always @ (*) begin
    ap_sig_71 = (1'b1 == ap_CS_fsm[ap_const_lv32_3]);
end

always @ (*) begin
    ap_sig_86 = (1'b1 == ap_CS_fsm[ap_const_lv32_4]);
end

assign b_fu_257_p2 = tmp_16_fu_251_p2 >> j_cast_reg_345;

assign exitcond_fu_197_p2 = ((i_reg_99 == ap_const_lv9_100) ? 1'b1 : 1'b0);

assign exitcond_i_fu_180_p2 = ((i_i_reg_88 == ap_const_lv9_100) ? 1'b1 : 1'b0);

assign i_3_fu_203_p2 = (i_reg_99 + ap_const_lv9_1);

assign i_5_fu_186_p2 = (i_i_reg_88 + ap_const_lv9_1);

assign j_4_fu_318_p2 = ($signed(j_reg_122) + $signed(ap_const_lv4_F));

assign j_cast_fu_214_p1 = $signed(j_reg_122);

assign k_3_fu_232_p2 = (k_1_reg_134 + ap_const_lv32_1);

assign k_4_fu_273_p2 = (ap_const_lv32_1 + k_1_reg_134);

assign outputBit_2_fu_312_p2 = ($signed(outputBit_1_phi_fu_172_p4) + $signed(ap_const_lv32_FFFFFFFF));

assign p_k_1_fu_238_p3 = ((tmp_s_fu_226_p2[0:0] === 1'b1) ? k_3_fu_232_p2 : k_1_reg_134);

assign tmp_15_fu_246_p2 = ap_const_lv8_1 << j_cast_reg_345;

assign tmp_16_fu_251_p2 = (tmp_15_fu_246_p2 & a_q0);

assign tmp_17_fu_262_p2 = ((outputBit_reg_145 == ap_const_lv32_FFFFFFFF) ? 1'b1 : 1'b0);

assign tmp_18_fu_279_p1 = $signed(k_4_fu_273_p2);

assign tmp_19_fu_305_p2 = (out_r_q0 + tmp_5_fu_300_p2);

assign tmp_20_fu_288_p2 = b_reg_359 << tmp_6_fu_284_p1;

assign tmp_21_fu_268_p1 = $signed(k_1_reg_134);

assign tmp_22_fu_293_p2 = (tmp_20_fu_288_p2 + out_r_q0);

assign tmp_4_fu_218_p3 = j_reg_122[ap_const_lv32_3];

assign tmp_5_fu_300_p2 = b_reg_359 << ap_const_lv8_7;

assign tmp_6_fu_284_p1 = outputBit_reg_145[7:0];

assign tmp_fu_209_p1 = i_reg_99;

assign tmp_i_fu_192_p1 = i_i_reg_88;

assign tmp_s_fu_226_p2 = ((outputBit_reg_145 == ap_const_lv32_0) ? 1'b1 : 1'b0);

endmodule //bigint_math_bigint_rightshift
