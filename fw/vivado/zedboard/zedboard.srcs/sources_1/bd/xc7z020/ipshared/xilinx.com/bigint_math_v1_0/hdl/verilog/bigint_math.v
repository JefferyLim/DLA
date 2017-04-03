// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2016.2
// Copyright (C) 1986-2016 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="bigint_math,hls_ip_2016_2,{HLS_INPUT_TYPE=c,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xc7z020clg484-1,HLS_INPUT_CLOCK=50.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=13.510000,HLS_SYN_LAT=-1,HLS_SYN_TPT=none,HLS_SYN_MEM=46,HLS_SYN_DSP=6,HLS_SYN_FF=4206,HLS_SYN_LUT=7125}" *)

module bigint_math (
        ap_clk,
        ap_rst_n,
        s_axi_PERIPH_BUS_AWVALID,
        s_axi_PERIPH_BUS_AWREADY,
        s_axi_PERIPH_BUS_AWADDR,
        s_axi_PERIPH_BUS_WVALID,
        s_axi_PERIPH_BUS_WREADY,
        s_axi_PERIPH_BUS_WDATA,
        s_axi_PERIPH_BUS_WSTRB,
        s_axi_PERIPH_BUS_ARVALID,
        s_axi_PERIPH_BUS_ARREADY,
        s_axi_PERIPH_BUS_ARADDR,
        s_axi_PERIPH_BUS_RVALID,
        s_axi_PERIPH_BUS_RREADY,
        s_axi_PERIPH_BUS_RDATA,
        s_axi_PERIPH_BUS_RRESP,
        s_axi_PERIPH_BUS_BVALID,
        s_axi_PERIPH_BUS_BREADY,
        s_axi_PERIPH_BUS_BRESP,
        interrupt
);

parameter    ap_ST_st1_fsm_0 = 3'b1;
parameter    ap_ST_st2_fsm_1 = 3'b10;
parameter    ap_ST_st3_fsm_2 = 3'b100;
parameter    ap_const_lv32_0 = 32'b00000000000000000000000000000000;
parameter    C_S_AXI_PERIPH_BUS_DATA_WIDTH = 32;
parameter    ap_const_int64_8 = 8;
parameter    C_S_AXI_PERIPH_BUS_ADDR_WIDTH = 11;
parameter    C_S_AXI_DATA_WIDTH = 32;
parameter    ap_const_lv32_1 = 32'b1;
parameter    ap_const_lv9_0 = 9'b000000000;
parameter    ap_const_lv32_2 = 32'b10;
parameter    ap_const_lv8_0 = 8'b00000000;
parameter    ap_const_lv9_100 = 9'b100000000;
parameter    ap_const_lv9_1 = 9'b1;

parameter C_S_AXI_PERIPH_BUS_WSTRB_WIDTH = (C_S_AXI_PERIPH_BUS_DATA_WIDTH / ap_const_int64_8);
parameter C_S_AXI_WSTRB_WIDTH = (C_S_AXI_DATA_WIDTH / ap_const_int64_8);

input   ap_clk;
input   ap_rst_n;
input   s_axi_PERIPH_BUS_AWVALID;
output   s_axi_PERIPH_BUS_AWREADY;
input  [C_S_AXI_PERIPH_BUS_ADDR_WIDTH - 1 : 0] s_axi_PERIPH_BUS_AWADDR;
input   s_axi_PERIPH_BUS_WVALID;
output   s_axi_PERIPH_BUS_WREADY;
input  [C_S_AXI_PERIPH_BUS_DATA_WIDTH - 1 : 0] s_axi_PERIPH_BUS_WDATA;
input  [C_S_AXI_PERIPH_BUS_WSTRB_WIDTH - 1 : 0] s_axi_PERIPH_BUS_WSTRB;
input   s_axi_PERIPH_BUS_ARVALID;
output   s_axi_PERIPH_BUS_ARREADY;
input  [C_S_AXI_PERIPH_BUS_ADDR_WIDTH - 1 : 0] s_axi_PERIPH_BUS_ARADDR;
output   s_axi_PERIPH_BUS_RVALID;
input   s_axi_PERIPH_BUS_RREADY;
output  [C_S_AXI_PERIPH_BUS_DATA_WIDTH - 1 : 0] s_axi_PERIPH_BUS_RDATA;
output  [1:0] s_axi_PERIPH_BUS_RRESP;
output   s_axi_PERIPH_BUS_BVALID;
input   s_axi_PERIPH_BUS_BREADY;
output  [1:0] s_axi_PERIPH_BUS_BRESP;
output   interrupt;

reg    ap_rst_n_inv;
wire    ap_start;
reg    ap_done;
reg    ap_idle;
(* fsm_encoding = "none" *) reg   [2:0] ap_CS_fsm;
reg    ap_sig_cseq_ST_st1_fsm_0;
reg    ap_sig_20;
reg    ap_ready;
reg   [7:0] a_address0;
reg    a_ce0;
reg    a_we0;
reg   [7:0] a_d0;
wire   [7:0] b_q0;
wire   [7:0] c_q0;
wire   [7:0] d_q0;
wire   [8:0] i_fu_104_p2;
reg    ap_sig_cseq_ST_st2_fsm_1;
reg    ap_sig_91;
wire    grp_bigint_math_bigint_modexp_fu_82_ap_start;
wire    grp_bigint_math_bigint_modexp_fu_82_ap_done;
wire    grp_bigint_math_bigint_modexp_fu_82_ap_idle;
wire    grp_bigint_math_bigint_modexp_fu_82_ap_ready;
wire   [7:0] grp_bigint_math_bigint_modexp_fu_82_out_r_address0;
wire    grp_bigint_math_bigint_modexp_fu_82_out_r_ce0;
wire    grp_bigint_math_bigint_modexp_fu_82_out_r_we0;
wire   [7:0] grp_bigint_math_bigint_modexp_fu_82_out_r_d0;
wire   [7:0] grp_bigint_math_bigint_modexp_fu_82_base_r_address0;
wire    grp_bigint_math_bigint_modexp_fu_82_base_r_ce0;
wire   [7:0] grp_bigint_math_bigint_modexp_fu_82_exp_address0;
wire    grp_bigint_math_bigint_modexp_fu_82_exp_ce0;
wire   [7:0] grp_bigint_math_bigint_modexp_fu_82_mod_r_address0;
wire    grp_bigint_math_bigint_modexp_fu_82_mod_r_ce0;
reg   [8:0] i_i_reg_71;
wire   [0:0] exitcond_i_fu_98_p2;
reg    ap_reg_grp_bigint_math_bigint_modexp_fu_82_ap_start;
reg    ap_sig_cseq_ST_st3_fsm_2;
reg    ap_sig_131;
wire   [63:0] tmp_i_fu_110_p1;
reg   [2:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_CS_fsm = 3'b1;
#0 ap_reg_grp_bigint_math_bigint_modexp_fu_82_ap_start = 1'b0;
end

bigint_math_PERIPH_BUS_s_axi #(
    .C_S_AXI_ADDR_WIDTH( C_S_AXI_PERIPH_BUS_ADDR_WIDTH ),
    .C_S_AXI_DATA_WIDTH( C_S_AXI_PERIPH_BUS_DATA_WIDTH ))
bigint_math_PERIPH_BUS_s_axi_U(
    .AWVALID(s_axi_PERIPH_BUS_AWVALID),
    .AWREADY(s_axi_PERIPH_BUS_AWREADY),
    .AWADDR(s_axi_PERIPH_BUS_AWADDR),
    .WVALID(s_axi_PERIPH_BUS_WVALID),
    .WREADY(s_axi_PERIPH_BUS_WREADY),
    .WDATA(s_axi_PERIPH_BUS_WDATA),
    .WSTRB(s_axi_PERIPH_BUS_WSTRB),
    .ARVALID(s_axi_PERIPH_BUS_ARVALID),
    .ARREADY(s_axi_PERIPH_BUS_ARREADY),
    .ARADDR(s_axi_PERIPH_BUS_ARADDR),
    .RVALID(s_axi_PERIPH_BUS_RVALID),
    .RREADY(s_axi_PERIPH_BUS_RREADY),
    .RDATA(s_axi_PERIPH_BUS_RDATA),
    .RRESP(s_axi_PERIPH_BUS_RRESP),
    .BVALID(s_axi_PERIPH_BUS_BVALID),
    .BREADY(s_axi_PERIPH_BUS_BREADY),
    .BRESP(s_axi_PERIPH_BUS_BRESP),
    .ACLK(ap_clk),
    .ARESET(ap_rst_n_inv),
    .ACLK_EN(1'b1),
    .ap_start(ap_start),
    .interrupt(interrupt),
    .ap_ready(ap_ready),
    .ap_done(ap_done),
    .ap_idle(ap_idle),
    .a_address0(a_address0),
    .a_ce0(a_ce0),
    .a_we0(a_we0),
    .a_d0(a_d0),
    .b_address0(grp_bigint_math_bigint_modexp_fu_82_base_r_address0),
    .b_ce0(grp_bigint_math_bigint_modexp_fu_82_base_r_ce0),
    .b_q0(b_q0),
    .c_address0(grp_bigint_math_bigint_modexp_fu_82_exp_address0),
    .c_ce0(grp_bigint_math_bigint_modexp_fu_82_exp_ce0),
    .c_q0(c_q0),
    .d_address0(grp_bigint_math_bigint_modexp_fu_82_mod_r_address0),
    .d_ce0(grp_bigint_math_bigint_modexp_fu_82_mod_r_ce0),
    .d_q0(d_q0)
);

bigint_math_bigint_modexp grp_bigint_math_bigint_modexp_fu_82(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .ap_start(grp_bigint_math_bigint_modexp_fu_82_ap_start),
    .ap_done(grp_bigint_math_bigint_modexp_fu_82_ap_done),
    .ap_idle(grp_bigint_math_bigint_modexp_fu_82_ap_idle),
    .ap_ready(grp_bigint_math_bigint_modexp_fu_82_ap_ready),
    .out_r_address0(grp_bigint_math_bigint_modexp_fu_82_out_r_address0),
    .out_r_ce0(grp_bigint_math_bigint_modexp_fu_82_out_r_ce0),
    .out_r_we0(grp_bigint_math_bigint_modexp_fu_82_out_r_we0),
    .out_r_d0(grp_bigint_math_bigint_modexp_fu_82_out_r_d0),
    .base_r_address0(grp_bigint_math_bigint_modexp_fu_82_base_r_address0),
    .base_r_ce0(grp_bigint_math_bigint_modexp_fu_82_base_r_ce0),
    .base_r_q0(b_q0),
    .exp_address0(grp_bigint_math_bigint_modexp_fu_82_exp_address0),
    .exp_ce0(grp_bigint_math_bigint_modexp_fu_82_exp_ce0),
    .exp_q0(c_q0),
    .mod_r_address0(grp_bigint_math_bigint_modexp_fu_82_mod_r_address0),
    .mod_r_ce0(grp_bigint_math_bigint_modexp_fu_82_mod_r_ce0),
    .mod_r_q0(d_q0)
);

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        ap_CS_fsm <= ap_ST_st1_fsm_0;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        ap_reg_grp_bigint_math_bigint_modexp_fu_82_ap_start <= 1'b0;
    end else begin
        if (((1'b1 == ap_sig_cseq_ST_st2_fsm_1) & ~(exitcond_i_fu_98_p2 == 1'b0))) begin
            ap_reg_grp_bigint_math_bigint_modexp_fu_82_ap_start <= 1'b1;
        end else if ((1'b1 == grp_bigint_math_bigint_modexp_fu_82_ap_ready)) begin
            ap_reg_grp_bigint_math_bigint_modexp_fu_82_ap_start <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_sig_cseq_ST_st2_fsm_1) & (exitcond_i_fu_98_p2 == 1'b0))) begin
        i_i_reg_71 <= i_fu_104_p2;
    end else if (((1'b1 == ap_sig_cseq_ST_st1_fsm_0) & ~(ap_start == 1'b0))) begin
        i_i_reg_71 <= ap_const_lv9_0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_sig_cseq_ST_st2_fsm_1) & (exitcond_i_fu_98_p2 == 1'b0))) begin
        a_address0 = tmp_i_fu_110_p1;
    end else if ((1'b1 == ap_sig_cseq_ST_st3_fsm_2)) begin
        a_address0 = grp_bigint_math_bigint_modexp_fu_82_out_r_address0;
    end else begin
        a_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_sig_cseq_ST_st2_fsm_1) & (exitcond_i_fu_98_p2 == 1'b0))) begin
        a_ce0 = 1'b1;
    end else if ((1'b1 == ap_sig_cseq_ST_st3_fsm_2)) begin
        a_ce0 = grp_bigint_math_bigint_modexp_fu_82_out_r_ce0;
    end else begin
        a_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_sig_cseq_ST_st2_fsm_1) & (exitcond_i_fu_98_p2 == 1'b0))) begin
        a_d0 = ap_const_lv8_0;
    end else if ((1'b1 == ap_sig_cseq_ST_st3_fsm_2)) begin
        a_d0 = grp_bigint_math_bigint_modexp_fu_82_out_r_d0;
    end else begin
        a_d0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_sig_cseq_ST_st2_fsm_1) & (exitcond_i_fu_98_p2 == 1'b0))) begin
        a_we0 = 1'b1;
    end else if ((1'b1 == ap_sig_cseq_ST_st3_fsm_2)) begin
        a_we0 = grp_bigint_math_bigint_modexp_fu_82_out_r_we0;
    end else begin
        a_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_sig_cseq_ST_st3_fsm_2) & ~(1'b0 == grp_bigint_math_bigint_modexp_fu_82_ap_done))) begin
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
    if (((1'b1 == ap_sig_cseq_ST_st3_fsm_2) & ~(1'b0 == grp_bigint_math_bigint_modexp_fu_82_ap_done))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_20) begin
        ap_sig_cseq_ST_st1_fsm_0 = 1'b1;
    end else begin
        ap_sig_cseq_ST_st1_fsm_0 = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_91) begin
        ap_sig_cseq_ST_st2_fsm_1 = 1'b1;
    end else begin
        ap_sig_cseq_ST_st2_fsm_1 = 1'b0;
    end
end

always @ (*) begin
    if (ap_sig_131) begin
        ap_sig_cseq_ST_st3_fsm_2 = 1'b1;
    end else begin
        ap_sig_cseq_ST_st3_fsm_2 = 1'b0;
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
            if ((exitcond_i_fu_98_p2 == 1'b0)) begin
                ap_NS_fsm = ap_ST_st2_fsm_1;
            end else begin
                ap_NS_fsm = ap_ST_st3_fsm_2;
            end
        end
        ap_ST_st3_fsm_2 : begin
            if (~(1'b0 == grp_bigint_math_bigint_modexp_fu_82_ap_done)) begin
                ap_NS_fsm = ap_ST_st1_fsm_0;
            end else begin
                ap_NS_fsm = ap_ST_st3_fsm_2;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

always @ (*) begin
    ap_rst_n_inv = ~ap_rst_n;
end

always @ (*) begin
    ap_sig_131 = (1'b1 == ap_CS_fsm[ap_const_lv32_2]);
end

always @ (*) begin
    ap_sig_20 = (ap_CS_fsm[ap_const_lv32_0] == 1'b1);
end

always @ (*) begin
    ap_sig_91 = (1'b1 == ap_CS_fsm[ap_const_lv32_1]);
end

assign exitcond_i_fu_98_p2 = ((i_i_reg_71 == ap_const_lv9_100) ? 1'b1 : 1'b0);

assign grp_bigint_math_bigint_modexp_fu_82_ap_start = ap_reg_grp_bigint_math_bigint_modexp_fu_82_ap_start;

assign i_fu_104_p2 = (i_i_reg_71 + ap_const_lv9_1);

assign tmp_i_fu_110_p1 = i_i_reg_71;

endmodule //bigint_math