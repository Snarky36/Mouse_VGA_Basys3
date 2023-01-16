----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/13/2022 03:14:32 PM
-- Design Name: 
-- Module Name: ps2_rxtx - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ps2_rxtx is
    Port ( clk : in STD_LOGIC;
           rst : in STD_LOGIC;
           wr_ps2 : in STD_LOGIC;
           din : in STD_LOGIC_VECTOR(7 downto 0);
           dout : out STD_LOGIC_VECTOR(7 downto 0);
           rx_done_tick : out STD_LOGIC;
           tx_done_tick : out STD_LOGIC;
           ps2d : inout STD_LOGIC;
           ps2c : inout STD_LOGIC);
end ps2_rxtx;

architecture Behavioral of ps2_rxtx is

signal tx_idle: STD_LOGIC;

begin

ps2_tx_unit: entity WORK.ps2_tx port map(
            clk => clk,
			rst => rst,
			wr_ps2 => wr_ps2,
			din => din,
			ps2d => ps2d,
			ps2c => ps2c,
			tx_idle => tx_idle,
			tx_done_tick => tx_done_tick
			);
ps2_rx_unit: entity work.ps2_rx port map(
            clk => clk,
            rst => rst,
            rx_en => tx_idle,
            ps2d => ps2d,
            ps2c => ps2c,
            rx_done_tick => rx_done_tick,
            dout => dout
            );
end Behavioral;
