library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Definição da entidade
entity ZeroOutputs is
    Port (
        output1 : out std_logic_vector(7 downto 0);
        output2 : out std_logic_vector(7 downto 0);
        output3 : out std_logic_vector(7 downto 0);
        output4 : out std_logic_vector(7 downto 0)
    );
end ZeroOutputs;

-- Implementação da arquitetura
architecture Behavioral of ZeroOutputs is
begin
    -- Atribuição de zeros às saídas
    output1 <= (others => '0');
    output2 <= (others => '0');
    output3 <= (others => '0');
    output4 <= (others => '0');
end Behavioral;
