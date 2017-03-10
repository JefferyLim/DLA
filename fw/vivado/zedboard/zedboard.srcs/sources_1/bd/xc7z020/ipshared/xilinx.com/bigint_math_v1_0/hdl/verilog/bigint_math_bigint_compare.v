// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2016.2
// Copyright (C) 1986-2016 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module bigint_math_bigint_compare (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        a_address0,
        a_ce0,
        a_q0,
        b_address0,
        b_ce0,
        b_q0,
        ap_return
);

parameter    ap_ST_st1_fsm_0 = 7'b1;
parameter    ap_ST_st2_fsm_1 = 7'b10;
parameter    ap_ST_st3_fsm_2 = 7'b100;
parameter    ap_ST_st4_fsm_3 = 7'b1000;
parameter    ap_ST_st5_fsm_4 = 7'b10000;
parameter    ap_ST_st6_fsm_5 = 7'b100000;
parameter    ap_ST_st7_fsm_6 = 7'b1000000;
parameter    ap_const_lv32_0 = 32'b00000000000000000000000000000000;
parameter    ap_const_lv32_1 = 32'b1;
parameter    ap_const_lv32_3 = 32'b11;
parameter    ap_const_lv32_4 = 32'b100;
parameter    ap_const_lv32_5 = 32'b101;
parameter    ap_const_lv9_0 = 9'b000000000;
parameter    ap_const_lv32_2 = 32'b10;
parameter    ap_const_lv32_6 = 32'b110;
parameter    ap_const_lv2_0 = 2'b00;
parameter    ap_const_lv2_1 = 2'b1;
parameter    ap_const_lv2_3 = 2'b11;
parameter    ap_const_lv64_0 = 64'b0000000000000000000000000000000000000000000000000000000000000000;
parameter    ap_const_lv9_100 = 9'b100000000;
parameter    ap_const_lv9_1 = 9'b1;
parameter    ap_const_lv32_8 = 32'b1000;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [7:0] a_address0;
output   a_ce0;
input  [7:0] a_q0;
output  [7:0] b_address0;
output   b_ce0;
input  [7:0] b_q0;
output  [1:0] ap_return;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg a_ce0;
reg b_ce0;
reg[1:0] ap_return;

(* fsm_encoding = "none" *) reg   [6:0] ap_CS_fsm;
reg    ap_sig_cseq_ST_st1_fsm_0;
reg    ap_sig_24;
wire   [8:0] i_7_fu_178_p2;
reg   [8:0] i_7_reg_264;
reg    ap_sig_cseq_ST_st2_fsm_1;
reg    ap_sig_47;
wire   [63:0] tmp_s_fu_184_p1;
reg   [63:0] tmp_s_reg_269;
wire   [0:0] exitcond_fu_172_p2;
wire   [1:0] state_q0;
reg    ap_sig_cseq_ST_st4_fsm_3;
reg    ap_sig_70;
wire   [0:0] grp_fu_166_p2;
reg   [0:0] tmp_reg_305;
wire   [0:0] tmp_36_fu_208_p3;
reg   [0:0] tmp_36_reg_309;
reg    ap_sig_cseq_ST_st5_fsm_4;
reg    ap_sig_81;
wire   [8:0] i_6_fu_216_p2;
reg   [8:0] i_6_reg_313;
reg   [1:0] state_load_1_reg_323;
reg    ap_sig_cseq_ST_st6_fsm_5;
reg    ap_sig_95;
wire   [31:0] p_flag_fu_227_p3;
reg   [31:0] p_flag_reg_329;
wire   [0:0] tmp_48_fu_235_p2;
reg   [0:0] tmp_48_reg_334;
reg   [7:0] state_address0;
reg    state_ce0;
reg    state_we0;
reg   [1:0] state_d0;
reg   [8:0] i_reg_115;
reg    ap_sig_cseq_ST_st3_fsm_2;
reg    ap_sig_121;
reg   [8:0] i_1_reg_126;
reg    ap_sig_cseq_ST_st7_fsm_6;
reg    ap_sig_130;
wire   [0:0] or_cond1_fu_256_p2;
wire   [0:0] or_cond_fu_246_p2;
reg   [31:0] flag_reg_137;
reg   [1:0] p_0_phi_fu_153_p8;
reg   [1:0] p_0_reg_149;
wire   [0:0] tmp_42_fu_190_p2;
wire   [0:0] tmp_43_fu_196_p2;
wire   [0:0] tmp_47_fu_202_p2;
wire   [7:0] state_addr_2_gep_fu_92_p3;
wire   [7:0] state_addr_1_gep_fu_100_p3;
wire   [63:0] tmp_44_fu_222_p1;
wire   [0:0] tmp_46_fu_241_p2;
wire   [0:0] tmp_49_fu_251_p2;
reg   [1:0] ap_return_preg;
reg   [6:0] ap_NS_fsm;
reg    ap_sig_284;
reg    ap_sig_245;
reg    ap_sig_176;
reg    ap_sig_180;

// power-on initialization
initial begin
#0 ap_CS_fsm = 7'b1;
#0 ap_return_preg = 2'b00;
end

bigint_math_bigint_compare_state #(
    .DataWidth( 2 ),
    .AddressRange( 256 ),
    .AddressWidth( 8 ))
state_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(state_address0),
    .ce0(state_ce0),
    .we0(state_we0),
    .d0(state_d0),
    .q0(state_q0)
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
        ap_return_preg <= ap_const_lv2_0;
    end else begin
        if (((1'b1 == ap_sig_cseq_ST_st7_fsm_6) & ((1'b0 == tmp_reg_305) | ~(1'b0 == or_cond_fu_246_p2) | ~(1'b0 == or_cond1_fu_256_p2) | ~(1'b0 == tmp_36_reg_309)))) begin
            ap_return_preg <= p_0_phi_fu_153_p8;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_sig_cseq_ST_st4_fsm_3) & ~(1'b0 == grp_fu_166_p2))) begin
        flag_reg_137 <= ap_const_lv32_0;
    end else if (((1'b1 == ap_sig_cseq_ST_st7_fsm_6) & (1'b0 == or_cond1_fu_256_p2) & ~(1'b0 == tmp_reg_305) & (1'b0 == tmp_36_reg_309) & (1'b0 == or_cond_fu_246_p2))) begin
        flag_reg_137 <= p_flag_reg_329;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_sig_cseq_ST_st4_fsm_3) & ~(1'b0 == grp_fu_166_p2))) begin
        i_1_reg_126 <= ap_const_lv9_0;
    end else if (((1'b1 == ap_sig_cseq_ST_st7_fsm_6) & (1'b0 == or_cond1_fu_256_p2) & ~(1'b0 == tmp_reg_305) & (1'b0 == tmp_36_reg_309) & (1'b0 == or_cond_fu_246_p2))) begin
        i_1_reg_126 <= i_6_reg_313;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_sig_cseq_ST_st3_fsm_2)) begin
        i_reg_115 <= i_7_reg_264;
    end else if (((1'b1 == ap_sig_cseq_ST_st1_fsm_0) & ~(ap_start == 1'b0))) begin
        i_reg_115 <= ap_const_lv9_0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_sig_cseq_ST_st7_fsm_6) & ~(1'b0 == tmp_reg_305) & (1'b0 == tmp_36_reg_309) & (1'b0 == or_cond_fu_246_p2) & ~(1'b0 == or_cond1_fu_256_p2))) begin
        p_0_reg_149 <= ap_const_lv2_3;
    end else if (((1'b1 == ap_sig_cseq_ST_st7_fsm_6) & ~(1'b0 == tmp_reg_305) & (1'b0 == tmp_36_reg_309) & ~(1'b0 == or_cond_fu_246_p2))) begin
        p_0_reg_149 <= ap_const_lv2_1;
    end else if (((1'b1 == ap_sig_cseq_ST_st5_fsm_4) & ~(1'b0 == tmp_36_fu_208_p3))) begin
        p_0_reg_149 <= ap_const_lv2_0;
    end else if (((1'b1 == ap_sig_cseq_ST_st4_fsm_3) & (1'b0 == grp_fu_166_p2))) begin
        p_0_reg_149 <= state_q0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_sig_cseq_ST_st5_fsm_4)) begin
        i_6_reg_313 <= i_6_fu_216_p2;
        tmp_36_reg_309 <= i_1_reg_126[ap_const_lv32_8];
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_sig_cseq_ST_st2_fsm_1)) begin
        i_7_reg_264 <= i_7_fu_178_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_sig_cseq_ST_st6_fsm_5)) begin
        p_flag_reg_329 <= p_flag_fu_227_p3;
        state_load_1_reg_323 <= state_q0;
        tmp_48_reg_334 <= tmp_48_fu_235_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_sig_cseq_ST_st4_fsm_3)) begin
        tmp_reg_305 <= grp_fu_166_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_sig_cseq_ST_st2_fsm_1) & (exitcond_fu_172_p2 == 1'b0))) begin
        tmp_s_reg_269[8 : 0] <= tmp_s_fu_184_p1[8 : 0];
    end
end

always @ (*) begin
    if ((1'b1 == ap_sig_cseq_ST_st2_fsm_1)) begin
        a_ce0 = 1'b1;
    end else begin
        a_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((((1'b0 == ap_start) & (1'b1 == ap_sig_cseq_ST_st1_fsm_0)) | ((1'b1 == ap_sig_cseq_ST_st7_fsm_6) & ((1'b0 == tmp_reg_305) | ~(1'b0 == or_cond_fu_246_p2) | ~(1'b0 == or_cond1_fu_256_p2) | ~(1'b0 == tmp_36_reg_309))))) begin
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
    if (((1'b1 == ap_sig_cseq_ST_st7_fsm_6) & ((1'b0 == tmp_reg_305) | ~(1'b0 == or_cond_fu_246_p2) | ~(1'b0 == or_cond1_fu_256_p2) | ~(1'b0 == tmp_36_reg_309)))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_sig_cseq_ST_st7_fsm_6) & ((1'b0 == tmp_reg_305) | ~(1'b0 == or_cond_fu_246_p2) | ~(1'b0 == or_cond1_fu_256_p2) | ~(1'b0 == tmp_36_reg_309)))) begin
        ap_return = p_0_phi_fu_153_p8;
    end else begin
        ap_return = ap_return_preg;
    end
end

always @ (*) begin
    if (ap_sig_24) begin
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
    if (ap_sig_121) begin
        ap_sig_cseq_ST_st3_fsm_2 = 1'b1;
    end else begin
        ap_sig_cseq_ST_st3_fsm_2 = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_70) begin
        ap_sig_cseq_ST_st4_fsm_3 = 1'b1;
    end else begin
        ap_sig_cseq_ST_st4_fsm_3 = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_81) begin
        ap_sig_cseq_ST_st5_fsm_4 = 1'b1;
    end else begin
        ap_sig_cseq_ST_st5_fsm_4 = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_95) begin
        ap_sig_cseq_ST_st6_fsm_5 = 1'b1;
    end else begin
        ap_sig_cseq_ST_st6_fsm_5 = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_130) begin
        ap_sig_cseq_ST_st7_fsm_6 = 1'b1;
    end else begin
        ap_sig_cseq_ST_st7_fsm_6 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_sig_cseq_ST_st2_fsm_1)) begin
        b_ce0 = 1'b1;
    end else begin
        b_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_245) begin
        if (ap_sig_284) begin
            p_0_phi_fu_153_p8 = ap_const_lv2_3;
        end else if (~(1'b0 == or_cond_fu_246_p2)) begin
            p_0_phi_fu_153_p8 = ap_const_lv2_1;
        end else begin
            p_0_phi_fu_153_p8 = p_0_reg_149;
        end
    end else begin
        p_0_phi_fu_153_p8 = p_0_reg_149;
    end
end

always @ (*) begin
    if (((1'b1 == ap_sig_cseq_ST_st3_fsm_2) & ~(1'b0 == tmp_42_fu_190_p2))) begin
        state_address0 = state_addr_1_gep_fu_100_p3;
    end else if (((1'b1 == ap_sig_cseq_ST_st3_fsm_2) & (1'b0 == tmp_42_fu_190_p2) & ~(1'b0 == tmp_43_fu_196_p2))) begin
        state_address0 = state_addr_2_gep_fu_92_p3;
    end else if (((1'b1 == ap_sig_cseq_ST_st3_fsm_2) & (1'b0 == tmp_42_fu_190_p2) & (1'b0 == tmp_43_fu_196_p2) & ~(1'b0 == tmp_47_fu_202_p2))) begin
        state_address0 = tmp_s_reg_269;
    end else if ((1'b1 == ap_sig_cseq_ST_st5_fsm_4)) begin
        state_address0 = tmp_44_fu_222_p1;
    end else if ((1'b1 == ap_sig_cseq_ST_st2_fsm_1)) begin
        state_address0 = ap_const_lv64_0;
    end else begin
        state_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_sig_cseq_ST_st2_fsm_1) | (1'b1 == ap_sig_cseq_ST_st5_fsm_4) | ((1'b1 == ap_sig_cseq_ST_st3_fsm_2) & (1'b0 == tmp_42_fu_190_p2) & (1'b0 == tmp_43_fu_196_p2) & ~(1'b0 == tmp_47_fu_202_p2)) | ((1'b1 == ap_sig_cseq_ST_st3_fsm_2) & (1'b0 == tmp_42_fu_190_p2) & ~(1'b0 == tmp_43_fu_196_p2)) | ((1'b1 == ap_sig_cseq_ST_st3_fsm_2) & ~(1'b0 == tmp_42_fu_190_p2)))) begin
        state_ce0 = 1'b1;
    end else begin
        state_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_sig_cseq_ST_st3_fsm_2)) begin
        if (~(1'b0 == tmp_42_fu_190_p2)) begin
            state_d0 = ap_const_lv2_1;
        end else if (ap_sig_180) begin
            state_d0 = ap_const_lv2_3;
        end else if (ap_sig_176) begin
            state_d0 = ap_const_lv2_0;
        end else begin
            state_d0 = 'bx;
        end
    end else begin
        state_d0 = 'bx;
    end
end

always @ (*) begin
    if ((((1'b1 == ap_sig_cseq_ST_st3_fsm_2) & (1'b0 == tmp_42_fu_190_p2) & (1'b0 == tmp_43_fu_196_p2) & ~(1'b0 == tmp_47_fu_202_p2)) | ((1'b1 == ap_sig_cseq_ST_st3_fsm_2) & (1'b0 == tmp_42_fu_190_p2) & ~(1'b0 == tmp_43_fu_196_p2)) | ((1'b1 == ap_sig_cseq_ST_st3_fsm_2) & ~(1'b0 == tmp_42_fu_190_p2)))) begin
        state_we0 = 1'b1;
    end else begin
        state_we0 = 1'b0;
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
            if (~(exitcond_fu_172_p2 == 1'b0)) begin
                ap_NS_fsm = ap_ST_st4_fsm_3;
            end else begin
                ap_NS_fsm = ap_ST_st3_fsm_2;
            end
        end
        ap_ST_st3_fsm_2 : begin
            ap_NS_fsm = ap_ST_st2_fsm_1;
        end
        ap_ST_st4_fsm_3 : begin
            if ((1'b0 == grp_fu_166_p2)) begin
                ap_NS_fsm = ap_ST_st7_fsm_6;
            end else begin
                ap_NS_fsm = ap_ST_st5_fsm_4;
            end
        end
        ap_ST_st5_fsm_4 : begin
            if (~(1'b0 == tmp_36_fu_208_p3)) begin
                ap_NS_fsm = ap_ST_st7_fsm_6;
            end else begin
                ap_NS_fsm = ap_ST_st6_fsm_5;
            end
        end
        ap_ST_st6_fsm_5 : begin
            ap_NS_fsm = ap_ST_st7_fsm_6;
        end
        ap_ST_st7_fsm_6 : begin
            if (((1'b0 == tmp_reg_305) | ~(1'b0 == or_cond_fu_246_p2) | ~(1'b0 == or_cond1_fu_256_p2) | ~(1'b0 == tmp_36_reg_309))) begin
                ap_NS_fsm = ap_ST_st1_fsm_0;
            end else begin
                ap_NS_fsm = ap_ST_st5_fsm_4;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign a_address0 = tmp_s_fu_184_p1;

always @ (*) begin
    ap_sig_121 = (1'b1 == ap_CS_fsm[ap_const_lv32_2]);
end

always @ (*) begin
    ap_sig_130 = (1'b1 == ap_CS_fsm[ap_const_lv32_6]);
end

always @ (*) begin
    ap_sig_176 = ((1'b0 == tmp_42_fu_190_p2) & (1'b0 == tmp_43_fu_196_p2) & ~(1'b0 == tmp_47_fu_202_p2));
end

always @ (*) begin
    ap_sig_180 = ((1'b0 == tmp_42_fu_190_p2) & ~(1'b0 == tmp_43_fu_196_p2));
end

always @ (*) begin
    ap_sig_24 = (ap_CS_fsm[ap_const_lv32_0] == 1'b1);
end

always @ (*) begin
    ap_sig_245 = ((1'b1 == ap_sig_cseq_ST_st7_fsm_6) & ~(1'b0 == tmp_reg_305) & (1'b0 == tmp_36_reg_309));
end

always @ (*) begin
    ap_sig_284 = ((1'b0 == or_cond_fu_246_p2) & ~(1'b0 == or_cond1_fu_256_p2));
end

always @ (*) begin
    ap_sig_47 = (1'b1 == ap_CS_fsm[ap_const_lv32_1]);
end

always @ (*) begin
    ap_sig_70 = (1'b1 == ap_CS_fsm[ap_const_lv32_3]);
end

always @ (*) begin
    ap_sig_81 = (1'b1 == ap_CS_fsm[ap_const_lv32_4]);
end

always @ (*) begin
    ap_sig_95 = (1'b1 == ap_CS_fsm[ap_const_lv32_5]);
end

assign b_address0 = tmp_s_fu_184_p1;

assign exitcond_fu_172_p2 = ((i_reg_115 == ap_const_lv9_100) ? 1'b1 : 1'b0);

assign grp_fu_166_p2 = ((state_q0 == ap_const_lv2_0) ? 1'b1 : 1'b0);

assign i_6_fu_216_p2 = (i_1_reg_126 + ap_const_lv9_1);

assign i_7_fu_178_p2 = (i_reg_115 + ap_const_lv9_1);

assign or_cond1_fu_256_p2 = (tmp_49_fu_251_p2 & tmp_48_reg_334);

assign or_cond_fu_246_p2 = (tmp_46_fu_241_p2 & tmp_48_reg_334);

assign p_flag_fu_227_p3 = ((grp_fu_166_p2[0:0] === 1'b1) ? ap_const_lv32_1 : flag_reg_137);

assign state_addr_1_gep_fu_100_p3 = tmp_s_reg_269;

assign state_addr_2_gep_fu_92_p3 = tmp_s_reg_269;

assign tmp_36_fu_208_p3 = i_1_reg_126[ap_const_lv32_8];

assign tmp_42_fu_190_p2 = ((a_q0 > b_q0) ? 1'b1 : 1'b0);

assign tmp_43_fu_196_p2 = ((a_q0 < b_q0) ? 1'b1 : 1'b0);

assign tmp_44_fu_222_p1 = i_1_reg_126;

assign tmp_46_fu_241_p2 = ((state_load_1_reg_323 == ap_const_lv2_1) ? 1'b1 : 1'b0);

assign tmp_47_fu_202_p2 = ((a_q0 == b_q0) ? 1'b1 : 1'b0);

assign tmp_48_fu_235_p2 = ((p_flag_fu_227_p3 == ap_const_lv32_1) ? 1'b1 : 1'b0);

assign tmp_49_fu_251_p2 = ((state_load_1_reg_323 == ap_const_lv2_3) ? 1'b1 : 1'b0);

assign tmp_s_fu_184_p1 = i_reg_115;

always @ (posedge ap_clk) begin
    tmp_s_reg_269[63:9] <= 55'b0000000000000000000000000000000000000000000000000000000;
end

endmodule //bigint_math_bigint_compare
