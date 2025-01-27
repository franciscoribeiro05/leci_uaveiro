LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;  -- For unsigned arithmetic operations

ENTITY ModeSelector IS
    PORT(
        time_in      : IN  STD_LOGIC_VECTOR(7 DOWNTO 0);
        temp_in      : IN  STD_LOGIC_VECTOR(7 DOWNTO 0);
        mode_sel     : IN  STD_LOGIC;
        time_out_pre : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
        temp_out_pre : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
        time_out_cook: OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
        temp_out_cook: OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
    );
END ModeSelector;

ARCHITECTURE Behavior OF ModeSelector IS
BEGIN
    PROCESS(time_in, temp_in, mode_sel)
    BEGIN
        IF mode_sel = '1' THEN
            time_out_cook <= time_in;
            temp_out_cook <= temp_in;
        ELSE
            time_out_pre <= time_in;
            temp_out_pre <= temp_in;

        END IF;
    END PROCESS;
END Behavior;
