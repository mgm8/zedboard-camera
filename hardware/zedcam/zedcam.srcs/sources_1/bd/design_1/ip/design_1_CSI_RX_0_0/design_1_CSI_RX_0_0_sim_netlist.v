// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.1 (lin64) Build 2188600 Wed Apr  4 18:39:19 MDT 2018
// Date        : Wed Sep 26 17:22:47 2018
// Host        : debian-mgm running 64-bit Debian GNU/Linux testing (buster)
// Command     : write_verilog -force -mode funcsim
//               /home/gabriel/xilinx_projects/zedcam/zedcam.srcs/sources_1/bd/design_1/ip/design_1_CSI_RX_0_0/design_1_CSI_RX_0_0_sim_netlist.v
// Design      : design_1_CSI_RX_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_CSI_RX_0_0,CSI_RX,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "CSI_RX,Vivado 2018.1" *) 
(* NotValidForBitStream *)
module design_1_CSI_RX_0_0
   (pclk,
    vsync,
    hsync,
    data_in,
    data_clk,
    data_out);
  input pclk;
  input vsync;
  input hsync;
  input [7:0]data_in;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 data_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME data_clk, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_CSI_RX_0_0_data_clk" *) output data_clk;
  output [7:0]data_out;

  wire data_clk;
  wire [7:0]data_in;
  wire [5:0]\^data_out ;
  wire hsync;
  wire pclk;
  wire vsync;

  assign data_out[7:6] = \^data_out [1:0];
  assign data_out[5:0] = \^data_out [5:0];
  design_1_CSI_RX_0_0_CSI_RX U0
       (.data_clk(data_clk),
        .data_in({data_in[7:5],data_in[2:0]}),
        .data_out({\^data_out [1:0],\^data_out [5:2]}),
        .hsync(hsync),
        .pclk(pclk),
        .vsync(vsync));
endmodule

(* ORIG_REF_NAME = "CSI_RX" *) 
module design_1_CSI_RX_0_0_CSI_RX
   (data_out,
    data_clk,
    hsync,
    vsync,
    data_in,
    pclk);
  output [5:0]data_out;
  output data_clk;
  input hsync;
  input vsync;
  input [5:0]data_in;
  input pclk;

  wire data_clk;
  wire data_clk_i_1_n_0;
  wire [5:0]data_in;
  wire [5:0]data_out;
  wire \data_out[2]_i_1_n_0 ;
  wire \data_out[3]_i_1_n_0 ;
  wire \data_out[4]_i_1_n_0 ;
  wire \data_out[5]_i_1_n_0 ;
  wire \data_out[6]_i_1_n_0 ;
  wire \data_out[7]_i_1_n_0 ;
  wire hsync;
  wire pclk;
  wire [0:0]pix_counter;
  wire \pix_counter[0]_i_1_n_0 ;
  wire vsync;

  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h80)) 
    data_clk_i_1
       (.I0(pix_counter),
        .I1(vsync),
        .I2(hsync),
        .O(data_clk_i_1_n_0));
  FDRE data_clk_reg
       (.C(pclk),
        .CE(1'b1),
        .D(data_clk_i_1_n_0),
        .Q(data_clk),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hBFFF8FFF)) 
    \data_out[2]_i_1 
       (.I0(data_in[3]),
        .I1(pix_counter),
        .I2(vsync),
        .I3(hsync),
        .I4(data_out[0]),
        .O(\data_out[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hBFFF8FFF)) 
    \data_out[3]_i_1 
       (.I0(data_in[4]),
        .I1(pix_counter),
        .I2(vsync),
        .I3(hsync),
        .I4(data_out[1]),
        .O(\data_out[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hBFFF8FFF)) 
    \data_out[4]_i_1 
       (.I0(data_in[5]),
        .I1(pix_counter),
        .I2(vsync),
        .I3(hsync),
        .I4(data_out[2]),
        .O(\data_out[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hEFFF2FFF)) 
    \data_out[5]_i_1 
       (.I0(data_in[0]),
        .I1(pix_counter),
        .I2(hsync),
        .I3(vsync),
        .I4(data_out[3]),
        .O(\data_out[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hEFFF2FFF)) 
    \data_out[6]_i_1 
       (.I0(data_in[1]),
        .I1(pix_counter),
        .I2(hsync),
        .I3(vsync),
        .I4(data_out[4]),
        .O(\data_out[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hEFFF2FFF)) 
    \data_out[7]_i_1 
       (.I0(data_in[2]),
        .I1(pix_counter),
        .I2(hsync),
        .I3(vsync),
        .I4(data_out[5]),
        .O(\data_out[7]_i_1_n_0 ));
  FDRE \data_out_reg[2] 
       (.C(pclk),
        .CE(1'b1),
        .D(\data_out[2]_i_1_n_0 ),
        .Q(data_out[0]),
        .R(1'b0));
  FDRE \data_out_reg[3] 
       (.C(pclk),
        .CE(1'b1),
        .D(\data_out[3]_i_1_n_0 ),
        .Q(data_out[1]),
        .R(1'b0));
  FDRE \data_out_reg[4] 
       (.C(pclk),
        .CE(1'b1),
        .D(\data_out[4]_i_1_n_0 ),
        .Q(data_out[2]),
        .R(1'b0));
  FDRE \data_out_reg[5] 
       (.C(pclk),
        .CE(1'b1),
        .D(\data_out[5]_i_1_n_0 ),
        .Q(data_out[3]),
        .R(1'b0));
  FDRE \data_out_reg[6] 
       (.C(pclk),
        .CE(1'b1),
        .D(\data_out[6]_i_1_n_0 ),
        .Q(data_out[4]),
        .R(1'b0));
  FDRE \data_out_reg[7] 
       (.C(pclk),
        .CE(1'b1),
        .D(\data_out[7]_i_1_n_0 ),
        .Q(data_out[5]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \pix_counter[0]_i_1 
       (.I0(hsync),
        .I1(vsync),
        .I2(pix_counter),
        .O(\pix_counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pix_counter_reg[0] 
       (.C(pclk),
        .CE(1'b1),
        .D(\pix_counter[0]_i_1_n_0 ),
        .Q(pix_counter),
        .R(1'b0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
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

endmodule
`endif
