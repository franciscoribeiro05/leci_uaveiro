LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY BitToVector2 IS
    PORT(
        input_bit : IN  STD_LOGIC;
        output_vector : OUT STD_LOGIC_VECTOR(4 DOWNTO 0)
    );
END BitToVector2;

ARCHITECTURE Behavioral OF BitToVector2 IS
BEGIN
    PROCESS(input_bit)
    BEGIN
        IF input_bit = '1' THEN
            output_vector <= "11111";
        ELSE
            output_vector <= "00000";
        END IF;
    END PROCESS;
END Behavioral;
