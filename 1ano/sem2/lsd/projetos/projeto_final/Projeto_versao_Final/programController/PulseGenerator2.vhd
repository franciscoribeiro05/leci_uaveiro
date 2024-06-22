library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity PulseGenerator2 is
    port(
        clk : in std_logic;              -- Clock de 50 MHz
        led_out : out std_logic_vector(3 downto 0)  -- Saída para os LEDs
    );
end PulseGenerator2;

architecture Behavioral of PulseGenerator2 is
    signal counter : unsigned(23 downto 0) := (others => '0');  -- Contador de 24 bits
    signal led_state : std_logic := '0';
begin

    process(clk)
    begin
        if rising_edge(clk) then
            if counter = 12500000 then
                counter <= (others => '0');  -- Resetar o contador
                led_state <= not led_state;  -- Inverter o estado do LED
            else
                counter <= counter + 1;
            end if;
        end if;
    end process;

    -- Atualizar a saída dos LEDs
    led_out <= "1111" when led_state = '1' else "0000";

end Behavioral;
