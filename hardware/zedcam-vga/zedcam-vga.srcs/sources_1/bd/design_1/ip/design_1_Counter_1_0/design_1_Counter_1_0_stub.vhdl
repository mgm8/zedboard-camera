-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.1 (lin64) Build 2188600 Wed Apr  4 18:39:19 MDT 2018
-- Date        : Tue Sep 18 00:58:29 2018
-- Host        : debian-mgm running 64-bit Debian GNU/Linux testing (buster)
-- Command     : write_vhdl -force -mode synth_stub
--               /home/gabriel/xilinx_projects/zedcam-vga/zedcam-vga.srcs/sources_1/bd/design_1/ip/design_1_Counter_1_0/design_1_Counter_1_0_stub.vhdl
-- Design      : design_1_Counter_1_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_Counter_1_0 is
  Port ( 
    clk : in STD_LOGIC;
    en : in STD_LOGIC;
    rst : in STD_LOGIC;
    count : out STD_LOGIC_VECTOR ( 18 downto 0 )
  );

end design_1_Counter_1_0;

architecture stub of design_1_Counter_1_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,en,rst,count[18:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "Counter,Vivado 2018.1";
begin
end;
