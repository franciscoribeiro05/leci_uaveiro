library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Temperature_Control is
    port(
        clk             : in  std_logic;                      -- Clock input (1 bit)
        heat            : in  std_logic;                      -- Heat input (1 bit)
        cool            : in  std_logic;                      -- Cool input (1 bit)
        desired_temp_in : in  std_logic_vector(7 downto 0);   -- Desired temperature input (7 bits)
        actual_temp_out : out std_logic_vector(7 downto 0)    -- Current temperature output (8 bits)
    );
end entity Temperature_Control;

architecture Behavioral of Temperature_Control is
    signal s_temp : std_logic_vector(7 downto 0) := "00010100"; -- Temperature starts at 20
    signal s_count : unsigned(25 downto 0) := (others => '0');  -- 26-bit counter for 50 million cycles
    constant COUNT_LIMIT : unsigned(25 downto 0) := to_unsigned(50_000_000, 26); -- 50 million cycles (1 second if clk is 50 MHz)
begin

    -- Process to handle temperature control logic, triggered by rising edge of the clock
    process(clk)
    begin
        if rising_edge(clk) then
            if s_count = COUNT_LIMIT then
                s_count <= (others => '0');
                if heat = '1' then
							if unsigned(s_temp) /= unsigned(desired_temp_in) then
                        s_temp <= std_logic_vector(unsigned(s_temp) + 10);
							end if;
                elsif cool = '1' then
							if unsigned(s_temp) /= unsigned(desired_temp_in) then
                        s_temp <= std_logic_vector(unsigned(s_temp) - 10);
							end if;
                else
                        s_temp <= desired_temp_in;
                end if;
             else
                s_count <= s_count + 1;
            end if;
        end if;
    end process;

    -- Assign internal signal to output port
    actual_temp_out <= s_temp;
end architecture Behavioral;
