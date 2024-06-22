library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity EnableControl is
    port(
        enable : in std_logic;                      -- Sinal de habilitação
        saida1 : out std_logic_vector(6 downto 0);  -- Primeira saída de 7 bits
        saida2 : out std_logic_vector(6 downto 0)   -- Segunda saída de 7 bits
    );
end EnableControl;

architecture Behavioral of EnableControl is
begin
    process(enable)
    begin
        if enable = '1' then
            saida1 <= "0111111";
            saida2 <= "0111111";
        else
            saida1 <= "1111111";
            saida2 <= "1111111";
        end if;
    end process;
end Behavioral;
