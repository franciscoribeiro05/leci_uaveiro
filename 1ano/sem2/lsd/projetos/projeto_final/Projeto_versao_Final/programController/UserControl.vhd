library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity UserControl is
    Port (
        clk : in std_logic;
        timeUp : in std_logic;
        timeDw : in std_logic;
        tempUp : in std_logic;
        tempDw : in std_logic;
        mode_sel : in std_logic;
        temp_out_pre : out std_logic_vector(7 downto 0);
        time_out_pre : out std_logic_vector(7 downto 0);
        temp_out_cook : out std_logic_vector(7 downto 0);
        time_out_cook : out std_logic_vector(7 downto 0)
    );
end UserControl;

architecture Behavioral of UserControl is

    signal temp_pre : std_logic_vector(7 downto 0) := (others => '0');
    signal time_pre : std_logic_vector(7 downto 0) := (others => '0');
    signal temp_cook : std_logic_vector(7 downto 0) := (others => '0');
    signal time_cook : std_logic_vector(7 downto 0) := (others => '0');

    signal timeUp_prev : std_logic := '1';
    signal timeDw_prev : std_logic := '1';
    signal tempUp_prev : std_logic := '1';
    signal tempDw_prev : std_logic := '1';

begin

    -- Process to update previous state of input signals
    process(clk)
    begin
        if rising_edge(clk) then
            timeUp_prev <= timeUp;
            timeDw_prev <= timeDw;
            tempUp_prev <= tempUp;
            tempDw_prev <= tempDw;
        end if;
    end process;

    -- Process to handle the user controls based on mode selection
    process(mode_sel)
    begin
            if mode_sel = '0' then -- Pre-cook mode
                if timeUp = '0' and timeUp_prev = '1' then
                    time_pre <= time_pre + 1;
                elsif timeDw = '0' and timeDw_prev = '1' then
                    time_pre <= time_pre - 1;
                end if;

                if tempUp = '0' and tempUp_prev = '1' then
                    temp_pre <= temp_pre + 1;
                elsif tempDw = '0' and tempDw_prev = '1' then
                    temp_pre <= temp_pre - 1;
                end if;
            else -- Cook mode
                if timeUp = '0' and timeUp_prev = '1' then
                    time_cook <= time_cook + 1;
                elsif timeDw = '0' and timeDw_prev = '1' then
                    time_cook <= time_cook - 1;
                end if;

                if tempUp = '0' and tempUp_prev = '1' then
                    temp_cook <= temp_cook + 1;
                elsif tempDw = '0' and tempDw_prev = '1' then
                    temp_cook <= temp_cook - 1;
                end if;
            end if;
    end process;

    -- Map internal signals to output ports
    temp_out_pre <= temp_pre;
    time_out_pre <= time_pre;
    temp_out_cook <= temp_cook;
    time_out_cook <= time_cook;

end Behavioral;








