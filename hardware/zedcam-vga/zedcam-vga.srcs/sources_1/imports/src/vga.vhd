--
-- vga.vhd
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
--! \brief VGA signal generator.
--! 
--! \author Gabriel Mariano Marcelino <gabriel.mm8@gmail.com>
--! 
--! \version 1.0-dev
--! 
--! \date 22/04/2018
--! 

library ieee;
    use ieee.std_logic_1164.all;
    use ieee.std_logic_unsigned.all;
    use ieee.std_logic_arith.all;

entity VGA is
    -- 640x480 @ 60 Hz (Ref.: http://tinyvga.com/vga-timing/640x480@60Hz)
    -- clk = 25.175 MHz
    generic(
        H_DISPLAY   : integer := 640;                   --! Number of active pixels per line.
        H_FP        : integer := 16;                    --! Number of clocks front proch.
        H_PULSE     : integer := 96;                    --! Number of clocks horizontal sync.
        H_BP        : integer := 48;                    --! Number of clocks back proch.
        V_DISPLAY   : integer := 480;                   --! Number of active lines per frame.
        V_FP        : integer := 10;                    --! Number of lines front proch.
        V_PULSE     : integer := 2;                     --! Number of lines horizontal sync.
        V_BP        : integer := 33                     --! Number of lines back proch.
    );
    port(
        clk         : in std_logic;                     --! Master clock (40 MHz for 800x600 @ 60 Hz).
        RGB_in      : in std_logic_vector(11 downto 0); --! RGB input.
        video_rdy   : out std_logic;                    --! Video active flag.
        vsync       : out std_logic;                    --! Vertical sync.
        hsync       : out std_logic;                    --! Horizontal sync.
        R_out       : out std_logic_vector(3 downto 0); --! Red channel output (4-bit).
        G_out       : out std_logic_vector(3 downto 0); --! Green channel output (4-bit).
        B_out       : out std_logic_vector(3 downto 0)  --! Blue channel output (4-bit).
    );
end VGA;

architecture behavioral of VGA is

    -- Computations
    constant H_START_PULSE  : integer := H_DISPLAY + H_FP;
    constant H_END_PULSE    : integer := H_START_PULSE + H_PULSE;
    constant V_START_PULSE  : integer := V_DISPLAY + V_FP;
    constant V_END_PULSE    : integer := V_START_PULSE + V_PULSE;
    constant H_PERIOD       : integer := H_DISPLAY + H_FP + H_PULSE + H_BP; --! Number of pixel clocks per line
    constant V_PERIOD       : integer := V_DISPLAY + V_FP + V_PULSE + V_BP; --! Number of lines per frame

    signal pixel_counter    : integer range 0 to H_PERIOD-1 := 0;
    signal line_counter     : integer range 0 to V_PERIOD-1 := 0;
    signal video_rdy_s      : std_logic;

begin

    main_proc : process(clk)
    begin
        if rising_edge(clk) then
            -- Start HSYNC Pulse
            if (pixel_counter = H_START_PULSE-1) then
                hsync <= '0';
            -- End HSYNC Pulse
            elsif (pixel_counter = H_END_PULSE-1) then
                hsync <= '1';
            end if;
            
            -- Start VSYNC Pulse
            if (pixel_counter = H_PERIOD-1) and (line_counter = V_START_PULSE-1) then
                vsync <= '1';
            -- End VSYNC Pulse
            elsif (pixel_counter = H_PERIOD-1) and (line_counter = V_END_PULSE-1) then
                vsync <= '0';
            end if;
            
            -- Active video
            if (line_counter < V_DISPLAY) and (pixel_counter < H_DISPLAY) then
                R_out <= RGB_in(11 downto 8); 
                G_out <= RGB_in(7 downto 4); 
                B_out <= RGB_in(3 downto 0);
                video_rdy_s <= '1';
            -- Blank periods
            else
                R_out <= "0000";
                G_out <= "0000";
                B_out <= "0000";
                video_rdy_s <= '0';
            end if;
        end if;
    end process;
    
    delay : process(clk)
    begin
        if rising_edge(clk) then
            video_rdy <= video_rdy_s;
        end if;
    end process;

    counter_proc : process(clk)
    begin
        if rising_edge(clk) then
            if (pixel_counter = H_PERIOD-1) then
                pixel_counter <= 0;
                
                if (line_counter = V_PERIOD-1) then
                    line_counter <= 0;
                else
                    line_counter <= line_counter + 1;
                end if;
            else
                pixel_counter <= pixel_counter + 1;
            end if;
        end if;
    end process;

end behavioral;
