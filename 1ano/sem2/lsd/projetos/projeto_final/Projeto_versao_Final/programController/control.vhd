library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity control is
    Port ( clk      : in  STD_LOGIC;
           up1      : in  STD_LOGIC;
           up2      : in  STD_LOGIC;
           down1    : in  STD_LOGIC;
           down2    : in  STD_LOGIC;
           pre_on   : in  STD_LOGIC;
           tempo_pre: out STD_LOGIC_VECTOR(7 downto 0);
           tempo_coc: out STD_LOGIC_VECTOR(7 downto 0);
           tura_pre : out STD_LOGIC_VECTOR(7 downto 0);
           tura_coc : out STD_LOGIC_VECTOR(7 downto 0));
end control;

architecture Behavioral of control is
    signal tempo_pre_int : integer := 0;
    signal tempo_coc_int : integer := 0;
    signal tura_pre_int  : integer := 0;
    signal tura_coc_int  : integer := 0;
begin

    process(clk)
    begin
        if rising_edge(clk) then
            if pre_on = '0' then
                if up1 = '0' and down1 = '1' then
                    tempo_pre_int <= tempo_pre_int + 1;
                elsif up1 = '1' and down1 = '0' then
                    tempo_pre_int <= tempo_pre_int - 1;
                end if;
                
                --if up2 = '0' and down2 = '1' then
                    --tura_pre_int <= tura_pre_int + 10;
                --elsif up2 = '1' and down2 = '0' then
                    --tura_pre_int <= tura_pre_int - 10;
                --end if;
            else
                if up1 = '1' and down1 = '0' then
                    tempo_coc_int <= tempo_coc_int + 1;
                elsif up1 = '0' and down1 = '1' then
                    tempo_coc_int <= tempo_coc_int - 1;
                end if;
                
                if up2 = '1' and down2 = '0' then
                    tura_coc_int <= tura_coc_int + 10;
                elsif up2 = '0' and down2 = '1' then
                    tura_coc_int <= tura_coc_int - 10;
                end if;
            end if;
        end if;
    end process;

    tempo_pre <= std_logic_vector(to_unsigned(tempo_pre_int, 8));
    tempo_coc <= std_logic_vector(to_unsigned(tempo_coc_int, 8));
    tura_pre  <= std_logic_vector(to_unsigned(tura_pre_int, 8));
    tura_coc  <= std_logic_vector(to_unsigned(tura_coc_int, 8));

end Behavioral;
