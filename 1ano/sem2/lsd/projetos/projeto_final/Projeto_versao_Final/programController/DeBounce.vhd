library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity DeBounce is
    Port ( clk : in STD_LOGIC;
           din : in STD_LOGIC;
           dout : out STD_LOGIC);
end DeBounce;

architecture Behavioral of DeBounce is
    constant CYCLES : integer := 1_000_000; -- número de ciclos de clock para debouncing
    signal counter : integer := 0;
    signal prev_din : STD_LOGIC := '0';
    signal stable_din : STD_LOGIC := '0';
    signal stable_counter : integer := 0;
begin
    process(clk)
    begin
        if rising_edge(clk) then
            if din = prev_din then
                if stable_counter < CYCLES then
                    stable_counter <= stable_counter + 1;
                end if;
            else
                stable_counter <= 0;
            end if;

            if stable_counter = CYCLES then
                stable_din <= din;
            end if;

            prev_din <= din;
        end if;
    end process;
	 dout <= stable_din;
end Behavioral;
