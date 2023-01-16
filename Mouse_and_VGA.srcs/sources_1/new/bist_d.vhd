library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity bist_d is
    port(CLK: in STD_LOGIC;
         D: in STD_LOGIC;
         Q: out STD_LOGIC);
end bist_d;

architecture Behavioral of bist_d is

begin
    bistabil:process(CLK)
    begin
        if rising_edge(clk) then
            Q<=D;
        end if;
    end process;
end Behavioral;
