--
-- csi_rx.vhd
-- 
-- Copyright (C) 2018, Gabriel Mariano Marcelino <gabriel.mm8@gmail.com>.
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
--! \brief CSI receiver.
--! 
--! \author Gabriel Mariano Marcelino <gabriel.mm8@gmail.com>
--! 
--! \version 1.0
--! 
--! \date 02/05/2018
--! 

library ieee;
    use ieee.std_logic_1164.all;

entity CSI_RX is
    port(
        pclk        : in std_logic;                      --! Input clock signal (pixel clock from CSI).
        vsync       : in std_logic;                      --! Vertical sync.
        hsync       : in std_logic;                      --! Horizontal sync.
        data_in     : in std_logic_vector(7 downto 0);  --! Data input (data output from the sensor).
        data_clk    : out std_logic;                     --! Data write clock (same as PCLK).
        data_out    : out std_logic_vector(7 downto 0)  --! Output data.
        );
end CSI_RX;

architecture behavior of CSI_RX is

    signal pix_counter : natural := 0;

begin

    process(pclk)
    begin
        if rising_edge(pclk) then
            if vsync = '1' and hsync = '1' then
                if pix_counter = 0 then
                    data_out(7 downto 5) <= data_in(2 downto 0);
                    data_out(1 downto 0) <= data_in(2 downto 1);
                    data_clk <= '0';
                    pix_counter <= pix_counter + 1;
                elsif pix_counter = 1 then
                    data_out(4 downto 2) <= data_in(7 downto 5);
                    data_clk <= '1';
                    pix_counter <= 0;
                end if;
            else
                data_out <= (others => '1');
                data_clk <= '0';
                pix_counter <= 0;
            end if;
        end if;
    end process;

end behavior;
