library ieee;
use ieee.std_logic_1164.all;

entity FlipFlopD is
	port(dataIn : in std_logic_vector(3 downto 0);
			clk : in std_logic;
			dataOut : out std_logic_vector(3 downto 0)
		 );
end FlipFlopD;

architecture Behavioral of FlipFlopD is

begin
	process(clk)
	begin
	
	if rising_edge(clk) then
		dataOut <= dataIn;
	end if;
	end process;
	
end Behavioral;