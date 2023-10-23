library IEEE;
use ieee.std_logic_1164.all;

entity FlipFlopD is 
	port (
			D  : in  std_logic;
			CLK: in  std_logic;
			Q	: out std_logic);
end entity FlipFlopD;

architecture Behavioral of FlipFlopD is
begin
DFF_process:process(D, CLK)
begin
if (rising_edge(CLK)) then 
Q <= D;		
end if;
end process DFF_process;
end Behavioral;