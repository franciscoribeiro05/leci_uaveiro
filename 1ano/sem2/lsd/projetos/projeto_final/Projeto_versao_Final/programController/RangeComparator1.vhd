library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity RangeComparator1 is
    Port (
        entrada : in STD_LOGIC_VECTOR(7 downto 0);
        saida : out STD_LOGIC_VECTOR(4 downto 0)
    );
end RangeComparator1;

architecture Behavioral of RangeComparator1 is
begin
    process(entrada)
    begin
        if unsigned(entrada) > 200 then
            saida <= "11111";
        elsif unsigned(entrada) > 150 then
            saida <= "11110";
        elsif unsigned(entrada) > 100 then
            saida <= "11100";
        elsif unsigned(entrada) > 50 then
            saida <= "11000";
        elsif unsigned(entrada) > 0 then
            saida <= "10000";
        else
            saida <= "00000";
        end if;
    end process;
end Behavioral;
