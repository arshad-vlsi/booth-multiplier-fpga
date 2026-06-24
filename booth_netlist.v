// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Fri Jun 12 01:26:33 2026
// Host        : LAPTOP-FSOCKRO5 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim C:/projects/project_1/booth_netlist.v
// Design      : booth_multiplication
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7k70tfbv676-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* NotValidForBitStream *)
module booth_multiplication
   (clk,
    rst,
    m,
    q,
    y);
  input clk;
  input rst;
  input [3:0]m;
  input [3:0]q;
  output [7:0]y;

  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire [3:0]m;
  wire [3:0]m_IBUF;
  wire [3:0]p_3_out;
  wire [3:0]q;
  wire [3:0]q_IBUF;
  wire rst;
  wire rst_IBUF;
  wire [7:0]y;
  wire \y[0]_i_1_n_0 ;
  wire \y[1]_i_1_n_0 ;
  wire \y[2]_i_1_n_0 ;
  wire \y[3]_i_4_n_0 ;
  wire \y[3]_i_5_n_0 ;
  wire \y[3]_i_6_n_0 ;
  wire \y[3]_i_7_n_0 ;
  wire \y[4]_i_4_n_0 ;
  wire \y[4]_i_5_n_0 ;
  wire \y[4]_i_6_n_0 ;
  wire \y[4]_i_7_n_0 ;
  wire \y[5]_i_2_n_0 ;
  wire \y[5]_i_3_n_0 ;
  wire \y[5]_i_4_n_0 ;
  wire \y[7]_i_2_n_0 ;
  wire \y[7]_i_3_n_0 ;
  wire [6:0]y_OBUF;
  wire \y_reg[3]_i_2_n_0 ;
  wire \y_reg[3]_i_3_n_0 ;
  wire \y_reg[4]_i_2_n_0 ;
  wire \y_reg[4]_i_3_n_0 ;

  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  IBUF \m_IBUF[0]_inst 
       (.I(m[0]),
        .O(m_IBUF[0]));
  IBUF \m_IBUF[1]_inst 
       (.I(m[1]),
        .O(m_IBUF[1]));
  IBUF \m_IBUF[2]_inst 
       (.I(m[2]),
        .O(m_IBUF[2]));
  IBUF \m_IBUF[3]_inst 
       (.I(m[3]),
        .O(m_IBUF[3]));
  IBUF \q_IBUF[0]_inst 
       (.I(q[0]),
        .O(q_IBUF[0]));
  IBUF \q_IBUF[1]_inst 
       (.I(q[1]),
        .O(q_IBUF[1]));
  IBUF \q_IBUF[2]_inst 
       (.I(q[2]),
        .O(q_IBUF[2]));
  IBUF \q_IBUF[3]_inst 
       (.I(q[3]),
        .O(q_IBUF[3]));
  IBUF rst_IBUF_inst
       (.I(rst),
        .O(rst_IBUF));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \y[0]_i_1 
       (.I0(m_IBUF[0]),
        .I1(q_IBUF[0]),
        .O(\y[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h7888)) 
    \y[1]_i_1 
       (.I0(m_IBUF[0]),
        .I1(q_IBUF[1]),
        .I2(m_IBUF[1]),
        .I3(q_IBUF[0]),
        .O(\y[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h4777B88878887888)) 
    \y[2]_i_1 
       (.I0(q_IBUF[2]),
        .I1(m_IBUF[0]),
        .I2(m_IBUF[1]),
        .I3(q_IBUF[1]),
        .I4(m_IBUF[2]),
        .I5(q_IBUF[0]),
        .O(\y[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hC7FF3800F000F000)) 
    \y[3]_i_4 
       (.I0(m_IBUF[0]),
        .I1(m_IBUF[1]),
        .I2(m_IBUF[2]),
        .I3(q_IBUF[1]),
        .I4(m_IBUF[3]),
        .I5(q_IBUF[0]),
        .O(\y[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h609F3F3FBF40C0C0)) 
    \y[3]_i_5 
       (.I0(m_IBUF[1]),
        .I1(m_IBUF[2]),
        .I2(q_IBUF[1]),
        .I3(m_IBUF[3]),
        .I4(q_IBUF[0]),
        .I5(m_IBUF[0]),
        .O(\y[3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hC393F55F96CCAA00)) 
    \y[3]_i_6 
       (.I0(q_IBUF[1]),
        .I1(m_IBUF[3]),
        .I2(m_IBUF[0]),
        .I3(m_IBUF[2]),
        .I4(q_IBUF[0]),
        .I5(m_IBUF[1]),
        .O(\y[3]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h360A335F635F6CA0)) 
    \y[3]_i_7 
       (.I0(q_IBUF[1]),
        .I1(m_IBUF[3]),
        .I2(m_IBUF[2]),
        .I3(q_IBUF[0]),
        .I4(m_IBUF[0]),
        .I5(m_IBUF[1]),
        .O(\y[3]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hEECCC44888888888)) 
    \y[4]_i_4 
       (.I0(q_IBUF[1]),
        .I1(m_IBUF[3]),
        .I2(m_IBUF[0]),
        .I3(m_IBUF[1]),
        .I4(m_IBUF[2]),
        .I5(q_IBUF[0]),
        .O(\y[4]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h2A28275F57D7E0A0)) 
    \y[4]_i_5 
       (.I0(q_IBUF[1]),
        .I1(m_IBUF[2]),
        .I2(m_IBUF[3]),
        .I3(q_IBUF[0]),
        .I4(m_IBUF[0]),
        .I5(m_IBUF[1]),
        .O(\y[4]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hED53DD77A8482888)) 
    \y[4]_i_6 
       (.I0(q_IBUF[1]),
        .I1(m_IBUF[3]),
        .I2(m_IBUF[0]),
        .I3(m_IBUF[1]),
        .I4(q_IBUF[0]),
        .I5(m_IBUF[2]),
        .O(\y[4]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h2237227732773788)) 
    \y[4]_i_7 
       (.I0(q_IBUF[1]),
        .I1(m_IBUF[3]),
        .I2(q_IBUF[0]),
        .I3(m_IBUF[2]),
        .I4(m_IBUF[0]),
        .I5(m_IBUF[1]),
        .O(\y[4]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \y[5]_i_1 
       (.I0(\y[7]_i_2_n_0 ),
        .I1(\y[5]_i_2_n_0 ),
        .I2(q_IBUF[2]),
        .I3(\y[5]_i_3_n_0 ),
        .I4(q_IBUF[3]),
        .I5(\y[5]_i_4_n_0 ),
        .O(p_3_out[2]));
  LUT6 #(
    .INIT(64'hFF47FFD7E8008800)) 
    \y[5]_i_2 
       (.I0(q_IBUF[1]),
        .I1(m_IBUF[1]),
        .I2(m_IBUF[0]),
        .I3(m_IBUF[2]),
        .I4(q_IBUF[0]),
        .I5(m_IBUF[3]),
        .O(\y[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0077207F22FF3700)) 
    \y[5]_i_3 
       (.I0(q_IBUF[1]),
        .I1(m_IBUF[3]),
        .I2(q_IBUF[0]),
        .I3(m_IBUF[2]),
        .I4(m_IBUF[0]),
        .I5(m_IBUF[1]),
        .O(\y[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hCCCCCCC088888880)) 
    \y[5]_i_4 
       (.I0(q_IBUF[1]),
        .I1(m_IBUF[3]),
        .I2(m_IBUF[0]),
        .I3(m_IBUF[1]),
        .I4(m_IBUF[2]),
        .I5(q_IBUF[0]),
        .O(\y[5]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hCFCFC0C0CFCAC0C0)) 
    \y[7]_i_1 
       (.I0(q_IBUF[2]),
        .I1(\y[7]_i_2_n_0 ),
        .I2(q_IBUF[3]),
        .I3(q_IBUF[1]),
        .I4(\y[7]_i_3_n_0 ),
        .I5(q_IBUF[0]),
        .O(p_3_out[3]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h5556)) 
    \y[7]_i_2 
       (.I0(m_IBUF[3]),
        .I1(m_IBUF[0]),
        .I2(m_IBUF[1]),
        .I3(m_IBUF[2]),
        .O(\y[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hFE00)) 
    \y[7]_i_3 
       (.I0(m_IBUF[2]),
        .I1(m_IBUF[1]),
        .I2(m_IBUF[0]),
        .I3(m_IBUF[3]),
        .O(\y[7]_i_3_n_0 ));
  OBUF \y_OBUF[0]_inst 
       (.I(y_OBUF[0]),
        .O(y[0]));
  OBUF \y_OBUF[1]_inst 
       (.I(y_OBUF[1]),
        .O(y[1]));
  OBUF \y_OBUF[2]_inst 
       (.I(y_OBUF[2]),
        .O(y[2]));
  OBUF \y_OBUF[3]_inst 
       (.I(y_OBUF[3]),
        .O(y[3]));
  OBUF \y_OBUF[4]_inst 
       (.I(y_OBUF[4]),
        .O(y[4]));
  OBUF \y_OBUF[5]_inst 
       (.I(y_OBUF[5]),
        .O(y[5]));
  OBUF \y_OBUF[6]_inst 
       (.I(y_OBUF[6]),
        .O(y[6]));
  OBUF \y_OBUF[7]_inst 
       (.I(y_OBUF[6]),
        .O(y[7]));
  FDCE #(
    .INIT(1'b0)) 
    \y_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\y[0]_i_1_n_0 ),
        .Q(y_OBUF[0]));
  FDCE #(
    .INIT(1'b0)) 
    \y_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\y[1]_i_1_n_0 ),
        .Q(y_OBUF[1]));
  FDCE #(
    .INIT(1'b0)) 
    \y_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(\y[2]_i_1_n_0 ),
        .Q(y_OBUF[2]));
  FDCE #(
    .INIT(1'b0)) 
    \y_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(p_3_out[0]),
        .Q(y_OBUF[3]));
  MUXF8 \y_reg[3]_i_1 
       (.I0(\y_reg[3]_i_2_n_0 ),
        .I1(\y_reg[3]_i_3_n_0 ),
        .O(p_3_out[0]),
        .S(q_IBUF[2]));
  MUXF7 \y_reg[3]_i_2 
       (.I0(\y[3]_i_4_n_0 ),
        .I1(\y[3]_i_5_n_0 ),
        .O(\y_reg[3]_i_2_n_0 ),
        .S(q_IBUF[3]));
  MUXF7 \y_reg[3]_i_3 
       (.I0(\y[3]_i_6_n_0 ),
        .I1(\y[3]_i_7_n_0 ),
        .O(\y_reg[3]_i_3_n_0 ),
        .S(q_IBUF[3]));
  FDCE #(
    .INIT(1'b0)) 
    \y_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(p_3_out[1]),
        .Q(y_OBUF[4]));
  MUXF8 \y_reg[4]_i_1 
       (.I0(\y_reg[4]_i_2_n_0 ),
        .I1(\y_reg[4]_i_3_n_0 ),
        .O(p_3_out[1]),
        .S(q_IBUF[2]));
  MUXF7 \y_reg[4]_i_2 
       (.I0(\y[4]_i_4_n_0 ),
        .I1(\y[4]_i_5_n_0 ),
        .O(\y_reg[4]_i_2_n_0 ),
        .S(q_IBUF[3]));
  MUXF7 \y_reg[4]_i_3 
       (.I0(\y[4]_i_6_n_0 ),
        .I1(\y[4]_i_7_n_0 ),
        .O(\y_reg[4]_i_3_n_0 ),
        .S(q_IBUF[3]));
  FDCE #(
    .INIT(1'b0)) 
    \y_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(p_3_out[2]),
        .Q(y_OBUF[5]));
  FDCE #(
    .INIT(1'b0)) 
    \y_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(rst_IBUF),
        .D(p_3_out[3]),
        .Q(y_OBUF[6]));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
