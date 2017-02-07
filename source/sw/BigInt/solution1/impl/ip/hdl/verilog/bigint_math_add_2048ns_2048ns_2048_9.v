// ==============================================================
// File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2016.2
// Copyright (C) 1986-2016 Xilinx, Inc. All Rights Reserved.
// 
// ==============================================================


`timescale 1 ns / 1 ps

module bigint_math_add_2048ns_2048ns_2048_9_AddSubnS_0(clk, reset, ce, a, b, s);

// ---- input/output ports list here ----
input clk;
input reset;
input ce;
input [2048 - 1 : 0] a;
input [2048 - 1 : 0] b;
output [2048 - 1 : 0] s;

// ---- register and wire type variables list here ----

// wire for the primary inputs
wire [2048 - 1 : 0] a_reg;
wire [2048 - 1 : 0] b_reg;

// wires for each small adder
wire [228 - 1 : 0] a0_cb;
wire [228 - 1 : 0] b0_cb;
wire [456 - 1 : 228] a1_cb;
wire [456 - 1 : 228] b1_cb;
wire [684 - 1 : 456] a2_cb;
wire [684 - 1 : 456] b2_cb;
wire [912 - 1 : 684] a3_cb;
wire [912 - 1 : 684] b3_cb;
wire [1140 - 1 : 912] a4_cb;
wire [1140 - 1 : 912] b4_cb;
wire [1368 - 1 : 1140] a5_cb;
wire [1368 - 1 : 1140] b5_cb;
wire [1596 - 1 : 1368] a6_cb;
wire [1596 - 1 : 1368] b6_cb;
wire [1824 - 1 : 1596] a7_cb;
wire [1824 - 1 : 1596] b7_cb;
wire [2048 - 1 : 1824] a8_cb;
wire [2048 - 1 : 1824] b8_cb;

// registers for input register array
reg [228 - 1 : 0] a1_cb_regi1[1 - 1 : 0]; 
reg [228 - 1 : 0] b1_cb_regi1[1 - 1 : 0]; 
reg [228 - 1 : 0] a2_cb_regi2[2 - 1 : 0]; 
reg [228 - 1 : 0] b2_cb_regi2[2 - 1 : 0]; 
reg [228 - 1 : 0] a3_cb_regi3[3 - 1 : 0]; 
reg [228 - 1 : 0] b3_cb_regi3[3 - 1 : 0]; 
reg [228 - 1 : 0] a4_cb_regi4[4 - 1 : 0]; 
reg [228 - 1 : 0] b4_cb_regi4[4 - 1 : 0]; 
reg [228 - 1 : 0] a5_cb_regi5[5 - 1 : 0]; 
reg [228 - 1 : 0] b5_cb_regi5[5 - 1 : 0]; 
reg [228 - 1 : 0] a6_cb_regi6[6 - 1 : 0]; 
reg [228 - 1 : 0] b6_cb_regi6[6 - 1 : 0]; 
reg [228 - 1 : 0] a7_cb_regi7[7 - 1 : 0]; 
reg [228 - 1 : 0] b7_cb_regi7[7 - 1 : 0]; 
reg [224 - 1 : 0] a8_cb_regi8[8 - 1 : 0];
reg [224 - 1 : 0] b8_cb_regi8[8 - 1 : 0];

// wires for each full adder sum
wire [2048 - 1 : 0] fas;

// wires and register for carry out bit
wire faccout_ini;
wire faccout0_co0; 
wire faccout1_co1; 
wire faccout2_co2; 
wire faccout3_co3; 
wire faccout4_co4; 
wire faccout5_co5; 
wire faccout6_co6; 
wire faccout7_co7; 
wire faccout8_co8;

reg faccout0_co0_reg; 
reg faccout1_co1_reg; 
reg faccout2_co2_reg; 
reg faccout3_co3_reg; 
reg faccout4_co4_reg; 
reg faccout5_co5_reg; 
reg faccout6_co6_reg; 
reg faccout7_co7_reg; 

// registers for output register array
reg [228 - 1 : 0] s0_ca_rego0[7 - 0 : 0]; 
reg [228 - 1 : 0] s1_ca_rego1[7 - 1 : 0]; 
reg [228 - 1 : 0] s2_ca_rego2[7 - 2 : 0]; 
reg [228 - 1 : 0] s3_ca_rego3[7 - 3 : 0]; 
reg [228 - 1 : 0] s4_ca_rego4[7 - 4 : 0]; 
reg [228 - 1 : 0] s5_ca_rego5[7 - 5 : 0]; 
reg [228 - 1 : 0] s6_ca_rego6[7 - 6 : 0]; 
reg [228 - 1 : 0] s7_ca_rego7[7 - 7 : 0]; 

// wire for the temporary output
wire [2048 - 1 : 0] s_tmp;

// ---- RTL code for assignment statements/always blocks/module instantiations here ----
assign a_reg = a;
assign b_reg = b;

// small adder input assigments
assign a0_cb = a_reg[228 - 1 : 0];
assign b0_cb = b_reg[228 - 1 : 0];
assign a1_cb = a_reg[456 - 1 : 228];
assign b1_cb = b_reg[456 - 1 : 228];
assign a2_cb = a_reg[684 - 1 : 456];
assign b2_cb = b_reg[684 - 1 : 456];
assign a3_cb = a_reg[912 - 1 : 684];
assign b3_cb = b_reg[912 - 1 : 684];
assign a4_cb = a_reg[1140 - 1 : 912];
assign b4_cb = b_reg[1140 - 1 : 912];
assign a5_cb = a_reg[1368 - 1 : 1140];
assign b5_cb = b_reg[1368 - 1 : 1140];
assign a6_cb = a_reg[1596 - 1 : 1368];
assign b6_cb = b_reg[1596 - 1 : 1368];
assign a7_cb = a_reg[1824 - 1 : 1596];
assign b7_cb = b_reg[1824 - 1 : 1596];
assign a8_cb = a_reg[2048 - 1 : 1824];
assign b8_cb = b_reg[2048 - 1 : 1824];

// input register array
always @ (posedge clk) begin
    if (ce) begin
        a1_cb_regi1 [0] <= a1_cb;
        b1_cb_regi1 [0] <= b1_cb;
        a2_cb_regi2 [0] <= a2_cb;
        b2_cb_regi2 [0] <= b2_cb;
        a3_cb_regi3 [0] <= a3_cb;
        b3_cb_regi3 [0] <= b3_cb;
        a4_cb_regi4 [0] <= a4_cb;
        b4_cb_regi4 [0] <= b4_cb;
        a5_cb_regi5 [0] <= a5_cb;
        b5_cb_regi5 [0] <= b5_cb;
        a6_cb_regi6 [0] <= a6_cb;
        b6_cb_regi6 [0] <= b6_cb;
        a7_cb_regi7 [0] <= a7_cb;
        b7_cb_regi7 [0] <= b7_cb;
        a8_cb_regi8 [0] <= a8_cb;
        b8_cb_regi8 [0] <= b8_cb;
        a2_cb_regi2 [1] <= a2_cb_regi2 [0];
        b2_cb_regi2 [1] <= b2_cb_regi2 [0];
        a3_cb_regi3 [1] <= a3_cb_regi3 [0];
        b3_cb_regi3 [1] <= b3_cb_regi3 [0];
        a4_cb_regi4 [1] <= a4_cb_regi4 [0];
        b4_cb_regi4 [1] <= b4_cb_regi4 [0];
        a5_cb_regi5 [1] <= a5_cb_regi5 [0];
        b5_cb_regi5 [1] <= b5_cb_regi5 [0];
        a6_cb_regi6 [1] <= a6_cb_regi6 [0];
        b6_cb_regi6 [1] <= b6_cb_regi6 [0];
        a7_cb_regi7 [1] <= a7_cb_regi7 [0];
        b7_cb_regi7 [1] <= b7_cb_regi7 [0];
        a8_cb_regi8 [1] <= a8_cb_regi8 [0];
        b8_cb_regi8 [1] <= b8_cb_regi8 [0];
        a3_cb_regi3 [2] <= a3_cb_regi3 [1];
        b3_cb_regi3 [2] <= b3_cb_regi3 [1];
        a4_cb_regi4 [2] <= a4_cb_regi4 [1];
        b4_cb_regi4 [2] <= b4_cb_regi4 [1];
        a5_cb_regi5 [2] <= a5_cb_regi5 [1];
        b5_cb_regi5 [2] <= b5_cb_regi5 [1];
        a6_cb_regi6 [2] <= a6_cb_regi6 [1];
        b6_cb_regi6 [2] <= b6_cb_regi6 [1];
        a7_cb_regi7 [2] <= a7_cb_regi7 [1];
        b7_cb_regi7 [2] <= b7_cb_regi7 [1];
        a8_cb_regi8 [2] <= a8_cb_regi8 [1];
        b8_cb_regi8 [2] <= b8_cb_regi8 [1];
        a4_cb_regi4 [3] <= a4_cb_regi4 [2];
        b4_cb_regi4 [3] <= b4_cb_regi4 [2];
        a5_cb_regi5 [3] <= a5_cb_regi5 [2];
        b5_cb_regi5 [3] <= b5_cb_regi5 [2];
        a6_cb_regi6 [3] <= a6_cb_regi6 [2];
        b6_cb_regi6 [3] <= b6_cb_regi6 [2];
        a7_cb_regi7 [3] <= a7_cb_regi7 [2];
        b7_cb_regi7 [3] <= b7_cb_regi7 [2];
        a8_cb_regi8 [3] <= a8_cb_regi8 [2];
        b8_cb_regi8 [3] <= b8_cb_regi8 [2];
        a5_cb_regi5 [4] <= a5_cb_regi5 [3];
        b5_cb_regi5 [4] <= b5_cb_regi5 [3];
        a6_cb_regi6 [4] <= a6_cb_regi6 [3];
        b6_cb_regi6 [4] <= b6_cb_regi6 [3];
        a7_cb_regi7 [4] <= a7_cb_regi7 [3];
        b7_cb_regi7 [4] <= b7_cb_regi7 [3];
        a8_cb_regi8 [4] <= a8_cb_regi8 [3];
        b8_cb_regi8 [4] <= b8_cb_regi8 [3];
        a6_cb_regi6 [5] <= a6_cb_regi6 [4];
        b6_cb_regi6 [5] <= b6_cb_regi6 [4];
        a7_cb_regi7 [5] <= a7_cb_regi7 [4];
        b7_cb_regi7 [5] <= b7_cb_regi7 [4];
        a8_cb_regi8 [5] <= a8_cb_regi8 [4];
        b8_cb_regi8 [5] <= b8_cb_regi8 [4];
        a7_cb_regi7 [6] <= a7_cb_regi7 [5];
        b7_cb_regi7 [6] <= b7_cb_regi7 [5];
        a8_cb_regi8 [6] <= a8_cb_regi8 [5];
        b8_cb_regi8 [6] <= b8_cb_regi8 [5];
        a8_cb_regi8 [7] <= a8_cb_regi8 [6];
        b8_cb_regi8 [7] <= b8_cb_regi8 [6];
    end
end

// carry out bit processing
always @ (posedge clk) begin
    if (ce) begin
        faccout0_co0_reg <= faccout0_co0;
        faccout1_co1_reg <= faccout1_co1;
        faccout2_co2_reg <= faccout2_co2;
        faccout3_co3_reg <= faccout3_co3;
        faccout4_co4_reg <= faccout4_co4;
        faccout5_co5_reg <= faccout5_co5;
        faccout6_co6_reg <= faccout6_co6;
        faccout7_co7_reg <= faccout7_co7;
    end
end

// small adder generation 
        bigint_math_add_2048ns_2048ns_2048_9_AddSubnS_0_fadder u0 (
            .faa    ( a0_cb ),
            .fab    ( b0_cb ),
            .facin  ( faccout_ini ),
            .fas    ( fas[227:0] ),
            .facout ( faccout0_co0 )
        );
        bigint_math_add_2048ns_2048ns_2048_9_AddSubnS_0_fadder u1 (
            .faa    ( a1_cb_regi1[0] ),
            .fab    ( b1_cb_regi1[0] ),
            .facin  ( faccout0_co0_reg),
            .fas    ( fas[455:228] ),
            .facout ( faccout1_co1 )
        );
        bigint_math_add_2048ns_2048ns_2048_9_AddSubnS_0_fadder u2 (
            .faa    ( a2_cb_regi2[1] ),
            .fab    ( b2_cb_regi2[1] ),
            .facin  ( faccout1_co1_reg),
            .fas    ( fas[683:456] ),
            .facout ( faccout2_co2 )
        );
        bigint_math_add_2048ns_2048ns_2048_9_AddSubnS_0_fadder u3 (
            .faa    ( a3_cb_regi3[2] ),
            .fab    ( b3_cb_regi3[2] ),
            .facin  ( faccout2_co2_reg),
            .fas    ( fas[911:684] ),
            .facout ( faccout3_co3 )
        );
        bigint_math_add_2048ns_2048ns_2048_9_AddSubnS_0_fadder u4 (
            .faa    ( a4_cb_regi4[3] ),
            .fab    ( b4_cb_regi4[3] ),
            .facin  ( faccout3_co3_reg),
            .fas    ( fas[1139:912] ),
            .facout ( faccout4_co4 )
        );
        bigint_math_add_2048ns_2048ns_2048_9_AddSubnS_0_fadder u5 (
            .faa    ( a5_cb_regi5[4] ),
            .fab    ( b5_cb_regi5[4] ),
            .facin  ( faccout4_co4_reg),
            .fas    ( fas[1367:1140] ),
            .facout ( faccout5_co5 )
        );
        bigint_math_add_2048ns_2048ns_2048_9_AddSubnS_0_fadder u6 (
            .faa    ( a6_cb_regi6[5] ),
            .fab    ( b6_cb_regi6[5] ),
            .facin  ( faccout5_co5_reg),
            .fas    ( fas[1595:1368] ),
            .facout ( faccout6_co6 )
        );
        bigint_math_add_2048ns_2048ns_2048_9_AddSubnS_0_fadder u7 (
            .faa    ( a7_cb_regi7[6] ),
            .fab    ( b7_cb_regi7[6] ),
            .facin  ( faccout6_co6_reg),
            .fas    ( fas[1823:1596] ),
            .facout ( faccout7_co7 )
        );
        bigint_math_add_2048ns_2048ns_2048_9_AddSubnS_0_fadder_f u8 (
            .faa    ( a8_cb_regi8[7] ),
            .fab    ( b8_cb_regi8[7] ),
            .facin  ( faccout7_co7_reg ),
            .fas    ( fas[2047 :1824] ),
            .facout ( faccout8_co8 )
        );

assign faccout_ini = 1'b0;

// output register array
always @ (posedge clk) begin
    if (ce) begin
        s0_ca_rego0 [0] <= fas[228-1 : 0];
        s1_ca_rego1 [0] <= fas[456-1 : 228];
        s2_ca_rego2 [0] <= fas[684-1 : 456];
        s3_ca_rego3 [0] <= fas[912-1 : 684];
        s4_ca_rego4 [0] <= fas[1140-1 : 912];
        s5_ca_rego5 [0] <= fas[1368-1 : 1140];
        s6_ca_rego6 [0] <= fas[1596-1 : 1368];
        s7_ca_rego7 [0] <= fas[1824-1 : 1596];
        s0_ca_rego0 [1] <= s0_ca_rego0 [0];
        s0_ca_rego0 [2] <= s0_ca_rego0 [1];
        s0_ca_rego0 [3] <= s0_ca_rego0 [2];
        s0_ca_rego0 [4] <= s0_ca_rego0 [3];
        s0_ca_rego0 [5] <= s0_ca_rego0 [4];
        s0_ca_rego0 [6] <= s0_ca_rego0 [5];
        s0_ca_rego0 [7] <= s0_ca_rego0 [6];
        s1_ca_rego1 [1] <= s1_ca_rego1 [0];
        s1_ca_rego1 [2] <= s1_ca_rego1 [1];
        s1_ca_rego1 [3] <= s1_ca_rego1 [2];
        s1_ca_rego1 [4] <= s1_ca_rego1 [3];
        s1_ca_rego1 [5] <= s1_ca_rego1 [4];
        s1_ca_rego1 [6] <= s1_ca_rego1 [5];
        s2_ca_rego2 [1] <= s2_ca_rego2 [0];
        s2_ca_rego2 [2] <= s2_ca_rego2 [1];
        s2_ca_rego2 [3] <= s2_ca_rego2 [2];
        s2_ca_rego2 [4] <= s2_ca_rego2 [3];
        s2_ca_rego2 [5] <= s2_ca_rego2 [4];
        s3_ca_rego3 [1] <= s3_ca_rego3 [0];
        s3_ca_rego3 [2] <= s3_ca_rego3 [1];
        s3_ca_rego3 [3] <= s3_ca_rego3 [2];
        s3_ca_rego3 [4] <= s3_ca_rego3 [3];
        s4_ca_rego4 [1] <= s4_ca_rego4 [0];
        s4_ca_rego4 [2] <= s4_ca_rego4 [1];
        s4_ca_rego4 [3] <= s4_ca_rego4 [2];
        s5_ca_rego5 [1] <= s5_ca_rego5 [0];
        s5_ca_rego5 [2] <= s5_ca_rego5 [1];
        s6_ca_rego6 [1] <= s6_ca_rego6 [0];
    end
end

// get the s_tmp, assign it to the primary output
assign s_tmp[228-1 : 0] = s0_ca_rego0[7];
assign s_tmp[456-1 : 228] = s1_ca_rego1[6];
assign s_tmp[684-1 : 456] = s2_ca_rego2[5];
assign s_tmp[912-1 : 684] = s3_ca_rego3[4];
assign s_tmp[1140-1 : 912] = s4_ca_rego4[3];
assign s_tmp[1368-1 : 1140] = s5_ca_rego5[2];
assign s_tmp[1596-1 : 1368] = s6_ca_rego6[1];
assign s_tmp[1824-1 : 1596] = s7_ca_rego7[0];
assign s_tmp[2048 - 1 : 1824] = fas[2047 :1824];

assign s = s_tmp;

endmodule

// short adder
module bigint_math_add_2048ns_2048ns_2048_9_AddSubnS_0_fadder 
#(parameter
    N = 228
)(
    input  [N-1 : 0]  faa,
    input  [N-1 : 0]  fab,
    input  wire  facin,
    output [N-1 : 0]  fas,
    output wire  facout
);
assign {facout, fas} = faa + fab + facin;

endmodule

// the final stage short adder
module bigint_math_add_2048ns_2048ns_2048_9_AddSubnS_0_fadder_f 
#(parameter
    N = 224
)(
    input  [N-1 : 0]  faa,
    input  [N-1 : 0]  fab,
    input  wire  facin,
    output [N-1 : 0]  fas,
    output wire  facout
);
assign {facout, fas} = faa + fab + facin;

endmodule

`timescale 1 ns / 1 ps
module bigint_math_add_2048ns_2048ns_2048_9(
    clk,
    reset,
    ce,
    din0,
    din1,
    dout);

parameter ID = 32'd1;
parameter NUM_STAGE = 32'd1;
parameter din0_WIDTH = 32'd1;
parameter din1_WIDTH = 32'd1;
parameter dout_WIDTH = 32'd1;
input clk;
input reset;
input ce;
input[din0_WIDTH - 1:0] din0;
input[din1_WIDTH - 1:0] din1;
output[dout_WIDTH - 1:0] dout;



bigint_math_add_2048ns_2048ns_2048_9_AddSubnS_0 bigint_math_add_2048ns_2048ns_2048_9_AddSubnS_0_U(
    .clk( clk ),
    .reset( reset ),
    .ce( ce ),
    .a( din0 ),
    .b( din1 ),
    .s( dout ));

endmodule
