library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity SeletorDeEntradas is
    Port (
        seletor : in STD_LOGIC;
        entrada1 : in STD_LOGIC_VECTOR(7 downto 0);
        entrada2 : in STD_LOGIC_VECTOR(7 downto 0);
        entrada3 : in STD_LOGIC_VECTOR(7 downto 0);
        entrada4 : in STD_LOGIC_VECTOR(7 downto 0);
        saida1 : out STD_LOGIC_VECTOR(7 downto 0);
        saida2 : out STD_LOGIC_VECTOR(7 downto 0)
    );
end SeletorDeEntradas;

architecture Behavioral of SeletorDeEntradas is
begin
    process(seletor, entrada1, entrada2, entrada3, entrada4)
    begin
        if seletor = '1' then
            saida1 <= entrada1;
            saida2 <= entrada2;
        else
            saida1 <= entrada3;
            saida2 <= entrada4;
        end if;
    end process;
end Behavioral;
