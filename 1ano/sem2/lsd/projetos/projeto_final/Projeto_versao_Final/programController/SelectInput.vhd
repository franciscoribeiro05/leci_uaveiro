library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity SelectInput is
    port(
        entrada1 : in std_logic_vector(8 downto 0);  -- Primeira entrada de 4 bits
        entrada2 : in std_logic_vector(8 downto 0);  -- Segunda entrada de 4 bits
        controle : in std_logic_vector(2 downto 0);  -- Entrada de controle de 3 bits
        saida : out std_logic_vector(8 downto 0)     -- Saída de 4 bits
    );
end SelectInput;

architecture Behavioral of SelectInput is
begin
    process(entrada1, entrada2, controle)
    begin
        if controle = "111" then
            saida <= entrada1;
        else
            saida <= entrada2;
        end if;
    end process;
end Behavioral;