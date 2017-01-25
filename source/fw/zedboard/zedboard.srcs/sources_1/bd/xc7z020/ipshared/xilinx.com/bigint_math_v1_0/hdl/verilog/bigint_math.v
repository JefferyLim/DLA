// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2016.2
// Copyright (C) 1986-2016 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="bigint_math,hls_ip_2016_2,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=1,HLS_INPUT_PART=xc7z020clg484-1,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=3.370000,HLS_SYN_LAT=0,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=0,HLS_SYN_FF=6198,HLS_SYN_LUT=15546}" *)

module bigint_math (
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
        ap_clk,
        ap_rst_n,
        interrupt
);

parameter    C_S_AXI_PERIPH_BUS_DATA_WIDTH = 32;
parameter    ap_const_int64_8 = 8;
parameter    C_S_AXI_PERIPH_BUS_ADDR_WIDTH = 10;
parameter    C_S_AXI_DATA_WIDTH = 32;

parameter C_S_AXI_PERIPH_BUS_WSTRB_WIDTH = (C_S_AXI_PERIPH_BUS_DATA_WIDTH / ap_const_int64_8);
parameter C_S_AXI_WSTRB_WIDTH = (C_S_AXI_DATA_WIDTH / ap_const_int64_8);

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
input   ap_clk;
input   ap_rst_n;
output   interrupt;

wire    ap_start;
wire    ap_done;
wire    ap_idle;
wire    ap_ready;
wire   [2047:0] number1_V;
wire   [2047:0] number2_V;
wire   [2047:0] output_V;
reg    output_V_ap_vld;
reg    ap_rst_n_inv;

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
    .number1_V(number1_V),
    .number2_V(number2_V),
    .output_V(output_V),
    .output_V_ap_vld(output_V_ap_vld)
);

always @ (*) begin
    if (~(ap_start == 1'b0)) begin
        output_V_ap_vld = 1'b1;
    end else begin
        output_V_ap_vld = 1'b0;
    end
end

assign ap_done = ap_start;

assign ap_idle = 1'b1;

assign ap_ready = ap_start;

always @ (*) begin
    ap_rst_n_inv = ~ap_rst_n;
end

assign output_V = (number2_V ^ number1_V);

endmodule //bigint_math