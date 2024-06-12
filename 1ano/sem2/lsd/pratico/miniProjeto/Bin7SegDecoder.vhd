library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity Bin7SegDecoder is
    port (
        sel : in std_logic;
        binInput : in std_logic_vector(3 downto 0);
		  decOut_0 : out std_logic_vector(6 downto 0);
        decOut_1 : out std_logic_vector(6 downto 0)
    );
end Bin7SegDecoder;

architecture Behavioral of Bin7SegDecoder is
begin
    process (sel, binInput)
    begin
        if sel = '1' then
            case binInput is
                when "0001" => --'1'
                    decOut_0 <= "1111001";
						  decOut_1 <= "1111111";
                when "0010" => --'2'
                    decOut_0 <= "0100100";
						  decOut_1 <= "1111111";
                when "0011" => --'3'
                    decOut_0 <= "0110000";
						  decOut_1 <= "1111111";
                when "0100" => --'4'
                    decOut_0 <= "0011001";
						  decOut_1 <= "1111111";
                when "0101" => --'5'
                    decOut_0 <= "0010010";
						  decOut_1 <= "1111111";
                when "0110" => --'6'
                    decOut_0 <= "0000010";
						  decOut_1 <= "1111111";
                when "0111" => --'7'
                    decOut_0 <= "1111000";
						  decOut_1 <= "1111111";
                when "1000" => --'8'
                    decOut_0 <= "0000000";
						  decOut_1 <= "1111111";
                when "1001" => --'9'
                    decOut_0 <= "0010000";
						  decOut_1 <= "1111111";
                when "1010" => --'10'
                    decOut_0 <= "1000000";
						  decOut_1 <= "1111001";
                when "1011" => --'11'
                    decOut_0 <= "1111001";
						  decOut_1 <= "1111001";
                when others =>
                    decOut_0 <= "1000000";
						  decOut_1 <= "1111111";
            end case;
        else
            decOut_0 <= "1111111";
				decOut_1 <= "1111111";
        end if;
    end process;
end Behavioral;