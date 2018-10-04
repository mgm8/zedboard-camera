// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.1 (lin64) Build 2188600 Wed Apr  4 18:39:19 MDT 2018
// Date        : Thu Oct  4 11:58:15 2018
// Host        : debian-mgm running 64-bit Debian GNU/Linux testing (buster)
// Command     : write_verilog -force -mode funcsim
//               /home/gabriel/xilinx_projects/zedcam/zedcam.srcs/sources_1/bd/design_1/ip/design_1_DFlipFlop_2_0/design_1_DFlipFlop_2_0_sim_netlist.v
// Design      : design_1_DFlipFlop_2_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_DFlipFlop_2_0,DFlipFlop,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "DFlipFlop,Vivado 2018.1" *) 
(* NotValidForBitStream *)
module design_1_DFlipFlop_2_0
   (clk,
    data_in,
    data_out);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, FREQ_HZ 100000000, PHASE 0.000" *) input clk;
  input [0:0]data_in;
  output [0:0]data_out;

  wire clk;
  wire [0:0]data_in;
  wire [0:0]data_out;

  design_1_DFlipFlop_2_0_DFlipFlop U0
       (.clk(clk),
        .data_in(data_in),
        .data_out(data_out));
endmodule

(* ORIG_REF_NAME = "DFlipFlop" *) 
module design_1_DFlipFlop_2_0_DFlipFlop
   (data_out,
    data_in,
    clk);
  output [0:0]data_out;
  input [0:0]data_in;
  input clk;

  wire clk;
  wire [0:0]data_in;
  wire [0:0]data_out;

  FDRE \data_out_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(data_in),
        .Q(data_out),
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
