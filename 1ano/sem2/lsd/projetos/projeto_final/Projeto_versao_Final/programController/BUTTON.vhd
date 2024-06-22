LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY BUTTON IS
    PORT(
        CLK           : IN STD_LOGIC;         -- Clock signal
        PUSH_BUTTON_1 : IN STD_LOGIC;
        PUSH_BUTTON_2 : IN STD_LOGIC;
        out_temp      : OUT STD_LOGIC_VECTOR(7 downto 0)
    );
END BUTTON;

ARCHITECTURE a OF BUTTON IS
    SIGNAL PUSH_COUNTER1 : UNSIGNED(7 DOWNTO 0) := (OTHERS => '0');  -- initialize with zero
    SIGNAL PB1_reg, PB2_reg : STD_LOGIC := '1';  -- register for debouncing button press
BEGIN
    PROCESS(CLK)
    BEGIN
        IF RISING_EDGE(CLK) THEN
            PB1_reg <= PUSH_BUTTON_1;
            PB2_reg <= PUSH_BUTTON_2;
            
            IF PB1_reg = '1' AND PUSH_BUTTON_1 = '0' THEN  -- detect falling edge of PUSH_BUTTON_1
                IF PUSH_COUNTER1 <= "11111111" THEN
                    PUSH_COUNTER1 <= PUSH_COUNTER1 + 1;
                END IF;
            ELSIF PB2_reg = '1' AND PUSH_BUTTON_2 = '0' THEN  -- detect falling edge of PUSH_BUTTON_2
                IF PUSH_COUNTER1 >= "00000000" THEN
                    PUSH_COUNTER1 <= PUSH_COUNTER1 - 1;
                END IF;
            END IF;
        END IF;
    END PROCESS;

    out_temp <= std_logic_vector(PUSH_COUNTER1);  -- convert UNSIGNED to STD_LOGIC_VECTOR
END a;
