--
-- counter.vhd
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
--! \brief Generic up counter.
--! 
--! \author Gabriel Mariano Marcelino <gabriel.mm8@gmail.com>
--! 
--! \version 1.0
--! 
--! \date 04/05/2018
--! 

library ieee;
    use ieee.std_logic_1164.all;
    use ieee.numeric_std.all;

entity Counter is
    generic(
        MAX_COUNT   : natural := 640*480;                           --! Counter upper limit.
        COUNT_WIDTH : natural := 19;
        USE_ENABLE  : boolean := TRUE;
        USE_RESET   : boolean := TRUE
    );
    port(
        clk         : in std_logic;                                 --! Reference clock.
        en          : in std_logic;                                 --! Enable signal.
        rst         : in std_logic;                                 --! Reset signal.
        count       : out std_logic_vector(COUNT_WIDTH-1 downto 0) --! Count position.
    );
end Counter;

architecture behavioral of Counter is

    signal count_sig : natural := 0;

begin

    process(rst, clk)
    begin
        if USE_RESET = TRUE and rst = '0' then
            count_sig <= 0;
        elsif rising_edge(clk) then
            if USE_ENABLE = TRUE then
                if en = '1' then
                    if count_sig < MAX_COUNT then
                        count_sig <= count_sig + 1;
                    else
                        count_sig <= 0;
                    end if;
                end if;
            else
                if count_sig < MAX_COUNT then
                    count_sig <= count_sig + 1;
                else
                    count_sig <= 0;
                end if;
            end if;
        end if;
    end process;

    count <= std_logic_vector(to_unsigned(count_sig, count'length));

end behavioral;