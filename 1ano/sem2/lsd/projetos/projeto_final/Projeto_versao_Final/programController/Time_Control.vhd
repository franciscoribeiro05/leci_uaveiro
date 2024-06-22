library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Time_Control is
    Port (
        clk    : in  STD_LOGIC;       -- Clock signal
        timeUp : in  STD_LOGIC;       -- Button to increment time
        timeDw : in  STD_LOGIC;       -- Button to decrement time
        time   : out STD_LOGIC_VECTOR(7 downto 0)  -- 8-bit time output
    );
end Time_Control;

architecture Behavioral of Time_Control is
    signal time_int : unsigned(7 downto 0) := (others => '0');  -- Internal time signal
    signal timeUp_prev, timeDw_prev : std_logic := '0';  -- Previous states of buttons
begin
    process(clk)
    begin
        if rising_edge(clk) then
            -- Capture the previous state of the buttons
            timeUp_prev <= timeUp;
            timeDw_prev <= timeDw;

            -- Increment time if timeUp is pressed
            if (timeUp = '1' and timeUp_prev = '0') then
                time_int <= time_int + 1;
            end if;

            -- Decrement time if timeDw is pressed
            if (timeDw = '1' and timeDw_prev = '0') then
                time_int <= time_int - 1;
            end if;
        end if;
    end process;

    -- Output the internal time signal
    time <= std_logic_vector(time_int);
end Behavioral;
