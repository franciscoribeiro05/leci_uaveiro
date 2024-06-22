LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY BitToVector IS
    PORT(
        input_bit : IN  STD_LOGIC;
        output_vector : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
    );
END BitToVector;

ARCHITECTURE Behavioral OF BitToVector IS
BEGIN
    PROCESS(input_bit)
    BEGIN
        IF input_bit = '1' THEN
            output_vector <= "1111";
        ELSE
            output_vector <= "0000";
        END IF;
    END PROCESS;
END Behavioral;
