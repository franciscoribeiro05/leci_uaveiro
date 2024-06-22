library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity BinToBCD is
    port (
        bin_input   : in  std_logic_vector(7 downto 0); -- Entrada de 8 bits
        bcd_output1 : out std_logic_vector(3 downto 0); -- Unidades
        bcd_output2 : out std_logic_vector(3 downto 0); -- Dezenas
        bcd_output3 : out std_logic_vector(3 downto 0)  -- Centenas
    );
end entity BinToBCD;

architecture Behavioral of BinToBCD is
    signal s_bin_input : unsigned(7 downto 0);
    signal s_hundreds  : unsigned(3 downto 0);
    signal s_tens      : unsigned(3 downto 0);
    signal s_units     : unsigned(3 downto 0);
begin
    s_bin_input <= unsigned(bin_input);

    process(s_bin_input)
    begin
        s_hundreds <= resize(s_bin_input / 100, 4);  -- Calcula as centenas
        s_tens     <= resize((s_bin_input mod 100) / 10, 4);  -- Calcula as dezenas
        s_units    <= resize(s_bin_input mod 10, 4);  -- Calcula as unidades
    end process;

    bcd_output1 <= std_logic_vector(s_units);     -- Unidades
    bcd_output2 <= std_logic_vector(s_tens);      -- Dezenas
    bcd_output3 <= std_logic_vector(s_hundreds);  -- Centenas
end architecture Behavioral;
