library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity debouncer is
    port(CLK: in STD_LOGIC;
         BTN: in STD_LOGIC;
         BTN_NOU: out STD_LOGIC);
end entity;

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity and_gate_3 is
    port(A: in STD_LOGIC;
         B: in STD_LOGIC;
         C: in STD_LOGIC;
         Z: out STD_LOGIC);
end entity;

architecture flux of and_gate_3 is
begin
    Z<=(A and B) and C;
end architecture;

architecture structurala of debouncer is

component bist_d is
    port(CLK: in STD_LOGIC;
         D: in STD_LOGIC;
         Q: out STD_LOGIC);
end component;

component and_gate_3 is
    port(A: in STD_LOGIC;
         B: in STD_LOGIC;
         C: in STD_LOGIC;
         Z: out STD_LOGIC);
end component;

signal N1,N2,N3: STD_LOGIC;
begin
    B1:bist_d port map(CLK,BTN,N1);
    B2:bist_d port map(CLK,N1,N2);
    B3:bist_d port map(CLK,N2,N3);
    SI:and_gate_3 port map(N1,N2,N3,BTN_NOU);
end structurala;
