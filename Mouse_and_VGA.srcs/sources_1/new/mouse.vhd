----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/13/2022 06:30:38 PM
-- Design Name: 
-- Module Name: mouse - Behavioral
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

entity mouse is
    Port ( clk : in STD_LOGIC;
           rst : in STD_LOGIC;
           ps2d : inout STD_LOGIC;
           ps2c : inout STD_LOGIC;
           xm, ym: out STD_LOGIC_VECTOR(8 downto 0);
           btnm: out STD_LOGIC_VECTOR(2 downto 0);
           m_done_tick: out STD_LOGIC
	     );
end mouse;

architecture Behavioral of mouse is

constant STRM: std_logic_vector(7 downto 0) := "11110100";
type state_type is (init1, init2, init3, pack1, pack2, pack3, done);
signal state_reg, state_next: state_type;
signal rx_data: std_logic_vector(7 downto 0);
signal rx_done_tick, tx_done_tick: std_logic;
signal wr_ps2: std_logic;
signal x_reg, y_reg: std_logic_vector(8 downto 0);
signal x_next, y_next: std_logic_vector(8 downto 0);
signal btn_reg, btn_next: std_logic_vector(2 downto 0);

begin

ps2_rxtx_unit: entity work.ps2_rxtx
	port map(
		clk => clk,
		rst => rst,
		wr_ps2 => wr_ps2,
		din => STRM,
		dout => rx_data,
		ps2d => ps2d,
		ps2c => ps2c,
		rx_done_tick => rx_done_tick,
		tx_done_tick => tx_done_tick
	);

-- state and data registers
process(clk, rst)
begin
	if rst = '1' then
		state_reg <= init1;
		x_reg <= (others => '0');
		y_reg <= (others => '0');
		btn_reg <= (others => '0');
	elsif clk'event and clk = '1' then
		state_reg <= state_next;
		x_reg <= x_next;
		y_reg <= y_next;
		btn_reg <= btn_next;
	end if;
end process;

-- next state logic
process(state_reg, rx_done_tick, tx_done_tick, x_reg, y_reg, btn_reg, rx_data)
begin
	wr_ps2 <= '0';
	m_done_tick <= '0';
	x_next <= x_reg;
	y_next <= y_reg;
	btn_next <= btn_reg;
	state_next <= state_reg;
	case state_reg is
		when init1 =>
			wr_ps2 <= '1';
			state_next <= init2;
		when init2 =>
			if tx_done_tick = '1' then
				state_next <= init3;
			end if;
		when init3 =>
			if rx_done_tick = '1' then
				state_next <= pack1;
			end if;
		when pack1 =>
			if rx_done_tick = '1' then
				state_next <= pack2;
				y_next(8) <= rx_data(5);
				x_next(8) <= rx_data(4);
				btn_next <= rx_data(2 downto 0);
			end if;
		when pack2 =>
			if rx_done_tick = '1' then
				state_next <= pack3;
				x_next(7 downto 0) <= rx_data;
			end if;
		when pack3 =>
			if rx_done_tick = '1' then
				state_next <= done;
				y_next(7 downto 0) <= rx_data;
			end if;
		when done =>
			m_done_tick <= '1';
			state_next <= pack1;
	end case;
end process;
xm <= x_reg;
ym <= y_reg;
btnm <= btn_reg;

end Behavioral;
