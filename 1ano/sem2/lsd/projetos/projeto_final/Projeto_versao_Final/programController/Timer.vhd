library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;

entity Timer is
    port(
        enable        : in std_logic;
        start         : in std_logic;
        initial_val   : in std_logic_vector(7 downto 0);
        time_left     : out std_logic_vector(7 downto 0);
        done          : out std_logic
    );
end Timer;

architecture behavioral of Timer is
    signal s_initial_val : std_logic_vector(7 downto 0);
    signal counting      : std_logic := '0';
begin
    process(enable)
    begin
        if rising_edge(enable) then
            if start = '1' and counting = '0' then
                s_initial_val <= initial_val; -- Initialize s_initial_val with the input value
                counting <= '1';
            elsif counting = '1' then
                if s_initial_val > "00000000" then
                    s_initial_val <= s_initial_val - 1;
                else
                    counting <= '0';
                end if;
            end if;
        end if;
    end process;

    -- Assign the value of s_initial_val to time_left
    time_left <= s_initial_val;
    done <= '1' when s_initial_val = "00000000" else '0';

end architecture;
