library ieee;
use ieee.std_logic_1164.all;

entity ClkDiviser is

	generic( K : integer := 50_000_000
			 );


	port(clkin : in std_logic;
			clkOut : out std_logic
		 );
		 
end ClkDiviser;

architecture Behavioral of ClkDiviser is
	signal counter : integer range 0 to K - 1 := 0;
begin
	process(clkin)
begin
	if rising_edge(clkin) then
		counter <= counter + 1;
		clkOut <= '0';
		if counter = K - 1 then
			  counter <= 0;
			  clkOut <= '1';
    end if;
	end if;
end process;

end Behavioral;