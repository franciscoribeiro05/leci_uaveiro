library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity StateMachine is
    port(
        clk        : in std_logic;
        timer_done : in std_logic;
        on_off     : in std_logic;
        run        : in std_logic;
        open_oven  : in std_logic;
		  enable7Seg : out std_logic;
        food_in    : out std_logic_vector(3 downto 0);
        status     : out std_logic_vector(8 downto 0);
		  starter_time : out std_logic;
        state_out  : out std_logic_vector(2 downto 0)
    );
end entity StateMachine;

architecture Behavioral of StateMachine is
    type State is (OFF, IDLE, PREHEAT, COOK, WAIT_O_PRE, WAIT_C_PRE, WAIT_O_COOK, WAIT_C_COOK, COOLDOWN, FINISH);
    signal current_state, next_state : State := OFF; -- Initialize state to OFF
    signal s_status : std_logic_vector(8 downto 0);
    signal food_in_int : std_logic_vector(3 downto 0);
    signal s_state : std_logic_vector(2 downto 0);
    signal prev_timer_done : std_logic := '0';
	 signal s_starter_time : std_logic:= '0';
	 signal s_enable7Seg : std_logic;
begin
    -- Process to handle state transitions and update signals
    process(clk)
    begin
        if rising_edge(clk) then
            prev_timer_done <= timer_done;  -- Store the previous state of timer_done

            -- Update current state
            current_state <= next_state;
        end if;
    end process;

    -- Process to determine the next state based on the current state and inputs
    process(current_state, on_off, run, timer_done, prev_timer_done, open_oven)
    begin
        next_state <= current_state;  -- Default to remain in the current state
		  
        case current_state is
            when OFF =>
                if on_off = '1' then
                    next_state <= IDLE;
					 else
						  next_state <= OFF;
                end if;
            when IDLE =>
                if on_off = '0' then
                    next_state <= OFF;
                elsif run = '1' then
                    next_state <= PREHEAT;
						  s_starter_time <= '1';
					 else
						  next_state <= IDLE;
                end if;
            when PREHEAT =>
                if timer_done = '1' and prev_timer_done = '0' then  -- Detect rising edge of timer_done
                    next_state <= WAIT_O_PRE;
						  s_starter_time <= '0';
					 else
						  next_state <= PREHEAT;
                end if;
            when WAIT_O_PRE =>
                if open_oven = '1' then
                    next_state <= WAIT_C_PRE;
					 else
						  next_state <= WAIT_O_PRE;
                end if;
            when WAIT_C_PRE =>
                if open_oven = '0' and run = '1' then
                    next_state <= COOK;
						  s_starter_time <= '1';
					 else
						  next_state <= WAIT_C_PRE;
                end if;
            when COOK =>
                if timer_done = '1' and prev_timer_done = '0' then  -- Detect rising edge of timer_done
                    next_state <= WAIT_O_COOK;
						  s_starter_time <= '0';
					 else
						  next_state <= COOK;
                end if;
            when WAIT_O_COOK =>
                if open_oven = '1' then
                    next_state <= WAIT_C_COOK;
					 else
						  next_state <= WAIT_O_COOK;
                end if;
            when WAIT_C_COOK =>
                if open_oven = '0' and run = '1' then
                    next_state <= COOLDOWN;
						  s_starter_time <= '1';
					 else
						  next_state <= WAIT_C_COOK;
                end if;
            when COOLDOWN =>
                if timer_done = '1' and prev_timer_done = '0' then  -- Detect rising edge of timer_done
                    next_state <= FINISH;
						  s_starter_time <= '0';
					 else
						  next_state <= COOLDOWN;
                end if;
            when FINISH =>
                if on_off = '0' then
                    next_state <= OFF;
					 else
						next_state <= FINISH;
                end if;
            when others =>
                next_state <= OFF;
        end case;
    end process;

    -- Process to update status and state_out based on the current state
    process(current_state)
    begin
        case current_state is
            when OFF =>
					 s_enable7Seg <= '0';
                s_status <= "000000000";
                s_state <= "000";
                food_in_int <= "0000";
            when IDLE =>
					 s_enable7Seg <= '1';
                s_status <= "000000001";
                s_state <= "001";
                food_in_int <= "0000";
            when PREHEAT =>
					 s_enable7Seg <= '1';
                s_status <= "000000011";
                s_state <= "010";
                food_in_int <= "0000";
            when COOK =>
					 s_enable7Seg <= '1';
                s_status <= "000011111";
                s_state <= "011";
                food_in_int <= "0000";
            when WAIT_O_PRE =>
				    s_enable7Seg <= '0';
                s_status <= "000000111"; 
                s_state <= "100";
                food_in_int <= "1111";
            when WAIT_C_PRE =>
				    s_enable7Seg <= '0';
                s_status <= "000001111";  
                s_state <= "100";
                food_in_int <= "0000";
            when WAIT_O_COOK =>
				    s_enable7Seg <= '0';
                s_status <= "000111111";  
                s_state <= "100";
                food_in_int <= "1111";
            when WAIT_C_COOK =>
				    s_enable7Seg <= '0';
                s_status <= "001111111";  
                s_state <= "100";
                food_in_int <= "0000";
            when COOLDOWN =>
				    s_enable7Seg <= '1';
                s_status <= "011111111";
                s_state <= "101";
                food_in_int <= "0000";
            when FINISH =>
				    s_enable7Seg <= '1';
                s_status <= "111111111";
                s_state <= "111";
                food_in_int <= "0000";
            when others =>
                s_status <= "000000000";
                s_state <= "000";
                food_in_int <= "0000";
        end case;
    end process;

    -- Assign outputs
	 enable7Seg <= s_enable7Seg;
	 starter_time <= s_starter_time;
    food_in <= food_in_int;
    state_out <= s_state;
    status <= s_status;
end architecture Behavioral;
