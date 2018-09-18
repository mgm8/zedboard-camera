-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.1 (lin64) Build 2188600 Wed Apr  4 18:39:19 MDT 2018
-- Date        : Tue Sep 18 00:58:29 2018
-- Host        : debian-mgm running 64-bit Debian GNU/Linux testing (buster)
-- Command     : write_vhdl -force -mode funcsim
--               /home/gabriel/xilinx_projects/zedcam-vga/zedcam-vga.srcs/sources_1/bd/design_1/ip/design_1_VGA_0_0/design_1_VGA_0_0_sim_netlist.vhdl
-- Design      : design_1_VGA_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_VGA_0_0_VGA is
  port (
    video_rdy : out STD_LOGIC;
    R_out : out STD_LOGIC_VECTOR ( 3 downto 0 );
    G_out : out STD_LOGIC_VECTOR ( 3 downto 0 );
    B_out : out STD_LOGIC_VECTOR ( 3 downto 0 );
    vsync : out STD_LOGIC;
    hsync : out STD_LOGIC;
    clk : in STD_LOGIC;
    RGB_in : in STD_LOGIC_VECTOR ( 11 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_VGA_0_0_VGA : entity is "VGA";
end design_1_VGA_0_0_VGA;

architecture STRUCTURE of design_1_VGA_0_0_VGA is
  signal R_out1 : STD_LOGIC;
  signal \R_out[3]_i_1_n_0\ : STD_LOGIC;
  signal \R_out[3]_i_2_n_0\ : STD_LOGIC;
  signal \^hsync\ : STD_LOGIC;
  signal hsync_i_1_n_0 : STD_LOGIC;
  signal hsync_i_2_n_0 : STD_LOGIC;
  signal hsync_i_3_n_0 : STD_LOGIC;
  signal \line_counter[0]_i_1_n_0\ : STD_LOGIC;
  signal \line_counter[1]_i_1_n_0\ : STD_LOGIC;
  signal \line_counter[2]_i_1_n_0\ : STD_LOGIC;
  signal \line_counter[2]_i_2_n_0\ : STD_LOGIC;
  signal \line_counter[3]_i_1_n_0\ : STD_LOGIC;
  signal \line_counter[3]_i_2_n_0\ : STD_LOGIC;
  signal \line_counter[4]_i_1_n_0\ : STD_LOGIC;
  signal \line_counter[5]_i_1_n_0\ : STD_LOGIC;
  signal \line_counter[6]_i_1_n_0\ : STD_LOGIC;
  signal \line_counter[7]_i_1_n_0\ : STD_LOGIC;
  signal \line_counter[8]_i_1_n_0\ : STD_LOGIC;
  signal \line_counter[9]_i_1_n_0\ : STD_LOGIC;
  signal \line_counter[9]_i_2_n_0\ : STD_LOGIC;
  signal \line_counter[9]_i_3_n_0\ : STD_LOGIC;
  signal \line_counter[9]_i_4_n_0\ : STD_LOGIC;
  signal \line_counter[9]_i_5_n_0\ : STD_LOGIC;
  signal \line_counter_reg_n_0_[0]\ : STD_LOGIC;
  signal \line_counter_reg_n_0_[1]\ : STD_LOGIC;
  signal \line_counter_reg_n_0_[2]\ : STD_LOGIC;
  signal \line_counter_reg_n_0_[3]\ : STD_LOGIC;
  signal \line_counter_reg_n_0_[4]\ : STD_LOGIC;
  signal \line_counter_reg_n_0_[5]\ : STD_LOGIC;
  signal \line_counter_reg_n_0_[6]\ : STD_LOGIC;
  signal \line_counter_reg_n_0_[7]\ : STD_LOGIC;
  signal \line_counter_reg_n_0_[8]\ : STD_LOGIC;
  signal \line_counter_reg_n_0_[9]\ : STD_LOGIC;
  signal pixel_counter : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \pixel_counter[9]_i_2_n_0\ : STD_LOGIC;
  signal pixel_counter_0 : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal video_rdy_s : STD_LOGIC;
  signal \^vsync\ : STD_LOGIC;
  signal vsync_i_1_n_0 : STD_LOGIC;
  signal vsync_i_2_n_0 : STD_LOGIC;
  signal vsync_i_3_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \R_out[3]_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of hsync_i_3 : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \line_counter[0]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \line_counter[2]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \line_counter[3]_i_2\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \line_counter[4]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \line_counter[6]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \line_counter[7]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \line_counter[8]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \line_counter[9]_i_3\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \line_counter[9]_i_5\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \pixel_counter[1]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \pixel_counter[2]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \pixel_counter[3]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \pixel_counter[4]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \pixel_counter[6]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \pixel_counter[7]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \pixel_counter[9]_i_2\ : label is "soft_lutpair0";
begin
  hsync <= \^hsync\;
  vsync <= \^vsync\;
\B_out_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => RGB_in(0),
      Q => B_out(0),
      R => \R_out[3]_i_1_n_0\
    );
\B_out_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => RGB_in(1),
      Q => B_out(1),
      R => \R_out[3]_i_1_n_0\
    );
\B_out_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => RGB_in(2),
      Q => B_out(2),
      R => \R_out[3]_i_1_n_0\
    );
\B_out_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => RGB_in(3),
      Q => B_out(3),
      R => \R_out[3]_i_1_n_0\
    );
\G_out_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => RGB_in(4),
      Q => G_out(0),
      R => \R_out[3]_i_1_n_0\
    );
\G_out_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => RGB_in(5),
      Q => G_out(1),
      R => \R_out[3]_i_1_n_0\
    );
\G_out_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => RGB_in(6),
      Q => G_out(2),
      R => \R_out[3]_i_1_n_0\
    );
\G_out_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => RGB_in(7),
      Q => G_out(3),
      R => \R_out[3]_i_1_n_0\
    );
\R_out[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFEAA"
    )
        port map (
      I0 => \line_counter_reg_n_0_[9]\,
      I1 => pixel_counter(8),
      I2 => pixel_counter(7),
      I3 => pixel_counter(9),
      I4 => \R_out[3]_i_2_n_0\,
      O => \R_out[3]_i_1_n_0\
    );
\R_out[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \line_counter_reg_n_0_[8]\,
      I1 => \line_counter_reg_n_0_[7]\,
      I2 => \line_counter_reg_n_0_[6]\,
      I3 => \line_counter_reg_n_0_[5]\,
      O => \R_out[3]_i_2_n_0\
    );
\R_out_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => RGB_in(8),
      Q => R_out(0),
      R => \R_out[3]_i_1_n_0\
    );
\R_out_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => RGB_in(9),
      Q => R_out(1),
      R => \R_out[3]_i_1_n_0\
    );
\R_out_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => RGB_in(10),
      Q => R_out(2),
      R => \R_out[3]_i_1_n_0\
    );
\R_out_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => RGB_in(11),
      Q => R_out(3),
      R => \R_out[3]_i_1_n_0\
    );
hsync_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BAA8AAAA"
    )
        port map (
      I0 => \^hsync\,
      I1 => pixel_counter(8),
      I2 => pixel_counter(5),
      I3 => pixel_counter(6),
      I4 => hsync_i_2_n_0,
      O => hsync_i_1_n_0
    );
hsync_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => pixel_counter(9),
      I1 => pixel_counter(7),
      I2 => hsync_i_3_n_0,
      I3 => pixel_counter(4),
      O => hsync_i_2_n_0
    );
hsync_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => pixel_counter(0),
      I1 => pixel_counter(1),
      I2 => pixel_counter(3),
      I3 => pixel_counter(2),
      O => hsync_i_3_n_0
    );
hsync_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => hsync_i_1_n_0,
      Q => \^hsync\,
      R => '0'
    );
\line_counter[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"45"
    )
        port map (
      I0 => \line_counter_reg_n_0_[0]\,
      I1 => \line_counter[2]_i_2_n_0\,
      I2 => \line_counter_reg_n_0_[2]\,
      O => \line_counter[0]_i_1_n_0\
    );
\line_counter[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \line_counter_reg_n_0_[0]\,
      I1 => \line_counter_reg_n_0_[1]\,
      O => \line_counter[1]_i_1_n_0\
    );
\line_counter[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"66C0"
    )
        port map (
      I0 => \line_counter_reg_n_0_[1]\,
      I1 => \line_counter_reg_n_0_[2]\,
      I2 => \line_counter[2]_i_2_n_0\,
      I3 => \line_counter_reg_n_0_[0]\,
      O => \line_counter[2]_i_1_n_0\
    );
\line_counter[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFEF"
    )
        port map (
      I0 => \line_counter[3]_i_2_n_0\,
      I1 => \line_counter_reg_n_0_[5]\,
      I2 => \line_counter_reg_n_0_[3]\,
      I3 => \line_counter_reg_n_0_[4]\,
      I4 => \line_counter_reg_n_0_[1]\,
      O => \line_counter[2]_i_2_n_0\
    );
\line_counter[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0EEEEEEEE0000000"
    )
        port map (
      I0 => \line_counter[3]_i_2_n_0\,
      I1 => \line_counter[9]_i_4_n_0\,
      I2 => \line_counter_reg_n_0_[1]\,
      I3 => \line_counter_reg_n_0_[0]\,
      I4 => \line_counter_reg_n_0_[2]\,
      I5 => \line_counter_reg_n_0_[3]\,
      O => \line_counter[3]_i_1_n_0\
    );
\line_counter[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFB"
    )
        port map (
      I0 => \line_counter_reg_n_0_[6]\,
      I1 => \line_counter_reg_n_0_[9]\,
      I2 => \line_counter_reg_n_0_[7]\,
      I3 => \line_counter_reg_n_0_[8]\,
      O => \line_counter[3]_i_2_n_0\
    );
\line_counter[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => \line_counter_reg_n_0_[4]\,
      I1 => \line_counter_reg_n_0_[1]\,
      I2 => \line_counter_reg_n_0_[0]\,
      I3 => \line_counter_reg_n_0_[2]\,
      I4 => \line_counter_reg_n_0_[3]\,
      O => \line_counter[4]_i_1_n_0\
    );
\line_counter[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \line_counter_reg_n_0_[5]\,
      I1 => \line_counter_reg_n_0_[3]\,
      I2 => \line_counter_reg_n_0_[2]\,
      I3 => \line_counter_reg_n_0_[0]\,
      I4 => \line_counter_reg_n_0_[1]\,
      I5 => \line_counter_reg_n_0_[4]\,
      O => \line_counter[5]_i_1_n_0\
    );
\line_counter[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \line_counter_reg_n_0_[6]\,
      I1 => \line_counter[9]_i_3_n_0\,
      I2 => \line_counter_reg_n_0_[5]\,
      O => \line_counter[6]_i_1_n_0\
    );
\line_counter[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => \line_counter_reg_n_0_[7]\,
      I1 => \line_counter_reg_n_0_[6]\,
      I2 => \line_counter_reg_n_0_[5]\,
      I3 => \line_counter[9]_i_3_n_0\,
      O => \line_counter[7]_i_1_n_0\
    );
\line_counter[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => \line_counter_reg_n_0_[8]\,
      I1 => \line_counter_reg_n_0_[5]\,
      I2 => \line_counter_reg_n_0_[6]\,
      I3 => \line_counter_reg_n_0_[7]\,
      I4 => \line_counter[9]_i_3_n_0\,
      O => \line_counter[8]_i_1_n_0\
    );
\line_counter[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0010000000000000"
    )
        port map (
      I0 => pixel_counter(5),
      I1 => pixel_counter(6),
      I2 => pixel_counter(8),
      I3 => pixel_counter(7),
      I4 => \pixel_counter[9]_i_2_n_0\,
      I5 => pixel_counter(9),
      O => \line_counter[9]_i_1_n_0\
    );
\line_counter[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7878787878787808"
    )
        port map (
      I0 => \R_out[3]_i_2_n_0\,
      I1 => \line_counter[9]_i_3_n_0\,
      I2 => \line_counter_reg_n_0_[9]\,
      I3 => \line_counter[9]_i_4_n_0\,
      I4 => \line_counter_reg_n_0_[6]\,
      I5 => \line_counter[9]_i_5_n_0\,
      O => \line_counter[9]_i_2_n_0\
    );
\line_counter[9]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => \line_counter_reg_n_0_[4]\,
      I1 => \line_counter_reg_n_0_[1]\,
      I2 => \line_counter_reg_n_0_[0]\,
      I3 => \line_counter_reg_n_0_[2]\,
      I4 => \line_counter_reg_n_0_[3]\,
      O => \line_counter[9]_i_3_n_0\
    );
\line_counter[9]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFBFF"
    )
        port map (
      I0 => \line_counter_reg_n_0_[4]\,
      I1 => \line_counter_reg_n_0_[3]\,
      I2 => \line_counter_reg_n_0_[5]\,
      I3 => \line_counter_reg_n_0_[2]\,
      I4 => \line_counter_reg_n_0_[0]\,
      I5 => \line_counter_reg_n_0_[1]\,
      O => \line_counter[9]_i_4_n_0\
    );
\line_counter[9]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \line_counter_reg_n_0_[7]\,
      I1 => \line_counter_reg_n_0_[8]\,
      O => \line_counter[9]_i_5_n_0\
    );
\line_counter_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \line_counter[9]_i_1_n_0\,
      D => \line_counter[0]_i_1_n_0\,
      Q => \line_counter_reg_n_0_[0]\,
      R => '0'
    );
\line_counter_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \line_counter[9]_i_1_n_0\,
      D => \line_counter[1]_i_1_n_0\,
      Q => \line_counter_reg_n_0_[1]\,
      R => '0'
    );
\line_counter_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \line_counter[9]_i_1_n_0\,
      D => \line_counter[2]_i_1_n_0\,
      Q => \line_counter_reg_n_0_[2]\,
      R => '0'
    );
\line_counter_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \line_counter[9]_i_1_n_0\,
      D => \line_counter[3]_i_1_n_0\,
      Q => \line_counter_reg_n_0_[3]\,
      R => '0'
    );
\line_counter_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \line_counter[9]_i_1_n_0\,
      D => \line_counter[4]_i_1_n_0\,
      Q => \line_counter_reg_n_0_[4]\,
      R => '0'
    );
\line_counter_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \line_counter[9]_i_1_n_0\,
      D => \line_counter[5]_i_1_n_0\,
      Q => \line_counter_reg_n_0_[5]\,
      R => '0'
    );
\line_counter_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \line_counter[9]_i_1_n_0\,
      D => \line_counter[6]_i_1_n_0\,
      Q => \line_counter_reg_n_0_[6]\,
      R => '0'
    );
\line_counter_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \line_counter[9]_i_1_n_0\,
      D => \line_counter[7]_i_1_n_0\,
      Q => \line_counter_reg_n_0_[7]\,
      R => '0'
    );
\line_counter_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \line_counter[9]_i_1_n_0\,
      D => \line_counter[8]_i_1_n_0\,
      Q => \line_counter_reg_n_0_[8]\,
      R => '0'
    );
\line_counter_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \line_counter[9]_i_1_n_0\,
      D => \line_counter[9]_i_2_n_0\,
      Q => \line_counter_reg_n_0_[9]\,
      R => '0'
    );
\pixel_counter[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pixel_counter(0),
      O => pixel_counter_0(0)
    );
\pixel_counter[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => pixel_counter(1),
      I1 => pixel_counter(0),
      O => pixel_counter_0(1)
    );
\pixel_counter[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => pixel_counter(2),
      I1 => pixel_counter(1),
      I2 => pixel_counter(0),
      O => pixel_counter_0(2)
    );
\pixel_counter[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6CCC"
    )
        port map (
      I0 => pixel_counter(2),
      I1 => pixel_counter(3),
      I2 => pixel_counter(1),
      I3 => pixel_counter(0),
      O => pixel_counter_0(3)
    );
\pixel_counter[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => pixel_counter(4),
      I1 => pixel_counter(2),
      I2 => pixel_counter(3),
      I3 => pixel_counter(1),
      I4 => pixel_counter(0),
      O => pixel_counter_0(4)
    );
\pixel_counter[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFDFFFFF0000"
    )
        port map (
      I0 => pixel_counter(9),
      I1 => pixel_counter(7),
      I2 => pixel_counter(8),
      I3 => pixel_counter(6),
      I4 => pixel_counter(5),
      I5 => \pixel_counter[9]_i_2_n_0\,
      O => pixel_counter_0(5)
    );
\pixel_counter[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => pixel_counter(6),
      I1 => pixel_counter(5),
      I2 => \pixel_counter[9]_i_2_n_0\,
      O => pixel_counter_0(6)
    );
\pixel_counter[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => pixel_counter(7),
      I1 => pixel_counter(6),
      I2 => pixel_counter(5),
      I3 => \pixel_counter[9]_i_2_n_0\,
      O => pixel_counter_0(7)
    );
\pixel_counter[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFD80007FFF8000"
    )
        port map (
      I0 => \pixel_counter[9]_i_2_n_0\,
      I1 => pixel_counter(5),
      I2 => pixel_counter(6),
      I3 => pixel_counter(7),
      I4 => pixel_counter(8),
      I5 => pixel_counter(9),
      O => pixel_counter_0(8)
    );
\pixel_counter[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFDFFFF80000000"
    )
        port map (
      I0 => \pixel_counter[9]_i_2_n_0\,
      I1 => pixel_counter(5),
      I2 => pixel_counter(6),
      I3 => pixel_counter(7),
      I4 => pixel_counter(8),
      I5 => pixel_counter(9),
      O => pixel_counter_0(9)
    );
\pixel_counter[9]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => pixel_counter(2),
      I1 => pixel_counter(3),
      I2 => pixel_counter(1),
      I3 => pixel_counter(0),
      I4 => pixel_counter(4),
      O => \pixel_counter[9]_i_2_n_0\
    );
\pixel_counter_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => pixel_counter_0(0),
      Q => pixel_counter(0),
      R => '0'
    );
\pixel_counter_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => pixel_counter_0(1),
      Q => pixel_counter(1),
      R => '0'
    );
\pixel_counter_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => pixel_counter_0(2),
      Q => pixel_counter(2),
      R => '0'
    );
\pixel_counter_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => pixel_counter_0(3),
      Q => pixel_counter(3),
      R => '0'
    );
\pixel_counter_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => pixel_counter_0(4),
      Q => pixel_counter(4),
      R => '0'
    );
\pixel_counter_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => pixel_counter_0(5),
      Q => pixel_counter(5),
      R => '0'
    );
\pixel_counter_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => pixel_counter_0(6),
      Q => pixel_counter(6),
      R => '0'
    );
\pixel_counter_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => pixel_counter_0(7),
      Q => pixel_counter(7),
      R => '0'
    );
\pixel_counter_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => pixel_counter_0(8),
      Q => pixel_counter(8),
      R => '0'
    );
\pixel_counter_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => pixel_counter_0(9),
      Q => pixel_counter(9),
      R => '0'
    );
video_rdy_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => video_rdy_s,
      Q => video_rdy,
      R => '0'
    );
video_rdy_s_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00001115"
    )
        port map (
      I0 => \R_out[3]_i_2_n_0\,
      I1 => pixel_counter(9),
      I2 => pixel_counter(7),
      I3 => pixel_counter(8),
      I4 => \line_counter_reg_n_0_[9]\,
      O => R_out1
    );
video_rdy_s_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => R_out1,
      Q => video_rdy_s,
      R => '0'
    );
vsync_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAA8ABAAAAA"
    )
        port map (
      I0 => \^vsync\,
      I1 => vsync_i_2_n_0,
      I2 => \line_counter_reg_n_0_[0]\,
      I3 => \line_counter_reg_n_0_[1]\,
      I4 => \line_counter[9]_i_1_n_0\,
      I5 => vsync_i_3_n_0,
      O => vsync_i_1_n_0
    );
vsync_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \line_counter_reg_n_0_[6]\,
      I1 => \line_counter_reg_n_0_[5]\,
      O => vsync_i_2_n_0
    );
vsync_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFDFFFFFFFFFF"
    )
        port map (
      I0 => \line_counter_reg_n_0_[3]\,
      I1 => \line_counter_reg_n_0_[4]\,
      I2 => \line_counter_reg_n_0_[2]\,
      I3 => \line_counter_reg_n_0_[7]\,
      I4 => \line_counter_reg_n_0_[9]\,
      I5 => \line_counter_reg_n_0_[8]\,
      O => vsync_i_3_n_0
    );
vsync_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => vsync_i_1_n_0,
      Q => \^vsync\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_VGA_0_0 is
  port (
    clk : in STD_LOGIC;
    RGB_in : in STD_LOGIC_VECTOR ( 11 downto 0 );
    video_rdy : out STD_LOGIC;
    vsync : out STD_LOGIC;
    hsync : out STD_LOGIC;
    R_out : out STD_LOGIC_VECTOR ( 3 downto 0 );
    G_out : out STD_LOGIC_VECTOR ( 3 downto 0 );
    B_out : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_VGA_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_VGA_0_0 : entity is "design_1_VGA_0_0,VGA,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of design_1_VGA_0_0 : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of design_1_VGA_0_0 : entity is "VGA,Vivado 2018.1";
end design_1_VGA_0_0;

architecture STRUCTURE of design_1_VGA_0_0 is
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 25173611, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1";
begin
U0: entity work.design_1_VGA_0_0_VGA
     port map (
      B_out(3 downto 0) => B_out(3 downto 0),
      G_out(3 downto 0) => G_out(3 downto 0),
      RGB_in(11 downto 0) => RGB_in(11 downto 0),
      R_out(3 downto 0) => R_out(3 downto 0),
      clk => clk,
      hsync => hsync,
      video_rdy => video_rdy,
      vsync => vsync
    );
end STRUCTURE;
