-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.1 (lin64) Build 2188600 Wed Apr  4 18:39:19 MDT 2018
-- Date        : Tue Sep 18 00:55:56 2018
-- Host        : debian-mgm running 64-bit Debian GNU/Linux testing (buster)
-- Command     : write_vhdl -force -mode funcsim
--               /home/gabriel/xilinx_projects/zedcam-vga/zedcam-vga.srcs/sources_1/bd/design_1/ip/design_1_Counter_0_0/design_1_Counter_0_0_sim_netlist.vhdl
-- Design      : design_1_Counter_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_Counter_0_0_Counter is
  port (
    Q : out STD_LOGIC_VECTOR ( 18 downto 0 );
    en : in STD_LOGIC;
    clk : in STD_LOGIC;
    rst : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_Counter_0_0_Counter : entity is "Counter";
end design_1_Counter_0_0_Counter;

architecture STRUCTURE of design_1_Counter_0_0_Counter is
  signal \^q\ : STD_LOGIC_VECTOR ( 18 downto 0 );
  signal \count_sig[10]_i_1_n_0\ : STD_LOGIC;
  signal \count_sig[11]_i_1_n_0\ : STD_LOGIC;
  signal \count_sig[12]_i_1_n_0\ : STD_LOGIC;
  signal \count_sig[13]_i_1_n_0\ : STD_LOGIC;
  signal \count_sig[14]_i_1_n_0\ : STD_LOGIC;
  signal \count_sig[15]_i_1_n_0\ : STD_LOGIC;
  signal \count_sig[16]_i_1_n_0\ : STD_LOGIC;
  signal \count_sig[17]_i_1_n_0\ : STD_LOGIC;
  signal \count_sig[18]_i_1_n_0\ : STD_LOGIC;
  signal \count_sig[18]_i_2_n_0\ : STD_LOGIC;
  signal \count_sig[18]_i_3_n_0\ : STD_LOGIC;
  signal \count_sig[1]_i_1_n_0\ : STD_LOGIC;
  signal \count_sig[2]_i_1_n_0\ : STD_LOGIC;
  signal \count_sig[3]_i_1_n_0\ : STD_LOGIC;
  signal \count_sig[4]_i_1_n_0\ : STD_LOGIC;
  signal \count_sig[5]_i_1_n_0\ : STD_LOGIC;
  signal \count_sig[6]_i_1_n_0\ : STD_LOGIC;
  signal \count_sig[7]_i_1_n_0\ : STD_LOGIC;
  signal \count_sig[8]_i_1_n_0\ : STD_LOGIC;
  signal \count_sig[9]_i_1_n_0\ : STD_LOGIC;
  signal \count_sig_reg[12]_i_2_n_0\ : STD_LOGIC;
  signal \count_sig_reg[12]_i_2_n_1\ : STD_LOGIC;
  signal \count_sig_reg[12]_i_2_n_2\ : STD_LOGIC;
  signal \count_sig_reg[12]_i_2_n_3\ : STD_LOGIC;
  signal \count_sig_reg[12]_i_2_n_4\ : STD_LOGIC;
  signal \count_sig_reg[12]_i_2_n_5\ : STD_LOGIC;
  signal \count_sig_reg[12]_i_2_n_6\ : STD_LOGIC;
  signal \count_sig_reg[12]_i_2_n_7\ : STD_LOGIC;
  signal \count_sig_reg[16]_i_2_n_0\ : STD_LOGIC;
  signal \count_sig_reg[16]_i_2_n_1\ : STD_LOGIC;
  signal \count_sig_reg[16]_i_2_n_2\ : STD_LOGIC;
  signal \count_sig_reg[16]_i_2_n_3\ : STD_LOGIC;
  signal \count_sig_reg[16]_i_2_n_4\ : STD_LOGIC;
  signal \count_sig_reg[16]_i_2_n_5\ : STD_LOGIC;
  signal \count_sig_reg[16]_i_2_n_6\ : STD_LOGIC;
  signal \count_sig_reg[16]_i_2_n_7\ : STD_LOGIC;
  signal \count_sig_reg[18]_i_4_n_3\ : STD_LOGIC;
  signal \count_sig_reg[18]_i_4_n_6\ : STD_LOGIC;
  signal \count_sig_reg[18]_i_4_n_7\ : STD_LOGIC;
  signal \count_sig_reg[4]_i_2_n_0\ : STD_LOGIC;
  signal \count_sig_reg[4]_i_2_n_1\ : STD_LOGIC;
  signal \count_sig_reg[4]_i_2_n_2\ : STD_LOGIC;
  signal \count_sig_reg[4]_i_2_n_3\ : STD_LOGIC;
  signal \count_sig_reg[4]_i_2_n_4\ : STD_LOGIC;
  signal \count_sig_reg[4]_i_2_n_5\ : STD_LOGIC;
  signal \count_sig_reg[4]_i_2_n_6\ : STD_LOGIC;
  signal \count_sig_reg[4]_i_2_n_7\ : STD_LOGIC;
  signal \count_sig_reg[8]_i_2_n_0\ : STD_LOGIC;
  signal \count_sig_reg[8]_i_2_n_1\ : STD_LOGIC;
  signal \count_sig_reg[8]_i_2_n_2\ : STD_LOGIC;
  signal \count_sig_reg[8]_i_2_n_3\ : STD_LOGIC;
  signal \count_sig_reg[8]_i_2_n_4\ : STD_LOGIC;
  signal \count_sig_reg[8]_i_2_n_5\ : STD_LOGIC;
  signal \count_sig_reg[8]_i_2_n_6\ : STD_LOGIC;
  signal \count_sig_reg[8]_i_2_n_7\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_count_sig_reg[18]_i_4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_count_sig_reg[18]_i_4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
begin
  Q(18 downto 0) <= \^q\(18 downto 0);
\count_sig[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000002AAAAAAA"
    )
        port map (
      I0 => \count_sig[18]_i_3_n_0\,
      I1 => \^q\(18),
      I2 => \^q\(15),
      I3 => \^q\(12),
      I4 => \^q\(13),
      I5 => \^q\(0),
      O => p_0_in(0)
    );
\count_sig[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2AAAAAAA00000000"
    )
        port map (
      I0 => \count_sig[18]_i_3_n_0\,
      I1 => \^q\(18),
      I2 => \^q\(15),
      I3 => \^q\(12),
      I4 => \^q\(13),
      I5 => \count_sig_reg[12]_i_2_n_6\,
      O => \count_sig[10]_i_1_n_0\
    );
\count_sig[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2AAAAAAA00000000"
    )
        port map (
      I0 => \count_sig[18]_i_3_n_0\,
      I1 => \^q\(18),
      I2 => \^q\(15),
      I3 => \^q\(12),
      I4 => \^q\(13),
      I5 => \count_sig_reg[12]_i_2_n_5\,
      O => \count_sig[11]_i_1_n_0\
    );
\count_sig[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2AAAAAAA00000000"
    )
        port map (
      I0 => \count_sig[18]_i_3_n_0\,
      I1 => \^q\(18),
      I2 => \^q\(15),
      I3 => \^q\(12),
      I4 => \^q\(13),
      I5 => \count_sig_reg[12]_i_2_n_4\,
      O => \count_sig[12]_i_1_n_0\
    );
\count_sig[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2AAAAAAA00000000"
    )
        port map (
      I0 => \count_sig[18]_i_3_n_0\,
      I1 => \^q\(18),
      I2 => \^q\(15),
      I3 => \^q\(12),
      I4 => \^q\(13),
      I5 => \count_sig_reg[16]_i_2_n_7\,
      O => \count_sig[13]_i_1_n_0\
    );
\count_sig[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2AAAAAAA00000000"
    )
        port map (
      I0 => \count_sig[18]_i_3_n_0\,
      I1 => \^q\(18),
      I2 => \^q\(15),
      I3 => \^q\(12),
      I4 => \^q\(13),
      I5 => \count_sig_reg[16]_i_2_n_6\,
      O => \count_sig[14]_i_1_n_0\
    );
\count_sig[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2AAAAAAA00000000"
    )
        port map (
      I0 => \count_sig[18]_i_3_n_0\,
      I1 => \^q\(18),
      I2 => \^q\(15),
      I3 => \^q\(12),
      I4 => \^q\(13),
      I5 => \count_sig_reg[16]_i_2_n_5\,
      O => \count_sig[15]_i_1_n_0\
    );
\count_sig[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2AAAAAAA00000000"
    )
        port map (
      I0 => \count_sig[18]_i_3_n_0\,
      I1 => \^q\(18),
      I2 => \^q\(15),
      I3 => \^q\(12),
      I4 => \^q\(13),
      I5 => \count_sig_reg[16]_i_2_n_4\,
      O => \count_sig[16]_i_1_n_0\
    );
\count_sig[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2AAAAAAA00000000"
    )
        port map (
      I0 => \count_sig[18]_i_3_n_0\,
      I1 => \^q\(18),
      I2 => \^q\(15),
      I3 => \^q\(12),
      I4 => \^q\(13),
      I5 => \count_sig_reg[18]_i_4_n_7\,
      O => \count_sig[17]_i_1_n_0\
    );
\count_sig[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2AAAAAAA00000000"
    )
        port map (
      I0 => \count_sig[18]_i_3_n_0\,
      I1 => \^q\(18),
      I2 => \^q\(15),
      I3 => \^q\(12),
      I4 => \^q\(13),
      I5 => \count_sig_reg[18]_i_4_n_6\,
      O => \count_sig[18]_i_1_n_0\
    );
\count_sig[18]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rst,
      O => \count_sig[18]_i_2_n_0\
    );
\count_sig[18]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0F1F1F1F"
    )
        port map (
      I0 => \^q\(17),
      I1 => \^q\(16),
      I2 => \^q\(18),
      I3 => \^q\(15),
      I4 => \^q\(14),
      O => \count_sig[18]_i_3_n_0\
    );
\count_sig[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2AAAAAAA00000000"
    )
        port map (
      I0 => \count_sig[18]_i_3_n_0\,
      I1 => \^q\(18),
      I2 => \^q\(15),
      I3 => \^q\(12),
      I4 => \^q\(13),
      I5 => \count_sig_reg[4]_i_2_n_7\,
      O => \count_sig[1]_i_1_n_0\
    );
\count_sig[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2AAAAAAA00000000"
    )
        port map (
      I0 => \count_sig[18]_i_3_n_0\,
      I1 => \^q\(18),
      I2 => \^q\(15),
      I3 => \^q\(12),
      I4 => \^q\(13),
      I5 => \count_sig_reg[4]_i_2_n_6\,
      O => \count_sig[2]_i_1_n_0\
    );
\count_sig[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2AAAAAAA00000000"
    )
        port map (
      I0 => \count_sig[18]_i_3_n_0\,
      I1 => \^q\(18),
      I2 => \^q\(15),
      I3 => \^q\(12),
      I4 => \^q\(13),
      I5 => \count_sig_reg[4]_i_2_n_5\,
      O => \count_sig[3]_i_1_n_0\
    );
\count_sig[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2AAAAAAA00000000"
    )
        port map (
      I0 => \count_sig[18]_i_3_n_0\,
      I1 => \^q\(18),
      I2 => \^q\(15),
      I3 => \^q\(12),
      I4 => \^q\(13),
      I5 => \count_sig_reg[4]_i_2_n_4\,
      O => \count_sig[4]_i_1_n_0\
    );
\count_sig[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2AAAAAAA00000000"
    )
        port map (
      I0 => \count_sig[18]_i_3_n_0\,
      I1 => \^q\(18),
      I2 => \^q\(15),
      I3 => \^q\(12),
      I4 => \^q\(13),
      I5 => \count_sig_reg[8]_i_2_n_7\,
      O => \count_sig[5]_i_1_n_0\
    );
\count_sig[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2AAAAAAA00000000"
    )
        port map (
      I0 => \count_sig[18]_i_3_n_0\,
      I1 => \^q\(18),
      I2 => \^q\(15),
      I3 => \^q\(12),
      I4 => \^q\(13),
      I5 => \count_sig_reg[8]_i_2_n_6\,
      O => \count_sig[6]_i_1_n_0\
    );
\count_sig[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2AAAAAAA00000000"
    )
        port map (
      I0 => \count_sig[18]_i_3_n_0\,
      I1 => \^q\(18),
      I2 => \^q\(15),
      I3 => \^q\(12),
      I4 => \^q\(13),
      I5 => \count_sig_reg[8]_i_2_n_5\,
      O => \count_sig[7]_i_1_n_0\
    );
\count_sig[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2AAAAAAA00000000"
    )
        port map (
      I0 => \count_sig[18]_i_3_n_0\,
      I1 => \^q\(18),
      I2 => \^q\(15),
      I3 => \^q\(12),
      I4 => \^q\(13),
      I5 => \count_sig_reg[8]_i_2_n_4\,
      O => \count_sig[8]_i_1_n_0\
    );
\count_sig[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2AAAAAAA00000000"
    )
        port map (
      I0 => \count_sig[18]_i_3_n_0\,
      I1 => \^q\(18),
      I2 => \^q\(15),
      I3 => \^q\(12),
      I4 => \^q\(13),
      I5 => \count_sig_reg[12]_i_2_n_7\,
      O => \count_sig[9]_i_1_n_0\
    );
\count_sig_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => en,
      CLR => \count_sig[18]_i_2_n_0\,
      D => p_0_in(0),
      Q => \^q\(0)
    );
\count_sig_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => en,
      CLR => \count_sig[18]_i_2_n_0\,
      D => \count_sig[10]_i_1_n_0\,
      Q => \^q\(10)
    );
\count_sig_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => en,
      CLR => \count_sig[18]_i_2_n_0\,
      D => \count_sig[11]_i_1_n_0\,
      Q => \^q\(11)
    );
\count_sig_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => en,
      CLR => \count_sig[18]_i_2_n_0\,
      D => \count_sig[12]_i_1_n_0\,
      Q => \^q\(12)
    );
\count_sig_reg[12]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_sig_reg[8]_i_2_n_0\,
      CO(3) => \count_sig_reg[12]_i_2_n_0\,
      CO(2) => \count_sig_reg[12]_i_2_n_1\,
      CO(1) => \count_sig_reg[12]_i_2_n_2\,
      CO(0) => \count_sig_reg[12]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_sig_reg[12]_i_2_n_4\,
      O(2) => \count_sig_reg[12]_i_2_n_5\,
      O(1) => \count_sig_reg[12]_i_2_n_6\,
      O(0) => \count_sig_reg[12]_i_2_n_7\,
      S(3 downto 0) => \^q\(12 downto 9)
    );
\count_sig_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => en,
      CLR => \count_sig[18]_i_2_n_0\,
      D => \count_sig[13]_i_1_n_0\,
      Q => \^q\(13)
    );
\count_sig_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => en,
      CLR => \count_sig[18]_i_2_n_0\,
      D => \count_sig[14]_i_1_n_0\,
      Q => \^q\(14)
    );
\count_sig_reg[15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => en,
      CLR => \count_sig[18]_i_2_n_0\,
      D => \count_sig[15]_i_1_n_0\,
      Q => \^q\(15)
    );
\count_sig_reg[16]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => en,
      CLR => \count_sig[18]_i_2_n_0\,
      D => \count_sig[16]_i_1_n_0\,
      Q => \^q\(16)
    );
\count_sig_reg[16]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_sig_reg[12]_i_2_n_0\,
      CO(3) => \count_sig_reg[16]_i_2_n_0\,
      CO(2) => \count_sig_reg[16]_i_2_n_1\,
      CO(1) => \count_sig_reg[16]_i_2_n_2\,
      CO(0) => \count_sig_reg[16]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_sig_reg[16]_i_2_n_4\,
      O(2) => \count_sig_reg[16]_i_2_n_5\,
      O(1) => \count_sig_reg[16]_i_2_n_6\,
      O(0) => \count_sig_reg[16]_i_2_n_7\,
      S(3 downto 0) => \^q\(16 downto 13)
    );
\count_sig_reg[17]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => en,
      CLR => \count_sig[18]_i_2_n_0\,
      D => \count_sig[17]_i_1_n_0\,
      Q => \^q\(17)
    );
\count_sig_reg[18]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => en,
      CLR => \count_sig[18]_i_2_n_0\,
      D => \count_sig[18]_i_1_n_0\,
      Q => \^q\(18)
    );
\count_sig_reg[18]_i_4\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_sig_reg[16]_i_2_n_0\,
      CO(3 downto 1) => \NLW_count_sig_reg[18]_i_4_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \count_sig_reg[18]_i_4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 2) => \NLW_count_sig_reg[18]_i_4_O_UNCONNECTED\(3 downto 2),
      O(1) => \count_sig_reg[18]_i_4_n_6\,
      O(0) => \count_sig_reg[18]_i_4_n_7\,
      S(3 downto 2) => B"00",
      S(1 downto 0) => \^q\(18 downto 17)
    );
\count_sig_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => en,
      CLR => \count_sig[18]_i_2_n_0\,
      D => \count_sig[1]_i_1_n_0\,
      Q => \^q\(1)
    );
\count_sig_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => en,
      CLR => \count_sig[18]_i_2_n_0\,
      D => \count_sig[2]_i_1_n_0\,
      Q => \^q\(2)
    );
\count_sig_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => en,
      CLR => \count_sig[18]_i_2_n_0\,
      D => \count_sig[3]_i_1_n_0\,
      Q => \^q\(3)
    );
\count_sig_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => en,
      CLR => \count_sig[18]_i_2_n_0\,
      D => \count_sig[4]_i_1_n_0\,
      Q => \^q\(4)
    );
\count_sig_reg[4]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \count_sig_reg[4]_i_2_n_0\,
      CO(2) => \count_sig_reg[4]_i_2_n_1\,
      CO(1) => \count_sig_reg[4]_i_2_n_2\,
      CO(0) => \count_sig_reg[4]_i_2_n_3\,
      CYINIT => \^q\(0),
      DI(3 downto 0) => B"0000",
      O(3) => \count_sig_reg[4]_i_2_n_4\,
      O(2) => \count_sig_reg[4]_i_2_n_5\,
      O(1) => \count_sig_reg[4]_i_2_n_6\,
      O(0) => \count_sig_reg[4]_i_2_n_7\,
      S(3 downto 0) => \^q\(4 downto 1)
    );
\count_sig_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => en,
      CLR => \count_sig[18]_i_2_n_0\,
      D => \count_sig[5]_i_1_n_0\,
      Q => \^q\(5)
    );
\count_sig_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => en,
      CLR => \count_sig[18]_i_2_n_0\,
      D => \count_sig[6]_i_1_n_0\,
      Q => \^q\(6)
    );
\count_sig_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => en,
      CLR => \count_sig[18]_i_2_n_0\,
      D => \count_sig[7]_i_1_n_0\,
      Q => \^q\(7)
    );
\count_sig_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => en,
      CLR => \count_sig[18]_i_2_n_0\,
      D => \count_sig[8]_i_1_n_0\,
      Q => \^q\(8)
    );
\count_sig_reg[8]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_sig_reg[4]_i_2_n_0\,
      CO(3) => \count_sig_reg[8]_i_2_n_0\,
      CO(2) => \count_sig_reg[8]_i_2_n_1\,
      CO(1) => \count_sig_reg[8]_i_2_n_2\,
      CO(0) => \count_sig_reg[8]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_sig_reg[8]_i_2_n_4\,
      O(2) => \count_sig_reg[8]_i_2_n_5\,
      O(1) => \count_sig_reg[8]_i_2_n_6\,
      O(0) => \count_sig_reg[8]_i_2_n_7\,
      S(3 downto 0) => \^q\(8 downto 5)
    );
\count_sig_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => en,
      CLR => \count_sig[18]_i_2_n_0\,
      D => \count_sig[9]_i_1_n_0\,
      Q => \^q\(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_Counter_0_0 is
  port (
    clk : in STD_LOGIC;
    en : in STD_LOGIC;
    rst : in STD_LOGIC;
    count : out STD_LOGIC_VECTOR ( 18 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_Counter_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_Counter_0_0 : entity is "design_1_Counter_0_0,Counter,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of design_1_Counter_0_0 : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of design_1_Counter_0_0 : entity is "Counter,Vivado 2018.1";
end design_1_Counter_0_0;

architecture STRUCTURE of design_1_Counter_0_0 is
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_CSI_RX_0_0_data_clk";
  attribute x_interface_info of rst : signal is "xilinx.com:signal:reset:1.0 rst RST";
  attribute x_interface_parameter of rst : signal is "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW";
begin
U0: entity work.design_1_Counter_0_0_Counter
     port map (
      Q(18 downto 0) => count(18 downto 0),
      clk => clk,
      en => en,
      rst => rst
    );
end STRUCTURE;
