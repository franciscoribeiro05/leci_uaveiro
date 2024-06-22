library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ProgramController is
    port(
        clk : in std_logic;
        programs_sel : in std_logic_vector(2 downto 0);
        state_in : in std_logic_vector(2 downto 0);
        time_user_cook : in std_logic_vector(7 downto 0);
        temp_user_cook : in std_logic_vector(7 downto 0);
        time_user_pre : in std_logic_vector(7 downto 0);
        temp_user_pre : in std_logic_vector(7 downto 0);
        out_desired_time : out std_logic_vector(7 downto 0);
        out_desired_temp : out std_logic_vector(7 downto 0)
    );
end ProgramController;

architecture Behavioral of ProgramController is
    type State is (OFF, IDLE, PREHEAT, COOK, COOLDOWN,WAITING, FINISH);
    type Program is (DEFAULT, USER, RISSOIS, BATATAS, FILETES, HAMBURGER);
    signal selected_program : Program := DEFAULT;
    signal current_state : State;
    signal cooling_time : integer range 0 to 60;
    signal desired_temp : integer range 0 to 300;
    signal desired_time : integer range 0 to 60;
begin
    process(clk)
    begin
        if rising_edge(clk) then
            case state_in is
					 when "000" =>
						  current_state <= OFF;
					 when "001" =>
						  current_state <= IDLE;
					 when "010" =>
						  current_state <= PREHEAT;
					 when "011" =>
						  current_state <= COOK;
					 when "100" =>  
						  current_state <= WAITING; 
					 when "101" =>
						  current_state <= COOLDOWN;
					 when "111" =>
						  current_state <= FINISH;
					 when others =>
						  current_state <= OFF;
				end case;


            case programs_sel is
                when "000" =>
                    selected_program <= DEFAULT;
                when "001" =>
                    selected_program <= USER;
                when "010" =>
                    selected_program <= RISSOIS;
                when "011" =>
                    selected_program <= BATATAS;
                when "100" =>
                    selected_program <= FILETES;
                when "101" =>
                    selected_program <= HAMBURGER;
                when others =>
                    selected_program <= DEFAULT;
            end case;

            if current_state = PREHEAT then
                case selected_program is
                    when DEFAULT =>
                        desired_time <= 17;
                        desired_temp <= 200;
                    when USER =>
                        desired_time <= to_integer(unsigned(time_user_pre)); 
                        desired_temp <= to_integer(unsigned(temp_user_pre));
                    when RISSOIS =>
                        desired_time <= 15;
                        desired_temp <= 180;
                    when BATATAS =>
                        desired_time <= 17;
                        desired_temp <= 200;
                    when FILETES =>
                        desired_time <= 13;
                        desired_temp <= 170;
                    when HAMBURGER =>
                        desired_time <= 13;
                        desired_temp <= 170;
                    when others =>
                        desired_time <= 0;
                        desired_temp <= 0; -- Added to avoid latching the previous value
                end case;
            elsif current_state = COOK then
                case selected_program is
                    when DEFAULT =>
                        desired_time <= 18;
                        desired_temp <= 200;
                    when USER =>
                        desired_time <= to_integer(unsigned(time_user_cook));
                        desired_temp <= to_integer(unsigned(temp_user_cook));
                    when RISSOIS =>
                        desired_time <= 15;
                        desired_temp <= 180;
                    when BATATAS =>
                        desired_time <= 20;
                        desired_temp <= 200;
                    when FILETES =>
                        desired_time <= 20;
                        desired_temp <= 170;
                    when HAMBURGER =>
                        desired_time <= 20;
                        desired_temp <= 170;
                    when others =>
                        desired_time <= 20;
                        desired_temp <= 0; -- Added to avoid latching the previous value
                end case;
            elsif current_state = COOLDOWN then
                case selected_program is
                    when DEFAULT =>
                        desired_time <= 17;
                        desired_temp <= 20;
                    when USER =>
                        desired_time <= ((to_integer(unsigned(temp_user_cook))) - 20) / 10 ;
                        desired_temp <= 20;
                    when RISSOIS =>
                        desired_time <= 15;
                        desired_temp <= 20;
                    when BATATAS =>
                        desired_time <= 17;
                        desired_temp <= 20;
                    when FILETES =>
                        desired_time <= 14;
                        desired_temp <= 20;
                    when HAMBURGER =>
                        desired_time <= 14;
                        desired_temp <= 20;
                    when others =>
                        desired_time <= 0;
                        desired_temp <= 0; 
                end case;
				elsif current_state = WAITING then
                case selected_program is
                    when DEFAULT =>
                        desired_time <= 0;
                        desired_temp <= 200;
                    when USER =>
                        desired_time <= 0;
                        desired_temp <= to_integer(unsigned(temp_user_cook));
                    when RISSOIS =>
                        desired_time <= 0;
                        desired_temp <= 180;
                    when BATATAS =>
                        desired_time <= 0;
                        desired_temp <= 200;
                    when FILETES =>
                        desired_time <= 0;
                        desired_temp <= 170;
                    when HAMBURGER =>
                        desired_time <= 0;
                        desired_temp <= 170;
                    when others =>
                        desired_time <= 0;
                        desired_temp <= 0; 
                end case;
            else
                desired_temp <= 20;
                desired_time <= 0;
            end if;
        end if;
    end process;

    out_desired_temp <= std_logic_vector(to_unsigned(desired_temp, 8));
    out_desired_time <= std_logic_vector(to_unsigned(desired_time, 8));
end Behavioral;