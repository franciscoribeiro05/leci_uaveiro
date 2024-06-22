library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity TimeCount is
    port(
        reset    : in std_logic;
        clk      : in std_logic;
        up       : in std_logic;
        down     : in std_logic;
		  ph_cook_set:in std_logic;
        PH_user, COOK_user   : out std_logic_vector(5 downto 0)
    );
end TimeCount;

architecture Behav of TimeCount is
    signal s_ph, s_cook : unsigned(5 downto 0) := (others => '0'); -- Initialize to 0
    
begin
    process(reset, clk)
    begin
        if (reset = '1') then
            s_ph <= (others => '0');
				s_cook <= (others => '0');
        elsif rising_edge(clk) then
				if ph_cook_set='0' then 
                if up = '1' then
                    if s_ph = "111100" then -- 60 in binary
                        s_ph <= (others => '0');
                    else
                        s_ph <= s_ph + 1;
                    end if;
                elsif down = '1' then
                    if s_ph = 0 then
                        -- Do nothing, already at the minimum value
                    else
                        s_ph <= s_ph - 1;
                    end if;
                end if;
				else  
				 if up = '1' then
					  if s_cook = "111100" then -- 60 in binary
							s_cook <= (others => '0');
					  else
							s_cook <= s_cook + 1;
					  end if;
				 elsif down = '1' then
					  if s_cook = 0 then
							-- Do nothing, already at the minimum value
					  else
							s_cook <= s_cook - 1;
					  end if;
             end if;
           end if;
        end if;
    end process;
    PH_user <= std_logic_vector(s_ph);
	 COOK_user <= std_logic_vector(s_cook);
    
end Behav;