// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.1 (lin64) Build 2188600 Wed Apr  4 18:39:19 MDT 2018
// Date        : Tue Sep 18 00:55:55 2018
// Host        : debian-mgm running 64-bit Debian GNU/Linux testing (buster)
// Command     : write_verilog -force -mode synth_stub
//               /home/gabriel/xilinx_projects/zedcam-vga/zedcam-vga.srcs/sources_1/bd/design_1/ip/design_1_Counter_0_0/design_1_Counter_0_0_stub.v
// Design      : design_1_Counter_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "Counter,Vivado 2018.1" *)
module design_1_Counter_0_0(clk, en, rst, count)
/* synthesis syn_black_box black_box_pad_pin="clk,en,rst,count[18:0]" */;
  input clk;
  input en;
  input rst;
  output [18:0]count;
endmodule
