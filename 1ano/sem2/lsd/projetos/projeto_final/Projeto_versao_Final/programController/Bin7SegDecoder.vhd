library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Entity declaration for Bin7SegDecoder
entity Bin7SegDecoder is
    port(
        -- Input ports for three 4-bit binary numbers
        binInput_0 : in std_logic_vector(3 downto 0);  -- First 4-bit binary input
        binInput_1 : in std_logic_vector(3 downto 0);  -- Second 4-bit binary input
        binInput_2 : in std_logic_vector(3 downto 0);  -- Third 4-bit binary input

        -- Input port for enable signal
        enable : in std_logic;  -- Enable signal

        -- Output ports for seven-segment display
        decOut_0 : out std_logic_vector(6 downto 0);  -- 7-segment output for first input
        decOut_1 : out std_logic_vector(6 downto 0);  -- 7-segment output for second input
        decOut_2 : out std_logic_vector(6 downto 0)   -- 7-segment output for third input
    );
end Bin7SegDecoder;

architecture Behavioral of Bin7SegDecoder is
begin

    process(binInput_0, binInput_1, binInput_2, enable)
    begin
        if enable = '1' then
            -- Process for the first 4-bit binary input to 7-segment output
            case binInput_0 is
                when "0000" => decOut_0 <= "1000000";  -- '0'
                when "0001" => decOut_0 <= "1111001";  -- '1'
                when "0010" => decOut_0 <= "0100100";  -- '2'
                when "0011" => decOut_0 <= "0110000";  -- '3'
                when "0100" => decOut_0 <= "0011001";  -- '4'
                when "0101" => decOut_0 <= "0010010";  -- '5'
                when "0110" => decOut_0 <= "0000010";  -- '6'
                when "0111" => decOut_0 <= "1111000";  -- '7'
                when "1000" => decOut_0 <= "0000000";  -- '8'
                when "1001" => decOut_0 <= "0010000";  -- '9'
                when "1010" => decOut_0 <= "0001000";  -- 'A'
                when "1011" => decOut_0 <= "0000011";  -- 'b'
                when "1100" => decOut_0 <= "1000110";  -- 'C'
                when "1101" => decOut_0 <= "0100001";  -- 'd'
                when "1110" => decOut_0 <= "0000110";  -- 'E'
                when "1111" => decOut_0 <= "0001110";  -- 'F'
                when others => decOut_0 <= "1000000";  -- Default
            end case;

            -- Process for the second 4-bit binary input to 7-segment output
            case binInput_1 is
                when "0000" => decOut_1 <= "1000000";  -- '0'
                when "0001" => decOut_1 <= "1111001";  -- '1'
                when "0010" => decOut_1 <= "0100100";  -- '2'
                when "0011" => decOut_1 <= "0110000";  -- '3'
                when "0100" => decOut_1 <= "0011001";  -- '4'
                when "0101" => decOut_1 <= "0010010";  -- '5'
                when "0110" => decOut_1 <= "0000010";  -- '6'
                when "0111" => decOut_1 <= "1111000";  -- '7'
                when "1000" => decOut_1 <= "0000000";  -- '8'
                when "1001" => decOut_1 <= "0010000";  -- '9'
                when "1010" => decOut_1 <= "0001000";  -- 'A'
                when "1011" => decOut_1 <= "0000011";  -- 'b'
                when "1100" => decOut_1 <= "1000110";  -- 'C'
                when "1101" => decOut_1 <= "0100001";  -- 'd'
                when "1110" => decOut_1 <= "0000110";  -- 'E'
                when "1111" => decOut_1 <= "0001110";  -- 'F'
                when others => decOut_1 <= "1000000";  -- Default
            end case;

            -- Process for the third 4-bit binary input to 7-segment output
            case binInput_2 is
                when "0000" => decOut_2 <= "1111111";  -- '0'
                when "0001" => decOut_2 <= "1111001";  -- '1'
                when "0010" => decOut_2 <= "0100100";  -- '2'
                when "0011" => decOut_2 <= "0110000";  -- '3'
                when "0100" => decOut_2 <= "0011001";  -- '4'
                when "0101" => decOut_2 <= "0010010";  -- '5'
                when "0110" => decOut_2 <= "0000010";  -- '6'
                when "0111" => decOut_2 <= "1111000";  -- '7'
                when "1000" => decOut_2 <= "0000000";  -- '8'
                when "1001" => decOut_2 <= "0010000";  -- '9'
                when "1010" => decOut_2 <= "0001000";  -- 'A'
                when "1011" => decOut_2 <= "0000011";  -- 'b'
                when "1100" => decOut_2 <= "1000110";  -- 'C'
                when "1101" => decOut_2 <= "0100001";  -- 'd'
                when "1110" => decOut_2 <= "0000110";  -- 'E'
                when "1111" => decOut_2 <= "0001110";  -- 'F'
                when others => decOut_2 <= "1000000";  -- Default
            end case;
        else
            decOut_0 <= "1111111";
            decOut_1 <= "1111111";
            decOut_2 <= "1111111";
        end if;
    end process;

end Behavioral;