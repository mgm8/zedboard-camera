// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.1 (lin64) Build 2188600 Wed Apr  4 18:39:19 MDT 2018
// Date        : Tue Sep 18 00:58:29 2018
// Host        : debian-mgm running 64-bit Debian GNU/Linux testing (buster)
// Command     : write_verilog -force -mode funcsim
//               /home/gabriel/xilinx_projects/zedcam-vga/zedcam-vga.srcs/sources_1/bd/design_1/ip/design_1_VGA_0_0/design_1_VGA_0_0_sim_netlist.v
// Design      : design_1_VGA_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_VGA_0_0,VGA,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "VGA,Vivado 2018.1" *) 
(* NotValidForBitStream *)
module design_1_VGA_0_0
   (clk,
    RGB_in,
    video_rdy,
    vsync,
    hsync,
    R_out,
    G_out,
    B_out);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, FREQ_HZ 25173611, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1" *) input clk;
  input [11:0]RGB_in;
  output video_rdy;
  output vsync;
  output hsync;
  output [3:0]R_out;
  output [3:0]G_out;
  output [3:0]B_out;

  wire [3:0]B_out;
  wire [3:0]G_out;
  wire [11:0]RGB_in;
  wire [3:0]R_out;
  wire clk;
  wire hsync;
  wire video_rdy;
  wire vsync;

  design_1_VGA_0_0_VGA U0
       (.B_out(B_out),
        .G_out(G_out),
        .RGB_in(RGB_in),
        .R_out(R_out),
        .clk(clk),
        .hsync(hsync),
        .video_rdy(video_rdy),
        .vsync(vsync));
endmodule

(* ORIG_REF_NAME = "VGA" *) 
module design_1_VGA_0_0_VGA
   (video_rdy,
    R_out,
    G_out,
    B_out,
    vsync,
    hsync,
    clk,
    RGB_in);
  output video_rdy;
  output [3:0]R_out;
  output [3:0]G_out;
  output [3:0]B_out;
  output vsync;
  output hsync;
  input clk;
  input [11:0]RGB_in;

  wire [3:0]B_out;
  wire [3:0]G_out;
  wire [11:0]RGB_in;
  wire [3:0]R_out;
  wire R_out1;
  wire \R_out[3]_i_1_n_0 ;
  wire \R_out[3]_i_2_n_0 ;
  wire clk;
  wire hsync;
  wire hsync_i_1_n_0;
  wire hsync_i_2_n_0;
  wire hsync_i_3_n_0;
  wire \line_counter[0]_i_1_n_0 ;
  wire \line_counter[1]_i_1_n_0 ;
  wire \line_counter[2]_i_1_n_0 ;
  wire \line_counter[2]_i_2_n_0 ;
  wire \line_counter[3]_i_1_n_0 ;
  wire \line_counter[3]_i_2_n_0 ;
  wire \line_counter[4]_i_1_n_0 ;
  wire \line_counter[5]_i_1_n_0 ;
  wire \line_counter[6]_i_1_n_0 ;
  wire \line_counter[7]_i_1_n_0 ;
  wire \line_counter[8]_i_1_n_0 ;
  wire \line_counter[9]_i_1_n_0 ;
  wire \line_counter[9]_i_2_n_0 ;
  wire \line_counter[9]_i_3_n_0 ;
  wire \line_counter[9]_i_4_n_0 ;
  wire \line_counter[9]_i_5_n_0 ;
  wire \line_counter_reg_n_0_[0] ;
  wire \line_counter_reg_n_0_[1] ;
  wire \line_counter_reg_n_0_[2] ;
  wire \line_counter_reg_n_0_[3] ;
  wire \line_counter_reg_n_0_[4] ;
  wire \line_counter_reg_n_0_[5] ;
  wire \line_counter_reg_n_0_[6] ;
  wire \line_counter_reg_n_0_[7] ;
  wire \line_counter_reg_n_0_[8] ;
  wire \line_counter_reg_n_0_[9] ;
  wire [9:0]pixel_counter;
  wire \pixel_counter[9]_i_2_n_0 ;
  wire [9:0]pixel_counter_0;
  wire video_rdy;
  wire video_rdy_s;
  wire vsync;
  wire vsync_i_1_n_0;
  wire vsync_i_2_n_0;
  wire vsync_i_3_n_0;

  FDRE \B_out_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(RGB_in[0]),
        .Q(B_out[0]),
        .R(\R_out[3]_i_1_n_0 ));
  FDRE \B_out_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(RGB_in[1]),
        .Q(B_out[1]),
        .R(\R_out[3]_i_1_n_0 ));
  FDRE \B_out_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(RGB_in[2]),
        .Q(B_out[2]),
        .R(\R_out[3]_i_1_n_0 ));
  FDRE \B_out_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(RGB_in[3]),
        .Q(B_out[3]),
        .R(\R_out[3]_i_1_n_0 ));
  FDRE \G_out_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(RGB_in[4]),
        .Q(G_out[0]),
        .R(\R_out[3]_i_1_n_0 ));
  FDRE \G_out_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(RGB_in[5]),
        .Q(G_out[1]),
        .R(\R_out[3]_i_1_n_0 ));
  FDRE \G_out_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(RGB_in[6]),
        .Q(G_out[2]),
        .R(\R_out[3]_i_1_n_0 ));
  FDRE \G_out_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(RGB_in[7]),
        .Q(G_out[3]),
        .R(\R_out[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFEAA)) 
    \R_out[3]_i_1 
       (.I0(\line_counter_reg_n_0_[9] ),
        .I1(pixel_counter[8]),
        .I2(pixel_counter[7]),
        .I3(pixel_counter[9]),
        .I4(\R_out[3]_i_2_n_0 ),
        .O(\R_out[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \R_out[3]_i_2 
       (.I0(\line_counter_reg_n_0_[8] ),
        .I1(\line_counter_reg_n_0_[7] ),
        .I2(\line_counter_reg_n_0_[6] ),
        .I3(\line_counter_reg_n_0_[5] ),
        .O(\R_out[3]_i_2_n_0 ));
  FDRE \R_out_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(RGB_in[8]),
        .Q(R_out[0]),
        .R(\R_out[3]_i_1_n_0 ));
  FDRE \R_out_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(RGB_in[9]),
        .Q(R_out[1]),
        .R(\R_out[3]_i_1_n_0 ));
  FDRE \R_out_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(RGB_in[10]),
        .Q(R_out[2]),
        .R(\R_out[3]_i_1_n_0 ));
  FDRE \R_out_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(RGB_in[11]),
        .Q(R_out[3]),
        .R(\R_out[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hBAA8AAAA)) 
    hsync_i_1
       (.I0(hsync),
        .I1(pixel_counter[8]),
        .I2(pixel_counter[5]),
        .I3(pixel_counter[6]),
        .I4(hsync_i_2_n_0),
        .O(hsync_i_1_n_0));
  LUT4 #(
    .INIT(16'h0080)) 
    hsync_i_2
       (.I0(pixel_counter[9]),
        .I1(pixel_counter[7]),
        .I2(hsync_i_3_n_0),
        .I3(pixel_counter[4]),
        .O(hsync_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    hsync_i_3
       (.I0(pixel_counter[0]),
        .I1(pixel_counter[1]),
        .I2(pixel_counter[3]),
        .I3(pixel_counter[2]),
        .O(hsync_i_3_n_0));
  FDRE hsync_reg
       (.C(clk),
        .CE(1'b1),
        .D(hsync_i_1_n_0),
        .Q(hsync),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h45)) 
    \line_counter[0]_i_1 
       (.I0(\line_counter_reg_n_0_[0] ),
        .I1(\line_counter[2]_i_2_n_0 ),
        .I2(\line_counter_reg_n_0_[2] ),
        .O(\line_counter[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \line_counter[1]_i_1 
       (.I0(\line_counter_reg_n_0_[0] ),
        .I1(\line_counter_reg_n_0_[1] ),
        .O(\line_counter[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h66C0)) 
    \line_counter[2]_i_1 
       (.I0(\line_counter_reg_n_0_[1] ),
        .I1(\line_counter_reg_n_0_[2] ),
        .I2(\line_counter[2]_i_2_n_0 ),
        .I3(\line_counter_reg_n_0_[0] ),
        .O(\line_counter[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFEF)) 
    \line_counter[2]_i_2 
       (.I0(\line_counter[3]_i_2_n_0 ),
        .I1(\line_counter_reg_n_0_[5] ),
        .I2(\line_counter_reg_n_0_[3] ),
        .I3(\line_counter_reg_n_0_[4] ),
        .I4(\line_counter_reg_n_0_[1] ),
        .O(\line_counter[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0EEEEEEEE0000000)) 
    \line_counter[3]_i_1 
       (.I0(\line_counter[3]_i_2_n_0 ),
        .I1(\line_counter[9]_i_4_n_0 ),
        .I2(\line_counter_reg_n_0_[1] ),
        .I3(\line_counter_reg_n_0_[0] ),
        .I4(\line_counter_reg_n_0_[2] ),
        .I5(\line_counter_reg_n_0_[3] ),
        .O(\line_counter[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hFFFB)) 
    \line_counter[3]_i_2 
       (.I0(\line_counter_reg_n_0_[6] ),
        .I1(\line_counter_reg_n_0_[9] ),
        .I2(\line_counter_reg_n_0_[7] ),
        .I3(\line_counter_reg_n_0_[8] ),
        .O(\line_counter[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \line_counter[4]_i_1 
       (.I0(\line_counter_reg_n_0_[4] ),
        .I1(\line_counter_reg_n_0_[1] ),
        .I2(\line_counter_reg_n_0_[0] ),
        .I3(\line_counter_reg_n_0_[2] ),
        .I4(\line_counter_reg_n_0_[3] ),
        .O(\line_counter[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \line_counter[5]_i_1 
       (.I0(\line_counter_reg_n_0_[5] ),
        .I1(\line_counter_reg_n_0_[3] ),
        .I2(\line_counter_reg_n_0_[2] ),
        .I3(\line_counter_reg_n_0_[0] ),
        .I4(\line_counter_reg_n_0_[1] ),
        .I5(\line_counter_reg_n_0_[4] ),
        .O(\line_counter[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \line_counter[6]_i_1 
       (.I0(\line_counter_reg_n_0_[6] ),
        .I1(\line_counter[9]_i_3_n_0 ),
        .I2(\line_counter_reg_n_0_[5] ),
        .O(\line_counter[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \line_counter[7]_i_1 
       (.I0(\line_counter_reg_n_0_[7] ),
        .I1(\line_counter_reg_n_0_[6] ),
        .I2(\line_counter_reg_n_0_[5] ),
        .I3(\line_counter[9]_i_3_n_0 ),
        .O(\line_counter[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \line_counter[8]_i_1 
       (.I0(\line_counter_reg_n_0_[8] ),
        .I1(\line_counter_reg_n_0_[5] ),
        .I2(\line_counter_reg_n_0_[6] ),
        .I3(\line_counter_reg_n_0_[7] ),
        .I4(\line_counter[9]_i_3_n_0 ),
        .O(\line_counter[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0010000000000000)) 
    \line_counter[9]_i_1 
       (.I0(pixel_counter[5]),
        .I1(pixel_counter[6]),
        .I2(pixel_counter[8]),
        .I3(pixel_counter[7]),
        .I4(\pixel_counter[9]_i_2_n_0 ),
        .I5(pixel_counter[9]),
        .O(\line_counter[9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7878787878787808)) 
    \line_counter[9]_i_2 
       (.I0(\R_out[3]_i_2_n_0 ),
        .I1(\line_counter[9]_i_3_n_0 ),
        .I2(\line_counter_reg_n_0_[9] ),
        .I3(\line_counter[9]_i_4_n_0 ),
        .I4(\line_counter_reg_n_0_[6] ),
        .I5(\line_counter[9]_i_5_n_0 ),
        .O(\line_counter[9]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \line_counter[9]_i_3 
       (.I0(\line_counter_reg_n_0_[4] ),
        .I1(\line_counter_reg_n_0_[1] ),
        .I2(\line_counter_reg_n_0_[0] ),
        .I3(\line_counter_reg_n_0_[2] ),
        .I4(\line_counter_reg_n_0_[3] ),
        .O(\line_counter[9]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFBFF)) 
    \line_counter[9]_i_4 
       (.I0(\line_counter_reg_n_0_[4] ),
        .I1(\line_counter_reg_n_0_[3] ),
        .I2(\line_counter_reg_n_0_[5] ),
        .I3(\line_counter_reg_n_0_[2] ),
        .I4(\line_counter_reg_n_0_[0] ),
        .I5(\line_counter_reg_n_0_[1] ),
        .O(\line_counter[9]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \line_counter[9]_i_5 
       (.I0(\line_counter_reg_n_0_[7] ),
        .I1(\line_counter_reg_n_0_[8] ),
        .O(\line_counter[9]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \line_counter_reg[0] 
       (.C(clk),
        .CE(\line_counter[9]_i_1_n_0 ),
        .D(\line_counter[0]_i_1_n_0 ),
        .Q(\line_counter_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \line_counter_reg[1] 
       (.C(clk),
        .CE(\line_counter[9]_i_1_n_0 ),
        .D(\line_counter[1]_i_1_n_0 ),
        .Q(\line_counter_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \line_counter_reg[2] 
       (.C(clk),
        .CE(\line_counter[9]_i_1_n_0 ),
        .D(\line_counter[2]_i_1_n_0 ),
        .Q(\line_counter_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \line_counter_reg[3] 
       (.C(clk),
        .CE(\line_counter[9]_i_1_n_0 ),
        .D(\line_counter[3]_i_1_n_0 ),
        .Q(\line_counter_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \line_counter_reg[4] 
       (.C(clk),
        .CE(\line_counter[9]_i_1_n_0 ),
        .D(\line_counter[4]_i_1_n_0 ),
        .Q(\line_counter_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \line_counter_reg[5] 
       (.C(clk),
        .CE(\line_counter[9]_i_1_n_0 ),
        .D(\line_counter[5]_i_1_n_0 ),
        .Q(\line_counter_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \line_counter_reg[6] 
       (.C(clk),
        .CE(\line_counter[9]_i_1_n_0 ),
        .D(\line_counter[6]_i_1_n_0 ),
        .Q(\line_counter_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \line_counter_reg[7] 
       (.C(clk),
        .CE(\line_counter[9]_i_1_n_0 ),
        .D(\line_counter[7]_i_1_n_0 ),
        .Q(\line_counter_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \line_counter_reg[8] 
       (.C(clk),
        .CE(\line_counter[9]_i_1_n_0 ),
        .D(\line_counter[8]_i_1_n_0 ),
        .Q(\line_counter_reg_n_0_[8] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \line_counter_reg[9] 
       (.C(clk),
        .CE(\line_counter[9]_i_1_n_0 ),
        .D(\line_counter[9]_i_2_n_0 ),
        .Q(\line_counter_reg_n_0_[9] ),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \pixel_counter[0]_i_1 
       (.I0(pixel_counter[0]),
        .O(pixel_counter_0[0]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \pixel_counter[1]_i_1 
       (.I0(pixel_counter[1]),
        .I1(pixel_counter[0]),
        .O(pixel_counter_0[1]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \pixel_counter[2]_i_1 
       (.I0(pixel_counter[2]),
        .I1(pixel_counter[1]),
        .I2(pixel_counter[0]),
        .O(pixel_counter_0[2]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h6CCC)) 
    \pixel_counter[3]_i_1 
       (.I0(pixel_counter[2]),
        .I1(pixel_counter[3]),
        .I2(pixel_counter[1]),
        .I3(pixel_counter[0]),
        .O(pixel_counter_0[3]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \pixel_counter[4]_i_1 
       (.I0(pixel_counter[4]),
        .I1(pixel_counter[2]),
        .I2(pixel_counter[3]),
        .I3(pixel_counter[1]),
        .I4(pixel_counter[0]),
        .O(pixel_counter_0[4]));
  LUT6 #(
    .INIT(64'h0000FFDFFFFF0000)) 
    \pixel_counter[5]_i_1 
       (.I0(pixel_counter[9]),
        .I1(pixel_counter[7]),
        .I2(pixel_counter[8]),
        .I3(pixel_counter[6]),
        .I4(pixel_counter[5]),
        .I5(\pixel_counter[9]_i_2_n_0 ),
        .O(pixel_counter_0[5]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \pixel_counter[6]_i_1 
       (.I0(pixel_counter[6]),
        .I1(pixel_counter[5]),
        .I2(\pixel_counter[9]_i_2_n_0 ),
        .O(pixel_counter_0[6]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \pixel_counter[7]_i_1 
       (.I0(pixel_counter[7]),
        .I1(pixel_counter[6]),
        .I2(pixel_counter[5]),
        .I3(\pixel_counter[9]_i_2_n_0 ),
        .O(pixel_counter_0[7]));
  LUT6 #(
    .INIT(64'h7FFD80007FFF8000)) 
    \pixel_counter[8]_i_1 
       (.I0(\pixel_counter[9]_i_2_n_0 ),
        .I1(pixel_counter[5]),
        .I2(pixel_counter[6]),
        .I3(pixel_counter[7]),
        .I4(pixel_counter[8]),
        .I5(pixel_counter[9]),
        .O(pixel_counter_0[8]));
  LUT6 #(
    .INIT(64'h7FFDFFFF80000000)) 
    \pixel_counter[9]_i_1 
       (.I0(\pixel_counter[9]_i_2_n_0 ),
        .I1(pixel_counter[5]),
        .I2(pixel_counter[6]),
        .I3(pixel_counter[7]),
        .I4(pixel_counter[8]),
        .I5(pixel_counter[9]),
        .O(pixel_counter_0[9]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \pixel_counter[9]_i_2 
       (.I0(pixel_counter[2]),
        .I1(pixel_counter[3]),
        .I2(pixel_counter[1]),
        .I3(pixel_counter[0]),
        .I4(pixel_counter[4]),
        .O(\pixel_counter[9]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \pixel_counter_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(pixel_counter_0[0]),
        .Q(pixel_counter[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pixel_counter_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(pixel_counter_0[1]),
        .Q(pixel_counter[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pixel_counter_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(pixel_counter_0[2]),
        .Q(pixel_counter[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pixel_counter_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(pixel_counter_0[3]),
        .Q(pixel_counter[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pixel_counter_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(pixel_counter_0[4]),
        .Q(pixel_counter[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pixel_counter_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(pixel_counter_0[5]),
        .Q(pixel_counter[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pixel_counter_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(pixel_counter_0[6]),
        .Q(pixel_counter[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pixel_counter_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(pixel_counter_0[7]),
        .Q(pixel_counter[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pixel_counter_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(pixel_counter_0[8]),
        .Q(pixel_counter[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \pixel_counter_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(pixel_counter_0[9]),
        .Q(pixel_counter[9]),
        .R(1'b0));
  FDRE video_rdy_reg
       (.C(clk),
        .CE(1'b1),
        .D(video_rdy_s),
        .Q(video_rdy),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h00001115)) 
    video_rdy_s_i_1
       (.I0(\R_out[3]_i_2_n_0 ),
        .I1(pixel_counter[9]),
        .I2(pixel_counter[7]),
        .I3(pixel_counter[8]),
        .I4(\line_counter_reg_n_0_[9] ),
        .O(R_out1));
  FDRE video_rdy_s_reg
       (.C(clk),
        .CE(1'b1),
        .D(R_out1),
        .Q(video_rdy_s),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hAAAAAAAA8ABAAAAA)) 
    vsync_i_1
       (.I0(vsync),
        .I1(vsync_i_2_n_0),
        .I2(\line_counter_reg_n_0_[0] ),
        .I3(\line_counter_reg_n_0_[1] ),
        .I4(\line_counter[9]_i_1_n_0 ),
        .I5(vsync_i_3_n_0),
        .O(vsync_i_1_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    vsync_i_2
       (.I0(\line_counter_reg_n_0_[6] ),
        .I1(\line_counter_reg_n_0_[5] ),
        .O(vsync_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFFFFDFFFFFFFFFF)) 
    vsync_i_3
       (.I0(\line_counter_reg_n_0_[3] ),
        .I1(\line_counter_reg_n_0_[4] ),
        .I2(\line_counter_reg_n_0_[2] ),
        .I3(\line_counter_reg_n_0_[7] ),
        .I4(\line_counter_reg_n_0_[9] ),
        .I5(\line_counter_reg_n_0_[8] ),
        .O(vsync_i_3_n_0));
  FDRE vsync_reg
       (.C(clk),
        .CE(1'b1),
        .D(vsync_i_1_n_0),
        .Q(vsync),
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
