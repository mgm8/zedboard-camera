--
-- d_flip_flop.vhd
-- 
-- Copyright (C) 2018, Victor Hugo Schulz <schulz89@gmail.com>.
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
--! \brief D Flip Flop.
--! 
--! \author Victor Hugo Schulz <schulz89@gmail.com>
--! \author Gabriel Mariano Marcelino <gabriel.mm8@gmail.com>
--! 
--! \version 1.0
--! 
--! \date 04/10/2018
--! 

library ieee;
    use ieee.std_logic_1164.all;

entity DFlipFlop is
    generic(
        DATA_WIDTH : natural := 1
    );
    port(
        clk         : in std_logic;
        data_in     : in std_logic_vector(DATA_WIDTH-1 downto 0);
        data_out    : out std_logic_vector(DATA_WIDTH-1 downto 0)
    );
end DFlipFlop;

architecture behavioral of DFlipFlop is

begin

    process(clk)
    begin
        if rising_edge(clk) then
            data_out <= data_in;
        end if;
    end process;

end behavioral;
