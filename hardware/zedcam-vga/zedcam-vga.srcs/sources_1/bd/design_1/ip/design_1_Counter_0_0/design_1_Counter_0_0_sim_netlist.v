// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.1 (lin64) Build 2188600 Wed Apr  4 18:39:19 MDT 2018
// Date        : Tue Sep 18 00:55:56 2018
// Host        : debian-mgm running 64-bit Debian GNU/Linux testing (buster)
// Command     : write_verilog -force -mode funcsim
//               /home/gabriel/xilinx_projects/zedcam-vga/zedcam-vga.srcs/sources_1/bd/design_1/ip/design_1_Counter_0_0/design_1_Counter_0_0_sim_netlist.v
// Design      : design_1_Counter_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_Counter_0_0,Counter,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "Counter,Vivado 2018.1" *) 
(* NotValidForBitStream *)
module design_1_Counter_0_0
   (clk,
    en,
    rst,
    count);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_CSI_RX_0_0_data_clk" *) input clk;
  input en;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 rst RST" *) (* x_interface_parameter = "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW" *) input rst;
  output [18:0]count;

  wire clk;
  wire [18:0]count;
  wire en;
  wire rst;

  design_1_Counter_0_0_Counter U0
       (.Q(count),
        .clk(clk),
        .en(en),
        .rst(rst));
endmodule

(* ORIG_REF_NAME = "Counter" *) 
module design_1_Counter_0_0_Counter
   (Q,
    en,
    clk,
    rst);
  output [18:0]Q;
  input en;
  input clk;
  input rst;

  wire [18:0]Q;
  wire clk;
  wire \count_sig[10]_i_1_n_0 ;
  wire \count_sig[11]_i_1_n_0 ;
  wire \count_sig[12]_i_1_n_0 ;
  wire \count_sig[13]_i_1_n_0 ;
  wire \count_sig[14]_i_1_n_0 ;
  wire \count_sig[15]_i_1_n_0 ;
  wire \count_sig[16]_i_1_n_0 ;
  wire \count_sig[17]_i_1_n_0 ;
  wire \count_sig[18]_i_1_n_0 ;
  wire \count_sig[18]_i_2_n_0 ;
  wire \count_sig[18]_i_3_n_0 ;
  wire \count_sig[1]_i_1_n_0 ;
  wire \count_sig[2]_i_1_n_0 ;
  wire \count_sig[3]_i_1_n_0 ;
  wire \count_sig[4]_i_1_n_0 ;
  wire \count_sig[5]_i_1_n_0 ;
  wire \count_sig[6]_i_1_n_0 ;
  wire \count_sig[7]_i_1_n_0 ;
  wire \count_sig[8]_i_1_n_0 ;
  wire \count_sig[9]_i_1_n_0 ;
  wire \count_sig_reg[12]_i_2_n_0 ;
  wire \count_sig_reg[12]_i_2_n_1 ;
  wire \count_sig_reg[12]_i_2_n_2 ;
  wire \count_sig_reg[12]_i_2_n_3 ;
  wire \count_sig_reg[12]_i_2_n_4 ;
  wire \count_sig_reg[12]_i_2_n_5 ;
  wire \count_sig_reg[12]_i_2_n_6 ;
  wire \count_sig_reg[12]_i_2_n_7 ;
  wire \count_sig_reg[16]_i_2_n_0 ;
  wire \count_sig_reg[16]_i_2_n_1 ;
  wire \count_sig_reg[16]_i_2_n_2 ;
  wire \count_sig_reg[16]_i_2_n_3 ;
  wire \count_sig_reg[16]_i_2_n_4 ;
  wire \count_sig_reg[16]_i_2_n_5 ;
  wire \count_sig_reg[16]_i_2_n_6 ;
  wire \count_sig_reg[16]_i_2_n_7 ;
  wire \count_sig_reg[18]_i_4_n_3 ;
  wire \count_sig_reg[18]_i_4_n_6 ;
  wire \count_sig_reg[18]_i_4_n_7 ;
  wire \count_sig_reg[4]_i_2_n_0 ;
  wire \count_sig_reg[4]_i_2_n_1 ;
  wire \count_sig_reg[4]_i_2_n_2 ;
  wire \count_sig_reg[4]_i_2_n_3 ;
  wire \count_sig_reg[4]_i_2_n_4 ;
  wire \count_sig_reg[4]_i_2_n_5 ;
  wire \count_sig_reg[4]_i_2_n_6 ;
  wire \count_sig_reg[4]_i_2_n_7 ;
  wire \count_sig_reg[8]_i_2_n_0 ;
  wire \count_sig_reg[8]_i_2_n_1 ;
  wire \count_sig_reg[8]_i_2_n_2 ;
  wire \count_sig_reg[8]_i_2_n_3 ;
  wire \count_sig_reg[8]_i_2_n_4 ;
  wire \count_sig_reg[8]_i_2_n_5 ;
  wire \count_sig_reg[8]_i_2_n_6 ;
  wire \count_sig_reg[8]_i_2_n_7 ;
  wire en;
  wire [0:0]p_0_in;
  wire rst;
  wire [3:1]\NLW_count_sig_reg[18]_i_4_CO_UNCONNECTED ;
  wire [3:2]\NLW_count_sig_reg[18]_i_4_O_UNCONNECTED ;

  LUT6 #(
    .INIT(64'h000000002AAAAAAA)) 
    \count_sig[0]_i_1 
       (.I0(\count_sig[18]_i_3_n_0 ),
        .I1(Q[18]),
        .I2(Q[15]),
        .I3(Q[12]),
        .I4(Q[13]),
        .I5(Q[0]),
        .O(p_0_in));
  LUT6 #(
    .INIT(64'h2AAAAAAA00000000)) 
    \count_sig[10]_i_1 
       (.I0(\count_sig[18]_i_3_n_0 ),
        .I1(Q[18]),
        .I2(Q[15]),
        .I3(Q[12]),
        .I4(Q[13]),
        .I5(\count_sig_reg[12]_i_2_n_6 ),
        .O(\count_sig[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2AAAAAAA00000000)) 
    \count_sig[11]_i_1 
       (.I0(\count_sig[18]_i_3_n_0 ),
        .I1(Q[18]),
        .I2(Q[15]),
        .I3(Q[12]),
        .I4(Q[13]),
        .I5(\count_sig_reg[12]_i_2_n_5 ),
        .O(\count_sig[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2AAAAAAA00000000)) 
    \count_sig[12]_i_1 
       (.I0(\count_sig[18]_i_3_n_0 ),
        .I1(Q[18]),
        .I2(Q[15]),
        .I3(Q[12]),
        .I4(Q[13]),
        .I5(\count_sig_reg[12]_i_2_n_4 ),
        .O(\count_sig[12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2AAAAAAA00000000)) 
    \count_sig[13]_i_1 
       (.I0(\count_sig[18]_i_3_n_0 ),
        .I1(Q[18]),
        .I2(Q[15]),
        .I3(Q[12]),
        .I4(Q[13]),
        .I5(\count_sig_reg[16]_i_2_n_7 ),
        .O(\count_sig[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2AAAAAAA00000000)) 
    \count_sig[14]_i_1 
       (.I0(\count_sig[18]_i_3_n_0 ),
        .I1(Q[18]),
        .I2(Q[15]),
        .I3(Q[12]),
        .I4(Q[13]),
        .I5(\count_sig_reg[16]_i_2_n_6 ),
        .O(\count_sig[14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2AAAAAAA00000000)) 
    \count_sig[15]_i_1 
       (.I0(\count_sig[18]_i_3_n_0 ),
        .I1(Q[18]),
        .I2(Q[15]),
        .I3(Q[12]),
        .I4(Q[13]),
        .I5(\count_sig_reg[16]_i_2_n_5 ),
        .O(\count_sig[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2AAAAAAA00000000)) 
    \count_sig[16]_i_1 
       (.I0(\count_sig[18]_i_3_n_0 ),
        .I1(Q[18]),
        .I2(Q[15]),
        .I3(Q[12]),
        .I4(Q[13]),
        .I5(\count_sig_reg[16]_i_2_n_4 ),
        .O(\count_sig[16]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2AAAAAAA00000000)) 
    \count_sig[17]_i_1 
       (.I0(\count_sig[18]_i_3_n_0 ),
        .I1(Q[18]),
        .I2(Q[15]),
        .I3(Q[12]),
        .I4(Q[13]),
        .I5(\count_sig_reg[18]_i_4_n_7 ),
        .O(\count_sig[17]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2AAAAAAA00000000)) 
    \count_sig[18]_i_1 
       (.I0(\count_sig[18]_i_3_n_0 ),
        .I1(Q[18]),
        .I2(Q[15]),
        .I3(Q[12]),
        .I4(Q[13]),
        .I5(\count_sig_reg[18]_i_4_n_6 ),
        .O(\count_sig[18]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count_sig[18]_i_2 
       (.I0(rst),
        .O(\count_sig[18]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h0F1F1F1F)) 
    \count_sig[18]_i_3 
       (.I0(Q[17]),
        .I1(Q[16]),
        .I2(Q[18]),
        .I3(Q[15]),
        .I4(Q[14]),
        .O(\count_sig[18]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h2AAAAAAA00000000)) 
    \count_sig[1]_i_1 
       (.I0(\count_sig[18]_i_3_n_0 ),
        .I1(Q[18]),
        .I2(Q[15]),
        .I3(Q[12]),
        .I4(Q[13]),
        .I5(\count_sig_reg[4]_i_2_n_7 ),
        .O(\count_sig[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2AAAAAAA00000000)) 
    \count_sig[2]_i_1 
       (.I0(\count_sig[18]_i_3_n_0 ),
        .I1(Q[18]),
        .I2(Q[15]),
        .I3(Q[12]),
        .I4(Q[13]),
        .I5(\count_sig_reg[4]_i_2_n_6 ),
        .O(\count_sig[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2AAAAAAA00000000)) 
    \count_sig[3]_i_1 
       (.I0(\count_sig[18]_i_3_n_0 ),
        .I1(Q[18]),
        .I2(Q[15]),
        .I3(Q[12]),
        .I4(Q[13]),
        .I5(\count_sig_reg[4]_i_2_n_5 ),
        .O(\count_sig[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2AAAAAAA00000000)) 
    \count_sig[4]_i_1 
       (.I0(\count_sig[18]_i_3_n_0 ),
        .I1(Q[18]),
        .I2(Q[15]),
        .I3(Q[12]),
        .I4(Q[13]),
        .I5(\count_sig_reg[4]_i_2_n_4 ),
        .O(\count_sig[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2AAAAAAA00000000)) 
    \count_sig[5]_i_1 
       (.I0(\count_sig[18]_i_3_n_0 ),
        .I1(Q[18]),
        .I2(Q[15]),
        .I3(Q[12]),
        .I4(Q[13]),
        .I5(\count_sig_reg[8]_i_2_n_7 ),
        .O(\count_sig[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2AAAAAAA00000000)) 
    \count_sig[6]_i_1 
       (.I0(\count_sig[18]_i_3_n_0 ),
        .I1(Q[18]),
        .I2(Q[15]),
        .I3(Q[12]),
        .I4(Q[13]),
        .I5(\count_sig_reg[8]_i_2_n_6 ),
        .O(\count_sig[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2AAAAAAA00000000)) 
    \count_sig[7]_i_1 
       (.I0(\count_sig[18]_i_3_n_0 ),
        .I1(Q[18]),
        .I2(Q[15]),
        .I3(Q[12]),
        .I4(Q[13]),
        .I5(\count_sig_reg[8]_i_2_n_5 ),
        .O(\count_sig[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2AAAAAAA00000000)) 
    \count_sig[8]_i_1 
       (.I0(\count_sig[18]_i_3_n_0 ),
        .I1(Q[18]),
        .I2(Q[15]),
        .I3(Q[12]),
        .I4(Q[13]),
        .I5(\count_sig_reg[8]_i_2_n_4 ),
        .O(\count_sig[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2AAAAAAA00000000)) 
    \count_sig[9]_i_1 
       (.I0(\count_sig[18]_i_3_n_0 ),
        .I1(Q[18]),
        .I2(Q[15]),
        .I3(Q[12]),
        .I4(Q[13]),
        .I5(\count_sig_reg[12]_i_2_n_7 ),
        .O(\count_sig[9]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \count_sig_reg[0] 
       (.C(clk),
        .CE(en),
        .CLR(\count_sig[18]_i_2_n_0 ),
        .D(p_0_in),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \count_sig_reg[10] 
       (.C(clk),
        .CE(en),
        .CLR(\count_sig[18]_i_2_n_0 ),
        .D(\count_sig[10]_i_1_n_0 ),
        .Q(Q[10]));
  FDCE #(
    .INIT(1'b0)) 
    \count_sig_reg[11] 
       (.C(clk),
        .CE(en),
        .CLR(\count_sig[18]_i_2_n_0 ),
        .D(\count_sig[11]_i_1_n_0 ),
        .Q(Q[11]));
  FDCE #(
    .INIT(1'b0)) 
    \count_sig_reg[12] 
       (.C(clk),
        .CE(en),
        .CLR(\count_sig[18]_i_2_n_0 ),
        .D(\count_sig[12]_i_1_n_0 ),
        .Q(Q[12]));
  CARRY4 \count_sig_reg[12]_i_2 
       (.CI(\count_sig_reg[8]_i_2_n_0 ),
        .CO({\count_sig_reg[12]_i_2_n_0 ,\count_sig_reg[12]_i_2_n_1 ,\count_sig_reg[12]_i_2_n_2 ,\count_sig_reg[12]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_sig_reg[12]_i_2_n_4 ,\count_sig_reg[12]_i_2_n_5 ,\count_sig_reg[12]_i_2_n_6 ,\count_sig_reg[12]_i_2_n_7 }),
        .S(Q[12:9]));
  FDCE #(
    .INIT(1'b0)) 
    \count_sig_reg[13] 
       (.C(clk),
        .CE(en),
        .CLR(\count_sig[18]_i_2_n_0 ),
        .D(\count_sig[13]_i_1_n_0 ),
        .Q(Q[13]));
  FDCE #(
    .INIT(1'b0)) 
    \count_sig_reg[14] 
       (.C(clk),
        .CE(en),
        .CLR(\count_sig[18]_i_2_n_0 ),
        .D(\count_sig[14]_i_1_n_0 ),
        .Q(Q[14]));
  FDCE #(
    .INIT(1'b0)) 
    \count_sig_reg[15] 
       (.C(clk),
        .CE(en),
        .CLR(\count_sig[18]_i_2_n_0 ),
        .D(\count_sig[15]_i_1_n_0 ),
        .Q(Q[15]));
  FDCE #(
    .INIT(1'b0)) 
    \count_sig_reg[16] 
       (.C(clk),
        .CE(en),
        .CLR(\count_sig[18]_i_2_n_0 ),
        .D(\count_sig[16]_i_1_n_0 ),
        .Q(Q[16]));
  CARRY4 \count_sig_reg[16]_i_2 
       (.CI(\count_sig_reg[12]_i_2_n_0 ),
        .CO({\count_sig_reg[16]_i_2_n_0 ,\count_sig_reg[16]_i_2_n_1 ,\count_sig_reg[16]_i_2_n_2 ,\count_sig_reg[16]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_sig_reg[16]_i_2_n_4 ,\count_sig_reg[16]_i_2_n_5 ,\count_sig_reg[16]_i_2_n_6 ,\count_sig_reg[16]_i_2_n_7 }),
        .S(Q[16:13]));
  FDCE #(
    .INIT(1'b0)) 
    \count_sig_reg[17] 
       (.C(clk),
        .CE(en),
        .CLR(\count_sig[18]_i_2_n_0 ),
        .D(\count_sig[17]_i_1_n_0 ),
        .Q(Q[17]));
  FDCE #(
    .INIT(1'b0)) 
    \count_sig_reg[18] 
       (.C(clk),
        .CE(en),
        .CLR(\count_sig[18]_i_2_n_0 ),
        .D(\count_sig[18]_i_1_n_0 ),
        .Q(Q[18]));
  CARRY4 \count_sig_reg[18]_i_4 
       (.CI(\count_sig_reg[16]_i_2_n_0 ),
        .CO({\NLW_count_sig_reg[18]_i_4_CO_UNCONNECTED [3:1],\count_sig_reg[18]_i_4_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_count_sig_reg[18]_i_4_O_UNCONNECTED [3:2],\count_sig_reg[18]_i_4_n_6 ,\count_sig_reg[18]_i_4_n_7 }),
        .S({1'b0,1'b0,Q[18:17]}));
  FDCE #(
    .INIT(1'b0)) 
    \count_sig_reg[1] 
       (.C(clk),
        .CE(en),
        .CLR(\count_sig[18]_i_2_n_0 ),
        .D(\count_sig[1]_i_1_n_0 ),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \count_sig_reg[2] 
       (.C(clk),
        .CE(en),
        .CLR(\count_sig[18]_i_2_n_0 ),
        .D(\count_sig[2]_i_1_n_0 ),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \count_sig_reg[3] 
       (.C(clk),
        .CE(en),
        .CLR(\count_sig[18]_i_2_n_0 ),
        .D(\count_sig[3]_i_1_n_0 ),
        .Q(Q[3]));
  FDCE #(
    .INIT(1'b0)) 
    \count_sig_reg[4] 
       (.C(clk),
        .CE(en),
        .CLR(\count_sig[18]_i_2_n_0 ),
        .D(\count_sig[4]_i_1_n_0 ),
        .Q(Q[4]));
  CARRY4 \count_sig_reg[4]_i_2 
       (.CI(1'b0),
        .CO({\count_sig_reg[4]_i_2_n_0 ,\count_sig_reg[4]_i_2_n_1 ,\count_sig_reg[4]_i_2_n_2 ,\count_sig_reg[4]_i_2_n_3 }),
        .CYINIT(Q[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_sig_reg[4]_i_2_n_4 ,\count_sig_reg[4]_i_2_n_5 ,\count_sig_reg[4]_i_2_n_6 ,\count_sig_reg[4]_i_2_n_7 }),
        .S(Q[4:1]));
  FDCE #(
    .INIT(1'b0)) 
    \count_sig_reg[5] 
       (.C(clk),
        .CE(en),
        .CLR(\count_sig[18]_i_2_n_0 ),
        .D(\count_sig[5]_i_1_n_0 ),
        .Q(Q[5]));
  FDCE #(
    .INIT(1'b0)) 
    \count_sig_reg[6] 
       (.C(clk),
        .CE(en),
        .CLR(\count_sig[18]_i_2_n_0 ),
        .D(\count_sig[6]_i_1_n_0 ),
        .Q(Q[6]));
  FDCE #(
    .INIT(1'b0)) 
    \count_sig_reg[7] 
       (.C(clk),
        .CE(en),
        .CLR(\count_sig[18]_i_2_n_0 ),
        .D(\count_sig[7]_i_1_n_0 ),
        .Q(Q[7]));
  FDCE #(
    .INIT(1'b0)) 
    \count_sig_reg[8] 
       (.C(clk),
        .CE(en),
        .CLR(\count_sig[18]_i_2_n_0 ),
        .D(\count_sig[8]_i_1_n_0 ),
        .Q(Q[8]));
  CARRY4 \count_sig_reg[8]_i_2 
       (.CI(\count_sig_reg[4]_i_2_n_0 ),
        .CO({\count_sig_reg[8]_i_2_n_0 ,\count_sig_reg[8]_i_2_n_1 ,\count_sig_reg[8]_i_2_n_2 ,\count_sig_reg[8]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_sig_reg[8]_i_2_n_4 ,\count_sig_reg[8]_i_2_n_5 ,\count_sig_reg[8]_i_2_n_6 ,\count_sig_reg[8]_i_2_n_7 }),
        .S(Q[8:5]));
  FDCE #(
    .INIT(1'b0)) 
    \count_sig_reg[9] 
       (.C(clk),
        .CE(en),
        .CLR(\count_sig[18]_i_2_n_0 ),
        .D(\count_sig[9]_i_1_n_0 ),
        .Q(Q[9]));
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
