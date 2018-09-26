// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.1 (lin64) Build 2188600 Wed Apr  4 18:39:19 MDT 2018
// Date        : Wed Sep 26 17:22:27 2018
// Host        : debian-mgm running 64-bit Debian GNU/Linux testing (buster)
// Command     : write_verilog -force -mode funcsim
//               /home/gabriel/xilinx_projects/zedcam/zedcam.srcs/sources_1/bd/design_1/ip/design_1_Counter_0_0/design_1_Counter_0_0_sim_netlist.v
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
       (.clk(clk),
        .count(count),
        .en(en),
        .rst(rst));
endmodule

(* ORIG_REF_NAME = "Counter" *) 
module design_1_Counter_0_0_Counter
   (count,
    en,
    clk,
    rst);
  output [18:0]count;
  input en;
  input clk;
  input rst;

  wire clk;
  wire [18:0]count;
  wire \count_sig[18]_i_2_n_0 ;
  wire \count_sig[18]_i_3_n_0 ;
  wire \count_sig[18]_i_4_n_0 ;
  wire \count_sig[18]_i_5_n_0 ;
  wire \count_sig[18]_i_7_n_0 ;
  wire \count_sig[18]_i_8_n_0 ;
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
  wire \count_sig_reg[18]_i_6_n_3 ;
  wire \count_sig_reg[18]_i_6_n_6 ;
  wire \count_sig_reg[18]_i_6_n_7 ;
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
  wire [18:0]p_0_in;
  wire rst;
  wire [3:1]\NLW_count_sig_reg[18]_i_6_CO_UNCONNECTED ;
  wire [3:2]\NLW_count_sig_reg[18]_i_6_O_UNCONNECTED ;

  LUT5 #(
    .INIT(32'h00000A2A)) 
    \count_sig[0]_i_1 
       (.I0(\count_sig[18]_i_3_n_0 ),
        .I1(count[8]),
        .I2(\count_sig[18]_i_4_n_0 ),
        .I3(\count_sig[18]_i_5_n_0 ),
        .I4(count[0]),
        .O(p_0_in[0]));
  LUT5 #(
    .INIT(32'h0A2A0000)) 
    \count_sig[10]_i_1 
       (.I0(\count_sig[18]_i_3_n_0 ),
        .I1(count[8]),
        .I2(\count_sig[18]_i_4_n_0 ),
        .I3(\count_sig[18]_i_5_n_0 ),
        .I4(\count_sig_reg[12]_i_2_n_6 ),
        .O(p_0_in[10]));
  LUT5 #(
    .INIT(32'h0A2A0000)) 
    \count_sig[11]_i_1 
       (.I0(\count_sig[18]_i_3_n_0 ),
        .I1(count[8]),
        .I2(\count_sig[18]_i_4_n_0 ),
        .I3(\count_sig[18]_i_5_n_0 ),
        .I4(\count_sig_reg[12]_i_2_n_5 ),
        .O(p_0_in[11]));
  LUT5 #(
    .INIT(32'h0A2A0000)) 
    \count_sig[12]_i_1 
       (.I0(\count_sig[18]_i_3_n_0 ),
        .I1(count[8]),
        .I2(\count_sig[18]_i_4_n_0 ),
        .I3(\count_sig[18]_i_5_n_0 ),
        .I4(\count_sig_reg[12]_i_2_n_4 ),
        .O(p_0_in[12]));
  LUT5 #(
    .INIT(32'h0A2A0000)) 
    \count_sig[13]_i_1 
       (.I0(\count_sig[18]_i_3_n_0 ),
        .I1(count[8]),
        .I2(\count_sig[18]_i_4_n_0 ),
        .I3(\count_sig[18]_i_5_n_0 ),
        .I4(\count_sig_reg[16]_i_2_n_7 ),
        .O(p_0_in[13]));
  LUT5 #(
    .INIT(32'h0A2A0000)) 
    \count_sig[14]_i_1 
       (.I0(\count_sig[18]_i_3_n_0 ),
        .I1(count[8]),
        .I2(\count_sig[18]_i_4_n_0 ),
        .I3(\count_sig[18]_i_5_n_0 ),
        .I4(\count_sig_reg[16]_i_2_n_6 ),
        .O(p_0_in[14]));
  LUT5 #(
    .INIT(32'h0A2A0000)) 
    \count_sig[15]_i_1 
       (.I0(\count_sig[18]_i_3_n_0 ),
        .I1(count[8]),
        .I2(\count_sig[18]_i_4_n_0 ),
        .I3(\count_sig[18]_i_5_n_0 ),
        .I4(\count_sig_reg[16]_i_2_n_5 ),
        .O(p_0_in[15]));
  LUT5 #(
    .INIT(32'h0A2A0000)) 
    \count_sig[16]_i_1 
       (.I0(\count_sig[18]_i_3_n_0 ),
        .I1(count[8]),
        .I2(\count_sig[18]_i_4_n_0 ),
        .I3(\count_sig[18]_i_5_n_0 ),
        .I4(\count_sig_reg[16]_i_2_n_4 ),
        .O(p_0_in[16]));
  LUT5 #(
    .INIT(32'h0A2A0000)) 
    \count_sig[17]_i_1 
       (.I0(\count_sig[18]_i_3_n_0 ),
        .I1(count[8]),
        .I2(\count_sig[18]_i_4_n_0 ),
        .I3(\count_sig[18]_i_5_n_0 ),
        .I4(\count_sig_reg[18]_i_6_n_7 ),
        .O(p_0_in[17]));
  LUT5 #(
    .INIT(32'h0A2A0000)) 
    \count_sig[18]_i_1 
       (.I0(\count_sig[18]_i_3_n_0 ),
        .I1(count[8]),
        .I2(\count_sig[18]_i_4_n_0 ),
        .I3(\count_sig[18]_i_5_n_0 ),
        .I4(\count_sig_reg[18]_i_6_n_6 ),
        .O(p_0_in[18]));
  LUT1 #(
    .INIT(2'h1)) 
    \count_sig[18]_i_2 
       (.I0(rst),
        .O(\count_sig[18]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBFFFBFFFBFFFFFFF)) 
    \count_sig[18]_i_3 
       (.I0(\count_sig[18]_i_7_n_0 ),
        .I1(count[16]),
        .I2(count[18]),
        .I3(count[17]),
        .I4(count[15]),
        .I5(count[14]),
        .O(\count_sig[18]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \count_sig[18]_i_4 
       (.I0(count[14]),
        .I1(count[16]),
        .I2(count[9]),
        .I3(count[12]),
        .I4(count[18]),
        .I5(count[17]),
        .O(\count_sig[18]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \count_sig[18]_i_5 
       (.I0(count[4]),
        .I1(count[5]),
        .I2(count[6]),
        .I3(count[7]),
        .I4(\count_sig[18]_i_8_n_0 ),
        .O(\count_sig[18]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h01010111)) 
    \count_sig[18]_i_7 
       (.I0(count[13]),
        .I1(count[15]),
        .I2(count[12]),
        .I3(count[11]),
        .I4(count[10]),
        .O(\count_sig[18]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \count_sig[18]_i_8 
       (.I0(count[1]),
        .I1(count[0]),
        .I2(count[3]),
        .I3(count[2]),
        .O(\count_sig[18]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'h0A2A0000)) 
    \count_sig[1]_i_1 
       (.I0(\count_sig[18]_i_3_n_0 ),
        .I1(count[8]),
        .I2(\count_sig[18]_i_4_n_0 ),
        .I3(\count_sig[18]_i_5_n_0 ),
        .I4(\count_sig_reg[4]_i_2_n_7 ),
        .O(p_0_in[1]));
  LUT5 #(
    .INIT(32'h0A2A0000)) 
    \count_sig[2]_i_1 
       (.I0(\count_sig[18]_i_3_n_0 ),
        .I1(count[8]),
        .I2(\count_sig[18]_i_4_n_0 ),
        .I3(\count_sig[18]_i_5_n_0 ),
        .I4(\count_sig_reg[4]_i_2_n_6 ),
        .O(p_0_in[2]));
  LUT5 #(
    .INIT(32'h0A2A0000)) 
    \count_sig[3]_i_1 
       (.I0(\count_sig[18]_i_3_n_0 ),
        .I1(count[8]),
        .I2(\count_sig[18]_i_4_n_0 ),
        .I3(\count_sig[18]_i_5_n_0 ),
        .I4(\count_sig_reg[4]_i_2_n_5 ),
        .O(p_0_in[3]));
  LUT5 #(
    .INIT(32'h0A2A0000)) 
    \count_sig[4]_i_1 
       (.I0(\count_sig[18]_i_3_n_0 ),
        .I1(count[8]),
        .I2(\count_sig[18]_i_4_n_0 ),
        .I3(\count_sig[18]_i_5_n_0 ),
        .I4(\count_sig_reg[4]_i_2_n_4 ),
        .O(p_0_in[4]));
  LUT5 #(
    .INIT(32'h0A2A0000)) 
    \count_sig[5]_i_1 
       (.I0(\count_sig[18]_i_3_n_0 ),
        .I1(count[8]),
        .I2(\count_sig[18]_i_4_n_0 ),
        .I3(\count_sig[18]_i_5_n_0 ),
        .I4(\count_sig_reg[8]_i_2_n_7 ),
        .O(p_0_in[5]));
  LUT5 #(
    .INIT(32'h0A2A0000)) 
    \count_sig[6]_i_1 
       (.I0(\count_sig[18]_i_3_n_0 ),
        .I1(count[8]),
        .I2(\count_sig[18]_i_4_n_0 ),
        .I3(\count_sig[18]_i_5_n_0 ),
        .I4(\count_sig_reg[8]_i_2_n_6 ),
        .O(p_0_in[6]));
  LUT5 #(
    .INIT(32'h0A2A0000)) 
    \count_sig[7]_i_1 
       (.I0(\count_sig[18]_i_3_n_0 ),
        .I1(count[8]),
        .I2(\count_sig[18]_i_4_n_0 ),
        .I3(\count_sig[18]_i_5_n_0 ),
        .I4(\count_sig_reg[8]_i_2_n_5 ),
        .O(p_0_in[7]));
  LUT5 #(
    .INIT(32'h0A2A0000)) 
    \count_sig[8]_i_1 
       (.I0(\count_sig[18]_i_3_n_0 ),
        .I1(count[8]),
        .I2(\count_sig[18]_i_4_n_0 ),
        .I3(\count_sig[18]_i_5_n_0 ),
        .I4(\count_sig_reg[8]_i_2_n_4 ),
        .O(p_0_in[8]));
  LUT5 #(
    .INIT(32'h0A2A0000)) 
    \count_sig[9]_i_1 
       (.I0(\count_sig[18]_i_3_n_0 ),
        .I1(count[8]),
        .I2(\count_sig[18]_i_4_n_0 ),
        .I3(\count_sig[18]_i_5_n_0 ),
        .I4(\count_sig_reg[12]_i_2_n_7 ),
        .O(p_0_in[9]));
  FDCE #(
    .INIT(1'b0)) 
    \count_sig_reg[0] 
       (.C(clk),
        .CE(en),
        .CLR(\count_sig[18]_i_2_n_0 ),
        .D(p_0_in[0]),
        .Q(count[0]));
  FDCE #(
    .INIT(1'b0)) 
    \count_sig_reg[10] 
       (.C(clk),
        .CE(en),
        .CLR(\count_sig[18]_i_2_n_0 ),
        .D(p_0_in[10]),
        .Q(count[10]));
  FDCE #(
    .INIT(1'b0)) 
    \count_sig_reg[11] 
       (.C(clk),
        .CE(en),
        .CLR(\count_sig[18]_i_2_n_0 ),
        .D(p_0_in[11]),
        .Q(count[11]));
  FDCE #(
    .INIT(1'b0)) 
    \count_sig_reg[12] 
       (.C(clk),
        .CE(en),
        .CLR(\count_sig[18]_i_2_n_0 ),
        .D(p_0_in[12]),
        .Q(count[12]));
  CARRY4 \count_sig_reg[12]_i_2 
       (.CI(\count_sig_reg[8]_i_2_n_0 ),
        .CO({\count_sig_reg[12]_i_2_n_0 ,\count_sig_reg[12]_i_2_n_1 ,\count_sig_reg[12]_i_2_n_2 ,\count_sig_reg[12]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_sig_reg[12]_i_2_n_4 ,\count_sig_reg[12]_i_2_n_5 ,\count_sig_reg[12]_i_2_n_6 ,\count_sig_reg[12]_i_2_n_7 }),
        .S(count[12:9]));
  FDCE #(
    .INIT(1'b0)) 
    \count_sig_reg[13] 
       (.C(clk),
        .CE(en),
        .CLR(\count_sig[18]_i_2_n_0 ),
        .D(p_0_in[13]),
        .Q(count[13]));
  FDCE #(
    .INIT(1'b0)) 
    \count_sig_reg[14] 
       (.C(clk),
        .CE(en),
        .CLR(\count_sig[18]_i_2_n_0 ),
        .D(p_0_in[14]),
        .Q(count[14]));
  FDCE #(
    .INIT(1'b0)) 
    \count_sig_reg[15] 
       (.C(clk),
        .CE(en),
        .CLR(\count_sig[18]_i_2_n_0 ),
        .D(p_0_in[15]),
        .Q(count[15]));
  FDCE #(
    .INIT(1'b0)) 
    \count_sig_reg[16] 
       (.C(clk),
        .CE(en),
        .CLR(\count_sig[18]_i_2_n_0 ),
        .D(p_0_in[16]),
        .Q(count[16]));
  CARRY4 \count_sig_reg[16]_i_2 
       (.CI(\count_sig_reg[12]_i_2_n_0 ),
        .CO({\count_sig_reg[16]_i_2_n_0 ,\count_sig_reg[16]_i_2_n_1 ,\count_sig_reg[16]_i_2_n_2 ,\count_sig_reg[16]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_sig_reg[16]_i_2_n_4 ,\count_sig_reg[16]_i_2_n_5 ,\count_sig_reg[16]_i_2_n_6 ,\count_sig_reg[16]_i_2_n_7 }),
        .S(count[16:13]));
  FDCE #(
    .INIT(1'b0)) 
    \count_sig_reg[17] 
       (.C(clk),
        .CE(en),
        .CLR(\count_sig[18]_i_2_n_0 ),
        .D(p_0_in[17]),
        .Q(count[17]));
  FDCE #(
    .INIT(1'b0)) 
    \count_sig_reg[18] 
       (.C(clk),
        .CE(en),
        .CLR(\count_sig[18]_i_2_n_0 ),
        .D(p_0_in[18]),
        .Q(count[18]));
  CARRY4 \count_sig_reg[18]_i_6 
       (.CI(\count_sig_reg[16]_i_2_n_0 ),
        .CO({\NLW_count_sig_reg[18]_i_6_CO_UNCONNECTED [3:1],\count_sig_reg[18]_i_6_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_count_sig_reg[18]_i_6_O_UNCONNECTED [3:2],\count_sig_reg[18]_i_6_n_6 ,\count_sig_reg[18]_i_6_n_7 }),
        .S({1'b0,1'b0,count[18:17]}));
  FDCE #(
    .INIT(1'b0)) 
    \count_sig_reg[1] 
       (.C(clk),
        .CE(en),
        .CLR(\count_sig[18]_i_2_n_0 ),
        .D(p_0_in[1]),
        .Q(count[1]));
  FDCE #(
    .INIT(1'b0)) 
    \count_sig_reg[2] 
       (.C(clk),
        .CE(en),
        .CLR(\count_sig[18]_i_2_n_0 ),
        .D(p_0_in[2]),
        .Q(count[2]));
  FDCE #(
    .INIT(1'b0)) 
    \count_sig_reg[3] 
       (.C(clk),
        .CE(en),
        .CLR(\count_sig[18]_i_2_n_0 ),
        .D(p_0_in[3]),
        .Q(count[3]));
  FDCE #(
    .INIT(1'b0)) 
    \count_sig_reg[4] 
       (.C(clk),
        .CE(en),
        .CLR(\count_sig[18]_i_2_n_0 ),
        .D(p_0_in[4]),
        .Q(count[4]));
  CARRY4 \count_sig_reg[4]_i_2 
       (.CI(1'b0),
        .CO({\count_sig_reg[4]_i_2_n_0 ,\count_sig_reg[4]_i_2_n_1 ,\count_sig_reg[4]_i_2_n_2 ,\count_sig_reg[4]_i_2_n_3 }),
        .CYINIT(count[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_sig_reg[4]_i_2_n_4 ,\count_sig_reg[4]_i_2_n_5 ,\count_sig_reg[4]_i_2_n_6 ,\count_sig_reg[4]_i_2_n_7 }),
        .S(count[4:1]));
  FDCE #(
    .INIT(1'b0)) 
    \count_sig_reg[5] 
       (.C(clk),
        .CE(en),
        .CLR(\count_sig[18]_i_2_n_0 ),
        .D(p_0_in[5]),
        .Q(count[5]));
  FDCE #(
    .INIT(1'b0)) 
    \count_sig_reg[6] 
       (.C(clk),
        .CE(en),
        .CLR(\count_sig[18]_i_2_n_0 ),
        .D(p_0_in[6]),
        .Q(count[6]));
  FDCE #(
    .INIT(1'b0)) 
    \count_sig_reg[7] 
       (.C(clk),
        .CE(en),
        .CLR(\count_sig[18]_i_2_n_0 ),
        .D(p_0_in[7]),
        .Q(count[7]));
  FDCE #(
    .INIT(1'b0)) 
    \count_sig_reg[8] 
       (.C(clk),
        .CE(en),
        .CLR(\count_sig[18]_i_2_n_0 ),
        .D(p_0_in[8]),
        .Q(count[8]));
  CARRY4 \count_sig_reg[8]_i_2 
       (.CI(\count_sig_reg[4]_i_2_n_0 ),
        .CO({\count_sig_reg[8]_i_2_n_0 ,\count_sig_reg[8]_i_2_n_1 ,\count_sig_reg[8]_i_2_n_2 ,\count_sig_reg[8]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_sig_reg[8]_i_2_n_4 ,\count_sig_reg[8]_i_2_n_5 ,\count_sig_reg[8]_i_2_n_6 ,\count_sig_reg[8]_i_2_n_7 }),
        .S(count[8:5]));
  FDCE #(
    .INIT(1'b0)) 
    \count_sig_reg[9] 
       (.C(clk),
        .CE(en),
        .CLR(\count_sig[18]_i_2_n_0 ),
        .D(p_0_in[9]),
        .Q(count[9]));
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
