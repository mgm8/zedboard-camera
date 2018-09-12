-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.1 (lin64) Build 2188600 Wed Apr  4 18:39:19 MDT 2018
-- Date        : Wed Sep 12 01:38:04 2018
-- Host        : debian-mgm running 64-bit Debian GNU/Linux testing (buster)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_Counter_0_0_sim_netlist.vhdl
-- Design      : design_1_Counter_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Counter is
  port (
    count : out STD_LOGIC_VECTOR ( 18 downto 0 );
    en : in STD_LOGIC;
    clk : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Counter;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Counter is
  signal \^count\ : STD_LOGIC_VECTOR ( 18 downto 0 );
  signal count_sig : STD_LOGIC;
  signal \count_sig[18]_i_3_n_0\ : STD_LOGIC;
  signal \count_sig[3]_i_2_n_0\ : STD_LOGIC;
  signal \count_sig_reg[11]_i_1_n_0\ : STD_LOGIC;
  signal \count_sig_reg[11]_i_1_n_1\ : STD_LOGIC;
  signal \count_sig_reg[11]_i_1_n_2\ : STD_LOGIC;
  signal \count_sig_reg[11]_i_1_n_3\ : STD_LOGIC;
  signal \count_sig_reg[11]_i_1_n_4\ : STD_LOGIC;
  signal \count_sig_reg[11]_i_1_n_5\ : STD_LOGIC;
  signal \count_sig_reg[11]_i_1_n_6\ : STD_LOGIC;
  signal \count_sig_reg[11]_i_1_n_7\ : STD_LOGIC;
  signal \count_sig_reg[15]_i_1_n_0\ : STD_LOGIC;
  signal \count_sig_reg[15]_i_1_n_1\ : STD_LOGIC;
  signal \count_sig_reg[15]_i_1_n_2\ : STD_LOGIC;
  signal \count_sig_reg[15]_i_1_n_3\ : STD_LOGIC;
  signal \count_sig_reg[15]_i_1_n_4\ : STD_LOGIC;
  signal \count_sig_reg[15]_i_1_n_5\ : STD_LOGIC;
  signal \count_sig_reg[15]_i_1_n_6\ : STD_LOGIC;
  signal \count_sig_reg[15]_i_1_n_7\ : STD_LOGIC;
  signal \count_sig_reg[18]_i_2_n_2\ : STD_LOGIC;
  signal \count_sig_reg[18]_i_2_n_3\ : STD_LOGIC;
  signal \count_sig_reg[18]_i_2_n_5\ : STD_LOGIC;
  signal \count_sig_reg[18]_i_2_n_6\ : STD_LOGIC;
  signal \count_sig_reg[18]_i_2_n_7\ : STD_LOGIC;
  signal \count_sig_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \count_sig_reg[3]_i_1_n_1\ : STD_LOGIC;
  signal \count_sig_reg[3]_i_1_n_2\ : STD_LOGIC;
  signal \count_sig_reg[3]_i_1_n_3\ : STD_LOGIC;
  signal \count_sig_reg[3]_i_1_n_4\ : STD_LOGIC;
  signal \count_sig_reg[3]_i_1_n_5\ : STD_LOGIC;
  signal \count_sig_reg[3]_i_1_n_6\ : STD_LOGIC;
  signal \count_sig_reg[3]_i_1_n_7\ : STD_LOGIC;
  signal \count_sig_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \count_sig_reg[7]_i_1_n_1\ : STD_LOGIC;
  signal \count_sig_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \count_sig_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal \count_sig_reg[7]_i_1_n_4\ : STD_LOGIC;
  signal \count_sig_reg[7]_i_1_n_5\ : STD_LOGIC;
  signal \count_sig_reg[7]_i_1_n_6\ : STD_LOGIC;
  signal \count_sig_reg[7]_i_1_n_7\ : STD_LOGIC;
  signal \NLW_count_sig_reg[18]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_count_sig_reg[18]_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
begin
  count(18 downto 0) <= \^count\(18 downto 0);
\count_sig[18]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A2222222"
    )
        port map (
      I0 => en,
      I1 => \count_sig[18]_i_3_n_0\,
      I2 => \^count\(18),
      I3 => \^count\(15),
      I4 => \^count\(14),
      O => count_sig
    );
\count_sig[18]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"01111111FFFFFFFF"
    )
        port map (
      I0 => \^count\(16),
      I1 => \^count\(17),
      I2 => \^count\(13),
      I3 => \^count\(12),
      I4 => \^count\(15),
      I5 => \^count\(18),
      O => \count_sig[18]_i_3_n_0\
    );
\count_sig[3]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^count\(0),
      O => \count_sig[3]_i_2_n_0\
    );
\count_sig_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => en,
      D => \count_sig_reg[3]_i_1_n_7\,
      Q => \^count\(0),
      R => count_sig
    );
\count_sig_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => en,
      D => \count_sig_reg[11]_i_1_n_5\,
      Q => \^count\(10),
      R => count_sig
    );
\count_sig_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => en,
      D => \count_sig_reg[11]_i_1_n_4\,
      Q => \^count\(11),
      R => count_sig
    );
\count_sig_reg[11]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_sig_reg[7]_i_1_n_0\,
      CO(3) => \count_sig_reg[11]_i_1_n_0\,
      CO(2) => \count_sig_reg[11]_i_1_n_1\,
      CO(1) => \count_sig_reg[11]_i_1_n_2\,
      CO(0) => \count_sig_reg[11]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_sig_reg[11]_i_1_n_4\,
      O(2) => \count_sig_reg[11]_i_1_n_5\,
      O(1) => \count_sig_reg[11]_i_1_n_6\,
      O(0) => \count_sig_reg[11]_i_1_n_7\,
      S(3 downto 0) => \^count\(11 downto 8)
    );
\count_sig_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => en,
      D => \count_sig_reg[15]_i_1_n_7\,
      Q => \^count\(12),
      R => count_sig
    );
\count_sig_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => en,
      D => \count_sig_reg[15]_i_1_n_6\,
      Q => \^count\(13),
      R => count_sig
    );
\count_sig_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => en,
      D => \count_sig_reg[15]_i_1_n_5\,
      Q => \^count\(14),
      R => count_sig
    );
\count_sig_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => en,
      D => \count_sig_reg[15]_i_1_n_4\,
      Q => \^count\(15),
      R => count_sig
    );
\count_sig_reg[15]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_sig_reg[11]_i_1_n_0\,
      CO(3) => \count_sig_reg[15]_i_1_n_0\,
      CO(2) => \count_sig_reg[15]_i_1_n_1\,
      CO(1) => \count_sig_reg[15]_i_1_n_2\,
      CO(0) => \count_sig_reg[15]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_sig_reg[15]_i_1_n_4\,
      O(2) => \count_sig_reg[15]_i_1_n_5\,
      O(1) => \count_sig_reg[15]_i_1_n_6\,
      O(0) => \count_sig_reg[15]_i_1_n_7\,
      S(3 downto 0) => \^count\(15 downto 12)
    );
\count_sig_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => en,
      D => \count_sig_reg[18]_i_2_n_7\,
      Q => \^count\(16),
      R => count_sig
    );
\count_sig_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => en,
      D => \count_sig_reg[18]_i_2_n_6\,
      Q => \^count\(17),
      R => count_sig
    );
\count_sig_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => en,
      D => \count_sig_reg[18]_i_2_n_5\,
      Q => \^count\(18),
      R => count_sig
    );
\count_sig_reg[18]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_sig_reg[15]_i_1_n_0\,
      CO(3 downto 2) => \NLW_count_sig_reg[18]_i_2_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \count_sig_reg[18]_i_2_n_2\,
      CO(0) => \count_sig_reg[18]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_count_sig_reg[18]_i_2_O_UNCONNECTED\(3),
      O(2) => \count_sig_reg[18]_i_2_n_5\,
      O(1) => \count_sig_reg[18]_i_2_n_6\,
      O(0) => \count_sig_reg[18]_i_2_n_7\,
      S(3) => '0',
      S(2 downto 0) => \^count\(18 downto 16)
    );
\count_sig_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => en,
      D => \count_sig_reg[3]_i_1_n_6\,
      Q => \^count\(1),
      R => count_sig
    );
\count_sig_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => en,
      D => \count_sig_reg[3]_i_1_n_5\,
      Q => \^count\(2),
      R => count_sig
    );
\count_sig_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => en,
      D => \count_sig_reg[3]_i_1_n_4\,
      Q => \^count\(3),
      R => count_sig
    );
\count_sig_reg[3]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \count_sig_reg[3]_i_1_n_0\,
      CO(2) => \count_sig_reg[3]_i_1_n_1\,
      CO(1) => \count_sig_reg[3]_i_1_n_2\,
      CO(0) => \count_sig_reg[3]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \count_sig_reg[3]_i_1_n_4\,
      O(2) => \count_sig_reg[3]_i_1_n_5\,
      O(1) => \count_sig_reg[3]_i_1_n_6\,
      O(0) => \count_sig_reg[3]_i_1_n_7\,
      S(3 downto 1) => \^count\(3 downto 1),
      S(0) => \count_sig[3]_i_2_n_0\
    );
\count_sig_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => en,
      D => \count_sig_reg[7]_i_1_n_7\,
      Q => \^count\(4),
      R => count_sig
    );
\count_sig_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => en,
      D => \count_sig_reg[7]_i_1_n_6\,
      Q => \^count\(5),
      R => count_sig
    );
\count_sig_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => en,
      D => \count_sig_reg[7]_i_1_n_5\,
      Q => \^count\(6),
      R => count_sig
    );
\count_sig_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => en,
      D => \count_sig_reg[7]_i_1_n_4\,
      Q => \^count\(7),
      R => count_sig
    );
\count_sig_reg[7]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_sig_reg[3]_i_1_n_0\,
      CO(3) => \count_sig_reg[7]_i_1_n_0\,
      CO(2) => \count_sig_reg[7]_i_1_n_1\,
      CO(1) => \count_sig_reg[7]_i_1_n_2\,
      CO(0) => \count_sig_reg[7]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_sig_reg[7]_i_1_n_4\,
      O(2) => \count_sig_reg[7]_i_1_n_5\,
      O(1) => \count_sig_reg[7]_i_1_n_6\,
      O(0) => \count_sig_reg[7]_i_1_n_7\,
      S(3 downto 0) => \^count\(7 downto 4)
    );
\count_sig_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => en,
      D => \count_sig_reg[11]_i_1_n_7\,
      Q => \^count\(8),
      R => count_sig
    );
\count_sig_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => en,
      D => \count_sig_reg[11]_i_1_n_6\,
      Q => \^count\(9),
      R => count_sig
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    clk : in STD_LOGIC;
    en : in STD_LOGIC;
    count : out STD_LOGIC_VECTOR ( 18 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "design_1_Counter_0_0,Counter,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "Counter,Vivado 2018.1";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_CSI_RX_0_0_data_clk";
begin
U0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Counter
     port map (
      clk => clk,
      count(18 downto 0) => count(18 downto 0),
      en => en
    );
end STRUCTURE;
