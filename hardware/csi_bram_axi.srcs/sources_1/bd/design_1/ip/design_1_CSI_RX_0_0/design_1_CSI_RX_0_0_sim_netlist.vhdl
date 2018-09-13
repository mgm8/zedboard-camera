-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.1 (lin64) Build 2188600 Wed Apr  4 18:39:19 MDT 2018
-- Date        : Wed Sep 12 01:40:45 2018
-- Host        : debian-mgm running 64-bit Debian GNU/Linux testing (buster)
-- Command     : write_vhdl -force -mode funcsim
--               /home/gabriel/xilinx_projects/csi_bram_axi/csi_bram_axi.srcs/sources_1/bd/design_1/ip/design_1_CSI_RX_0_0/design_1_CSI_RX_0_0_sim_netlist.vhdl
-- Design      : design_1_CSI_RX_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_CSI_RX_0_0_CSI_RX is
  port (
    data_out : out STD_LOGIC_VECTOR ( 11 downto 0 );
    data_ready : out STD_LOGIC;
    hsync : in STD_LOGIC;
    vsync : in STD_LOGIC;
    data_in : in STD_LOGIC_VECTOR ( 7 downto 0 );
    pclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_CSI_RX_0_0_CSI_RX : entity is "CSI_RX";
end design_1_CSI_RX_0_0_CSI_RX;

architecture STRUCTURE of design_1_CSI_RX_0_0_CSI_RX is
  signal \data_out[11]_i_1_n_0\ : STD_LOGIC;
  signal \data_out[11]_i_2_n_0\ : STD_LOGIC;
  signal data_ready_i_1_n_0 : STD_LOGIC;
  signal \pix_counter[0]_i_1_n_0\ : STD_LOGIC;
  signal \pix_counter_reg_n_0_[0]\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of data_ready_i_1 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \pix_counter[0]_i_1\ : label is "soft_lutpair0";
begin
\data_out[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => hsync,
      I1 => vsync,
      O => \data_out[11]_i_1_n_0\
    );
\data_out[11]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \pix_counter_reg_n_0_[0]\,
      O => \data_out[11]_i_2_n_0\
    );
\data_out_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => \pix_counter_reg_n_0_[0]\,
      D => data_in(4),
      Q => data_out(0),
      R => \data_out[11]_i_1_n_0\
    );
\data_out_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => \data_out[11]_i_2_n_0\,
      D => data_in(6),
      Q => data_out(10),
      R => \data_out[11]_i_1_n_0\
    );
\data_out_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => \data_out[11]_i_2_n_0\,
      D => data_in(7),
      Q => data_out(11),
      R => \data_out[11]_i_1_n_0\
    );
\data_out_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => \pix_counter_reg_n_0_[0]\,
      D => data_in(5),
      Q => data_out(1),
      R => \data_out[11]_i_1_n_0\
    );
\data_out_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => \pix_counter_reg_n_0_[0]\,
      D => data_in(6),
      Q => data_out(2),
      R => \data_out[11]_i_1_n_0\
    );
\data_out_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => \pix_counter_reg_n_0_[0]\,
      D => data_in(7),
      Q => data_out(3),
      R => \data_out[11]_i_1_n_0\
    );
\data_out_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => \data_out[11]_i_2_n_0\,
      D => data_in(0),
      Q => data_out(4),
      R => \data_out[11]_i_1_n_0\
    );
\data_out_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => \data_out[11]_i_2_n_0\,
      D => data_in(1),
      Q => data_out(5),
      R => \data_out[11]_i_1_n_0\
    );
\data_out_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => \data_out[11]_i_2_n_0\,
      D => data_in(2),
      Q => data_out(6),
      R => \data_out[11]_i_1_n_0\
    );
\data_out_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => \data_out[11]_i_2_n_0\,
      D => data_in(3),
      Q => data_out(7),
      R => \data_out[11]_i_1_n_0\
    );
\data_out_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => \data_out[11]_i_2_n_0\,
      D => data_in(4),
      Q => data_out(8),
      R => \data_out[11]_i_1_n_0\
    );
\data_out_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => \data_out[11]_i_2_n_0\,
      D => data_in(5),
      Q => data_out(9),
      R => \data_out[11]_i_1_n_0\
    );
data_ready_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \pix_counter_reg_n_0_[0]\,
      I1 => vsync,
      I2 => hsync,
      O => data_ready_i_1_n_0
    );
data_ready_reg: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => '1',
      D => data_ready_i_1_n_0,
      Q => data_ready,
      R => '0'
    );
\pix_counter[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => hsync,
      I1 => vsync,
      I2 => \pix_counter_reg_n_0_[0]\,
      O => \pix_counter[0]_i_1_n_0\
    );
\pix_counter_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pclk,
      CE => '1',
      D => \pix_counter[0]_i_1_n_0\,
      Q => \pix_counter_reg_n_0_[0]\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_CSI_RX_0_0 is
  port (
    clk : in STD_LOGIC;
    pclk : in STD_LOGIC;
    vsync : in STD_LOGIC;
    hsync : in STD_LOGIC;
    data_in : in STD_LOGIC_VECTOR ( 7 downto 0 );
    xclk : out STD_LOGIC;
    data_clk : out STD_LOGIC;
    data_ready : out STD_LOGIC;
    data_out : out STD_LOGIC_VECTOR ( 11 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_CSI_RX_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_CSI_RX_0_0 : entity is "design_1_CSI_RX_0_0,CSI_RX,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of design_1_CSI_RX_0_0 : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of design_1_CSI_RX_0_0 : entity is "CSI_RX,Vivado 2018.1";
end design_1_CSI_RX_0_0;

architecture STRUCTURE of design_1_CSI_RX_0_0 is
  signal \^clk\ : STD_LOGIC;
  signal \^pclk\ : STD_LOGIC;
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 10000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1";
  attribute x_interface_info of data_clk : signal is "xilinx.com:signal:clock:1.0 data_clk CLK";
  attribute x_interface_parameter of data_clk : signal is "XIL_INTERFACENAME data_clk, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_CSI_RX_0_0_data_clk";
begin
  \^clk\ <= clk;
  \^pclk\ <= pclk;
  data_clk <= \^pclk\;
  xclk <= \^clk\;
U0: entity work.design_1_CSI_RX_0_0_CSI_RX
     port map (
      data_in(7 downto 0) => data_in(7 downto 0),
      data_out(11 downto 0) => data_out(11 downto 0),
      data_ready => data_ready,
      hsync => hsync,
      pclk => \^pclk\,
      vsync => vsync
    );
end STRUCTURE;