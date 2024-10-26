library ieee;
use ieee.std_logic_1164.all;

entity FreqDiv is
	generic(K : integer := 6_250_000);
	
	port(clkin : in std_logic;
			clkOut : out std_logic
		 );
end FreqDiv;

architecture Behavioral of FreqDiv is
signal counter : integer range 0 to K -1 := 0;
signal clockOutSignal : std_logic;
begin
	process(clkin)
begin
	
	if rising_edge(clkin) then
		if counter = K - 1 then
			counter <= 0;
			clockOutSignal <= not clockOutSignal;
		else
			counter <= counter + 1;
		end if;
	end if;
	end process;
	
clkOut <= clockOutSignal;

end Behavioral;
	
	