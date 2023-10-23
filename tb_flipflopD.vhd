library IEEE;
use IEEE.std_logic_1164.ALL;
entity tb_fliflopD is
end tb_fliflopD;
-------------Connections-------------
architecture Behavioral of tb_fliflopD is
component FlipFlopD is 
	port (D, CLK : in  std_logic;
	      Q      : out std_logic);
end component;
-------------Signals---------------
signal D_in, CLK_in, Q_in : STD_LOGIC;
begin
-----------Mapeo I/O---------------------
DUT : FlipFlopD  port map (D => D_in, CLK => 
CLK_in, Q => Q_in);
-----------Estimulacion entradas---------------
process
	begin
		CLK_in <= '0';
		D_in <= '0';
		wait for 5 ns;
		D_in <= '1';
		wait for 5 ns;

		CLK_in <= '1';
		wait for 10 ns;

		CLK_in <= '0';
		wait for 3 ns;
		D_in <= '0';
		wait for 2 ns;
		D_in <= '1';
		wait for 2 ns;
		D_in <= '0';
		wait for 3 ns;

		CLK_in <= '1';
		wait for 10 ns;

		CLK_in <= '0';
		wait for 4 ns;
		D_in <= '1';
		wait for 6 ns;

		CLK_in <= '1';
		wait for 5 ns;
		D_in <= '0';
		wait for 3 ns;
		D_in <= '1';
		wait for 2 ns;

		CLK_in <= '0';
		wait for 8 ns;
		D_in <= '0';
		wait for 2 ns;
		wait;
	end process;
end behavioral;