library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity RangeComparator2 is
    Port (
        entrada : in STD_LOGIC_VECTOR(7 downto 0);
        saida : out STD_LOGIC_VECTOR(3 downto 0)
    );
end RangeComparator2;

architecture Behavioral of RangeComparator2 is
begin
    process(entrada)
    begin
        if unsigned(entrada) > 45 then
            saida <= "1111";
        elsif unsigned(entrada) > 30 then
            saida <= "1110";
        elsif unsigned(entrada) > 15 then
            saida <= "1100";
        elsif unsigned(entrada) > 0 then
            saida <= "1000";
        else
            saida <= "0000";
        end if;
    end process;
end Behavioral;
