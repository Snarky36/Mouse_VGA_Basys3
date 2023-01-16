library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity clk_divider is   
	port(clk100:in std_logic;
	clk1:out std_logic);
end clk_divider;

architecture comportamentala of clk_divider is 
signal clk:std_logic:='0';
begin	 													  
	process(clk100)
	variable nr:integer:=0;
	begin				   
		if clk100'event and clk100='1' then
			nr:=nr+1;
		if nr=97656-1 then
			clk<=not clk;
			nr:=0;		  
		end if;
		end if;	 
		clk1<=clk;
	end process;
end architecture;
