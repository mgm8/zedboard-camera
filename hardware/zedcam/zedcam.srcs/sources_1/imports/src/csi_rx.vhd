--
-- csi_rx.vhd
-- 
-- Copyright (C) 2018, Gabriel Mariano Marcelino <gabriel.mm8@gmail.com>.
-- Copyright (C) 2018, Victor Hugo Schulz <schulz89@gmail.com>.
-- 
-- This program is free software: you can redistribute it and/or modify
-- it under the terms of the GNU General Public License as published by
-- the Free Software Foundation, either version 3 of the License, or
-- (at your option) any later version.
-- 
-- This program is distributed in the hope that it will be useful,
-- but WITHOUT ANY WARRANTY; without even the implied warranty of
-- MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-- GNU General Public License for more details.
-- 
-- You should have received a copy of the GNU General Public License
-- along with this program. If not, see <http://www.gnu.org/licenses/>.
-- 
-- 

--! 
--! \brief CSI receiver with grayscale conversion from RGB565.
--! 
--! \see FUNG, Hung K; WONG, Kin H. A Multiplier-Less Implementation of the Canny Edge Detector on FPGA and Microcontroller
--       International Journal of Computer Theory and Engineering, Vol. 9, No. 3, June 2017.
--!
--! \author Gabriel Mariano Marcelino <gabriel.mm8@gmail.com>
--! \author Victor Hugo Schulz <schulz89@gmail.com>
--! 
--! \version 1.0
--! 
--! \date 02/05/2018
--! 

library ieee;
    use ieee.std_logic_1164.all;
    use ieee.std_logic_arith.all;
    use ieee.std_logic_unsigned.all;

entity CSI_RX is
    generic(
           DATA_WIDTH : natural := 8
           );
    port(
        pclk        : in std_logic;                                 --! Input clock signal (pixel clock from CSI).
        vsync       : in std_logic;                                 --! Vertical sync.
        hsync       : in std_logic;                                 --! Horizontal sync.
        data_in     : in std_logic_vector(DATA_WIDTH-1 downto 0);   --! Data input (data output from the sensor).
        data_clk    : out std_logic;                                --! Data output clock.
        data_out    : out std_logic_vector(DATA_WIDTH-1 downto 0)   --! Data output.
        );
end CSI_RX;

architecture behavior of CSI_RX is

    signal pos_counter  : natural := 0;
    signal data_buffer  : std_logic_vector(DATA_WIDTH-1 downto 0) := (others => '0');

begin

    process(pclk)
    begin
        if rising_edge(pclk) then
            if vsync = '1' and hsync = '1' then
                if pos_counter = 0 then         -- LSB byte
                    data_clk <= '0';
                    pos_counter <= pos_counter + 1;
                    data_buffer <= data_in;
                elsif pos_counter = 1 then      -- MSB byte
                    data_out <= (("00" & data_buffer(7 downto 3)) + ("0" & data_buffer(2 downto 0) & data_in(7 downto 5)) + ("00" & data_in(4 downto 0))) & '0';    -- ((R + 2G + B) < 1)
                    data_clk <= '1';
                    pos_counter <= 0;
                end if;
            else
                pos_counter <= 0;
            end if;
        end if;
    end process;

end behavior;