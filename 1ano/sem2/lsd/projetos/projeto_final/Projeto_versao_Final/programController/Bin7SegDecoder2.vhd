library IEEE;
use IEEE.STD_LOGIC_1164.all;

-- Entity declaration for Bin7SegDecoder2
entity Bin7SegDecoder2 is
    port(
        -- Input ports for three 4-bit binary numbers
        binInput_0 : in std_logic_vector(3 downto 0);  -- First 4-bit binary input
        binInput_1 : in std_logic_vector(3 downto 0);  -- Second 4-bit binary input
        binInput_2 : in std_logic_vector(3 downto 0);  -- Third 4-bit binary input
        
        -- Input port for enable signal
        enable : in std_logic;  -- Enable signal

        -- Output ports for seven-segment display
        decOut_0 : out std_logic_vector(6 downto 0);  -- 7-segment output for first input
        decOut_1 : out std_logic_vector(6 downto 0)  -- 7-segment output for second input
    );
end Bin7SegDecoder2;

architecture Behavioral of Bin7SegDecoder2 is
begin
    -- Process for decoding the first 4-bit binary input to 7-segment output
    process(binInput_0, enable)
    begin
        if enable = '1' then
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
        else
            decOut_0 <= (others => '1');  -- All segments off when enable is '0'
        end if;
    end process;

    -- Process for decoding the second 4-bit binary input to 7-segment output
    process(binInput_1, enable)
    begin
        if enable = '1' then
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
        else
            decOut_1 <= (others => '1');  -- All segments off when enable is '0'
        end if;
    end process;

end Behavioral;