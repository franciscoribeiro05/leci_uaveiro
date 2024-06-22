library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity CounterDemo is
	port(CLOCK_50 : in std_logic;
			SW : in std_logic_vector(1 downto 0);
			LEDR : out std_logic_vector(3 downto 0);
			HEX0 : out std_logic_vector(6 downto 0);
			HEX1 :out std_logic_vector(6 downto 0)
	);
end CounterDemo;

architecture Shell of CounterDemo is
	signal s_reset : std_logic;
	signal s_sel : std_logic;
	signal s_enable : std_logic;
	signal s_count : std_logic_vector(3 downto 0);
	signal hz4_freq: std_logic;
begin
	s_sel <= SW(1);
	s_reset <= SW(0);
	
	pulsGen : entity work.ClkDiviser(Behavioral)
	generic map(K => 50000000)
	port map(
		clkin => CLOCK_50,
		clkOut => s_enable
	);
	
	
	counter : entity work.Counter(Behavioral)
	port map(
		clk => CLOCK_50,
		enable => s_enable,
		reset => s_reset,
		count => s_count(3 downto 0) 
	);
	
	freqDiv : entity work.FreqDiv(Behavioral)
	generic map(K => 6250000)
	port map(
		clkin => CLOCK_50,
		clkOut => hz4_freq
	);
	
	LEDR(0) <= hz4_freq and s_count(0);
	LEDR(1) <= hz4_freq and s_count(1);
	LEDR(2) <= hz4_freq and s_count(2);
	LEDR(3) <= hz4_freq and s_count(3);
	
	bin7Seg : entity work.Bin7SegDecoder(Behavioral)
	port map(
		binInput => s_count(3 downto 0),
		sel => s_sel,
		decOut_0 => HEX0(6 downto 0),
		decOut_1 => HEX1(6 downto 0)
	);
end Shell;
	