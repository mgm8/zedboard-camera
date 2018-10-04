-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.1 (lin64) Build 2188600 Wed Apr  4 18:39:19 MDT 2018
-- Date        : Thu Oct  4 11:58:16 2018
-- Host        : debian-mgm running 64-bit Debian GNU/Linux testing (buster)
-- Command     : write_vhdl -force -mode funcsim
--               /home/gabriel/xilinx_projects/zedcam/zedcam.srcs/sources_1/bd/design_1/ip/design_1_CSI_RX_0_0/design_1_CSI_RX_0_0_sim_netlist.vhdl
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
    data_out : out STD_LOGIC_VECTOR ( 6 downto 0 );
    data_clk : out STD_LOGIC;
    hsync : in STD_LOGIC;
    vsync : in STD_LOGIC;
    data_in : in STD_LOGIC_VECTOR ( 7 downto 0 );
    pclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_CSI_RX_0_0_CSI_RX : entity is "CSI_RX";
end design_1_CSI_RX_0_0_CSI_RX;

architecture STRUCTURE of design_1_CSI_RX_0_0_CSI_RX is
  signal L : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal R : STD_LOGIC_VECTOR ( 1 to 3 );
  signal \data_buffer[7]_i_1_n_0\ : STD_LOGIC;
  signal \^data_clk\ : STD_LOGIC;
  signal data_clk2_out : STD_LOGIC;
  signal data_clk_i_1_n_0 : STD_LOGIC;
  signal \data_out[3]_i_2_n_0\ : STD_LOGIC;
  signal \data_out[3]_i_3_n_0\ : STD_LOGIC;
  signal \data_out[4]_i_2_n_0\ : STD_LOGIC;
  signal \data_out[4]_i_3_n_0\ : STD_LOGIC;
  signal \data_out[7]_i_3_n_0\ : STD_LOGIC;
  signal \data_out[7]_i_4_n_0\ : STD_LOGIC;
  signal \data_out[7]_i_5_n_0\ : STD_LOGIC;
  signal plusOp : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal pos_counter : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \data_out[3]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \data_out[4]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \data_out[4]_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \data_out[7]_i_4\ : label is "soft_lutpair0";
begin
  data_clk <= \^data_clk\;
\data_buffer[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => hsync,
      I1 => vsync,
      I2 => pos_counter(0),
      O => \data_buffer[7]_i_1_n_0\
    );
\data_buffer_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pclk,
      CE => \data_buffer[7]_i_1_n_0\,
      D => data_in(0),
      Q => R(3),
      R => '0'
    );
\data_buffer_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pclk,
      CE => \data_buffer[7]_i_1_n_0\,
      D => data_in(1),
      Q => R(2),
      R => '0'
    );
\data_buffer_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pclk,
      CE => \data_buffer[7]_i_1_n_0\,
      D => data_in(2),
      Q => R(1),
      R => '0'
    );
\data_buffer_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pclk,
      CE => \data_buffer[7]_i_1_n_0\,
      D => data_in(3),
      Q => L(0),
      R => '0'
    );
\data_buffer_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pclk,
      CE => \data_buffer[7]_i_1_n_0\,
      D => data_in(4),
      Q => L(1),
      R => '0'
    );
\data_buffer_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pclk,
      CE => \data_buffer[7]_i_1_n_0\,
      D => data_in(5),
      Q => L(2),
      R => '0'
    );
\data_buffer_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pclk,
      CE => \data_buffer[7]_i_1_n_0\,
      D => data_in(6),
      Q => L(3),
      R => '0'
    );
\data_buffer_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pclk,
      CE => \data_buffer[7]_i_1_n_0\,
      D => data_in(7),
      Q => L(4),
      R => '0'
    );
data_clk_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CAAA"
    )
        port map (
      I0 => \^data_clk\,
      I1 => pos_counter(0),
      I2 => vsync,
      I3 => hsync,
      O => data_clk_i_1_n_0
    );
data_clk_reg: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => '1',
      D => data_clk_i_1_n_0,
      Q => \^data_clk\,
      R => '0'
    );
\data_out[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => L(0),
      I1 => data_in(0),
      I2 => data_in(5),
      O => plusOp(0)
    );
\data_out[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6969699669969696"
    )
        port map (
      I0 => data_in(6),
      I1 => L(1),
      I2 => data_in(1),
      I3 => data_in(5),
      I4 => data_in(0),
      I5 => L(0),
      O => plusOp(1)
    );
\data_out[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => data_in(7),
      I1 => data_in(2),
      I2 => L(2),
      I3 => \data_out[3]_i_2_n_0\,
      I4 => \data_out[3]_i_3_n_0\,
      O => plusOp(2)
    );
\data_out[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"17FFFF17FF1717FF"
    )
        port map (
      I0 => L(0),
      I1 => data_in(0),
      I2 => data_in(5),
      I3 => data_in(1),
      I4 => L(1),
      I5 => data_in(6),
      O => \data_out[3]_i_2_n_0\
    );
\data_out[3]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"17"
    )
        port map (
      I0 => data_in(1),
      I1 => L(1),
      I2 => data_in(6),
      O => \data_out[3]_i_3_n_0\
    );
\data_out[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69969669"
    )
        port map (
      I0 => \data_out[4]_i_2_n_0\,
      I1 => L(3),
      I2 => data_in(3),
      I3 => R(3),
      I4 => \data_out[4]_i_3_n_0\,
      O => plusOp(3)
    );
\data_out[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF696900"
    )
        port map (
      I0 => L(2),
      I1 => data_in(2),
      I2 => data_in(7),
      I3 => \data_out[3]_i_2_n_0\,
      I4 => \data_out[3]_i_3_n_0\,
      O => \data_out[4]_i_2_n_0\
    );
\data_out[4]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => data_in(7),
      I1 => data_in(2),
      I2 => L(2),
      O => \data_out[4]_i_3_n_0\
    );
\data_out[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69969669"
    )
        port map (
      I0 => \data_out[7]_i_3_n_0\,
      I1 => L(4),
      I2 => data_in(4),
      I3 => R(2),
      I4 => \data_out[7]_i_4_n_0\,
      O => plusOp(4)
    );
\data_out[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B224244D4DDBDBB2"
    )
        port map (
      I0 => \data_out[7]_i_4_n_0\,
      I1 => \data_out[7]_i_3_n_0\,
      I2 => R(2),
      I3 => data_in(4),
      I4 => L(4),
      I5 => R(1),
      O => plusOp(5)
    );
\data_out[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => hsync,
      I1 => vsync,
      I2 => pos_counter(0),
      O => data_clk2_out
    );
\data_out[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFDFDD4D4404000"
    )
        port map (
      I0 => \data_out[7]_i_3_n_0\,
      I1 => \data_out[7]_i_4_n_0\,
      I2 => L(4),
      I3 => data_in(4),
      I4 => R(2),
      I5 => R(1),
      O => plusOp(6)
    );
\data_out[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0008088E8EEFEFFF"
    )
        port map (
      I0 => \data_out[3]_i_3_n_0\,
      I1 => \data_out[3]_i_2_n_0\,
      I2 => L(2),
      I3 => data_in(2),
      I4 => data_in(7),
      I5 => \data_out[7]_i_5_n_0\,
      O => \data_out[7]_i_3_n_0\
    );
\data_out[7]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => R(3),
      I1 => data_in(3),
      I2 => L(3),
      O => \data_out[7]_i_4_n_0\
    );
\data_out[7]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => L(3),
      I1 => data_in(3),
      I2 => R(3),
      O => \data_out[7]_i_5_n_0\
    );
\data_out_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => data_clk2_out,
      D => plusOp(0),
      Q => data_out(0),
      R => '0'
    );
\data_out_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => data_clk2_out,
      D => plusOp(1),
      Q => data_out(1),
      R => '0'
    );
\data_out_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => data_clk2_out,
      D => plusOp(2),
      Q => data_out(2),
      R => '0'
    );
\data_out_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => data_clk2_out,
      D => plusOp(3),
      Q => data_out(3),
      R => '0'
    );
\data_out_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => data_clk2_out,
      D => plusOp(4),
      Q => data_out(4),
      R => '0'
    );
\data_out_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => data_clk2_out,
      D => plusOp(5),
      Q => data_out(5),
      R => '0'
    );
\data_out_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => pclk,
      CE => data_clk2_out,
      D => plusOp(6),
      Q => data_out(6),
      R => '0'
    );
\pos_counter_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => pclk,
      CE => '1',
      D => \data_buffer[7]_i_1_n_0\,
      Q => pos_counter(0),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_CSI_RX_0_0 is
  port (
    pclk : in STD_LOGIC;
    vsync : in STD_LOGIC;
    hsync : in STD_LOGIC;
    data_in : in STD_LOGIC_VECTOR ( 7 downto 0 );
    data_clk : out STD_LOGIC;
    data_out : out STD_LOGIC_VECTOR ( 7 downto 0 )
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
  signal \<const0>\ : STD_LOGIC;
  signal \^data_out\ : STD_LOGIC_VECTOR ( 7 downto 1 );
  attribute x_interface_info : string;
  attribute x_interface_info of data_clk : signal is "xilinx.com:signal:clock:1.0 data_clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of data_clk : signal is "XIL_INTERFACENAME data_clk, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_CSI_RX_0_0_data_clk";
begin
  data_out(7 downto 1) <= \^data_out\(7 downto 1);
  data_out(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
U0: entity work.design_1_CSI_RX_0_0_CSI_RX
     port map (
      data_clk => data_clk,
      data_in(7 downto 0) => data_in(7 downto 0),
      data_out(6 downto 0) => \^data_out\(7 downto 1),
      hsync => hsync,
      pclk => pclk,
      vsync => vsync
    );
end STRUCTURE;
