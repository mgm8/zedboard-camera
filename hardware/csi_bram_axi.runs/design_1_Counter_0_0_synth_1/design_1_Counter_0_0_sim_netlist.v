// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.1 (lin64) Build 2188600 Wed Apr  4 18:39:19 MDT 2018
// Date        : Wed Sep 12 01:38:04 2018
// Host        : debian-mgm running 64-bit Debian GNU/Linux testing (buster)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_Counter_0_0_sim_netlist.v
// Design      : design_1_Counter_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Counter
   (count,
    en,
    clk);
  output [18:0]count;
  input en;
  input clk;

  wire clk;
  wire [18:0]count;
  wire count_sig;
  wire \count_sig[18]_i_3_n_0 ;
  wire \count_sig[3]_i_2_n_0 ;
  wire \count_sig_reg[11]_i_1_n_0 ;
  wire \count_sig_reg[11]_i_1_n_1 ;
  wire \count_sig_reg[11]_i_1_n_2 ;
  wire \count_sig_reg[11]_i_1_n_3 ;
  wire \count_sig_reg[11]_i_1_n_4 ;
  wire \count_sig_reg[11]_i_1_n_5 ;
  wire \count_sig_reg[11]_i_1_n_6 ;
  wire \count_sig_reg[11]_i_1_n_7 ;
  wire \count_sig_reg[15]_i_1_n_0 ;
  wire \count_sig_reg[15]_i_1_n_1 ;
  wire \count_sig_reg[15]_i_1_n_2 ;
  wire \count_sig_reg[15]_i_1_n_3 ;
  wire \count_sig_reg[15]_i_1_n_4 ;
  wire \count_sig_reg[15]_i_1_n_5 ;
  wire \count_sig_reg[15]_i_1_n_6 ;
  wire \count_sig_reg[15]_i_1_n_7 ;
  wire \count_sig_reg[18]_i_2_n_2 ;
  wire \count_sig_reg[18]_i_2_n_3 ;
  wire \count_sig_reg[18]_i_2_n_5 ;
  wire \count_sig_reg[18]_i_2_n_6 ;
  wire \count_sig_reg[18]_i_2_n_7 ;
  wire \count_sig_reg[3]_i_1_n_0 ;
  wire \count_sig_reg[3]_i_1_n_1 ;
  wire \count_sig_reg[3]_i_1_n_2 ;
  wire \count_sig_reg[3]_i_1_n_3 ;
  wire \count_sig_reg[3]_i_1_n_4 ;
  wire \count_sig_reg[3]_i_1_n_5 ;
  wire \count_sig_reg[3]_i_1_n_6 ;
  wire \count_sig_reg[3]_i_1_n_7 ;
  wire \count_sig_reg[7]_i_1_n_0 ;
  wire \count_sig_reg[7]_i_1_n_1 ;
  wire \count_sig_reg[7]_i_1_n_2 ;
  wire \count_sig_reg[7]_i_1_n_3 ;
  wire \count_sig_reg[7]_i_1_n_4 ;
  wire \count_sig_reg[7]_i_1_n_5 ;
  wire \count_sig_reg[7]_i_1_n_6 ;
  wire \count_sig_reg[7]_i_1_n_7 ;
  wire en;
  wire [3:2]\NLW_count_sig_reg[18]_i_2_CO_UNCONNECTED ;
  wire [3:3]\NLW_count_sig_reg[18]_i_2_O_UNCONNECTED ;

  LUT5 #(
    .INIT(32'hA2222222)) 
    \count_sig[18]_i_1 
       (.I0(en),
        .I1(\count_sig[18]_i_3_n_0 ),
        .I2(count[18]),
        .I3(count[15]),
        .I4(count[14]),
        .O(count_sig));
  LUT6 #(
    .INIT(64'h01111111FFFFFFFF)) 
    \count_sig[18]_i_3 
       (.I0(count[16]),
        .I1(count[17]),
        .I2(count[13]),
        .I3(count[12]),
        .I4(count[15]),
        .I5(count[18]),
        .O(\count_sig[18]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_sig[3]_i_2 
       (.I0(count[0]),
        .O(\count_sig[3]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_sig_reg[0] 
       (.C(clk),
        .CE(en),
        .D(\count_sig_reg[3]_i_1_n_7 ),
        .Q(count[0]),
        .R(count_sig));
  FDRE #(
    .INIT(1'b0)) 
    \count_sig_reg[10] 
       (.C(clk),
        .CE(en),
        .D(\count_sig_reg[11]_i_1_n_5 ),
        .Q(count[10]),
        .R(count_sig));
  FDRE #(
    .INIT(1'b0)) 
    \count_sig_reg[11] 
       (.C(clk),
        .CE(en),
        .D(\count_sig_reg[11]_i_1_n_4 ),
        .Q(count[11]),
        .R(count_sig));
  CARRY4 \count_sig_reg[11]_i_1 
       (.CI(\count_sig_reg[7]_i_1_n_0 ),
        .CO({\count_sig_reg[11]_i_1_n_0 ,\count_sig_reg[11]_i_1_n_1 ,\count_sig_reg[11]_i_1_n_2 ,\count_sig_reg[11]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_sig_reg[11]_i_1_n_4 ,\count_sig_reg[11]_i_1_n_5 ,\count_sig_reg[11]_i_1_n_6 ,\count_sig_reg[11]_i_1_n_7 }),
        .S(count[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \count_sig_reg[12] 
       (.C(clk),
        .CE(en),
        .D(\count_sig_reg[15]_i_1_n_7 ),
        .Q(count[12]),
        .R(count_sig));
  FDRE #(
    .INIT(1'b0)) 
    \count_sig_reg[13] 
       (.C(clk),
        .CE(en),
        .D(\count_sig_reg[15]_i_1_n_6 ),
        .Q(count[13]),
        .R(count_sig));
  FDRE #(
    .INIT(1'b0)) 
    \count_sig_reg[14] 
       (.C(clk),
        .CE(en),
        .D(\count_sig_reg[15]_i_1_n_5 ),
        .Q(count[14]),
        .R(count_sig));
  FDRE #(
    .INIT(1'b0)) 
    \count_sig_reg[15] 
       (.C(clk),
        .CE(en),
        .D(\count_sig_reg[15]_i_1_n_4 ),
        .Q(count[15]),
        .R(count_sig));
  CARRY4 \count_sig_reg[15]_i_1 
       (.CI(\count_sig_reg[11]_i_1_n_0 ),
        .CO({\count_sig_reg[15]_i_1_n_0 ,\count_sig_reg[15]_i_1_n_1 ,\count_sig_reg[15]_i_1_n_2 ,\count_sig_reg[15]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_sig_reg[15]_i_1_n_4 ,\count_sig_reg[15]_i_1_n_5 ,\count_sig_reg[15]_i_1_n_6 ,\count_sig_reg[15]_i_1_n_7 }),
        .S(count[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \count_sig_reg[16] 
       (.C(clk),
        .CE(en),
        .D(\count_sig_reg[18]_i_2_n_7 ),
        .Q(count[16]),
        .R(count_sig));
  FDRE #(
    .INIT(1'b0)) 
    \count_sig_reg[17] 
       (.C(clk),
        .CE(en),
        .D(\count_sig_reg[18]_i_2_n_6 ),
        .Q(count[17]),
        .R(count_sig));
  FDRE #(
    .INIT(1'b0)) 
    \count_sig_reg[18] 
       (.C(clk),
        .CE(en),
        .D(\count_sig_reg[18]_i_2_n_5 ),
        .Q(count[18]),
        .R(count_sig));
  CARRY4 \count_sig_reg[18]_i_2 
       (.CI(\count_sig_reg[15]_i_1_n_0 ),
        .CO({\NLW_count_sig_reg[18]_i_2_CO_UNCONNECTED [3:2],\count_sig_reg[18]_i_2_n_2 ,\count_sig_reg[18]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_count_sig_reg[18]_i_2_O_UNCONNECTED [3],\count_sig_reg[18]_i_2_n_5 ,\count_sig_reg[18]_i_2_n_6 ,\count_sig_reg[18]_i_2_n_7 }),
        .S({1'b0,count[18:16]}));
  FDRE #(
    .INIT(1'b0)) 
    \count_sig_reg[1] 
       (.C(clk),
        .CE(en),
        .D(\count_sig_reg[3]_i_1_n_6 ),
        .Q(count[1]),
        .R(count_sig));
  FDRE #(
    .INIT(1'b0)) 
    \count_sig_reg[2] 
       (.C(clk),
        .CE(en),
        .D(\count_sig_reg[3]_i_1_n_5 ),
        .Q(count[2]),
        .R(count_sig));
  FDRE #(
    .INIT(1'b0)) 
    \count_sig_reg[3] 
       (.C(clk),
        .CE(en),
        .D(\count_sig_reg[3]_i_1_n_4 ),
        .Q(count[3]),
        .R(count_sig));
  CARRY4 \count_sig_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\count_sig_reg[3]_i_1_n_0 ,\count_sig_reg[3]_i_1_n_1 ,\count_sig_reg[3]_i_1_n_2 ,\count_sig_reg[3]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\count_sig_reg[3]_i_1_n_4 ,\count_sig_reg[3]_i_1_n_5 ,\count_sig_reg[3]_i_1_n_6 ,\count_sig_reg[3]_i_1_n_7 }),
        .S({count[3:1],\count_sig[3]_i_2_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \count_sig_reg[4] 
       (.C(clk),
        .CE(en),
        .D(\count_sig_reg[7]_i_1_n_7 ),
        .Q(count[4]),
        .R(count_sig));
  FDRE #(
    .INIT(1'b0)) 
    \count_sig_reg[5] 
       (.C(clk),
        .CE(en),
        .D(\count_sig_reg[7]_i_1_n_6 ),
        .Q(count[5]),
        .R(count_sig));
  FDRE #(
    .INIT(1'b0)) 
    \count_sig_reg[6] 
       (.C(clk),
        .CE(en),
        .D(\count_sig_reg[7]_i_1_n_5 ),
        .Q(count[6]),
        .R(count_sig));
  FDRE #(
    .INIT(1'b0)) 
    \count_sig_reg[7] 
       (.C(clk),
        .CE(en),
        .D(\count_sig_reg[7]_i_1_n_4 ),
        .Q(count[7]),
        .R(count_sig));
  CARRY4 \count_sig_reg[7]_i_1 
       (.CI(\count_sig_reg[3]_i_1_n_0 ),
        .CO({\count_sig_reg[7]_i_1_n_0 ,\count_sig_reg[7]_i_1_n_1 ,\count_sig_reg[7]_i_1_n_2 ,\count_sig_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_sig_reg[7]_i_1_n_4 ,\count_sig_reg[7]_i_1_n_5 ,\count_sig_reg[7]_i_1_n_6 ,\count_sig_reg[7]_i_1_n_7 }),
        .S(count[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \count_sig_reg[8] 
       (.C(clk),
        .CE(en),
        .D(\count_sig_reg[11]_i_1_n_7 ),
        .Q(count[8]),
        .R(count_sig));
  FDRE #(
    .INIT(1'b0)) 
    \count_sig_reg[9] 
       (.C(clk),
        .CE(en),
        .D(\count_sig_reg[11]_i_1_n_6 ),
        .Q(count[9]),
        .R(count_sig));
endmodule

(* CHECK_LICENSE_TYPE = "design_1_Counter_0_0,Counter,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "Counter,Vivado 2018.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clk,
    en,
    count);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_CSI_RX_0_0_data_clk" *) input clk;
  input en;
  output [18:0]count;

  wire clk;
  wire [18:0]count;
  wire en;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Counter U0
       (.clk(clk),
        .count(count),
        .en(en));
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
