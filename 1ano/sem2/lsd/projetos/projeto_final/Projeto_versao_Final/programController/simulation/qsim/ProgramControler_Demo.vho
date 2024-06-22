-- Copyright (C) 2023  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 22.1std.1 Build 917 02/14/2023 SC Lite Edition"

-- DATE "05/30/2024 16:24:06"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for Questa Intel FPGA (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_F4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_P28,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	StateMachineToTimer IS
    PORT (
	HEX6 : OUT std_logic_vector(6 DOWNTO 0);
	CLOCK_50 : IN std_logic;
	SW : IN std_logic_vector(10 DOWNTO 0);
	HEX7 : OUT std_logic_vector(6 DOWNTO 0);
	LEDG : OUT std_logic_vector(0 DOWNTO 0);
	LEDR : OUT std_logic_vector(5 DOWNTO 0)
	);
END StateMachineToTimer;

-- Design Ports Information
-- HEX6[6]	=>  Location: PIN_AC17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[5]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[4]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[3]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[2]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[1]	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[0]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[6]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[5]	=>  Location: PIN_AG18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[4]	=>  Location: PIN_AF17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[3]	=>  Location: PIN_AH17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[2]	=>  Location: PIN_AG17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[1]	=>  Location: PIN_AE17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[0]	=>  Location: PIN_AD17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[0]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[5]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[4]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[3]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[2]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[1]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[0]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_AC26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[10]	=>  Location: PIN_AC24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_AB25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_AC25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF StateMachineToTimer IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_HEX6 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_SW : std_logic_vector(10 DOWNTO 0);
SIGNAL ww_HEX7 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_LEDG : std_logic_vector(0 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(5 DOWNTO 0);
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \HEX6[6]~output_o\ : std_logic;
SIGNAL \HEX6[5]~output_o\ : std_logic;
SIGNAL \HEX6[4]~output_o\ : std_logic;
SIGNAL \HEX6[3]~output_o\ : std_logic;
SIGNAL \HEX6[2]~output_o\ : std_logic;
SIGNAL \HEX6[1]~output_o\ : std_logic;
SIGNAL \HEX6[0]~output_o\ : std_logic;
SIGNAL \HEX7[6]~output_o\ : std_logic;
SIGNAL \HEX7[5]~output_o\ : std_logic;
SIGNAL \HEX7[4]~output_o\ : std_logic;
SIGNAL \HEX7[3]~output_o\ : std_logic;
SIGNAL \HEX7[2]~output_o\ : std_logic;
SIGNAL \HEX7[1]~output_o\ : std_logic;
SIGNAL \HEX7[0]~output_o\ : std_logic;
SIGNAL \LEDG[0]~output_o\ : std_logic;
SIGNAL \LEDR[5]~output_o\ : std_logic;
SIGNAL \LEDR[4]~output_o\ : std_logic;
SIGNAL \LEDR[3]~output_o\ : std_logic;
SIGNAL \LEDR[2]~output_o\ : std_logic;
SIGNAL \LEDR[1]~output_o\ : std_logic;
SIGNAL \LEDR[0]~output_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst3|Add0~0_combout\ : std_logic;
SIGNAL \inst3|Add0~1\ : std_logic;
SIGNAL \inst3|Add0~2_combout\ : std_logic;
SIGNAL \inst3|Add0~3\ : std_logic;
SIGNAL \inst3|Add0~4_combout\ : std_logic;
SIGNAL \inst3|Add0~5\ : std_logic;
SIGNAL \inst3|Add0~6_combout\ : std_logic;
SIGNAL \inst3|Add0~7\ : std_logic;
SIGNAL \inst3|Add0~8_combout\ : std_logic;
SIGNAL \inst3|Add0~9\ : std_logic;
SIGNAL \inst3|Add0~10_combout\ : std_logic;
SIGNAL \inst3|Add0~11\ : std_logic;
SIGNAL \inst3|Add0~12_combout\ : std_logic;
SIGNAL \inst3|Add0~13\ : std_logic;
SIGNAL \inst3|Add0~14_combout\ : std_logic;
SIGNAL \inst3|s_cnt~5_combout\ : std_logic;
SIGNAL \inst3|Add0~15\ : std_logic;
SIGNAL \inst3|Add0~16_combout\ : std_logic;
SIGNAL \inst3|Add0~17\ : std_logic;
SIGNAL \inst3|Add0~18_combout\ : std_logic;
SIGNAL \inst3|Add0~19\ : std_logic;
SIGNAL \inst3|Add0~20_combout\ : std_logic;
SIGNAL \inst3|Add0~21\ : std_logic;
SIGNAL \inst3|Add0~22_combout\ : std_logic;
SIGNAL \inst3|Add0~23\ : std_logic;
SIGNAL \inst3|Add0~24_combout\ : std_logic;
SIGNAL \inst3|s_cnt~4_combout\ : std_logic;
SIGNAL \inst3|Add0~25\ : std_logic;
SIGNAL \inst3|Add0~26_combout\ : std_logic;
SIGNAL \inst3|s_cnt~3_combout\ : std_logic;
SIGNAL \inst3|Add0~27\ : std_logic;
SIGNAL \inst3|Add0~28_combout\ : std_logic;
SIGNAL \inst3|s_cnt~2_combout\ : std_logic;
SIGNAL \inst3|Add0~29\ : std_logic;
SIGNAL \inst3|Add0~30_combout\ : std_logic;
SIGNAL \inst3|s_cnt~1_combout\ : std_logic;
SIGNAL \inst3|Add0~31\ : std_logic;
SIGNAL \inst3|Add0~32_combout\ : std_logic;
SIGNAL \inst3|Add0~33\ : std_logic;
SIGNAL \inst3|Add0~34_combout\ : std_logic;
SIGNAL \inst3|s_cnt~0_combout\ : std_logic;
SIGNAL \inst3|Add0~35\ : std_logic;
SIGNAL \inst3|Add0~36_combout\ : std_logic;
SIGNAL \inst3|Add0~37\ : std_logic;
SIGNAL \inst3|Add0~38_combout\ : std_logic;
SIGNAL \inst3|s_cnt~6_combout\ : std_logic;
SIGNAL \inst3|Add0~39\ : std_logic;
SIGNAL \inst3|Add0~40_combout\ : std_logic;
SIGNAL \inst3|s_cnt~7_combout\ : std_logic;
SIGNAL \inst3|Add0~41\ : std_logic;
SIGNAL \inst3|Add0~42_combout\ : std_logic;
SIGNAL \inst3|s_cnt~8_combout\ : std_logic;
SIGNAL \inst3|Add0~43\ : std_logic;
SIGNAL \inst3|Add0~44_combout\ : std_logic;
SIGNAL \inst3|s_cnt~9_combout\ : std_logic;
SIGNAL \inst3|Add0~45\ : std_logic;
SIGNAL \inst3|Add0~46_combout\ : std_logic;
SIGNAL \inst3|s_cnt~10_combout\ : std_logic;
SIGNAL \inst3|Add0~47\ : std_logic;
SIGNAL \inst3|Add0~48_combout\ : std_logic;
SIGNAL \inst3|Add0~49\ : std_logic;
SIGNAL \inst3|Add0~50_combout\ : std_logic;
SIGNAL \inst3|s_cnt~11_combout\ : std_logic;
SIGNAL \inst3|Equal0~7_combout\ : std_logic;
SIGNAL \inst3|Equal0~5_combout\ : std_logic;
SIGNAL \inst3|Equal0~6_combout\ : std_logic;
SIGNAL \inst3|Equal0~1_combout\ : std_logic;
SIGNAL \inst3|Equal0~0_combout\ : std_logic;
SIGNAL \inst3|Equal0~2_combout\ : std_logic;
SIGNAL \inst3|Equal0~3_combout\ : std_logic;
SIGNAL \inst3|Equal0~4_combout\ : std_logic;
SIGNAL \inst3|Equal0~8_combout\ : std_logic;
SIGNAL \inst3|pulse~feeder_combout\ : std_logic;
SIGNAL \inst3|pulse~q\ : std_logic;
SIGNAL \inst2|s_initial_val[0]~8_combout\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \inst2|s_initial_val[1]~11\ : std_logic;
SIGNAL \inst2|s_initial_val[2]~12_combout\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \inst2|s_initial_val[2]~13\ : std_logic;
SIGNAL \inst2|s_initial_val[3]~17_combout\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \inst2|s_initial_val[3]~18\ : std_logic;
SIGNAL \inst2|s_initial_val[4]~19_combout\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \inst2|s_initial_val[4]~20\ : std_logic;
SIGNAL \inst2|s_initial_val[5]~21_combout\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \inst2|s_initial_val[5]~22\ : std_logic;
SIGNAL \inst2|s_initial_val[6]~23_combout\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \inst2|s_initial_val[6]~24\ : std_logic;
SIGNAL \inst2|s_initial_val[7]~25_combout\ : std_logic;
SIGNAL \SW[10]~input_o\ : std_logic;
SIGNAL \inst2|s_initial_val[2]~14_combout\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \inst|Selector3~0_combout\ : std_logic;
SIGNAL \inst2|s_initial_val[2]~15_combout\ : std_logic;
SIGNAL \inst2|s_initial_val[2]~27_combout\ : std_logic;
SIGNAL \inst|prev_timer_done~q\ : std_logic;
SIGNAL \inst|process_1~0_combout\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \inst|Selector2~0_combout\ : std_logic;
SIGNAL \inst|Selector2~1_combout\ : std_logic;
SIGNAL \inst|current_state.PREHEAT~q\ : std_logic;
SIGNAL \inst|Selector4~0_combout\ : std_logic;
SIGNAL \inst|current_state.WAIT_O_PRE~feeder_combout\ : std_logic;
SIGNAL \inst|current_state.WAIT_O_PRE~q\ : std_logic;
SIGNAL \inst|Selector5~0_combout\ : std_logic;
SIGNAL \inst|current_state.WAIT_C_PRE~q\ : std_logic;
SIGNAL \inst|Selector3~1_combout\ : std_logic;
SIGNAL \inst|current_state.COOK~q\ : std_logic;
SIGNAL \inst|Selector6~0_combout\ : std_logic;
SIGNAL \inst|current_state.WAIT_O_COOK~q\ : std_logic;
SIGNAL \inst|Selector7~0_combout\ : std_logic;
SIGNAL \inst|current_state.WAIT_C_COOK~q\ : std_logic;
SIGNAL \inst|Selector8~0_combout\ : std_logic;
SIGNAL \inst|current_state.COOLDOWN~q\ : std_logic;
SIGNAL \inst|Selector9~0_combout\ : std_logic;
SIGNAL \inst|current_state.FINISH~q\ : std_logic;
SIGNAL \inst|Selector0~0_combout\ : std_logic;
SIGNAL \inst|current_state.OFF~feeder_combout\ : std_logic;
SIGNAL \inst|current_state.OFF~q\ : std_logic;
SIGNAL \inst|Selector1~0_combout\ : std_logic;
SIGNAL \inst|current_state.IDLE~q\ : std_logic;
SIGNAL \inst|Selector11~0_combout\ : std_logic;
SIGNAL \inst|Selector10~2_combout\ : std_logic;
SIGNAL \inst|Selector10~0_combout\ : std_logic;
SIGNAL \inst|Selector10~1_combout\ : std_logic;
SIGNAL \inst|Selector10~3_combout\ : std_logic;
SIGNAL \inst|s_starter_time~combout\ : std_logic;
SIGNAL \inst2|s_initial_val[2]~16_combout\ : std_logic;
SIGNAL \inst2|counting~feeder_combout\ : std_logic;
SIGNAL \inst2|counting~q\ : std_logic;
SIGNAL \inst2|process_0~0_combout\ : std_logic;
SIGNAL \inst2|s_initial_val[0]~9\ : std_logic;
SIGNAL \inst2|s_initial_val[1]~10_combout\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \inst4|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ : std_logic;
SIGNAL \inst4|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ : std_logic;
SIGNAL \inst4|Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ : std_logic;
SIGNAL \inst4|Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ : std_logic;
SIGNAL \inst4|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ : std_logic;
SIGNAL \inst4|Mod1|auto_generated|divider|divider|StageOut[27]~55_combout\ : std_logic;
SIGNAL \inst4|Mod1|auto_generated|divider|divider|StageOut[27]~54_combout\ : std_logic;
SIGNAL \inst4|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ : std_logic;
SIGNAL \inst4|Mod1|auto_generated|divider|divider|StageOut[26]~57_combout\ : std_logic;
SIGNAL \inst4|Mod1|auto_generated|divider|divider|StageOut[26]~56_combout\ : std_logic;
SIGNAL \inst4|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ : std_logic;
SIGNAL \inst4|Mod1|auto_generated|divider|divider|StageOut[25]~59_combout\ : std_logic;
SIGNAL \inst4|Mod1|auto_generated|divider|divider|StageOut[25]~58_combout\ : std_logic;
SIGNAL \inst4|Mod1|auto_generated|divider|divider|StageOut[24]~61_combout\ : std_logic;
SIGNAL \inst4|Mod1|auto_generated|divider|divider|StageOut[24]~60_combout\ : std_logic;
SIGNAL \inst4|Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ : std_logic;
SIGNAL \inst4|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ : std_logic;
SIGNAL \inst4|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ : std_logic;
SIGNAL \inst4|Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\ : std_logic;
SIGNAL \inst4|Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ : std_logic;
SIGNAL \inst4|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ : std_logic;
SIGNAL \inst4|Mod1|auto_generated|divider|divider|StageOut[36]~62_combout\ : std_logic;
SIGNAL \inst4|Mod1|auto_generated|divider|divider|StageOut[36]~96_combout\ : std_logic;
SIGNAL \inst4|Mod1|auto_generated|divider|divider|StageOut[35]~97_combout\ : std_logic;
SIGNAL \inst4|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ : std_logic;
SIGNAL \inst4|Mod1|auto_generated|divider|divider|StageOut[35]~63_combout\ : std_logic;
SIGNAL \inst4|Mod1|auto_generated|divider|divider|StageOut[34]~98_combout\ : std_logic;
SIGNAL \inst4|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ : std_logic;
SIGNAL \inst4|Mod1|auto_generated|divider|divider|StageOut[34]~64_combout\ : std_logic;
SIGNAL \inst4|Mod1|auto_generated|divider|divider|StageOut[33]~65_combout\ : std_logic;
SIGNAL \inst4|Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ : std_logic;
SIGNAL \inst4|Mod1|auto_generated|divider|divider|StageOut[33]~66_combout\ : std_logic;
SIGNAL \inst4|Mod1|auto_generated|divider|divider|StageOut[32]~68_combout\ : std_logic;
SIGNAL \inst4|Mod1|auto_generated|divider|divider|StageOut[32]~67_combout\ : std_logic;
SIGNAL \inst4|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ : std_logic;
SIGNAL \inst4|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ : std_logic;
SIGNAL \inst4|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ : std_logic;
SIGNAL \inst4|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ : std_logic;
SIGNAL \inst4|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~9\ : std_logic;
SIGNAL \inst4|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ : std_logic;
SIGNAL \inst4|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ : std_logic;
SIGNAL \inst4|Mod1|auto_generated|divider|divider|StageOut[45]~69_combout\ : std_logic;
SIGNAL \inst4|Mod1|auto_generated|divider|divider|StageOut[45]~89_combout\ : std_logic;
SIGNAL \inst4|Mod1|auto_generated|divider|divider|StageOut[44]~90_combout\ : std_logic;
SIGNAL \inst4|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\ : std_logic;
SIGNAL \inst4|Mod1|auto_generated|divider|divider|StageOut[44]~70_combout\ : std_logic;
SIGNAL \inst4|Mod1|auto_generated|divider|divider|StageOut[43]~91_combout\ : std_logic;
SIGNAL \inst4|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ : std_logic;
SIGNAL \inst4|Mod1|auto_generated|divider|divider|StageOut[43]~71_combout\ : std_logic;
SIGNAL \inst4|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ : std_logic;
SIGNAL \inst4|Mod1|auto_generated|divider|divider|StageOut[42]~72_combout\ : std_logic;
SIGNAL \inst4|Mod1|auto_generated|divider|divider|StageOut[42]~99_combout\ : std_logic;
SIGNAL \inst4|Mod1|auto_generated|divider|divider|StageOut[41]~73_combout\ : std_logic;
SIGNAL \inst4|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ : std_logic;
SIGNAL \inst4|Mod1|auto_generated|divider|divider|StageOut[41]~74_combout\ : std_logic;
SIGNAL \inst4|Mod1|auto_generated|divider|divider|StageOut[40]~75_combout\ : std_logic;
SIGNAL \inst4|Mod1|auto_generated|divider|divider|StageOut[40]~76_combout\ : std_logic;
SIGNAL \inst4|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ : std_logic;
SIGNAL \inst4|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ : std_logic;
SIGNAL \inst4|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ : std_logic;
SIGNAL \inst4|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ : std_logic;
SIGNAL \inst4|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ : std_logic;
SIGNAL \inst4|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~11\ : std_logic;
SIGNAL \inst4|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ : std_logic;
SIGNAL \inst4|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ : std_logic;
SIGNAL \inst4|Mod1|auto_generated|divider|divider|StageOut[54]~81_combout\ : std_logic;
SIGNAL \inst4|Mod1|auto_generated|divider|divider|StageOut[54]~92_combout\ : std_logic;
SIGNAL \inst4|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ : std_logic;
SIGNAL \inst4|Mod1|auto_generated|divider|divider|StageOut[53]~82_combout\ : std_logic;
SIGNAL \inst4|Mod1|auto_generated|divider|divider|StageOut[53]~93_combout\ : std_logic;
SIGNAL \inst4|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\ : std_logic;
SIGNAL \inst4|Mod1|auto_generated|divider|divider|StageOut[52]~83_combout\ : std_logic;
SIGNAL \inst4|Mod1|auto_generated|divider|divider|StageOut[52]~94_combout\ : std_logic;
SIGNAL \inst4|Mod1|auto_generated|divider|divider|StageOut[51]~95_combout\ : std_logic;
SIGNAL \inst4|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ : std_logic;
SIGNAL \inst4|Mod1|auto_generated|divider|divider|StageOut[51]~84_combout\ : std_logic;
SIGNAL \inst4|Mod1|auto_generated|divider|divider|StageOut[50]~100_combout\ : std_logic;
SIGNAL \inst4|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ : std_logic;
SIGNAL \inst4|Mod1|auto_generated|divider|divider|StageOut[50]~85_combout\ : std_logic;
SIGNAL \inst4|Mod1|auto_generated|divider|divider|StageOut[49]~77_combout\ : std_logic;
SIGNAL \inst4|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ : std_logic;
SIGNAL \inst4|Mod1|auto_generated|divider|divider|StageOut[49]~78_combout\ : std_logic;
SIGNAL \inst4|Mod1|auto_generated|divider|divider|StageOut[48]~79_combout\ : std_logic;
SIGNAL \inst4|Mod1|auto_generated|divider|divider|StageOut[48]~80_combout\ : std_logic;
SIGNAL \inst4|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ : std_logic;
SIGNAL \inst4|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ : std_logic;
SIGNAL \inst4|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ : std_logic;
SIGNAL \inst4|Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\ : std_logic;
SIGNAL \inst4|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~9_cout\ : std_logic;
SIGNAL \inst4|Mod1|auto_generated|divider|divider|add_sub_7_result_int[6]~11_cout\ : std_logic;
SIGNAL \inst4|Mod1|auto_generated|divider|divider|add_sub_7_result_int[7]~13_cout\ : std_logic;
SIGNAL \inst4|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ : std_logic;
SIGNAL \inst4|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\ : std_logic;
SIGNAL \inst4|Mod1|auto_generated|divider|divider|StageOut[57]~87_combout\ : std_logic;
SIGNAL \inst4|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\ : std_logic;
SIGNAL \inst4|Mod1|auto_generated|divider|divider|StageOut[58]~86_combout\ : std_logic;
SIGNAL \inst4|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\ : std_logic;
SIGNAL \inst4|Mod1|auto_generated|divider|divider|StageOut[59]~88_combout\ : std_logic;
SIGNAL \inst6|decOut_0[6]~0_combout\ : std_logic;
SIGNAL \inst6|decOut_0[5]~1_combout\ : std_logic;
SIGNAL \inst6|decOut_0[4]~2_combout\ : std_logic;
SIGNAL \inst6|decOut_0[3]~3_combout\ : std_logic;
SIGNAL \inst6|decOut_0[2]~4_combout\ : std_logic;
SIGNAL \inst6|decOut_0[1]~5_combout\ : std_logic;
SIGNAL \inst6|decOut_0[0]~6_combout\ : std_logic;
SIGNAL \inst4|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\ : std_logic;
SIGNAL \inst4|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\ : std_logic;
SIGNAL \inst4|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\ : std_logic;
SIGNAL \inst4|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\ : std_logic;
SIGNAL \inst4|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~9\ : std_logic;
SIGNAL \inst4|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ : std_logic;
SIGNAL \inst4|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\ : std_logic;
SIGNAL \inst4|Mod0|auto_generated|divider|divider|StageOut[50]~45_combout\ : std_logic;
SIGNAL \inst4|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\ : std_logic;
SIGNAL \inst4|Mod0|auto_generated|divider|divider|StageOut[54]~49_combout\ : std_logic;
SIGNAL \inst4|Mod0|auto_generated|divider|divider|StageOut[54]~48_combout\ : std_logic;
SIGNAL \inst4|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\ : std_logic;
SIGNAL \inst4|Mod0|auto_generated|divider|divider|StageOut[53]~51_combout\ : std_logic;
SIGNAL \inst4|Mod0|auto_generated|divider|divider|StageOut[53]~50_combout\ : std_logic;
SIGNAL \inst4|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\ : std_logic;
SIGNAL \inst4|Mod0|auto_generated|divider|divider|StageOut[52]~41_combout\ : std_logic;
SIGNAL \inst4|Mod0|auto_generated|divider|divider|StageOut[52]~40_combout\ : std_logic;
SIGNAL \inst4|Mod0|auto_generated|divider|divider|StageOut[51]~42_combout\ : std_logic;
SIGNAL \inst4|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\ : std_logic;
SIGNAL \inst4|Mod0|auto_generated|divider|divider|StageOut[51]~43_combout\ : std_logic;
SIGNAL \inst4|Mod0|auto_generated|divider|divider|StageOut[50]~44_combout\ : std_logic;
SIGNAL \inst4|Mod0|auto_generated|divider|divider|StageOut[49]~47_combout\ : std_logic;
SIGNAL \inst4|Mod0|auto_generated|divider|divider|StageOut[49]~46_combout\ : std_logic;
SIGNAL \inst4|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~1\ : std_logic;
SIGNAL \inst4|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~3\ : std_logic;
SIGNAL \inst4|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~5\ : std_logic;
SIGNAL \inst4|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~7\ : std_logic;
SIGNAL \inst4|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~9\ : std_logic;
SIGNAL \inst4|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~11\ : std_logic;
SIGNAL \inst4|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ : std_logic;
SIGNAL \inst4|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\ : std_logic;
SIGNAL \inst4|Mod0|auto_generated|divider|divider|StageOut[59]~53_combout\ : std_logic;
SIGNAL \inst4|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\ : std_logic;
SIGNAL \inst4|Mod0|auto_generated|divider|divider|StageOut[60]~54_combout\ : std_logic;
SIGNAL \inst4|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~6_combout\ : std_logic;
SIGNAL \inst4|Mod0|auto_generated|divider|divider|StageOut[61]~52_combout\ : std_logic;
SIGNAL \inst4|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\ : std_logic;
SIGNAL \inst4|Mod0|auto_generated|divider|divider|StageOut[58]~61_combout\ : std_logic;
SIGNAL \inst4|Mod0|auto_generated|divider|divider|StageOut[48]~59_combout\ : std_logic;
SIGNAL \inst4|Mod0|auto_generated|divider|divider|StageOut[48]~58_combout\ : std_logic;
SIGNAL \inst4|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~14_combout\ : std_logic;
SIGNAL \inst4|Mod0|auto_generated|divider|divider|StageOut[57]~60_combout\ : std_logic;
SIGNAL \inst6|decOut_1[3]~8_combout\ : std_logic;
SIGNAL \inst6|decOut_1[3]~9_combout\ : std_logic;
SIGNAL \inst6|decOut_1[3]~7_combout\ : std_logic;
SIGNAL \inst4|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~10_combout\ : std_logic;
SIGNAL \inst4|Mod0|auto_generated|divider|divider|StageOut[63]~55_combout\ : std_logic;
SIGNAL \inst6|decOut_1[3]~10_combout\ : std_logic;
SIGNAL \inst6|decOut_1[6]~5_combout\ : std_logic;
SIGNAL \inst6|decOut_1[6]~4_combout\ : std_logic;
SIGNAL \inst6|decOut_1[6]~6_combout\ : std_logic;
SIGNAL \inst4|Mod0|auto_generated|divider|divider|StageOut[63]~57_combout\ : std_logic;
SIGNAL \inst4|Mod0|auto_generated|divider|divider|StageOut[63]~70_combout\ : std_logic;
SIGNAL \inst4|Mod0|auto_generated|divider|divider|StageOut[61]~71_combout\ : std_logic;
SIGNAL \inst4|Mod0|auto_generated|divider|divider|StageOut[61]~56_combout\ : std_logic;
SIGNAL \inst6|decOut_1[6]~1_combout\ : std_logic;
SIGNAL \inst6|decOut_1[6]~0_combout\ : std_logic;
SIGNAL \inst6|decOut_1[1]~2_combout\ : std_logic;
SIGNAL \inst6|decOut_1[6]~3_combout\ : std_logic;
SIGNAL \inst4|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~8_combout\ : std_logic;
SIGNAL \inst4|Mod0|auto_generated|divider|divider|StageOut[62]~62_combout\ : std_logic;
SIGNAL \inst6|decOut_1[6]~11_combout\ : std_logic;
SIGNAL \inst4|Mod0|auto_generated|divider|divider|StageOut[62]~63_combout\ : std_logic;
SIGNAL \inst4|Mod0|auto_generated|divider|divider|StageOut[62]~72_combout\ : std_logic;
SIGNAL \inst4|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ : std_logic;
SIGNAL \inst4|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ : std_logic;
SIGNAL \inst4|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ : std_logic;
SIGNAL \inst4|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ : std_logic;
SIGNAL \inst4|Mod0|auto_generated|divider|divider|StageOut[60]~73_combout\ : std_logic;
SIGNAL \inst4|Div1|auto_generated|divider|divider|StageOut[15]~63_combout\ : std_logic;
SIGNAL \inst4|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ : std_logic;
SIGNAL \inst4|Div1|auto_generated|divider|divider|StageOut[18]~44_combout\ : std_logic;
SIGNAL \inst4|Div1|auto_generated|divider|divider|StageOut[18]~60_combout\ : std_logic;
SIGNAL \inst4|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ : std_logic;
SIGNAL \inst4|Div1|auto_generated|divider|divider|StageOut[17]~45_combout\ : std_logic;
SIGNAL \inst4|Div1|auto_generated|divider|divider|StageOut[17]~61_combout\ : std_logic;
SIGNAL \inst4|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ : std_logic;
SIGNAL \inst4|Div1|auto_generated|divider|divider|StageOut[16]~46_combout\ : std_logic;
SIGNAL \inst4|Div1|auto_generated|divider|divider|StageOut[16]~62_combout\ : std_logic;
SIGNAL \inst4|Mod0|auto_generated|divider|divider|StageOut[60]~64_combout\ : std_logic;
SIGNAL \inst4|Div1|auto_generated|divider|divider|add_sub_3_result_int[0]~8_combout\ : std_logic;
SIGNAL \inst4|Div1|auto_generated|divider|divider|StageOut[15]~47_combout\ : std_logic;
SIGNAL \inst4|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ : std_logic;
SIGNAL \inst4|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ : std_logic;
SIGNAL \inst4|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ : std_logic;
SIGNAL \inst4|Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ : std_logic;
SIGNAL \inst4|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ : std_logic;
SIGNAL \inst4|Div1|auto_generated|divider|divider|StageOut[21]~66_combout\ : std_logic;
SIGNAL \inst4|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ : std_logic;
SIGNAL \inst4|Div1|auto_generated|divider|divider|StageOut[23]~48_combout\ : std_logic;
SIGNAL \inst4|Div1|auto_generated|divider|divider|StageOut[23]~64_combout\ : std_logic;
SIGNAL \inst4|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ : std_logic;
SIGNAL \inst4|Div1|auto_generated|divider|divider|StageOut[22]~49_combout\ : std_logic;
SIGNAL \inst4|Div1|auto_generated|divider|divider|StageOut[22]~65_combout\ : std_logic;
SIGNAL \inst4|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ : std_logic;
SIGNAL \inst4|Div1|auto_generated|divider|divider|StageOut[21]~50_combout\ : std_logic;
SIGNAL \inst4|Mod0|auto_generated|divider|divider|StageOut[59]~74_combout\ : std_logic;
SIGNAL \inst4|Mod0|auto_generated|divider|divider|StageOut[59]~65_combout\ : std_logic;
SIGNAL \inst4|Div1|auto_generated|divider|divider|add_sub_4_result_int[0]~10_combout\ : std_logic;
SIGNAL \inst4|Div1|auto_generated|divider|divider|StageOut[20]~51_combout\ : std_logic;
SIGNAL \inst4|Div1|auto_generated|divider|divider|StageOut[20]~67_combout\ : std_logic;
SIGNAL \inst4|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ : std_logic;
SIGNAL \inst4|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ : std_logic;
SIGNAL \inst4|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ : std_logic;
SIGNAL \inst4|Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\ : std_logic;
SIGNAL \inst4|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ : std_logic;
SIGNAL \inst4|Div1|auto_generated|divider|divider|StageOut[27]~69_combout\ : std_logic;
SIGNAL \inst4|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ : std_logic;
SIGNAL \inst4|Div1|auto_generated|divider|divider|StageOut[27]~53_combout\ : std_logic;
SIGNAL \inst4|Div1|auto_generated|divider|divider|StageOut[26]~70_combout\ : std_logic;
SIGNAL \inst4|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ : std_logic;
SIGNAL \inst4|Div1|auto_generated|divider|divider|StageOut[26]~54_combout\ : std_logic;
SIGNAL \inst4|Div1|auto_generated|divider|divider|StageOut[25]~74_combout\ : std_logic;
SIGNAL \inst4|Mod0|auto_generated|divider|divider|StageOut[58]~67_combout\ : std_logic;
SIGNAL \inst4|Mod0|auto_generated|divider|divider|StageOut[58]~66_combout\ : std_logic;
SIGNAL \inst4|Div1|auto_generated|divider|divider|add_sub_5_result_int[0]~10_combout\ : std_logic;
SIGNAL \inst4|Div1|auto_generated|divider|divider|StageOut[25]~55_combout\ : std_logic;
SIGNAL \inst4|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ : std_logic;
SIGNAL \inst4|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ : std_logic;
SIGNAL \inst4|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ : std_logic;
SIGNAL \inst4|Div1|auto_generated|divider|divider|StageOut[28]~68_combout\ : std_logic;
SIGNAL \inst4|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ : std_logic;
SIGNAL \inst4|Div1|auto_generated|divider|divider|StageOut[28]~52_combout\ : std_logic;
SIGNAL \inst4|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ : std_logic;
SIGNAL \inst4|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\ : std_logic;
SIGNAL \inst4|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ : std_logic;
SIGNAL \inst4|Div1|auto_generated|divider|divider|StageOut[33]~56_combout\ : std_logic;
SIGNAL \inst4|Div1|auto_generated|divider|divider|StageOut[33]~71_combout\ : std_logic;
SIGNAL \inst4|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ : std_logic;
SIGNAL \inst4|Div1|auto_generated|divider|divider|StageOut[32]~57_combout\ : std_logic;
SIGNAL \inst4|Div1|auto_generated|divider|divider|StageOut[32]~72_combout\ : std_logic;
SIGNAL \inst4|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ : std_logic;
SIGNAL \inst4|Div1|auto_generated|divider|divider|StageOut[31]~58_combout\ : std_logic;
SIGNAL \inst4|Div1|auto_generated|divider|divider|StageOut[31]~73_combout\ : std_logic;
SIGNAL \inst4|Mod0|auto_generated|divider|divider|StageOut[57]~69_combout\ : std_logic;
SIGNAL \inst4|Mod0|auto_generated|divider|divider|StageOut[57]~68_combout\ : std_logic;
SIGNAL \inst4|Div1|auto_generated|divider|divider|add_sub_6_result_int[0]~10_combout\ : std_logic;
SIGNAL \inst4|Div1|auto_generated|divider|divider|StageOut[30]~59_combout\ : std_logic;
SIGNAL \inst4|Div1|auto_generated|divider|divider|StageOut[30]~75_combout\ : std_logic;
SIGNAL \inst4|Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~1_cout\ : std_logic;
SIGNAL \inst4|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~3_cout\ : std_logic;
SIGNAL \inst4|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~5_cout\ : std_logic;
SIGNAL \inst4|Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\ : std_logic;
SIGNAL \inst4|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ : std_logic;
SIGNAL \inst6|decOut_1[3]~12_combout\ : std_logic;
SIGNAL \inst6|decOut_1[6]~13_combout\ : std_logic;
SIGNAL \inst6|decOut_1[2]~16_combout\ : std_logic;
SIGNAL \inst6|decOut_1~17_combout\ : std_logic;
SIGNAL \inst6|decOut_1[5]~14_combout\ : std_logic;
SIGNAL \inst6|decOut_1[5]~15_combout\ : std_logic;
SIGNAL \inst6|decOut_1[5]~18_combout\ : std_logic;
SIGNAL \inst6|decOut_1[5]~21_combout\ : std_logic;
SIGNAL \inst6|decOut_1[5]~20_combout\ : std_logic;
SIGNAL \inst6|decOut_1[5]~19_combout\ : std_logic;
SIGNAL \inst6|decOut_1[5]~22_combout\ : std_logic;
SIGNAL \inst6|decOut_1[4]~23_combout\ : std_logic;
SIGNAL \inst6|decOut_1[3]~24_combout\ : std_logic;
SIGNAL \inst6|decOut_1[3]~53_combout\ : std_logic;
SIGNAL \inst6|decOut_1[3]~54_combout\ : std_logic;
SIGNAL \inst6|decOut_1[3]~25_combout\ : std_logic;
SIGNAL \inst6|decOut_1[3]~26_combout\ : std_logic;
SIGNAL \inst6|decOut_1[3]~27_combout\ : std_logic;
SIGNAL \inst6|decOut_1[3]~28_combout\ : std_logic;
SIGNAL \inst6|decOut_1[3]~29_combout\ : std_logic;
SIGNAL \inst6|decOut_1[3]~30_combout\ : std_logic;
SIGNAL \inst6|decOut_1[3]~31_combout\ : std_logic;
SIGNAL \inst6|decOut_1[3]~32_combout\ : std_logic;
SIGNAL \inst6|decOut_1[2]~36_combout\ : std_logic;
SIGNAL \inst6|decOut_1~33_combout\ : std_logic;
SIGNAL \inst6|decOut_1[2]~34_combout\ : std_logic;
SIGNAL \inst6|decOut_1[2]~35_combout\ : std_logic;
SIGNAL \inst6|decOut_1[2]~37_combout\ : std_logic;
SIGNAL \inst6|decOut_1[1]~41_combout\ : std_logic;
SIGNAL \inst6|decOut_1[1]~42_combout\ : std_logic;
SIGNAL \inst6|decOut_1[1]~43_combout\ : std_logic;
SIGNAL \inst6|decOut_1[1]~38_combout\ : std_logic;
SIGNAL \inst6|decOut_1[1]~39_combout\ : std_logic;
SIGNAL \inst6|decOut_1[1]~40_combout\ : std_logic;
SIGNAL \inst6|decOut_1[1]~44_combout\ : std_logic;
SIGNAL \inst6|decOut_1[0]~47_combout\ : std_logic;
SIGNAL \inst6|decOut_1[0]~46_combout\ : std_logic;
SIGNAL \inst6|decOut_1[0]~48_combout\ : std_logic;
SIGNAL \inst6|decOut_1[0]~45_combout\ : std_logic;
SIGNAL \inst6|decOut_1[0]~49_combout\ : std_logic;
SIGNAL \inst6|decOut_1[0]~50_combout\ : std_logic;
SIGNAL \inst6|decOut_1[0]~51_combout\ : std_logic;
SIGNAL \inst6|decOut_1[0]~52_combout\ : std_logic;
SIGNAL \inst|food_in~combout\ : std_logic;
SIGNAL \inst|WideOr11~combout\ : std_logic;
SIGNAL \inst|WideOr12~combout\ : std_logic;
SIGNAL \inst|WideOr13~0_combout\ : std_logic;
SIGNAL \inst3|s_cnt\ : std_logic_vector(25 DOWNTO 0);
SIGNAL \inst2|s_initial_val\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst|ALT_INV_WideOr11~combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

HEX6 <= ww_HEX6;
ww_CLOCK_50 <= CLOCK_50;
ww_SW <= SW;
HEX7 <= ww_HEX7;
LEDG <= ww_LEDG;
LEDR <= ww_LEDR;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);
\inst|ALT_INV_WideOr11~combout\ <= NOT \inst|WideOr11~combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X74_Y0_N23
\HEX6[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|decOut_0[6]~0_combout\,
	devoe => ww_devoe,
	o => \HEX6[6]~output_o\);

-- Location: IOOBUF_X67_Y0_N23
\HEX6[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|decOut_0[5]~1_combout\,
	devoe => ww_devoe,
	o => \HEX6[5]~output_o\);

-- Location: IOOBUF_X67_Y0_N16
\HEX6[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|decOut_0[4]~2_combout\,
	devoe => ww_devoe,
	o => \HEX6[4]~output_o\);

-- Location: IOOBUF_X89_Y0_N16
\HEX6[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|decOut_0[3]~3_combout\,
	devoe => ww_devoe,
	o => \HEX6[3]~output_o\);

-- Location: IOOBUF_X65_Y0_N9
\HEX6[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|decOut_0[2]~4_combout\,
	devoe => ww_devoe,
	o => \HEX6[2]~output_o\);

-- Location: IOOBUF_X65_Y0_N2
\HEX6[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|decOut_0[1]~5_combout\,
	devoe => ww_devoe,
	o => \HEX6[1]~output_o\);

-- Location: IOOBUF_X89_Y0_N23
\HEX6[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|decOut_0[0]~6_combout\,
	devoe => ww_devoe,
	o => \HEX6[0]~output_o\);

-- Location: IOOBUF_X54_Y0_N23
\HEX7[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|decOut_1[6]~13_combout\,
	devoe => ww_devoe,
	o => \HEX7[6]~output_o\);

-- Location: IOOBUF_X69_Y0_N9
\HEX7[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|decOut_1[5]~22_combout\,
	devoe => ww_devoe,
	o => \HEX7[5]~output_o\);

-- Location: IOOBUF_X67_Y0_N2
\HEX7[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|decOut_1[4]~23_combout\,
	devoe => ww_devoe,
	o => \HEX7[4]~output_o\);

-- Location: IOOBUF_X62_Y0_N16
\HEX7[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|decOut_1[3]~32_combout\,
	devoe => ww_devoe,
	o => \HEX7[3]~output_o\);

-- Location: IOOBUF_X62_Y0_N23
\HEX7[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|decOut_1[2]~37_combout\,
	devoe => ww_devoe,
	o => \HEX7[2]~output_o\);

-- Location: IOOBUF_X67_Y0_N9
\HEX7[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|decOut_1[1]~44_combout\,
	devoe => ww_devoe,
	o => \HEX7[1]~output_o\);

-- Location: IOOBUF_X74_Y0_N16
\HEX7[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|decOut_1[0]~52_combout\,
	devoe => ww_devoe,
	o => \HEX7[0]~output_o\);

-- Location: IOOBUF_X107_Y73_N9
\LEDG[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|food_in~combout\,
	devoe => ww_devoe,
	o => \LEDG[0]~output_o\);

-- Location: IOOBUF_X87_Y73_N9
\LEDR[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALT_INV_WideOr11~combout\,
	devoe => ww_devoe,
	o => \LEDR[5]~output_o\);

-- Location: IOOBUF_X87_Y73_N16
\LEDR[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|WideOr12~combout\,
	devoe => ww_devoe,
	o => \LEDR[4]~output_o\);

-- Location: IOOBUF_X107_Y73_N16
\LEDR[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|WideOr13~0_combout\,
	devoe => ww_devoe,
	o => \LEDR[3]~output_o\);

-- Location: IOOBUF_X94_Y73_N9
\LEDR[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALT_INV_WideOr11~combout\,
	devoe => ww_devoe,
	o => \LEDR[2]~output_o\);

-- Location: IOOBUF_X94_Y73_N2
\LEDR[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|WideOr12~combout\,
	devoe => ww_devoe,
	o => \LEDR[1]~output_o\);

-- Location: IOOBUF_X69_Y73_N16
\LEDR[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|WideOr13~0_combout\,
	devoe => ww_devoe,
	o => \LEDR[0]~output_o\);

-- Location: IOIBUF_X0_Y36_N15
\CLOCK_50~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: CLKCTRL_G4
\CLOCK_50~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK_50~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLOCK_50~inputclkctrl_outclk\);

-- Location: LCCOMB_X89_Y50_N6
\inst3|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~0_combout\ = \inst3|s_cnt\(0) $ (VCC)
-- \inst3|Add0~1\ = CARRY(\inst3|s_cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_cnt\(0),
	datad => VCC,
	combout => \inst3|Add0~0_combout\,
	cout => \inst3|Add0~1\);

-- Location: FF_X89_Y50_N7
\inst3|s_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_cnt\(0));

-- Location: LCCOMB_X89_Y50_N8
\inst3|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~2_combout\ = (\inst3|s_cnt\(1) & (!\inst3|Add0~1\)) # (!\inst3|s_cnt\(1) & ((\inst3|Add0~1\) # (GND)))
-- \inst3|Add0~3\ = CARRY((!\inst3|Add0~1\) # (!\inst3|s_cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s_cnt\(1),
	datad => VCC,
	cin => \inst3|Add0~1\,
	combout => \inst3|Add0~2_combout\,
	cout => \inst3|Add0~3\);

-- Location: FF_X89_Y50_N9
\inst3|s_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_cnt\(1));

-- Location: LCCOMB_X89_Y50_N10
\inst3|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~4_combout\ = (\inst3|s_cnt\(2) & (\inst3|Add0~3\ $ (GND))) # (!\inst3|s_cnt\(2) & (!\inst3|Add0~3\ & VCC))
-- \inst3|Add0~5\ = CARRY((\inst3|s_cnt\(2) & !\inst3|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_cnt\(2),
	datad => VCC,
	cin => \inst3|Add0~3\,
	combout => \inst3|Add0~4_combout\,
	cout => \inst3|Add0~5\);

-- Location: FF_X89_Y50_N11
\inst3|s_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_cnt\(2));

-- Location: LCCOMB_X89_Y50_N12
\inst3|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~6_combout\ = (\inst3|s_cnt\(3) & (!\inst3|Add0~5\)) # (!\inst3|s_cnt\(3) & ((\inst3|Add0~5\) # (GND)))
-- \inst3|Add0~7\ = CARRY((!\inst3|Add0~5\) # (!\inst3|s_cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_cnt\(3),
	datad => VCC,
	cin => \inst3|Add0~5\,
	combout => \inst3|Add0~6_combout\,
	cout => \inst3|Add0~7\);

-- Location: FF_X89_Y50_N13
\inst3|s_cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_cnt\(3));

-- Location: LCCOMB_X89_Y50_N14
\inst3|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~8_combout\ = (\inst3|s_cnt\(4) & (\inst3|Add0~7\ $ (GND))) # (!\inst3|s_cnt\(4) & (!\inst3|Add0~7\ & VCC))
-- \inst3|Add0~9\ = CARRY((\inst3|s_cnt\(4) & !\inst3|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s_cnt\(4),
	datad => VCC,
	cin => \inst3|Add0~7\,
	combout => \inst3|Add0~8_combout\,
	cout => \inst3|Add0~9\);

-- Location: FF_X89_Y50_N15
\inst3|s_cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_cnt\(4));

-- Location: LCCOMB_X89_Y50_N16
\inst3|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~10_combout\ = (\inst3|s_cnt\(5) & (!\inst3|Add0~9\)) # (!\inst3|s_cnt\(5) & ((\inst3|Add0~9\) # (GND)))
-- \inst3|Add0~11\ = CARRY((!\inst3|Add0~9\) # (!\inst3|s_cnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s_cnt\(5),
	datad => VCC,
	cin => \inst3|Add0~9\,
	combout => \inst3|Add0~10_combout\,
	cout => \inst3|Add0~11\);

-- Location: FF_X89_Y50_N17
\inst3|s_cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_cnt\(5));

-- Location: LCCOMB_X89_Y50_N18
\inst3|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~12_combout\ = (\inst3|s_cnt\(6) & (\inst3|Add0~11\ $ (GND))) # (!\inst3|s_cnt\(6) & (!\inst3|Add0~11\ & VCC))
-- \inst3|Add0~13\ = CARRY((\inst3|s_cnt\(6) & !\inst3|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s_cnt\(6),
	datad => VCC,
	cin => \inst3|Add0~11\,
	combout => \inst3|Add0~12_combout\,
	cout => \inst3|Add0~13\);

-- Location: FF_X89_Y50_N19
\inst3|s_cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_cnt\(6));

-- Location: LCCOMB_X89_Y50_N20
\inst3|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~14_combout\ = (\inst3|s_cnt\(7) & (!\inst3|Add0~13\)) # (!\inst3|s_cnt\(7) & ((\inst3|Add0~13\) # (GND)))
-- \inst3|Add0~15\ = CARRY((!\inst3|Add0~13\) # (!\inst3|s_cnt\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s_cnt\(7),
	datad => VCC,
	cin => \inst3|Add0~13\,
	combout => \inst3|Add0~14_combout\,
	cout => \inst3|Add0~15\);

-- Location: LCCOMB_X89_Y50_N2
\inst3|s_cnt~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_cnt~5_combout\ = (\inst3|Add0~14_combout\ & !\inst3|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|Add0~14_combout\,
	datad => \inst3|Equal0~8_combout\,
	combout => \inst3|s_cnt~5_combout\);

-- Location: FF_X89_Y50_N3
\inst3|s_cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_cnt~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_cnt\(7));

-- Location: LCCOMB_X89_Y50_N22
\inst3|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~16_combout\ = (\inst3|s_cnt\(8) & (\inst3|Add0~15\ $ (GND))) # (!\inst3|s_cnt\(8) & (!\inst3|Add0~15\ & VCC))
-- \inst3|Add0~17\ = CARRY((\inst3|s_cnt\(8) & !\inst3|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_cnt\(8),
	datad => VCC,
	cin => \inst3|Add0~15\,
	combout => \inst3|Add0~16_combout\,
	cout => \inst3|Add0~17\);

-- Location: FF_X89_Y50_N23
\inst3|s_cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_cnt\(8));

-- Location: LCCOMB_X89_Y50_N24
\inst3|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~18_combout\ = (\inst3|s_cnt\(9) & (!\inst3|Add0~17\)) # (!\inst3|s_cnt\(9) & ((\inst3|Add0~17\) # (GND)))
-- \inst3|Add0~19\ = CARRY((!\inst3|Add0~17\) # (!\inst3|s_cnt\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s_cnt\(9),
	datad => VCC,
	cin => \inst3|Add0~17\,
	combout => \inst3|Add0~18_combout\,
	cout => \inst3|Add0~19\);

-- Location: FF_X89_Y50_N25
\inst3|s_cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_cnt\(9));

-- Location: LCCOMB_X89_Y50_N26
\inst3|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~20_combout\ = (\inst3|s_cnt\(10) & (\inst3|Add0~19\ $ (GND))) # (!\inst3|s_cnt\(10) & (!\inst3|Add0~19\ & VCC))
-- \inst3|Add0~21\ = CARRY((\inst3|s_cnt\(10) & !\inst3|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_cnt\(10),
	datad => VCC,
	cin => \inst3|Add0~19\,
	combout => \inst3|Add0~20_combout\,
	cout => \inst3|Add0~21\);

-- Location: FF_X89_Y50_N27
\inst3|s_cnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_cnt\(10));

-- Location: LCCOMB_X89_Y50_N28
\inst3|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~22_combout\ = (\inst3|s_cnt\(11) & (!\inst3|Add0~21\)) # (!\inst3|s_cnt\(11) & ((\inst3|Add0~21\) # (GND)))
-- \inst3|Add0~23\ = CARRY((!\inst3|Add0~21\) # (!\inst3|s_cnt\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s_cnt\(11),
	datad => VCC,
	cin => \inst3|Add0~21\,
	combout => \inst3|Add0~22_combout\,
	cout => \inst3|Add0~23\);

-- Location: FF_X89_Y50_N29
\inst3|s_cnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|Add0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_cnt\(11));

-- Location: LCCOMB_X89_Y50_N30
\inst3|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~24_combout\ = (\inst3|s_cnt\(12) & (\inst3|Add0~23\ $ (GND))) # (!\inst3|s_cnt\(12) & (!\inst3|Add0~23\ & VCC))
-- \inst3|Add0~25\ = CARRY((\inst3|s_cnt\(12) & !\inst3|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s_cnt\(12),
	datad => VCC,
	cin => \inst3|Add0~23\,
	combout => \inst3|Add0~24_combout\,
	cout => \inst3|Add0~25\);

-- Location: LCCOMB_X89_Y50_N0
\inst3|s_cnt~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_cnt~4_combout\ = (\inst3|Add0~24_combout\ & !\inst3|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|Add0~24_combout\,
	datad => \inst3|Equal0~8_combout\,
	combout => \inst3|s_cnt~4_combout\);

-- Location: FF_X89_Y50_N1
\inst3|s_cnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_cnt~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_cnt\(12));

-- Location: LCCOMB_X89_Y49_N0
\inst3|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~26_combout\ = (\inst3|s_cnt\(13) & (!\inst3|Add0~25\)) # (!\inst3|s_cnt\(13) & ((\inst3|Add0~25\) # (GND)))
-- \inst3|Add0~27\ = CARRY((!\inst3|Add0~25\) # (!\inst3|s_cnt\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_cnt\(13),
	datad => VCC,
	cin => \inst3|Add0~25\,
	combout => \inst3|Add0~26_combout\,
	cout => \inst3|Add0~27\);

-- Location: LCCOMB_X88_Y49_N16
\inst3|s_cnt~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_cnt~3_combout\ = (\inst3|Add0~26_combout\ & !\inst3|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|Add0~26_combout\,
	datad => \inst3|Equal0~8_combout\,
	combout => \inst3|s_cnt~3_combout\);

-- Location: FF_X88_Y49_N17
\inst3|s_cnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_cnt~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_cnt\(13));

-- Location: LCCOMB_X89_Y49_N2
\inst3|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~28_combout\ = (\inst3|s_cnt\(14) & (\inst3|Add0~27\ $ (GND))) # (!\inst3|s_cnt\(14) & (!\inst3|Add0~27\ & VCC))
-- \inst3|Add0~29\ = CARRY((\inst3|s_cnt\(14) & !\inst3|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s_cnt\(14),
	datad => VCC,
	cin => \inst3|Add0~27\,
	combout => \inst3|Add0~28_combout\,
	cout => \inst3|Add0~29\);

-- Location: LCCOMB_X88_Y49_N22
\inst3|s_cnt~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_cnt~2_combout\ = (!\inst3|Equal0~8_combout\ & \inst3|Add0~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|Equal0~8_combout\,
	datad => \inst3|Add0~28_combout\,
	combout => \inst3|s_cnt~2_combout\);

-- Location: FF_X88_Y49_N23
\inst3|s_cnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_cnt~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_cnt\(14));

-- Location: LCCOMB_X89_Y49_N4
\inst3|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~30_combout\ = (\inst3|s_cnt\(15) & (!\inst3|Add0~29\)) # (!\inst3|s_cnt\(15) & ((\inst3|Add0~29\) # (GND)))
-- \inst3|Add0~31\ = CARRY((!\inst3|Add0~29\) # (!\inst3|s_cnt\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s_cnt\(15),
	datad => VCC,
	cin => \inst3|Add0~29\,
	combout => \inst3|Add0~30_combout\,
	cout => \inst3|Add0~31\);

-- Location: LCCOMB_X88_Y49_N6
\inst3|s_cnt~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_cnt~1_combout\ = (!\inst3|Equal0~8_combout\ & \inst3|Add0~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|Equal0~8_combout\,
	datad => \inst3|Add0~30_combout\,
	combout => \inst3|s_cnt~1_combout\);

-- Location: FF_X88_Y49_N7
\inst3|s_cnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_cnt~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_cnt\(15));

-- Location: LCCOMB_X89_Y49_N6
\inst3|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~32_combout\ = (\inst3|s_cnt\(16) & (\inst3|Add0~31\ $ (GND))) # (!\inst3|s_cnt\(16) & (!\inst3|Add0~31\ & VCC))
-- \inst3|Add0~33\ = CARRY((\inst3|s_cnt\(16) & !\inst3|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_cnt\(16),
	datad => VCC,
	cin => \inst3|Add0~31\,
	combout => \inst3|Add0~32_combout\,
	cout => \inst3|Add0~33\);

-- Location: FF_X89_Y49_N7
\inst3|s_cnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|Add0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_cnt\(16));

-- Location: LCCOMB_X89_Y49_N8
\inst3|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~34_combout\ = (\inst3|s_cnt\(17) & (!\inst3|Add0~33\)) # (!\inst3|s_cnt\(17) & ((\inst3|Add0~33\) # (GND)))
-- \inst3|Add0~35\ = CARRY((!\inst3|Add0~33\) # (!\inst3|s_cnt\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_cnt\(17),
	datad => VCC,
	cin => \inst3|Add0~33\,
	combout => \inst3|Add0~34_combout\,
	cout => \inst3|Add0~35\);

-- Location: LCCOMB_X89_Y49_N26
\inst3|s_cnt~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_cnt~0_combout\ = (\inst3|Add0~34_combout\ & !\inst3|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|Add0~34_combout\,
	datad => \inst3|Equal0~8_combout\,
	combout => \inst3|s_cnt~0_combout\);

-- Location: FF_X89_Y49_N27
\inst3|s_cnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_cnt~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_cnt\(17));

-- Location: LCCOMB_X89_Y49_N10
\inst3|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~36_combout\ = (\inst3|s_cnt\(18) & (\inst3|Add0~35\ $ (GND))) # (!\inst3|s_cnt\(18) & (!\inst3|Add0~35\ & VCC))
-- \inst3|Add0~37\ = CARRY((\inst3|s_cnt\(18) & !\inst3|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_cnt\(18),
	datad => VCC,
	cin => \inst3|Add0~35\,
	combout => \inst3|Add0~36_combout\,
	cout => \inst3|Add0~37\);

-- Location: FF_X89_Y49_N11
\inst3|s_cnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|Add0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_cnt\(18));

-- Location: LCCOMB_X89_Y49_N12
\inst3|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~38_combout\ = (\inst3|s_cnt\(19) & (!\inst3|Add0~37\)) # (!\inst3|s_cnt\(19) & ((\inst3|Add0~37\) # (GND)))
-- \inst3|Add0~39\ = CARRY((!\inst3|Add0~37\) # (!\inst3|s_cnt\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s_cnt\(19),
	datad => VCC,
	cin => \inst3|Add0~37\,
	combout => \inst3|Add0~38_combout\,
	cout => \inst3|Add0~39\);

-- Location: LCCOMB_X88_Y49_N30
\inst3|s_cnt~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_cnt~6_combout\ = (\inst3|Add0~38_combout\ & !\inst3|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|Add0~38_combout\,
	datad => \inst3|Equal0~8_combout\,
	combout => \inst3|s_cnt~6_combout\);

-- Location: FF_X88_Y49_N31
\inst3|s_cnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_cnt~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_cnt\(19));

-- Location: LCCOMB_X89_Y49_N14
\inst3|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~40_combout\ = (\inst3|s_cnt\(20) & (\inst3|Add0~39\ $ (GND))) # (!\inst3|s_cnt\(20) & (!\inst3|Add0~39\ & VCC))
-- \inst3|Add0~41\ = CARRY((\inst3|s_cnt\(20) & !\inst3|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s_cnt\(20),
	datad => VCC,
	cin => \inst3|Add0~39\,
	combout => \inst3|Add0~40_combout\,
	cout => \inst3|Add0~41\);

-- Location: LCCOMB_X89_Y49_N28
\inst3|s_cnt~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_cnt~7_combout\ = (\inst3|Add0~40_combout\ & !\inst3|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|Add0~40_combout\,
	datad => \inst3|Equal0~8_combout\,
	combout => \inst3|s_cnt~7_combout\);

-- Location: FF_X89_Y49_N29
\inst3|s_cnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_cnt~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_cnt\(20));

-- Location: LCCOMB_X89_Y49_N16
\inst3|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~42_combout\ = (\inst3|s_cnt\(21) & (!\inst3|Add0~41\)) # (!\inst3|s_cnt\(21) & ((\inst3|Add0~41\) # (GND)))
-- \inst3|Add0~43\ = CARRY((!\inst3|Add0~41\) # (!\inst3|s_cnt\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_cnt\(21),
	datad => VCC,
	cin => \inst3|Add0~41\,
	combout => \inst3|Add0~42_combout\,
	cout => \inst3|Add0~43\);

-- Location: LCCOMB_X88_Y49_N26
\inst3|s_cnt~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_cnt~8_combout\ = (!\inst3|Equal0~8_combout\ & \inst3|Add0~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|Equal0~8_combout\,
	datad => \inst3|Add0~42_combout\,
	combout => \inst3|s_cnt~8_combout\);

-- Location: FF_X88_Y49_N27
\inst3|s_cnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_cnt~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_cnt\(21));

-- Location: LCCOMB_X89_Y49_N18
\inst3|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~44_combout\ = (\inst3|s_cnt\(22) & (\inst3|Add0~43\ $ (GND))) # (!\inst3|s_cnt\(22) & (!\inst3|Add0~43\ & VCC))
-- \inst3|Add0~45\ = CARRY((\inst3|s_cnt\(22) & !\inst3|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_cnt\(22),
	datad => VCC,
	cin => \inst3|Add0~43\,
	combout => \inst3|Add0~44_combout\,
	cout => \inst3|Add0~45\);

-- Location: LCCOMB_X89_Y49_N30
\inst3|s_cnt~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_cnt~9_combout\ = (!\inst3|Equal0~8_combout\ & \inst3|Add0~44_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|Equal0~8_combout\,
	datad => \inst3|Add0~44_combout\,
	combout => \inst3|s_cnt~9_combout\);

-- Location: FF_X89_Y49_N31
\inst3|s_cnt[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_cnt~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_cnt\(22));

-- Location: LCCOMB_X89_Y49_N20
\inst3|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~46_combout\ = (\inst3|s_cnt\(23) & (!\inst3|Add0~45\)) # (!\inst3|s_cnt\(23) & ((\inst3|Add0~45\) # (GND)))
-- \inst3|Add0~47\ = CARRY((!\inst3|Add0~45\) # (!\inst3|s_cnt\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s_cnt\(23),
	datad => VCC,
	cin => \inst3|Add0~45\,
	combout => \inst3|Add0~46_combout\,
	cout => \inst3|Add0~47\);

-- Location: LCCOMB_X88_Y49_N18
\inst3|s_cnt~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_cnt~10_combout\ = (\inst3|Add0~46_combout\ & !\inst3|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|Add0~46_combout\,
	datad => \inst3|Equal0~8_combout\,
	combout => \inst3|s_cnt~10_combout\);

-- Location: FF_X88_Y49_N19
\inst3|s_cnt[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_cnt~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_cnt\(23));

-- Location: LCCOMB_X89_Y49_N22
\inst3|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~48_combout\ = (\inst3|s_cnt\(24) & (\inst3|Add0~47\ $ (GND))) # (!\inst3|s_cnt\(24) & (!\inst3|Add0~47\ & VCC))
-- \inst3|Add0~49\ = CARRY((\inst3|s_cnt\(24) & !\inst3|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_cnt\(24),
	datad => VCC,
	cin => \inst3|Add0~47\,
	combout => \inst3|Add0~48_combout\,
	cout => \inst3|Add0~49\);

-- Location: FF_X89_Y49_N23
\inst3|s_cnt[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|Add0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_cnt\(24));

-- Location: LCCOMB_X89_Y49_N24
\inst3|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~50_combout\ = \inst3|Add0~49\ $ (\inst3|s_cnt\(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst3|s_cnt\(25),
	cin => \inst3|Add0~49\,
	combout => \inst3|Add0~50_combout\);

-- Location: LCCOMB_X88_Y49_N14
\inst3|s_cnt~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_cnt~11_combout\ = (!\inst3|Equal0~8_combout\ & \inst3|Add0~50_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|Equal0~8_combout\,
	datad => \inst3|Add0~50_combout\,
	combout => \inst3|s_cnt~11_combout\);

-- Location: FF_X88_Y49_N15
\inst3|s_cnt[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_cnt~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_cnt\(25));

-- Location: LCCOMB_X88_Y49_N10
\inst3|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Equal0~7_combout\ = (\inst3|s_cnt\(25) & !\inst3|s_cnt\(24))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|s_cnt\(25),
	datad => \inst3|s_cnt\(24),
	combout => \inst3|Equal0~7_combout\);

-- Location: LCCOMB_X88_Y49_N20
\inst3|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Equal0~5_combout\ = (\inst3|s_cnt\(19) & (!\inst3|s_cnt\(18) & (\inst3|s_cnt\(0) & \inst3|s_cnt\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_cnt\(19),
	datab => \inst3|s_cnt\(18),
	datac => \inst3|s_cnt\(0),
	datad => \inst3|s_cnt\(1),
	combout => \inst3|Equal0~5_combout\);

-- Location: LCCOMB_X88_Y49_N8
\inst3|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Equal0~6_combout\ = (\inst3|s_cnt\(21) & (\inst3|s_cnt\(22) & (\inst3|s_cnt\(23) & \inst3|s_cnt\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_cnt\(21),
	datab => \inst3|s_cnt\(22),
	datac => \inst3|s_cnt\(23),
	datad => \inst3|s_cnt\(20),
	combout => \inst3|Equal0~6_combout\);

-- Location: LCCOMB_X88_Y49_N12
\inst3|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Equal0~1_combout\ = (!\inst3|s_cnt\(11) & (\inst3|s_cnt\(13) & (!\inst3|s_cnt\(10) & \inst3|s_cnt\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_cnt\(11),
	datab => \inst3|s_cnt\(13),
	datac => \inst3|s_cnt\(10),
	datad => \inst3|s_cnt\(12),
	combout => \inst3|Equal0~1_combout\);

-- Location: LCCOMB_X88_Y49_N2
\inst3|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Equal0~0_combout\ = (\inst3|s_cnt\(15) & (\inst3|s_cnt\(14) & (\inst3|s_cnt\(17) & !\inst3|s_cnt\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_cnt\(15),
	datab => \inst3|s_cnt\(14),
	datac => \inst3|s_cnt\(17),
	datad => \inst3|s_cnt\(16),
	combout => \inst3|Equal0~0_combout\);

-- Location: LCCOMB_X89_Y50_N4
\inst3|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Equal0~2_combout\ = (!\inst3|s_cnt\(8) & (!\inst3|s_cnt\(7) & (\inst3|s_cnt\(6) & !\inst3|s_cnt\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_cnt\(8),
	datab => \inst3|s_cnt\(7),
	datac => \inst3|s_cnt\(6),
	datad => \inst3|s_cnt\(9),
	combout => \inst3|Equal0~2_combout\);

-- Location: LCCOMB_X88_Y50_N4
\inst3|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Equal0~3_combout\ = (\inst3|s_cnt\(2) & (\inst3|s_cnt\(3) & (\inst3|s_cnt\(4) & \inst3|s_cnt\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_cnt\(2),
	datab => \inst3|s_cnt\(3),
	datac => \inst3|s_cnt\(4),
	datad => \inst3|s_cnt\(5),
	combout => \inst3|Equal0~3_combout\);

-- Location: LCCOMB_X88_Y49_N28
\inst3|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Equal0~4_combout\ = (\inst3|Equal0~1_combout\ & (\inst3|Equal0~0_combout\ & (\inst3|Equal0~2_combout\ & \inst3|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Equal0~1_combout\,
	datab => \inst3|Equal0~0_combout\,
	datac => \inst3|Equal0~2_combout\,
	datad => \inst3|Equal0~3_combout\,
	combout => \inst3|Equal0~4_combout\);

-- Location: LCCOMB_X88_Y49_N24
\inst3|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Equal0~8_combout\ = (\inst3|Equal0~7_combout\ & (\inst3|Equal0~5_combout\ & (\inst3|Equal0~6_combout\ & \inst3|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Equal0~7_combout\,
	datab => \inst3|Equal0~5_combout\,
	datac => \inst3|Equal0~6_combout\,
	datad => \inst3|Equal0~4_combout\,
	combout => \inst3|Equal0~8_combout\);

-- Location: LCCOMB_X88_Y49_N4
\inst3|pulse~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|pulse~feeder_combout\ = \inst3|Equal0~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|Equal0~8_combout\,
	combout => \inst3|pulse~feeder_combout\);

-- Location: FF_X88_Y49_N5
\inst3|pulse\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|pulse~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|pulse~q\);

-- Location: LCCOMB_X88_Y51_N4
\inst2|s_initial_val[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_initial_val[0]~8_combout\ = \inst2|s_initial_val\(0) $ (VCC)
-- \inst2|s_initial_val[0]~9\ = CARRY(\inst2|s_initial_val\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_initial_val\(0),
	datad => VCC,
	combout => \inst2|s_initial_val[0]~8_combout\,
	cout => \inst2|s_initial_val[0]~9\);

-- Location: IOIBUF_X115_Y13_N8
\SW[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

-- Location: LCCOMB_X88_Y51_N6
\inst2|s_initial_val[1]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_initial_val[1]~10_combout\ = (\inst2|s_initial_val\(1) & (\inst2|s_initial_val[0]~9\ & VCC)) # (!\inst2|s_initial_val\(1) & (!\inst2|s_initial_val[0]~9\))
-- \inst2|s_initial_val[1]~11\ = CARRY((!\inst2|s_initial_val\(1) & !\inst2|s_initial_val[0]~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_initial_val\(1),
	datad => VCC,
	cin => \inst2|s_initial_val[0]~9\,
	combout => \inst2|s_initial_val[1]~10_combout\,
	cout => \inst2|s_initial_val[1]~11\);

-- Location: LCCOMB_X88_Y51_N8
\inst2|s_initial_val[2]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_initial_val[2]~12_combout\ = (\inst2|s_initial_val\(2) & ((GND) # (!\inst2|s_initial_val[1]~11\))) # (!\inst2|s_initial_val\(2) & (\inst2|s_initial_val[1]~11\ $ (GND)))
-- \inst2|s_initial_val[2]~13\ = CARRY((\inst2|s_initial_val\(2)) # (!\inst2|s_initial_val[1]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|s_initial_val\(2),
	datad => VCC,
	cin => \inst2|s_initial_val[1]~11\,
	combout => \inst2|s_initial_val[2]~12_combout\,
	cout => \inst2|s_initial_val[2]~13\);

-- Location: IOIBUF_X115_Y11_N8
\SW[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(5),
	o => \SW[5]~input_o\);

-- Location: FF_X88_Y51_N9
\inst2|s_initial_val[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|pulse~q\,
	d => \inst2|s_initial_val[2]~12_combout\,
	asdata => \SW[5]~input_o\,
	sload => \inst2|process_0~0_combout\,
	ena => \inst2|s_initial_val[2]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_initial_val\(2));

-- Location: LCCOMB_X88_Y51_N10
\inst2|s_initial_val[3]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_initial_val[3]~17_combout\ = (\inst2|s_initial_val\(3) & (\inst2|s_initial_val[2]~13\ & VCC)) # (!\inst2|s_initial_val\(3) & (!\inst2|s_initial_val[2]~13\))
-- \inst2|s_initial_val[3]~18\ = CARRY((!\inst2|s_initial_val\(3) & !\inst2|s_initial_val[2]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_initial_val\(3),
	datad => VCC,
	cin => \inst2|s_initial_val[2]~13\,
	combout => \inst2|s_initial_val[3]~17_combout\,
	cout => \inst2|s_initial_val[3]~18\);

-- Location: IOIBUF_X115_Y10_N1
\SW[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(6),
	o => \SW[6]~input_o\);

-- Location: FF_X88_Y51_N11
\inst2|s_initial_val[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|pulse~q\,
	d => \inst2|s_initial_val[3]~17_combout\,
	asdata => \SW[6]~input_o\,
	sload => \inst2|process_0~0_combout\,
	ena => \inst2|s_initial_val[2]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_initial_val\(3));

-- Location: LCCOMB_X88_Y51_N12
\inst2|s_initial_val[4]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_initial_val[4]~19_combout\ = (\inst2|s_initial_val\(4) & ((GND) # (!\inst2|s_initial_val[3]~18\))) # (!\inst2|s_initial_val\(4) & (\inst2|s_initial_val[3]~18\ $ (GND)))
-- \inst2|s_initial_val[4]~20\ = CARRY((\inst2|s_initial_val\(4)) # (!\inst2|s_initial_val[3]~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_initial_val\(4),
	datad => VCC,
	cin => \inst2|s_initial_val[3]~18\,
	combout => \inst2|s_initial_val[4]~19_combout\,
	cout => \inst2|s_initial_val[4]~20\);

-- Location: IOIBUF_X115_Y15_N1
\SW[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(7),
	o => \SW[7]~input_o\);

-- Location: FF_X88_Y51_N13
\inst2|s_initial_val[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|pulse~q\,
	d => \inst2|s_initial_val[4]~19_combout\,
	asdata => \SW[7]~input_o\,
	sload => \inst2|process_0~0_combout\,
	ena => \inst2|s_initial_val[2]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_initial_val\(4));

-- Location: LCCOMB_X88_Y51_N14
\inst2|s_initial_val[5]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_initial_val[5]~21_combout\ = (\inst2|s_initial_val\(5) & (\inst2|s_initial_val[4]~20\ & VCC)) # (!\inst2|s_initial_val\(5) & (!\inst2|s_initial_val[4]~20\))
-- \inst2|s_initial_val[5]~22\ = CARRY((!\inst2|s_initial_val\(5) & !\inst2|s_initial_val[4]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|s_initial_val\(5),
	datad => VCC,
	cin => \inst2|s_initial_val[4]~20\,
	combout => \inst2|s_initial_val[5]~21_combout\,
	cout => \inst2|s_initial_val[5]~22\);

-- Location: IOIBUF_X115_Y4_N22
\SW[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(8),
	o => \SW[8]~input_o\);

-- Location: FF_X88_Y51_N15
\inst2|s_initial_val[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|pulse~q\,
	d => \inst2|s_initial_val[5]~21_combout\,
	asdata => \SW[8]~input_o\,
	sload => \inst2|process_0~0_combout\,
	ena => \inst2|s_initial_val[2]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_initial_val\(5));

-- Location: LCCOMB_X88_Y51_N16
\inst2|s_initial_val[6]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_initial_val[6]~23_combout\ = (\inst2|s_initial_val\(6) & ((GND) # (!\inst2|s_initial_val[5]~22\))) # (!\inst2|s_initial_val\(6) & (\inst2|s_initial_val[5]~22\ $ (GND)))
-- \inst2|s_initial_val[6]~24\ = CARRY((\inst2|s_initial_val\(6)) # (!\inst2|s_initial_val[5]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|s_initial_val\(6),
	datad => VCC,
	cin => \inst2|s_initial_val[5]~22\,
	combout => \inst2|s_initial_val[6]~23_combout\,
	cout => \inst2|s_initial_val[6]~24\);

-- Location: IOIBUF_X115_Y16_N8
\SW[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(9),
	o => \SW[9]~input_o\);

-- Location: FF_X88_Y51_N17
\inst2|s_initial_val[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|pulse~q\,
	d => \inst2|s_initial_val[6]~23_combout\,
	asdata => \SW[9]~input_o\,
	sload => \inst2|process_0~0_combout\,
	ena => \inst2|s_initial_val[2]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_initial_val\(6));

-- Location: LCCOMB_X88_Y51_N18
\inst2|s_initial_val[7]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_initial_val[7]~25_combout\ = \inst2|s_initial_val\(7) $ (!\inst2|s_initial_val[6]~24\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_initial_val\(7),
	cin => \inst2|s_initial_val[6]~24\,
	combout => \inst2|s_initial_val[7]~25_combout\);

-- Location: IOIBUF_X115_Y4_N15
\SW[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(10),
	o => \SW[10]~input_o\);

-- Location: FF_X88_Y51_N19
\inst2|s_initial_val[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|pulse~q\,
	d => \inst2|s_initial_val[7]~25_combout\,
	asdata => \SW[10]~input_o\,
	sload => \inst2|process_0~0_combout\,
	ena => \inst2|s_initial_val[2]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_initial_val\(7));

-- Location: LCCOMB_X88_Y51_N26
\inst2|s_initial_val[2]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_initial_val[2]~14_combout\ = (\inst2|s_initial_val\(4)) # ((\inst2|s_initial_val\(6)) # ((\inst2|s_initial_val\(5)) # (\inst2|s_initial_val\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_initial_val\(4),
	datab => \inst2|s_initial_val\(6),
	datac => \inst2|s_initial_val\(5),
	datad => \inst2|s_initial_val\(7),
	combout => \inst2|s_initial_val[2]~14_combout\);

-- Location: IOIBUF_X115_Y14_N1
\SW[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

-- Location: IOIBUF_X115_Y15_N8
\SW[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

-- Location: LCCOMB_X89_Y51_N12
\inst|Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector3~0_combout\ = (\SW[1]~input_o\ & !\SW[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \SW[2]~input_o\,
	combout => \inst|Selector3~0_combout\);

-- Location: LCCOMB_X88_Y51_N22
\inst2|s_initial_val[2]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_initial_val[2]~15_combout\ = (\inst2|s_initial_val\(3)) # ((\inst2|s_initial_val\(0)) # ((\inst2|s_initial_val\(2)) # (\inst2|s_initial_val\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_initial_val\(3),
	datab => \inst2|s_initial_val\(0),
	datac => \inst2|s_initial_val\(2),
	datad => \inst2|s_initial_val\(1),
	combout => \inst2|s_initial_val[2]~15_combout\);

-- Location: LCCOMB_X87_Y51_N14
\inst2|s_initial_val[2]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_initial_val[2]~27_combout\ = (!\inst2|s_initial_val[2]~14_combout\ & !\inst2|s_initial_val[2]~15_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|s_initial_val[2]~14_combout\,
	datad => \inst2|s_initial_val[2]~15_combout\,
	combout => \inst2|s_initial_val[2]~27_combout\);

-- Location: FF_X87_Y51_N15
\inst|prev_timer_done\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \inst2|s_initial_val[2]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|prev_timer_done~q\);

-- Location: LCCOMB_X88_Y51_N24
\inst|process_1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|process_1~0_combout\ = (!\inst2|s_initial_val[2]~14_combout\ & (!\inst2|s_initial_val[2]~15_combout\ & !\inst|prev_timer_done~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_initial_val[2]~14_combout\,
	datac => \inst2|s_initial_val[2]~15_combout\,
	datad => \inst|prev_timer_done~q\,
	combout => \inst|process_1~0_combout\);

-- Location: IOIBUF_X115_Y17_N1
\SW[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: LCCOMB_X89_Y51_N20
\inst|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector2~0_combout\ = (\SW[1]~input_o\ & (\inst|current_state.IDLE~q\ & \SW[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \inst|current_state.IDLE~q\,
	datad => \SW[0]~input_o\,
	combout => \inst|Selector2~0_combout\);

-- Location: LCCOMB_X89_Y51_N28
\inst|Selector2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector2~1_combout\ = (\inst|Selector2~0_combout\) # ((!\inst|process_1~0_combout\ & \inst|current_state.PREHEAT~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|process_1~0_combout\,
	datac => \inst|current_state.PREHEAT~q\,
	datad => \inst|Selector2~0_combout\,
	combout => \inst|Selector2~1_combout\);

-- Location: FF_X89_Y51_N29
\inst|current_state.PREHEAT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \inst|Selector2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|current_state.PREHEAT~q\);

-- Location: LCCOMB_X88_Y51_N30
\inst|Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector4~0_combout\ = (\SW[2]~input_o\ & (((\inst|process_1~0_combout\ & \inst|current_state.PREHEAT~q\)))) # (!\SW[2]~input_o\ & ((\inst|current_state.WAIT_O_PRE~q\) # ((\inst|process_1~0_combout\ & \inst|current_state.PREHEAT~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \inst|current_state.WAIT_O_PRE~q\,
	datac => \inst|process_1~0_combout\,
	datad => \inst|current_state.PREHEAT~q\,
	combout => \inst|Selector4~0_combout\);

-- Location: LCCOMB_X88_Y51_N0
\inst|current_state.WAIT_O_PRE~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|current_state.WAIT_O_PRE~feeder_combout\ = \inst|Selector4~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Selector4~0_combout\,
	combout => \inst|current_state.WAIT_O_PRE~feeder_combout\);

-- Location: FF_X88_Y51_N1
\inst|current_state.WAIT_O_PRE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|current_state.WAIT_O_PRE~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|current_state.WAIT_O_PRE~q\);

-- Location: LCCOMB_X87_Y51_N30
\inst|Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector5~0_combout\ = (\SW[2]~input_o\ & ((\inst|current_state.WAIT_O_PRE~q\) # ((\inst|current_state.WAIT_C_PRE~q\)))) # (!\SW[2]~input_o\ & (((\inst|current_state.WAIT_C_PRE~q\ & !\SW[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \inst|current_state.WAIT_O_PRE~q\,
	datac => \inst|current_state.WAIT_C_PRE~q\,
	datad => \SW[1]~input_o\,
	combout => \inst|Selector5~0_combout\);

-- Location: FF_X87_Y51_N31
\inst|current_state.WAIT_C_PRE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \inst|Selector5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|current_state.WAIT_C_PRE~q\);

-- Location: LCCOMB_X89_Y51_N16
\inst|Selector3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector3~1_combout\ = (\inst|Selector3~0_combout\ & ((\inst|current_state.WAIT_C_PRE~q\) # ((!\inst|process_1~0_combout\ & \inst|current_state.COOK~q\)))) # (!\inst|Selector3~0_combout\ & (!\inst|process_1~0_combout\ & 
-- (\inst|current_state.COOK~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Selector3~0_combout\,
	datab => \inst|process_1~0_combout\,
	datac => \inst|current_state.COOK~q\,
	datad => \inst|current_state.WAIT_C_PRE~q\,
	combout => \inst|Selector3~1_combout\);

-- Location: FF_X89_Y51_N17
\inst|current_state.COOK\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \inst|Selector3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|current_state.COOK~q\);

-- Location: LCCOMB_X89_Y51_N18
\inst|Selector6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector6~0_combout\ = (\inst|process_1~0_combout\ & ((\inst|current_state.COOK~q\) # ((!\SW[2]~input_o\ & \inst|current_state.WAIT_O_COOK~q\)))) # (!\inst|process_1~0_combout\ & (!\SW[2]~input_o\ & (\inst|current_state.WAIT_O_COOK~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|process_1~0_combout\,
	datab => \SW[2]~input_o\,
	datac => \inst|current_state.WAIT_O_COOK~q\,
	datad => \inst|current_state.COOK~q\,
	combout => \inst|Selector6~0_combout\);

-- Location: FF_X89_Y51_N13
\inst|current_state.WAIT_O_COOK\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \inst|Selector6~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|current_state.WAIT_O_COOK~q\);

-- Location: LCCOMB_X87_Y51_N28
\inst|Selector7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector7~0_combout\ = (\SW[2]~input_o\ & ((\inst|current_state.WAIT_O_COOK~q\) # ((\inst|current_state.WAIT_C_COOK~q\)))) # (!\SW[2]~input_o\ & (((\inst|current_state.WAIT_C_COOK~q\ & !\SW[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \inst|current_state.WAIT_O_COOK~q\,
	datac => \inst|current_state.WAIT_C_COOK~q\,
	datad => \SW[1]~input_o\,
	combout => \inst|Selector7~0_combout\);

-- Location: FF_X87_Y51_N29
\inst|current_state.WAIT_C_COOK\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \inst|Selector7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|current_state.WAIT_C_COOK~q\);

-- Location: LCCOMB_X89_Y51_N4
\inst|Selector8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector8~0_combout\ = (\inst|Selector3~0_combout\ & ((\inst|current_state.WAIT_C_COOK~q\) # ((!\inst|process_1~0_combout\ & \inst|current_state.COOLDOWN~q\)))) # (!\inst|Selector3~0_combout\ & (!\inst|process_1~0_combout\ & 
-- (\inst|current_state.COOLDOWN~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Selector3~0_combout\,
	datab => \inst|process_1~0_combout\,
	datac => \inst|current_state.COOLDOWN~q\,
	datad => \inst|current_state.WAIT_C_COOK~q\,
	combout => \inst|Selector8~0_combout\);

-- Location: FF_X89_Y51_N5
\inst|current_state.COOLDOWN\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \inst|Selector8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|current_state.COOLDOWN~q\);

-- Location: LCCOMB_X89_Y51_N30
\inst|Selector9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector9~0_combout\ = (\inst|current_state.COOLDOWN~q\ & ((\inst|process_1~0_combout\) # ((\SW[0]~input_o\ & \inst|current_state.FINISH~q\)))) # (!\inst|current_state.COOLDOWN~q\ & (((\SW[0]~input_o\ & \inst|current_state.FINISH~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|current_state.COOLDOWN~q\,
	datab => \inst|process_1~0_combout\,
	datac => \SW[0]~input_o\,
	datad => \inst|current_state.FINISH~q\,
	combout => \inst|Selector9~0_combout\);

-- Location: FF_X89_Y51_N21
\inst|current_state.FINISH\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \inst|Selector9~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|current_state.FINISH~q\);

-- Location: LCCOMB_X89_Y51_N10
\inst|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector0~0_combout\ = (\SW[0]~input_o\) # ((\inst|current_state.OFF~q\ & (!\inst|current_state.FINISH~q\ & !\inst|current_state.IDLE~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|current_state.OFF~q\,
	datab => \inst|current_state.FINISH~q\,
	datac => \SW[0]~input_o\,
	datad => \inst|current_state.IDLE~q\,
	combout => \inst|Selector0~0_combout\);

-- Location: LCCOMB_X89_Y51_N14
\inst|current_state.OFF~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|current_state.OFF~feeder_combout\ = \inst|Selector0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Selector0~0_combout\,
	combout => \inst|current_state.OFF~feeder_combout\);

-- Location: FF_X89_Y51_N15
\inst|current_state.OFF\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|current_state.OFF~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|current_state.OFF~q\);

-- Location: LCCOMB_X89_Y51_N24
\inst|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector1~0_combout\ = (\SW[0]~input_o\ & (((!\SW[1]~input_o\ & \inst|current_state.IDLE~q\)) # (!\inst|current_state.OFF~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \inst|current_state.OFF~q\,
	datac => \inst|current_state.IDLE~q\,
	datad => \SW[0]~input_o\,
	combout => \inst|Selector1~0_combout\);

-- Location: FF_X89_Y51_N25
\inst|current_state.IDLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \inst|Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|current_state.IDLE~q\);

-- Location: LCCOMB_X87_Y51_N22
\inst|Selector11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector11~0_combout\ = (\inst|current_state.IDLE~q\) # ((\inst|current_state.WAIT_C_PRE~q\) # (\inst|current_state.WAIT_C_COOK~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|current_state.IDLE~q\,
	datac => \inst|current_state.WAIT_C_PRE~q\,
	datad => \inst|current_state.WAIT_C_COOK~q\,
	combout => \inst|Selector11~0_combout\);

-- Location: LCCOMB_X89_Y51_N8
\inst|Selector10~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector10~2_combout\ = (\inst|current_state.PREHEAT~q\) # ((\inst|current_state.COOLDOWN~q\) # (\inst|current_state.COOK~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|current_state.PREHEAT~q\,
	datac => \inst|current_state.COOLDOWN~q\,
	datad => \inst|current_state.COOK~q\,
	combout => \inst|Selector10~2_combout\);

-- Location: LCCOMB_X87_Y51_N0
\inst|Selector10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector10~0_combout\ = (!\SW[2]~input_o\ & ((\inst|current_state.WAIT_C_COOK~q\) # (\inst|current_state.WAIT_C_PRE~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \inst|current_state.WAIT_C_COOK~q\,
	datac => \inst|current_state.WAIT_C_PRE~q\,
	combout => \inst|Selector10~0_combout\);

-- Location: LCCOMB_X88_Y51_N20
\inst|Selector10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector10~1_combout\ = (\SW[1]~input_o\ & ((\inst|Selector10~0_combout\) # ((\inst|current_state.IDLE~q\ & \SW[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \inst|current_state.IDLE~q\,
	datac => \inst|Selector10~0_combout\,
	datad => \SW[0]~input_o\,
	combout => \inst|Selector10~1_combout\);

-- Location: LCCOMB_X88_Y51_N28
\inst|Selector10~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector10~3_combout\ = (\inst|Selector10~1_combout\) # ((\inst|process_1~0_combout\ & \inst|Selector10~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|process_1~0_combout\,
	datac => \inst|Selector10~2_combout\,
	datad => \inst|Selector10~1_combout\,
	combout => \inst|Selector10~3_combout\);

-- Location: LCCOMB_X87_Y51_N8
\inst|s_starter_time\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_starter_time~combout\ = (\inst|Selector10~3_combout\ & ((\inst|Selector11~0_combout\))) # (!\inst|Selector10~3_combout\ & (\inst|s_starter_time~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|s_starter_time~combout\,
	datac => \inst|Selector11~0_combout\,
	datad => \inst|Selector10~3_combout\,
	combout => \inst|s_starter_time~combout\);

-- Location: LCCOMB_X87_Y51_N16
\inst2|s_initial_val[2]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|s_initial_val[2]~16_combout\ = (\inst2|counting~q\ & ((\inst2|s_initial_val[2]~14_combout\) # ((\inst2|s_initial_val[2]~15_combout\)))) # (!\inst2|counting~q\ & (((\inst|s_starter_time~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|counting~q\,
	datab => \inst2|s_initial_val[2]~14_combout\,
	datac => \inst|s_starter_time~combout\,
	datad => \inst2|s_initial_val[2]~15_combout\,
	combout => \inst2|s_initial_val[2]~16_combout\);

-- Location: LCCOMB_X87_Y51_N26
\inst2|counting~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|counting~feeder_combout\ = \inst2|s_initial_val[2]~16_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|s_initial_val[2]~16_combout\,
	combout => \inst2|counting~feeder_combout\);

-- Location: FF_X87_Y51_N27
\inst2|counting\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|pulse~q\,
	d => \inst2|counting~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|counting~q\);

-- Location: LCCOMB_X87_Y51_N6
\inst2|process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|process_0~0_combout\ = (!\inst2|counting~q\ & \inst|s_starter_time~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|counting~q\,
	datad => \inst|s_starter_time~combout\,
	combout => \inst2|process_0~0_combout\);

-- Location: FF_X88_Y51_N5
\inst2|s_initial_val[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|pulse~q\,
	d => \inst2|s_initial_val[0]~8_combout\,
	asdata => \SW[3]~input_o\,
	sload => \inst2|process_0~0_combout\,
	ena => \inst2|s_initial_val[2]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_initial_val\(0));

-- Location: IOIBUF_X115_Y18_N8
\SW[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(4),
	o => \SW[4]~input_o\);

-- Location: FF_X88_Y51_N7
\inst2|s_initial_val[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|pulse~q\,
	d => \inst2|s_initial_val[1]~10_combout\,
	asdata => \SW[4]~input_o\,
	sload => \inst2|process_0~0_combout\,
	ena => \inst2|s_initial_val[2]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|s_initial_val\(1));

-- Location: LCCOMB_X86_Y48_N18
\inst4|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ = \inst2|s_initial_val\(5) $ (VCC)
-- \inst4|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ = CARRY(\inst2|s_initial_val\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|s_initial_val\(5),
	datad => VCC,
	combout => \inst4|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	cout => \inst4|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\);

-- Location: LCCOMB_X86_Y48_N20
\inst4|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ = (\inst2|s_initial_val\(6) & (\inst4|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ & VCC)) # (!\inst2|s_initial_val\(6) & 
-- (!\inst4|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))
-- \inst4|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ = CARRY((!\inst2|s_initial_val\(6) & !\inst4|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_initial_val\(6),
	datad => VCC,
	cin => \inst4|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\,
	combout => \inst4|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	cout => \inst4|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\);

-- Location: LCCOMB_X86_Y48_N22
\inst4|Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ = (\inst2|s_initial_val\(7) & (\inst4|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ $ (GND))) # (!\inst2|s_initial_val\(7) & 
-- (!\inst4|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & VCC))
-- \inst4|Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ = CARRY((\inst2|s_initial_val\(7) & !\inst4|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|s_initial_val\(7),
	datad => VCC,
	cin => \inst4|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\,
	combout => \inst4|Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	cout => \inst4|Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\);

-- Location: LCCOMB_X86_Y48_N24
\inst4|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ = !\inst4|Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst4|Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\,
	combout => \inst4|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\);

-- Location: LCCOMB_X85_Y48_N30
\inst4|Mod1|auto_generated|divider|divider|StageOut[27]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Mod1|auto_generated|divider|divider|StageOut[27]~55_combout\ = (\inst4|Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ & !\inst4|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	datad => \inst4|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst4|Mod1|auto_generated|divider|divider|StageOut[27]~55_combout\);

-- Location: LCCOMB_X85_Y48_N8
\inst4|Mod1|auto_generated|divider|divider|StageOut[27]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Mod1|auto_generated|divider|divider|StageOut[27]~54_combout\ = (\inst2|s_initial_val\(7) & \inst4|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|s_initial_val\(7),
	datad => \inst4|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst4|Mod1|auto_generated|divider|divider|StageOut[27]~54_combout\);

-- Location: LCCOMB_X86_Y48_N2
\inst4|Mod1|auto_generated|divider|divider|StageOut[26]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Mod1|auto_generated|divider|divider|StageOut[26]~57_combout\ = (\inst4|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ & !\inst4|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datad => \inst4|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst4|Mod1|auto_generated|divider|divider|StageOut[26]~57_combout\);

-- Location: LCCOMB_X86_Y48_N16
\inst4|Mod1|auto_generated|divider|divider|StageOut[26]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Mod1|auto_generated|divider|divider|StageOut[26]~56_combout\ = (\inst2|s_initial_val\(6) & \inst4|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|s_initial_val\(6),
	datad => \inst4|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst4|Mod1|auto_generated|divider|divider|StageOut[26]~56_combout\);

-- Location: LCCOMB_X86_Y48_N6
\inst4|Mod1|auto_generated|divider|divider|StageOut[25]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Mod1|auto_generated|divider|divider|StageOut[25]~59_combout\ = (\inst4|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ & !\inst4|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datad => \inst4|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst4|Mod1|auto_generated|divider|divider|StageOut[25]~59_combout\);

-- Location: LCCOMB_X86_Y48_N28
\inst4|Mod1|auto_generated|divider|divider|StageOut[25]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Mod1|auto_generated|divider|divider|StageOut[25]~58_combout\ = (\inst2|s_initial_val\(5) & \inst4|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|s_initial_val\(5),
	datad => \inst4|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst4|Mod1|auto_generated|divider|divider|StageOut[25]~58_combout\);

-- Location: LCCOMB_X85_Y48_N6
\inst4|Mod1|auto_generated|divider|divider|StageOut[24]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Mod1|auto_generated|divider|divider|StageOut[24]~61_combout\ = (\inst2|s_initial_val\(4) & !\inst4|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|s_initial_val\(4),
	datad => \inst4|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst4|Mod1|auto_generated|divider|divider|StageOut[24]~61_combout\);

-- Location: LCCOMB_X85_Y48_N24
\inst4|Mod1|auto_generated|divider|divider|StageOut[24]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Mod1|auto_generated|divider|divider|StageOut[24]~60_combout\ = (\inst2|s_initial_val\(4) & \inst4|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|s_initial_val\(4),
	datad => \inst4|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst4|Mod1|auto_generated|divider|divider|StageOut[24]~60_combout\);

-- Location: LCCOMB_X85_Y48_N10
\inst4|Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ = (((\inst4|Mod1|auto_generated|divider|divider|StageOut[24]~61_combout\) # (\inst4|Mod1|auto_generated|divider|divider|StageOut[24]~60_combout\)))
-- \inst4|Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ = CARRY((\inst4|Mod1|auto_generated|divider|divider|StageOut[24]~61_combout\) # (\inst4|Mod1|auto_generated|divider|divider|StageOut[24]~60_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Mod1|auto_generated|divider|divider|StageOut[24]~61_combout\,
	datab => \inst4|Mod1|auto_generated|divider|divider|StageOut[24]~60_combout\,
	datad => VCC,
	combout => \inst4|Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	cout => \inst4|Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\);

-- Location: LCCOMB_X85_Y48_N12
\inst4|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ = (\inst4|Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (((\inst4|Mod1|auto_generated|divider|divider|StageOut[25]~59_combout\) # 
-- (\inst4|Mod1|auto_generated|divider|divider|StageOut[25]~58_combout\)))) # (!\inst4|Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (!\inst4|Mod1|auto_generated|divider|divider|StageOut[25]~59_combout\ & 
-- (!\inst4|Mod1|auto_generated|divider|divider|StageOut[25]~58_combout\)))
-- \inst4|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ = CARRY((!\inst4|Mod1|auto_generated|divider|divider|StageOut[25]~59_combout\ & (!\inst4|Mod1|auto_generated|divider|divider|StageOut[25]~58_combout\ & 
-- !\inst4|Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Mod1|auto_generated|divider|divider|StageOut[25]~59_combout\,
	datab => \inst4|Mod1|auto_generated|divider|divider|StageOut[25]~58_combout\,
	datad => VCC,
	cin => \inst4|Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\,
	combout => \inst4|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	cout => \inst4|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\);

-- Location: LCCOMB_X85_Y48_N14
\inst4|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ = (\inst4|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & (((\inst4|Mod1|auto_generated|divider|divider|StageOut[26]~57_combout\) # 
-- (\inst4|Mod1|auto_generated|divider|divider|StageOut[26]~56_combout\)))) # (!\inst4|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((((\inst4|Mod1|auto_generated|divider|divider|StageOut[26]~57_combout\) # 
-- (\inst4|Mod1|auto_generated|divider|divider|StageOut[26]~56_combout\)))))
-- \inst4|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ = CARRY((!\inst4|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((\inst4|Mod1|auto_generated|divider|divider|StageOut[26]~57_combout\) # 
-- (\inst4|Mod1|auto_generated|divider|divider|StageOut[26]~56_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Mod1|auto_generated|divider|divider|StageOut[26]~57_combout\,
	datab => \inst4|Mod1|auto_generated|divider|divider|StageOut[26]~56_combout\,
	datad => VCC,
	cin => \inst4|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\,
	combout => \inst4|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	cout => \inst4|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\);

-- Location: LCCOMB_X85_Y48_N16
\inst4|Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\ = (\inst4|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ & (((\inst4|Mod1|auto_generated|divider|divider|StageOut[27]~55_combout\) # 
-- (\inst4|Mod1|auto_generated|divider|divider|StageOut[27]~54_combout\)))) # (!\inst4|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ & (!\inst4|Mod1|auto_generated|divider|divider|StageOut[27]~55_combout\ & 
-- (!\inst4|Mod1|auto_generated|divider|divider|StageOut[27]~54_combout\)))
-- \inst4|Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ = CARRY((!\inst4|Mod1|auto_generated|divider|divider|StageOut[27]~55_combout\ & (!\inst4|Mod1|auto_generated|divider|divider|StageOut[27]~54_combout\ & 
-- !\inst4|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Mod1|auto_generated|divider|divider|StageOut[27]~55_combout\,
	datab => \inst4|Mod1|auto_generated|divider|divider|StageOut[27]~54_combout\,
	datad => VCC,
	cin => \inst4|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\,
	combout => \inst4|Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\,
	cout => \inst4|Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~7\);

-- Location: LCCOMB_X85_Y48_N18
\inst4|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ = \inst4|Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst4|Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~7\,
	combout => \inst4|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\);

-- Location: LCCOMB_X85_Y48_N4
\inst4|Mod1|auto_generated|divider|divider|StageOut[36]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Mod1|auto_generated|divider|divider|StageOut[36]~62_combout\ = (\inst4|Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\ & !\inst4|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\,
	datad => \inst4|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst4|Mod1|auto_generated|divider|divider|StageOut[36]~62_combout\);

-- Location: LCCOMB_X85_Y48_N28
\inst4|Mod1|auto_generated|divider|divider|StageOut[36]~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Mod1|auto_generated|divider|divider|StageOut[36]~96_combout\ = (\inst4|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\inst4|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- ((\inst2|s_initial_val\(7)))) # (!\inst4|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\inst4|Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \inst4|Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	datac => \inst2|s_initial_val\(7),
	datad => \inst4|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst4|Mod1|auto_generated|divider|divider|StageOut[36]~96_combout\);

-- Location: LCCOMB_X86_Y48_N12
\inst4|Mod1|auto_generated|divider|divider|StageOut[35]~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Mod1|auto_generated|divider|divider|StageOut[35]~97_combout\ = (\inst4|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\inst4|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- (\inst2|s_initial_val\(6))) # (!\inst4|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\inst4|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datab => \inst4|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \inst2|s_initial_val\(6),
	datad => \inst4|Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	combout => \inst4|Mod1|auto_generated|divider|divider|StageOut[35]~97_combout\);

-- Location: LCCOMB_X85_Y48_N0
\inst4|Mod1|auto_generated|divider|divider|StageOut[35]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Mod1|auto_generated|divider|divider|StageOut[35]~63_combout\ = (\inst4|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ & !\inst4|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	datad => \inst4|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst4|Mod1|auto_generated|divider|divider|StageOut[35]~63_combout\);

-- Location: LCCOMB_X86_Y48_N10
\inst4|Mod1|auto_generated|divider|divider|StageOut[34]~98\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Mod1|auto_generated|divider|divider|StageOut[34]~98_combout\ = (\inst4|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\inst4|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- ((\inst2|s_initial_val\(5)))) # (!\inst4|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\inst4|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datab => \inst4|Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datac => \inst2|s_initial_val\(5),
	datad => \inst4|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst4|Mod1|auto_generated|divider|divider|StageOut[34]~98_combout\);

-- Location: LCCOMB_X85_Y48_N22
\inst4|Mod1|auto_generated|divider|divider|StageOut[34]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Mod1|auto_generated|divider|divider|StageOut[34]~64_combout\ = (\inst4|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ & !\inst4|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datad => \inst4|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst4|Mod1|auto_generated|divider|divider|StageOut[34]~64_combout\);

-- Location: LCCOMB_X85_Y48_N20
\inst4|Mod1|auto_generated|divider|divider|StageOut[33]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Mod1|auto_generated|divider|divider|StageOut[33]~65_combout\ = (\inst2|s_initial_val\(4) & \inst4|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|s_initial_val\(4),
	datad => \inst4|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst4|Mod1|auto_generated|divider|divider|StageOut[33]~65_combout\);

-- Location: LCCOMB_X85_Y48_N26
\inst4|Mod1|auto_generated|divider|divider|StageOut[33]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Mod1|auto_generated|divider|divider|StageOut[33]~66_combout\ = (\inst4|Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ & !\inst4|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datad => \inst4|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst4|Mod1|auto_generated|divider|divider|StageOut[33]~66_combout\);

-- Location: LCCOMB_X84_Y48_N26
\inst4|Mod1|auto_generated|divider|divider|StageOut[32]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Mod1|auto_generated|divider|divider|StageOut[32]~68_combout\ = (\inst2|s_initial_val\(3) & !\inst4|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_initial_val\(3),
	datad => \inst4|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst4|Mod1|auto_generated|divider|divider|StageOut[32]~68_combout\);

-- Location: LCCOMB_X84_Y48_N8
\inst4|Mod1|auto_generated|divider|divider|StageOut[32]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Mod1|auto_generated|divider|divider|StageOut[32]~67_combout\ = (\inst2|s_initial_val\(3) & \inst4|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_initial_val\(3),
	datad => \inst4|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst4|Mod1|auto_generated|divider|divider|StageOut[32]~67_combout\);

-- Location: LCCOMB_X84_Y48_N10
\inst4|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ = (((\inst4|Mod1|auto_generated|divider|divider|StageOut[32]~68_combout\) # (\inst4|Mod1|auto_generated|divider|divider|StageOut[32]~67_combout\)))
-- \inst4|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ = CARRY((\inst4|Mod1|auto_generated|divider|divider|StageOut[32]~68_combout\) # (\inst4|Mod1|auto_generated|divider|divider|StageOut[32]~67_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Mod1|auto_generated|divider|divider|StageOut[32]~68_combout\,
	datab => \inst4|Mod1|auto_generated|divider|divider|StageOut[32]~67_combout\,
	datad => VCC,
	combout => \inst4|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	cout => \inst4|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\);

-- Location: LCCOMB_X84_Y48_N12
\inst4|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ = (\inst4|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (((\inst4|Mod1|auto_generated|divider|divider|StageOut[33]~65_combout\) # 
-- (\inst4|Mod1|auto_generated|divider|divider|StageOut[33]~66_combout\)))) # (!\inst4|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (!\inst4|Mod1|auto_generated|divider|divider|StageOut[33]~65_combout\ & 
-- (!\inst4|Mod1|auto_generated|divider|divider|StageOut[33]~66_combout\)))
-- \inst4|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ = CARRY((!\inst4|Mod1|auto_generated|divider|divider|StageOut[33]~65_combout\ & (!\inst4|Mod1|auto_generated|divider|divider|StageOut[33]~66_combout\ & 
-- !\inst4|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Mod1|auto_generated|divider|divider|StageOut[33]~65_combout\,
	datab => \inst4|Mod1|auto_generated|divider|divider|StageOut[33]~66_combout\,
	datad => VCC,
	cin => \inst4|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\,
	combout => \inst4|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	cout => \inst4|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\);

-- Location: LCCOMB_X84_Y48_N14
\inst4|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ = (\inst4|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & (((\inst4|Mod1|auto_generated|divider|divider|StageOut[34]~98_combout\) # 
-- (\inst4|Mod1|auto_generated|divider|divider|StageOut[34]~64_combout\)))) # (!\inst4|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((((\inst4|Mod1|auto_generated|divider|divider|StageOut[34]~98_combout\) # 
-- (\inst4|Mod1|auto_generated|divider|divider|StageOut[34]~64_combout\)))))
-- \inst4|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ = CARRY((!\inst4|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((\inst4|Mod1|auto_generated|divider|divider|StageOut[34]~98_combout\) # 
-- (\inst4|Mod1|auto_generated|divider|divider|StageOut[34]~64_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Mod1|auto_generated|divider|divider|StageOut[34]~98_combout\,
	datab => \inst4|Mod1|auto_generated|divider|divider|StageOut[34]~64_combout\,
	datad => VCC,
	cin => \inst4|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\,
	combout => \inst4|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	cout => \inst4|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\);

-- Location: LCCOMB_X84_Y48_N16
\inst4|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\ = (\inst4|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ & (((\inst4|Mod1|auto_generated|divider|divider|StageOut[35]~97_combout\) # 
-- (\inst4|Mod1|auto_generated|divider|divider|StageOut[35]~63_combout\)))) # (!\inst4|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ & (!\inst4|Mod1|auto_generated|divider|divider|StageOut[35]~97_combout\ & 
-- (!\inst4|Mod1|auto_generated|divider|divider|StageOut[35]~63_combout\)))
-- \inst4|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ = CARRY((!\inst4|Mod1|auto_generated|divider|divider|StageOut[35]~97_combout\ & (!\inst4|Mod1|auto_generated|divider|divider|StageOut[35]~63_combout\ & 
-- !\inst4|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Mod1|auto_generated|divider|divider|StageOut[35]~97_combout\,
	datab => \inst4|Mod1|auto_generated|divider|divider|StageOut[35]~63_combout\,
	datad => VCC,
	cin => \inst4|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\,
	combout => \inst4|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\,
	cout => \inst4|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~7\);

-- Location: LCCOMB_X84_Y48_N18
\inst4|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ = (\inst4|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ & ((((\inst4|Mod1|auto_generated|divider|divider|StageOut[36]~62_combout\) # 
-- (\inst4|Mod1|auto_generated|divider|divider|StageOut[36]~96_combout\))))) # (!\inst4|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ & ((\inst4|Mod1|auto_generated|divider|divider|StageOut[36]~62_combout\) # 
-- ((\inst4|Mod1|auto_generated|divider|divider|StageOut[36]~96_combout\) # (GND))))
-- \inst4|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~9\ = CARRY((\inst4|Mod1|auto_generated|divider|divider|StageOut[36]~62_combout\) # ((\inst4|Mod1|auto_generated|divider|divider|StageOut[36]~96_combout\) # 
-- (!\inst4|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Mod1|auto_generated|divider|divider|StageOut[36]~62_combout\,
	datab => \inst4|Mod1|auto_generated|divider|divider|StageOut[36]~96_combout\,
	datad => VCC,
	cin => \inst4|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~7\,
	combout => \inst4|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	cout => \inst4|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~9\);

-- Location: LCCOMB_X84_Y48_N20
\inst4|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ = !\inst4|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~9\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst4|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~9\,
	combout => \inst4|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\);

-- Location: LCCOMB_X83_Y48_N4
\inst4|Mod1|auto_generated|divider|divider|StageOut[45]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Mod1|auto_generated|divider|divider|StageOut[45]~69_combout\ = (!\inst4|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \inst4|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \inst4|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \inst4|Mod1|auto_generated|divider|divider|StageOut[45]~69_combout\);

-- Location: LCCOMB_X84_Y48_N22
\inst4|Mod1|auto_generated|divider|divider|StageOut[45]~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Mod1|auto_generated|divider|divider|StageOut[45]~89_combout\ = (\inst4|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\inst4|Mod1|auto_generated|divider|divider|StageOut[36]~96_combout\) # 
-- ((\inst4|Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\ & !\inst4|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\,
	datab => \inst4|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \inst4|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \inst4|Mod1|auto_generated|divider|divider|StageOut[36]~96_combout\,
	combout => \inst4|Mod1|auto_generated|divider|divider|StageOut[45]~89_combout\);

-- Location: LCCOMB_X84_Y48_N4
\inst4|Mod1|auto_generated|divider|divider|StageOut[44]~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Mod1|auto_generated|divider|divider|StageOut[44]~90_combout\ = (\inst4|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\inst4|Mod1|auto_generated|divider|divider|StageOut[35]~97_combout\) # 
-- ((!\inst4|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \inst4|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datab => \inst4|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \inst4|Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	datad => \inst4|Mod1|auto_generated|divider|divider|StageOut[35]~97_combout\,
	combout => \inst4|Mod1|auto_generated|divider|divider|StageOut[44]~90_combout\);

-- Location: LCCOMB_X84_Y48_N28
\inst4|Mod1|auto_generated|divider|divider|StageOut[44]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Mod1|auto_generated|divider|divider|StageOut[44]~70_combout\ = (\inst4|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\ & !\inst4|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\,
	datac => \inst4|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \inst4|Mod1|auto_generated|divider|divider|StageOut[44]~70_combout\);

-- Location: LCCOMB_X84_Y48_N6
\inst4|Mod1|auto_generated|divider|divider|StageOut[43]~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Mod1|auto_generated|divider|divider|StageOut[43]~91_combout\ = (\inst4|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\inst4|Mod1|auto_generated|divider|divider|StageOut[34]~98_combout\) # 
-- ((!\inst4|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \inst4|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datab => \inst4|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \inst4|Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datad => \inst4|Mod1|auto_generated|divider|divider|StageOut[34]~98_combout\,
	combout => \inst4|Mod1|auto_generated|divider|divider|StageOut[43]~91_combout\);

-- Location: LCCOMB_X83_Y48_N2
\inst4|Mod1|auto_generated|divider|divider|StageOut[43]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Mod1|auto_generated|divider|divider|StageOut[43]~71_combout\ = (!\inst4|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \inst4|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datac => \inst4|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	combout => \inst4|Mod1|auto_generated|divider|divider|StageOut[43]~71_combout\);

-- Location: LCCOMB_X83_Y48_N24
\inst4|Mod1|auto_generated|divider|divider|StageOut[42]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Mod1|auto_generated|divider|divider|StageOut[42]~72_combout\ = (!\inst4|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \inst4|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datac => \inst4|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	combout => \inst4|Mod1|auto_generated|divider|divider|StageOut[42]~72_combout\);

-- Location: LCCOMB_X85_Y48_N2
\inst4|Mod1|auto_generated|divider|divider|StageOut[42]~99\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Mod1|auto_generated|divider|divider|StageOut[42]~99_combout\ = (\inst4|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\inst4|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- (\inst2|s_initial_val\(4))) # (!\inst4|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\inst4|Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datab => \inst4|Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \inst2|s_initial_val\(4),
	datad => \inst4|Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	combout => \inst4|Mod1|auto_generated|divider|divider|StageOut[42]~99_combout\);

-- Location: LCCOMB_X84_Y48_N30
\inst4|Mod1|auto_generated|divider|divider|StageOut[41]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Mod1|auto_generated|divider|divider|StageOut[41]~73_combout\ = (\inst4|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \inst2|s_initial_val\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \inst2|s_initial_val\(3),
	combout => \inst4|Mod1|auto_generated|divider|divider|StageOut[41]~73_combout\);

-- Location: LCCOMB_X84_Y48_N24
\inst4|Mod1|auto_generated|divider|divider|StageOut[41]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Mod1|auto_generated|divider|divider|StageOut[41]~74_combout\ = (\inst4|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ & !\inst4|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datac => \inst4|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \inst4|Mod1|auto_generated|divider|divider|StageOut[41]~74_combout\);

-- Location: LCCOMB_X86_Y48_N8
\inst4|Mod1|auto_generated|divider|divider|StageOut[40]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Mod1|auto_generated|divider|divider|StageOut[40]~75_combout\ = (\inst2|s_initial_val\(2) & \inst4|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|s_initial_val\(2),
	datad => \inst4|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \inst4|Mod1|auto_generated|divider|divider|StageOut[40]~75_combout\);

-- Location: LCCOMB_X86_Y48_N26
\inst4|Mod1|auto_generated|divider|divider|StageOut[40]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Mod1|auto_generated|divider|divider|StageOut[40]~76_combout\ = (\inst2|s_initial_val\(2) & !\inst4|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|s_initial_val\(2),
	datad => \inst4|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \inst4|Mod1|auto_generated|divider|divider|StageOut[40]~76_combout\);

-- Location: LCCOMB_X83_Y48_N10
\inst4|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ = (((\inst4|Mod1|auto_generated|divider|divider|StageOut[40]~75_combout\) # (\inst4|Mod1|auto_generated|divider|divider|StageOut[40]~76_combout\)))
-- \inst4|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ = CARRY((\inst4|Mod1|auto_generated|divider|divider|StageOut[40]~75_combout\) # (\inst4|Mod1|auto_generated|divider|divider|StageOut[40]~76_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Mod1|auto_generated|divider|divider|StageOut[40]~75_combout\,
	datab => \inst4|Mod1|auto_generated|divider|divider|StageOut[40]~76_combout\,
	datad => VCC,
	combout => \inst4|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	cout => \inst4|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\);

-- Location: LCCOMB_X83_Y48_N12
\inst4|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ = (\inst4|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (((\inst4|Mod1|auto_generated|divider|divider|StageOut[41]~73_combout\) # 
-- (\inst4|Mod1|auto_generated|divider|divider|StageOut[41]~74_combout\)))) # (!\inst4|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (!\inst4|Mod1|auto_generated|divider|divider|StageOut[41]~73_combout\ & 
-- (!\inst4|Mod1|auto_generated|divider|divider|StageOut[41]~74_combout\)))
-- \inst4|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ = CARRY((!\inst4|Mod1|auto_generated|divider|divider|StageOut[41]~73_combout\ & (!\inst4|Mod1|auto_generated|divider|divider|StageOut[41]~74_combout\ & 
-- !\inst4|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Mod1|auto_generated|divider|divider|StageOut[41]~73_combout\,
	datab => \inst4|Mod1|auto_generated|divider|divider|StageOut[41]~74_combout\,
	datad => VCC,
	cin => \inst4|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\,
	combout => \inst4|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	cout => \inst4|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\);

-- Location: LCCOMB_X83_Y48_N14
\inst4|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ = (\inst4|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & (((\inst4|Mod1|auto_generated|divider|divider|StageOut[42]~72_combout\) # 
-- (\inst4|Mod1|auto_generated|divider|divider|StageOut[42]~99_combout\)))) # (!\inst4|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((((\inst4|Mod1|auto_generated|divider|divider|StageOut[42]~72_combout\) # 
-- (\inst4|Mod1|auto_generated|divider|divider|StageOut[42]~99_combout\)))))
-- \inst4|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ = CARRY((!\inst4|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((\inst4|Mod1|auto_generated|divider|divider|StageOut[42]~72_combout\) # 
-- (\inst4|Mod1|auto_generated|divider|divider|StageOut[42]~99_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Mod1|auto_generated|divider|divider|StageOut[42]~72_combout\,
	datab => \inst4|Mod1|auto_generated|divider|divider|StageOut[42]~99_combout\,
	datad => VCC,
	cin => \inst4|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\,
	combout => \inst4|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	cout => \inst4|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\);

-- Location: LCCOMB_X83_Y48_N16
\inst4|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\ = (\inst4|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ & (((\inst4|Mod1|auto_generated|divider|divider|StageOut[43]~91_combout\) # 
-- (\inst4|Mod1|auto_generated|divider|divider|StageOut[43]~71_combout\)))) # (!\inst4|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ & (!\inst4|Mod1|auto_generated|divider|divider|StageOut[43]~91_combout\ & 
-- (!\inst4|Mod1|auto_generated|divider|divider|StageOut[43]~71_combout\)))
-- \inst4|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ = CARRY((!\inst4|Mod1|auto_generated|divider|divider|StageOut[43]~91_combout\ & (!\inst4|Mod1|auto_generated|divider|divider|StageOut[43]~71_combout\ & 
-- !\inst4|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Mod1|auto_generated|divider|divider|StageOut[43]~91_combout\,
	datab => \inst4|Mod1|auto_generated|divider|divider|StageOut[43]~71_combout\,
	datad => VCC,
	cin => \inst4|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\,
	combout => \inst4|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\,
	cout => \inst4|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~7\);

-- Location: LCCOMB_X83_Y48_N18
\inst4|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ = (\inst4|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ & ((((\inst4|Mod1|auto_generated|divider|divider|StageOut[44]~90_combout\) # 
-- (\inst4|Mod1|auto_generated|divider|divider|StageOut[44]~70_combout\))))) # (!\inst4|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ & ((\inst4|Mod1|auto_generated|divider|divider|StageOut[44]~90_combout\) # 
-- ((\inst4|Mod1|auto_generated|divider|divider|StageOut[44]~70_combout\) # (GND))))
-- \inst4|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ = CARRY((\inst4|Mod1|auto_generated|divider|divider|StageOut[44]~90_combout\) # ((\inst4|Mod1|auto_generated|divider|divider|StageOut[44]~70_combout\) # 
-- (!\inst4|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Mod1|auto_generated|divider|divider|StageOut[44]~90_combout\,
	datab => \inst4|Mod1|auto_generated|divider|divider|StageOut[44]~70_combout\,
	datad => VCC,
	cin => \inst4|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~7\,
	combout => \inst4|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	cout => \inst4|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~9\);

-- Location: LCCOMB_X83_Y48_N20
\inst4|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\ = (\inst4|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ & (((\inst4|Mod1|auto_generated|divider|divider|StageOut[45]~69_combout\) # 
-- (\inst4|Mod1|auto_generated|divider|divider|StageOut[45]~89_combout\)))) # (!\inst4|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ & (!\inst4|Mod1|auto_generated|divider|divider|StageOut[45]~69_combout\ & 
-- (!\inst4|Mod1|auto_generated|divider|divider|StageOut[45]~89_combout\)))
-- \inst4|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~11\ = CARRY((!\inst4|Mod1|auto_generated|divider|divider|StageOut[45]~69_combout\ & (!\inst4|Mod1|auto_generated|divider|divider|StageOut[45]~89_combout\ & 
-- !\inst4|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Mod1|auto_generated|divider|divider|StageOut[45]~69_combout\,
	datab => \inst4|Mod1|auto_generated|divider|divider|StageOut[45]~89_combout\,
	datad => VCC,
	cin => \inst4|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~9\,
	combout => \inst4|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	cout => \inst4|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~11\);

-- Location: LCCOMB_X83_Y48_N22
\inst4|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ = \inst4|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~11\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst4|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~11\,
	combout => \inst4|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\);

-- Location: LCCOMB_X83_Y47_N6
\inst4|Mod1|auto_generated|divider|divider|StageOut[54]~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Mod1|auto_generated|divider|divider|StageOut[54]~81_combout\ = (!\inst4|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & \inst4|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datac => \inst4|Mod1|auto_generated|divider|divider|add_sub_6_result_int[6]~10_combout\,
	combout => \inst4|Mod1|auto_generated|divider|divider|StageOut[54]~81_combout\);

-- Location: LCCOMB_X83_Y48_N6
\inst4|Mod1|auto_generated|divider|divider|StageOut[54]~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Mod1|auto_generated|divider|divider|StageOut[54]~92_combout\ = (\inst4|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\inst4|Mod1|auto_generated|divider|divider|StageOut[45]~89_combout\) # 
-- ((!\inst4|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \inst4|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datab => \inst4|Mod1|auto_generated|divider|divider|StageOut[45]~89_combout\,
	datac => \inst4|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \inst4|Mod1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \inst4|Mod1|auto_generated|divider|divider|StageOut[54]~92_combout\);

-- Location: LCCOMB_X83_Y48_N30
\inst4|Mod1|auto_generated|divider|divider|StageOut[53]~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Mod1|auto_generated|divider|divider|StageOut[53]~82_combout\ = (!\inst4|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & \inst4|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \inst4|Mod1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \inst4|Mod1|auto_generated|divider|divider|StageOut[53]~82_combout\);

-- Location: LCCOMB_X84_Y48_N0
\inst4|Mod1|auto_generated|divider|divider|StageOut[53]~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Mod1|auto_generated|divider|divider|StageOut[53]~93_combout\ = (\inst4|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\inst4|Mod1|auto_generated|divider|divider|StageOut[44]~90_combout\) # 
-- ((!\inst4|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \inst4|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datab => \inst4|Mod1|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\,
	datac => \inst4|Mod1|auto_generated|divider|divider|StageOut[44]~90_combout\,
	datad => \inst4|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \inst4|Mod1|auto_generated|divider|divider|StageOut[53]~93_combout\);

-- Location: LCCOMB_X83_Y48_N0
\inst4|Mod1|auto_generated|divider|divider|StageOut[52]~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Mod1|auto_generated|divider|divider|StageOut[52]~83_combout\ = (!\inst4|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & \inst4|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \inst4|Mod1|auto_generated|divider|divider|add_sub_6_result_int[4]~6_combout\,
	combout => \inst4|Mod1|auto_generated|divider|divider|StageOut[52]~83_combout\);

-- Location: LCCOMB_X83_Y48_N28
\inst4|Mod1|auto_generated|divider|divider|StageOut[52]~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Mod1|auto_generated|divider|divider|StageOut[52]~94_combout\ = (\inst4|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\inst4|Mod1|auto_generated|divider|divider|StageOut[43]~91_combout\) # 
-- ((\inst4|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ & !\inst4|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datab => \inst4|Mod1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	datac => \inst4|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \inst4|Mod1|auto_generated|divider|divider|StageOut[43]~91_combout\,
	combout => \inst4|Mod1|auto_generated|divider|divider|StageOut[52]~94_combout\);

-- Location: LCCOMB_X83_Y48_N26
\inst4|Mod1|auto_generated|divider|divider|StageOut[51]~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Mod1|auto_generated|divider|divider|StageOut[51]~95_combout\ = (\inst4|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\inst4|Mod1|auto_generated|divider|divider|StageOut[42]~99_combout\) # 
-- ((!\inst4|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & \inst4|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datab => \inst4|Mod1|auto_generated|divider|divider|StageOut[42]~99_combout\,
	datac => \inst4|Mod1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	datad => \inst4|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \inst4|Mod1|auto_generated|divider|divider|StageOut[51]~95_combout\);

-- Location: LCCOMB_X83_Y48_N8
\inst4|Mod1|auto_generated|divider|divider|StageOut[51]~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Mod1|auto_generated|divider|divider|StageOut[51]~84_combout\ = (!\inst4|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & \inst4|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datac => \inst4|Mod1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	combout => \inst4|Mod1|auto_generated|divider|divider|StageOut[51]~84_combout\);

-- Location: LCCOMB_X84_Y48_N2
\inst4|Mod1|auto_generated|divider|divider|StageOut[50]~100\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Mod1|auto_generated|divider|divider|StageOut[50]~100_combout\ = (\inst4|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\inst4|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & 
-- (\inst2|s_initial_val\(3))) # (!\inst4|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\inst4|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_initial_val\(3),
	datab => \inst4|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datac => \inst4|Mod1|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datad => \inst4|Mod1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	combout => \inst4|Mod1|auto_generated|divider|divider|StageOut[50]~100_combout\);

-- Location: LCCOMB_X83_Y47_N0
\inst4|Mod1|auto_generated|divider|divider|StageOut[50]~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Mod1|auto_generated|divider|divider|StageOut[50]~85_combout\ = (!\inst4|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & \inst4|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datac => \inst4|Mod1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	combout => \inst4|Mod1|auto_generated|divider|divider|StageOut[50]~85_combout\);

-- Location: LCCOMB_X84_Y47_N20
\inst4|Mod1|auto_generated|divider|divider|StageOut[49]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Mod1|auto_generated|divider|divider|StageOut[49]~77_combout\ = (\inst2|s_initial_val\(2) & \inst4|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|s_initial_val\(2),
	datad => \inst4|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	combout => \inst4|Mod1|auto_generated|divider|divider|StageOut[49]~77_combout\);

-- Location: LCCOMB_X83_Y47_N4
\inst4|Mod1|auto_generated|divider|divider|StageOut[49]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Mod1|auto_generated|divider|divider|StageOut[49]~78_combout\ = (!\inst4|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & \inst4|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datac => \inst4|Mod1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	combout => \inst4|Mod1|auto_generated|divider|divider|StageOut[49]~78_combout\);

-- Location: LCCOMB_X83_Y47_N10
\inst4|Mod1|auto_generated|divider|divider|StageOut[48]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Mod1|auto_generated|divider|divider|StageOut[48]~79_combout\ = (\inst4|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & \inst2|s_initial_val\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \inst2|s_initial_val\(1),
	combout => \inst4|Mod1|auto_generated|divider|divider|StageOut[48]~79_combout\);

-- Location: LCCOMB_X83_Y47_N8
\inst4|Mod1|auto_generated|divider|divider|StageOut[48]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Mod1|auto_generated|divider|divider|StageOut[48]~80_combout\ = (!\inst4|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & \inst2|s_initial_val\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|Mod1|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \inst2|s_initial_val\(1),
	combout => \inst4|Mod1|auto_generated|divider|divider|StageOut[48]~80_combout\);

-- Location: LCCOMB_X83_Y47_N16
\inst4|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\ = (((\inst4|Mod1|auto_generated|divider|divider|StageOut[48]~79_combout\) # (\inst4|Mod1|auto_generated|divider|divider|StageOut[48]~80_combout\)))
-- \inst4|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ = CARRY((\inst4|Mod1|auto_generated|divider|divider|StageOut[48]~79_combout\) # (\inst4|Mod1|auto_generated|divider|divider|StageOut[48]~80_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Mod1|auto_generated|divider|divider|StageOut[48]~79_combout\,
	datab => \inst4|Mod1|auto_generated|divider|divider|StageOut[48]~80_combout\,
	datad => VCC,
	combout => \inst4|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\,
	cout => \inst4|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\);

-- Location: LCCOMB_X83_Y47_N18
\inst4|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\ = (\inst4|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ & (((\inst4|Mod1|auto_generated|divider|divider|StageOut[49]~77_combout\) # 
-- (\inst4|Mod1|auto_generated|divider|divider|StageOut[49]~78_combout\)))) # (!\inst4|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ & (!\inst4|Mod1|auto_generated|divider|divider|StageOut[49]~77_combout\ & 
-- (!\inst4|Mod1|auto_generated|divider|divider|StageOut[49]~78_combout\)))
-- \inst4|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ = CARRY((!\inst4|Mod1|auto_generated|divider|divider|StageOut[49]~77_combout\ & (!\inst4|Mod1|auto_generated|divider|divider|StageOut[49]~78_combout\ & 
-- !\inst4|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Mod1|auto_generated|divider|divider|StageOut[49]~77_combout\,
	datab => \inst4|Mod1|auto_generated|divider|divider|StageOut[49]~78_combout\,
	datad => VCC,
	cin => \inst4|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\,
	combout => \inst4|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\,
	cout => \inst4|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\);

-- Location: LCCOMB_X83_Y47_N20
\inst4|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\ = (\inst4|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & (((\inst4|Mod1|auto_generated|divider|divider|StageOut[50]~100_combout\) # 
-- (\inst4|Mod1|auto_generated|divider|divider|StageOut[50]~85_combout\)))) # (!\inst4|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & ((((\inst4|Mod1|auto_generated|divider|divider|StageOut[50]~100_combout\) # 
-- (\inst4|Mod1|auto_generated|divider|divider|StageOut[50]~85_combout\)))))
-- \inst4|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ = CARRY((!\inst4|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ & ((\inst4|Mod1|auto_generated|divider|divider|StageOut[50]~100_combout\) # 
-- (\inst4|Mod1|auto_generated|divider|divider|StageOut[50]~85_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Mod1|auto_generated|divider|divider|StageOut[50]~100_combout\,
	datab => \inst4|Mod1|auto_generated|divider|divider|StageOut[50]~85_combout\,
	datad => VCC,
	cin => \inst4|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\,
	combout => \inst4|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\,
	cout => \inst4|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~5\);

-- Location: LCCOMB_X83_Y47_N22
\inst4|Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\ = CARRY((!\inst4|Mod1|auto_generated|divider|divider|StageOut[51]~95_combout\ & (!\inst4|Mod1|auto_generated|divider|divider|StageOut[51]~84_combout\ & 
-- !\inst4|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Mod1|auto_generated|divider|divider|StageOut[51]~95_combout\,
	datab => \inst4|Mod1|auto_generated|divider|divider|StageOut[51]~84_combout\,
	datad => VCC,
	cin => \inst4|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~5\,
	cout => \inst4|Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\);

-- Location: LCCOMB_X83_Y47_N24
\inst4|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~9_cout\ = CARRY((\inst4|Mod1|auto_generated|divider|divider|StageOut[52]~83_combout\) # ((\inst4|Mod1|auto_generated|divider|divider|StageOut[52]~94_combout\) # 
-- (!\inst4|Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Mod1|auto_generated|divider|divider|StageOut[52]~83_combout\,
	datab => \inst4|Mod1|auto_generated|divider|divider|StageOut[52]~94_combout\,
	datad => VCC,
	cin => \inst4|Mod1|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\,
	cout => \inst4|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~9_cout\);

-- Location: LCCOMB_X83_Y47_N26
\inst4|Mod1|auto_generated|divider|divider|add_sub_7_result_int[6]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Mod1|auto_generated|divider|divider|add_sub_7_result_int[6]~11_cout\ = CARRY((!\inst4|Mod1|auto_generated|divider|divider|StageOut[53]~82_combout\ & (!\inst4|Mod1|auto_generated|divider|divider|StageOut[53]~93_combout\ & 
-- !\inst4|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Mod1|auto_generated|divider|divider|StageOut[53]~82_combout\,
	datab => \inst4|Mod1|auto_generated|divider|divider|StageOut[53]~93_combout\,
	datad => VCC,
	cin => \inst4|Mod1|auto_generated|divider|divider|add_sub_7_result_int[5]~9_cout\,
	cout => \inst4|Mod1|auto_generated|divider|divider|add_sub_7_result_int[6]~11_cout\);

-- Location: LCCOMB_X83_Y47_N28
\inst4|Mod1|auto_generated|divider|divider|add_sub_7_result_int[7]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Mod1|auto_generated|divider|divider|add_sub_7_result_int[7]~13_cout\ = CARRY((\inst4|Mod1|auto_generated|divider|divider|StageOut[54]~81_combout\) # ((\inst4|Mod1|auto_generated|divider|divider|StageOut[54]~92_combout\) # 
-- (!\inst4|Mod1|auto_generated|divider|divider|add_sub_7_result_int[6]~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Mod1|auto_generated|divider|divider|StageOut[54]~81_combout\,
	datab => \inst4|Mod1|auto_generated|divider|divider|StageOut[54]~92_combout\,
	datad => VCC,
	cin => \inst4|Mod1|auto_generated|divider|divider|add_sub_7_result_int[6]~11_cout\,
	cout => \inst4|Mod1|auto_generated|divider|divider|add_sub_7_result_int[7]~13_cout\);

-- Location: LCCOMB_X83_Y47_N30
\inst4|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ = !\inst4|Mod1|auto_generated|divider|divider|add_sub_7_result_int[7]~13_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst4|Mod1|auto_generated|divider|divider|add_sub_7_result_int[7]~13_cout\,
	combout => \inst4|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\);

-- Location: LCCOMB_X83_Y47_N12
\inst4|Mod1|auto_generated|divider|divider|StageOut[57]~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Mod1|auto_generated|divider|divider|StageOut[57]~87_combout\ = (\inst4|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & (\inst2|s_initial_val\(1))) # 
-- (!\inst4|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & ((\inst4|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_initial_val\(1),
	datac => \inst4|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datad => \inst4|Mod1|auto_generated|divider|divider|add_sub_7_result_int[1]~0_combout\,
	combout => \inst4|Mod1|auto_generated|divider|divider|StageOut[57]~87_combout\);

-- Location: LCCOMB_X83_Y47_N2
\inst4|Mod1|auto_generated|divider|divider|StageOut[58]~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Mod1|auto_generated|divider|divider|StageOut[58]~86_combout\ = (\inst4|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & ((\inst4|Mod1|auto_generated|divider|divider|StageOut[49]~77_combout\) # 
-- ((\inst4|Mod1|auto_generated|divider|divider|StageOut[49]~78_combout\)))) # (!\inst4|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & (((\inst4|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Mod1|auto_generated|divider|divider|StageOut[49]~77_combout\,
	datab => \inst4|Mod1|auto_generated|divider|divider|StageOut[49]~78_combout\,
	datac => \inst4|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datad => \inst4|Mod1|auto_generated|divider|divider|add_sub_7_result_int[2]~2_combout\,
	combout => \inst4|Mod1|auto_generated|divider|divider|StageOut[58]~86_combout\);

-- Location: LCCOMB_X83_Y47_N14
\inst4|Mod1|auto_generated|divider|divider|StageOut[59]~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Mod1|auto_generated|divider|divider|StageOut[59]~88_combout\ = (\inst4|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & ((\inst4|Mod1|auto_generated|divider|divider|StageOut[50]~85_combout\) # 
-- ((\inst4|Mod1|auto_generated|divider|divider|StageOut[50]~100_combout\)))) # (!\inst4|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\ & (((\inst4|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Mod1|auto_generated|divider|divider|add_sub_7_result_int[8]~14_combout\,
	datab => \inst4|Mod1|auto_generated|divider|divider|StageOut[50]~85_combout\,
	datac => \inst4|Mod1|auto_generated|divider|divider|StageOut[50]~100_combout\,
	datad => \inst4|Mod1|auto_generated|divider|divider|add_sub_7_result_int[3]~4_combout\,
	combout => \inst4|Mod1|auto_generated|divider|divider|StageOut[59]~88_combout\);

-- Location: LCCOMB_X83_Y4_N0
\inst6|decOut_0[6]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|decOut_0[6]~0_combout\ = (\inst2|s_initial_val\(0) & (!\inst4|Mod1|auto_generated|divider|divider|StageOut[59]~88_combout\ & (\inst4|Mod1|auto_generated|divider|divider|StageOut[57]~87_combout\ $ 
-- (!\inst4|Mod1|auto_generated|divider|divider|StageOut[58]~86_combout\)))) # (!\inst2|s_initial_val\(0) & (!\inst4|Mod1|auto_generated|divider|divider|StageOut[57]~87_combout\ & (\inst4|Mod1|auto_generated|divider|divider|StageOut[58]~86_combout\ $ 
-- (!\inst4|Mod1|auto_generated|divider|divider|StageOut[59]~88_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100101000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Mod1|auto_generated|divider|divider|StageOut[57]~87_combout\,
	datab => \inst4|Mod1|auto_generated|divider|divider|StageOut[58]~86_combout\,
	datac => \inst4|Mod1|auto_generated|divider|divider|StageOut[59]~88_combout\,
	datad => \inst2|s_initial_val\(0),
	combout => \inst6|decOut_0[6]~0_combout\);

-- Location: LCCOMB_X83_Y4_N26
\inst6|decOut_0[5]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|decOut_0[5]~1_combout\ = (\inst4|Mod1|auto_generated|divider|divider|StageOut[57]~87_combout\ & (!\inst4|Mod1|auto_generated|divider|divider|StageOut[59]~88_combout\ & ((\inst2|s_initial_val\(0)) # 
-- (!\inst4|Mod1|auto_generated|divider|divider|StageOut[58]~86_combout\)))) # (!\inst4|Mod1|auto_generated|divider|divider|StageOut[57]~87_combout\ & (\inst2|s_initial_val\(0) & (\inst4|Mod1|auto_generated|divider|divider|StageOut[58]~86_combout\ $ 
-- (!\inst4|Mod1|auto_generated|divider|divider|StageOut[59]~88_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Mod1|auto_generated|divider|divider|StageOut[57]~87_combout\,
	datab => \inst4|Mod1|auto_generated|divider|divider|StageOut[58]~86_combout\,
	datac => \inst4|Mod1|auto_generated|divider|divider|StageOut[59]~88_combout\,
	datad => \inst2|s_initial_val\(0),
	combout => \inst6|decOut_0[5]~1_combout\);

-- Location: LCCOMB_X83_Y4_N12
\inst6|decOut_0[4]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|decOut_0[4]~2_combout\ = (\inst4|Mod1|auto_generated|divider|divider|StageOut[57]~87_combout\ & (((!\inst4|Mod1|auto_generated|divider|divider|StageOut[59]~88_combout\ & \inst2|s_initial_val\(0))))) # 
-- (!\inst4|Mod1|auto_generated|divider|divider|StageOut[57]~87_combout\ & ((\inst4|Mod1|auto_generated|divider|divider|StageOut[58]~86_combout\ & (!\inst4|Mod1|auto_generated|divider|divider|StageOut[59]~88_combout\)) # 
-- (!\inst4|Mod1|auto_generated|divider|divider|StageOut[58]~86_combout\ & ((\inst2|s_initial_val\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Mod1|auto_generated|divider|divider|StageOut[57]~87_combout\,
	datab => \inst4|Mod1|auto_generated|divider|divider|StageOut[58]~86_combout\,
	datac => \inst4|Mod1|auto_generated|divider|divider|StageOut[59]~88_combout\,
	datad => \inst2|s_initial_val\(0),
	combout => \inst6|decOut_0[4]~2_combout\);

-- Location: LCCOMB_X83_Y4_N22
\inst6|decOut_0[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|decOut_0[3]~3_combout\ = (\inst4|Mod1|auto_generated|divider|divider|StageOut[57]~87_combout\ & ((\inst4|Mod1|auto_generated|divider|divider|StageOut[58]~86_combout\ & ((\inst2|s_initial_val\(0)))) # 
-- (!\inst4|Mod1|auto_generated|divider|divider|StageOut[58]~86_combout\ & (\inst4|Mod1|auto_generated|divider|divider|StageOut[59]~88_combout\ & !\inst2|s_initial_val\(0))))) # (!\inst4|Mod1|auto_generated|divider|divider|StageOut[57]~87_combout\ & 
-- (!\inst4|Mod1|auto_generated|divider|divider|StageOut[59]~88_combout\ & (\inst4|Mod1|auto_generated|divider|divider|StageOut[58]~86_combout\ $ (\inst2|s_initial_val\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Mod1|auto_generated|divider|divider|StageOut[57]~87_combout\,
	datab => \inst4|Mod1|auto_generated|divider|divider|StageOut[58]~86_combout\,
	datac => \inst4|Mod1|auto_generated|divider|divider|StageOut[59]~88_combout\,
	datad => \inst2|s_initial_val\(0),
	combout => \inst6|decOut_0[3]~3_combout\);

-- Location: LCCOMB_X83_Y4_N4
\inst6|decOut_0[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|decOut_0[2]~4_combout\ = (\inst4|Mod1|auto_generated|divider|divider|StageOut[58]~86_combout\ & (\inst4|Mod1|auto_generated|divider|divider|StageOut[59]~88_combout\ & ((\inst4|Mod1|auto_generated|divider|divider|StageOut[57]~87_combout\) # 
-- (!\inst2|s_initial_val\(0))))) # (!\inst4|Mod1|auto_generated|divider|divider|StageOut[58]~86_combout\ & (\inst4|Mod1|auto_generated|divider|divider|StageOut[57]~87_combout\ & (!\inst4|Mod1|auto_generated|divider|divider|StageOut[59]~88_combout\ & 
-- !\inst2|s_initial_val\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Mod1|auto_generated|divider|divider|StageOut[57]~87_combout\,
	datab => \inst4|Mod1|auto_generated|divider|divider|StageOut[58]~86_combout\,
	datac => \inst4|Mod1|auto_generated|divider|divider|StageOut[59]~88_combout\,
	datad => \inst2|s_initial_val\(0),
	combout => \inst6|decOut_0[2]~4_combout\);

-- Location: LCCOMB_X83_Y4_N30
\inst6|decOut_0[1]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|decOut_0[1]~5_combout\ = (\inst4|Mod1|auto_generated|divider|divider|StageOut[57]~87_combout\ & ((\inst2|s_initial_val\(0) & ((\inst4|Mod1|auto_generated|divider|divider|StageOut[59]~88_combout\))) # (!\inst2|s_initial_val\(0) & 
-- (\inst4|Mod1|auto_generated|divider|divider|StageOut[58]~86_combout\)))) # (!\inst4|Mod1|auto_generated|divider|divider|StageOut[57]~87_combout\ & (\inst4|Mod1|auto_generated|divider|divider|StageOut[58]~86_combout\ & 
-- (\inst4|Mod1|auto_generated|divider|divider|StageOut[59]~88_combout\ $ (\inst2|s_initial_val\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Mod1|auto_generated|divider|divider|StageOut[57]~87_combout\,
	datab => \inst4|Mod1|auto_generated|divider|divider|StageOut[58]~86_combout\,
	datac => \inst4|Mod1|auto_generated|divider|divider|StageOut[59]~88_combout\,
	datad => \inst2|s_initial_val\(0),
	combout => \inst6|decOut_0[1]~5_combout\);

-- Location: LCCOMB_X83_Y4_N28
\inst6|decOut_0[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|decOut_0[0]~6_combout\ = (\inst4|Mod1|auto_generated|divider|divider|StageOut[58]~86_combout\ & (!\inst4|Mod1|auto_generated|divider|divider|StageOut[57]~87_combout\ & (\inst4|Mod1|auto_generated|divider|divider|StageOut[59]~88_combout\ $ 
-- (!\inst2|s_initial_val\(0))))) # (!\inst4|Mod1|auto_generated|divider|divider|StageOut[58]~86_combout\ & (\inst2|s_initial_val\(0) & (\inst4|Mod1|auto_generated|divider|divider|StageOut[57]~87_combout\ $ 
-- (!\inst4|Mod1|auto_generated|divider|divider|StageOut[59]~88_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Mod1|auto_generated|divider|divider|StageOut[57]~87_combout\,
	datab => \inst4|Mod1|auto_generated|divider|divider|StageOut[58]~86_combout\,
	datac => \inst4|Mod1|auto_generated|divider|divider|StageOut[59]~88_combout\,
	datad => \inst2|s_initial_val\(0),
	combout => \inst6|decOut_0[0]~6_combout\);

-- Location: LCCOMB_X82_Y47_N4
\inst4|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\ = \inst2|s_initial_val\(3) $ (VCC)
-- \inst4|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\ = CARRY(\inst2|s_initial_val\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|s_initial_val\(3),
	datad => VCC,
	combout => \inst4|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\,
	cout => \inst4|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\);

-- Location: LCCOMB_X82_Y47_N6
\inst4|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\ = (\inst2|s_initial_val\(4) & (\inst4|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\ & VCC)) # (!\inst2|s_initial_val\(4) & 
-- (!\inst4|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\))
-- \inst4|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\ = CARRY((!\inst2|s_initial_val\(4) & !\inst4|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|s_initial_val\(4),
	datad => VCC,
	cin => \inst4|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~1\,
	combout => \inst4|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\,
	cout => \inst4|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\);

-- Location: LCCOMB_X82_Y47_N8
\inst4|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\ = (\inst2|s_initial_val\(5) & ((GND) # (!\inst4|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\))) # (!\inst2|s_initial_val\(5) & 
-- (\inst4|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\ $ (GND)))
-- \inst4|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\ = CARRY((\inst2|s_initial_val\(5)) # (!\inst4|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_initial_val\(5),
	datad => VCC,
	cin => \inst4|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~3\,
	combout => \inst4|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\,
	cout => \inst4|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\);

-- Location: LCCOMB_X82_Y47_N10
\inst4|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\ = (\inst2|s_initial_val\(6) & (!\inst4|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\)) # (!\inst2|s_initial_val\(6) & 
-- ((\inst4|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\) # (GND)))
-- \inst4|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\ = CARRY((!\inst4|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\) # (!\inst2|s_initial_val\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_initial_val\(6),
	datad => VCC,
	cin => \inst4|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~5\,
	combout => \inst4|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\,
	cout => \inst4|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\);

-- Location: LCCOMB_X82_Y47_N12
\inst4|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\ = (\inst2|s_initial_val\(7) & (\inst4|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\ $ (GND))) # (!\inst2|s_initial_val\(7) & 
-- (!\inst4|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\ & VCC))
-- \inst4|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~9\ = CARRY((\inst2|s_initial_val\(7) & !\inst4|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|s_initial_val\(7),
	datad => VCC,
	cin => \inst4|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~7\,
	combout => \inst4|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\,
	cout => \inst4|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~9\);

-- Location: LCCOMB_X82_Y47_N14
\inst4|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ = !\inst4|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~9\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst4|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~9\,
	combout => \inst4|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\);

-- Location: LCCOMB_X81_Y47_N6
\inst4|Mod0|auto_generated|divider|divider|StageOut[50]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Mod0|auto_generated|divider|divider|StageOut[50]~45_combout\ = (!\inst4|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & \inst4|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \inst4|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\,
	combout => \inst4|Mod0|auto_generated|divider|divider|StageOut[50]~45_combout\);

-- Location: LCCOMB_X82_Y47_N2
\inst4|Mod0|auto_generated|divider|divider|StageOut[54]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Mod0|auto_generated|divider|divider|StageOut[54]~49_combout\ = (!\inst4|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & \inst4|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \inst4|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\,
	combout => \inst4|Mod0|auto_generated|divider|divider|StageOut[54]~49_combout\);

-- Location: LCCOMB_X82_Y47_N16
\inst4|Mod0|auto_generated|divider|divider|StageOut[54]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Mod0|auto_generated|divider|divider|StageOut[54]~48_combout\ = (\inst4|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & \inst2|s_initial_val\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \inst2|s_initial_val\(7),
	combout => \inst4|Mod0|auto_generated|divider|divider|StageOut[54]~48_combout\);

-- Location: LCCOMB_X81_Y47_N26
\inst4|Mod0|auto_generated|divider|divider|StageOut[53]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Mod0|auto_generated|divider|divider|StageOut[53]~51_combout\ = (\inst4|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\ & !\inst4|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\,
	datad => \inst4|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \inst4|Mod0|auto_generated|divider|divider|StageOut[53]~51_combout\);

-- Location: LCCOMB_X81_Y47_N4
\inst4|Mod0|auto_generated|divider|divider|StageOut[53]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Mod0|auto_generated|divider|divider|StageOut[53]~50_combout\ = (\inst4|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & \inst2|s_initial_val\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \inst2|s_initial_val\(6),
	combout => \inst4|Mod0|auto_generated|divider|divider|StageOut[53]~50_combout\);

-- Location: LCCOMB_X81_Y47_N8
\inst4|Mod0|auto_generated|divider|divider|StageOut[52]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Mod0|auto_generated|divider|divider|StageOut[52]~41_combout\ = (\inst4|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\ & !\inst4|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\,
	datad => \inst4|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \inst4|Mod0|auto_generated|divider|divider|StageOut[52]~41_combout\);

-- Location: LCCOMB_X82_Y47_N24
\inst4|Mod0|auto_generated|divider|divider|StageOut[52]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Mod0|auto_generated|divider|divider|StageOut[52]~40_combout\ = (\inst4|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & \inst2|s_initial_val\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \inst2|s_initial_val\(5),
	combout => \inst4|Mod0|auto_generated|divider|divider|StageOut[52]~40_combout\);

-- Location: LCCOMB_X82_Y47_N26
\inst4|Mod0|auto_generated|divider|divider|StageOut[51]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Mod0|auto_generated|divider|divider|StageOut[51]~42_combout\ = (\inst4|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & \inst2|s_initial_val\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \inst2|s_initial_val\(4),
	combout => \inst4|Mod0|auto_generated|divider|divider|StageOut[51]~42_combout\);

-- Location: LCCOMB_X82_Y47_N0
\inst4|Mod0|auto_generated|divider|divider|StageOut[51]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Mod0|auto_generated|divider|divider|StageOut[51]~43_combout\ = (!\inst4|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & \inst4|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \inst4|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\,
	combout => \inst4|Mod0|auto_generated|divider|divider|StageOut[51]~43_combout\);

-- Location: LCCOMB_X82_Y47_N22
\inst4|Mod0|auto_generated|divider|divider|StageOut[50]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Mod0|auto_generated|divider|divider|StageOut[50]~44_combout\ = (\inst2|s_initial_val\(3) & \inst4|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|s_initial_val\(3),
	datac => \inst4|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \inst4|Mod0|auto_generated|divider|divider|StageOut[50]~44_combout\);

-- Location: LCCOMB_X80_Y47_N0
\inst4|Mod0|auto_generated|divider|divider|StageOut[49]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Mod0|auto_generated|divider|divider|StageOut[49]~47_combout\ = (\inst2|s_initial_val\(2) & !\inst4|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|s_initial_val\(2),
	datad => \inst4|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \inst4|Mod0|auto_generated|divider|divider|StageOut[49]~47_combout\);

-- Location: LCCOMB_X80_Y47_N18
\inst4|Mod0|auto_generated|divider|divider|StageOut[49]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Mod0|auto_generated|divider|divider|StageOut[49]~46_combout\ = (\inst2|s_initial_val\(2) & \inst4|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|s_initial_val\(2),
	datad => \inst4|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	combout => \inst4|Mod0|auto_generated|divider|divider|StageOut[49]~46_combout\);

-- Location: LCCOMB_X81_Y47_N12
\inst4|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\ = (((\inst4|Mod0|auto_generated|divider|divider|StageOut[49]~47_combout\) # (\inst4|Mod0|auto_generated|divider|divider|StageOut[49]~46_combout\)))
-- \inst4|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~1\ = CARRY((\inst4|Mod0|auto_generated|divider|divider|StageOut[49]~47_combout\) # (\inst4|Mod0|auto_generated|divider|divider|StageOut[49]~46_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Mod0|auto_generated|divider|divider|StageOut[49]~47_combout\,
	datab => \inst4|Mod0|auto_generated|divider|divider|StageOut[49]~46_combout\,
	datad => VCC,
	combout => \inst4|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\,
	cout => \inst4|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~1\);

-- Location: LCCOMB_X81_Y47_N14
\inst4|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\ = (\inst4|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~1\ & (((\inst4|Mod0|auto_generated|divider|divider|StageOut[50]~45_combout\) # 
-- (\inst4|Mod0|auto_generated|divider|divider|StageOut[50]~44_combout\)))) # (!\inst4|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~1\ & (!\inst4|Mod0|auto_generated|divider|divider|StageOut[50]~45_combout\ & 
-- (!\inst4|Mod0|auto_generated|divider|divider|StageOut[50]~44_combout\)))
-- \inst4|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~3\ = CARRY((!\inst4|Mod0|auto_generated|divider|divider|StageOut[50]~45_combout\ & (!\inst4|Mod0|auto_generated|divider|divider|StageOut[50]~44_combout\ & 
-- !\inst4|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Mod0|auto_generated|divider|divider|StageOut[50]~45_combout\,
	datab => \inst4|Mod0|auto_generated|divider|divider|StageOut[50]~44_combout\,
	datad => VCC,
	cin => \inst4|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~1\,
	combout => \inst4|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\,
	cout => \inst4|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~3\);

-- Location: LCCOMB_X81_Y47_N16
\inst4|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\ = (\inst4|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~3\ & ((((\inst4|Mod0|auto_generated|divider|divider|StageOut[51]~42_combout\) # 
-- (\inst4|Mod0|auto_generated|divider|divider|StageOut[51]~43_combout\))))) # (!\inst4|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~3\ & ((\inst4|Mod0|auto_generated|divider|divider|StageOut[51]~42_combout\) # 
-- ((\inst4|Mod0|auto_generated|divider|divider|StageOut[51]~43_combout\) # (GND))))
-- \inst4|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~5\ = CARRY((\inst4|Mod0|auto_generated|divider|divider|StageOut[51]~42_combout\) # ((\inst4|Mod0|auto_generated|divider|divider|StageOut[51]~43_combout\) # 
-- (!\inst4|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Mod0|auto_generated|divider|divider|StageOut[51]~42_combout\,
	datab => \inst4|Mod0|auto_generated|divider|divider|StageOut[51]~43_combout\,
	datad => VCC,
	cin => \inst4|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~3\,
	combout => \inst4|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\,
	cout => \inst4|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~5\);

-- Location: LCCOMB_X81_Y47_N18
\inst4|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~6_combout\ = (\inst4|Mod0|auto_generated|divider|divider|StageOut[52]~41_combout\ & (((!\inst4|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~5\)))) # 
-- (!\inst4|Mod0|auto_generated|divider|divider|StageOut[52]~41_combout\ & ((\inst4|Mod0|auto_generated|divider|divider|StageOut[52]~40_combout\ & (!\inst4|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~5\)) # 
-- (!\inst4|Mod0|auto_generated|divider|divider|StageOut[52]~40_combout\ & ((\inst4|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~5\) # (GND)))))
-- \inst4|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~7\ = CARRY(((!\inst4|Mod0|auto_generated|divider|divider|StageOut[52]~41_combout\ & !\inst4|Mod0|auto_generated|divider|divider|StageOut[52]~40_combout\)) # 
-- (!\inst4|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Mod0|auto_generated|divider|divider|StageOut[52]~41_combout\,
	datab => \inst4|Mod0|auto_generated|divider|divider|StageOut[52]~40_combout\,
	datad => VCC,
	cin => \inst4|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~5\,
	combout => \inst4|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~6_combout\,
	cout => \inst4|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~7\);

-- Location: LCCOMB_X81_Y47_N20
\inst4|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~8_combout\ = (\inst4|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~7\ & (((\inst4|Mod0|auto_generated|divider|divider|StageOut[53]~51_combout\) # 
-- (\inst4|Mod0|auto_generated|divider|divider|StageOut[53]~50_combout\)))) # (!\inst4|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~7\ & ((((\inst4|Mod0|auto_generated|divider|divider|StageOut[53]~51_combout\) # 
-- (\inst4|Mod0|auto_generated|divider|divider|StageOut[53]~50_combout\)))))
-- \inst4|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~9\ = CARRY((!\inst4|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~7\ & ((\inst4|Mod0|auto_generated|divider|divider|StageOut[53]~51_combout\) # 
-- (\inst4|Mod0|auto_generated|divider|divider|StageOut[53]~50_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Mod0|auto_generated|divider|divider|StageOut[53]~51_combout\,
	datab => \inst4|Mod0|auto_generated|divider|divider|StageOut[53]~50_combout\,
	datad => VCC,
	cin => \inst4|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~7\,
	combout => \inst4|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~8_combout\,
	cout => \inst4|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~9\);

-- Location: LCCOMB_X81_Y47_N22
\inst4|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~10_combout\ = (\inst4|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~9\ & (((\inst4|Mod0|auto_generated|divider|divider|StageOut[54]~49_combout\) # 
-- (\inst4|Mod0|auto_generated|divider|divider|StageOut[54]~48_combout\)))) # (!\inst4|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~9\ & (!\inst4|Mod0|auto_generated|divider|divider|StageOut[54]~49_combout\ & 
-- (!\inst4|Mod0|auto_generated|divider|divider|StageOut[54]~48_combout\)))
-- \inst4|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~11\ = CARRY((!\inst4|Mod0|auto_generated|divider|divider|StageOut[54]~49_combout\ & (!\inst4|Mod0|auto_generated|divider|divider|StageOut[54]~48_combout\ & 
-- !\inst4|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Mod0|auto_generated|divider|divider|StageOut[54]~49_combout\,
	datab => \inst4|Mod0|auto_generated|divider|divider|StageOut[54]~48_combout\,
	datad => VCC,
	cin => \inst4|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~9\,
	combout => \inst4|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~10_combout\,
	cout => \inst4|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~11\);

-- Location: LCCOMB_X81_Y47_N24
\inst4|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ = \inst4|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~11\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst4|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~11\,
	combout => \inst4|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\);

-- Location: LCCOMB_X81_Y47_N10
\inst4|Mod0|auto_generated|divider|divider|StageOut[59]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Mod0|auto_generated|divider|divider|StageOut[59]~53_combout\ = (\inst4|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & ((\inst4|Mod0|auto_generated|divider|divider|StageOut[50]~45_combout\) # 
-- ((\inst4|Mod0|auto_generated|divider|divider|StageOut[50]~44_combout\)))) # (!\inst4|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & (((\inst4|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Mod0|auto_generated|divider|divider|StageOut[50]~45_combout\,
	datab => \inst4|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datac => \inst4|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\,
	datad => \inst4|Mod0|auto_generated|divider|divider|StageOut[50]~44_combout\,
	combout => \inst4|Mod0|auto_generated|divider|divider|StageOut[59]~53_combout\);

-- Location: LCCOMB_X81_Y47_N2
\inst4|Mod0|auto_generated|divider|divider|StageOut[60]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Mod0|auto_generated|divider|divider|StageOut[60]~54_combout\ = (\inst4|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & ((\inst4|Mod0|auto_generated|divider|divider|StageOut[51]~42_combout\) # 
-- ((\inst4|Mod0|auto_generated|divider|divider|StageOut[51]~43_combout\)))) # (!\inst4|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & (((\inst4|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Mod0|auto_generated|divider|divider|StageOut[51]~42_combout\,
	datab => \inst4|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datac => \inst4|Mod0|auto_generated|divider|divider|StageOut[51]~43_combout\,
	datad => \inst4|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\,
	combout => \inst4|Mod0|auto_generated|divider|divider|StageOut[60]~54_combout\);

-- Location: LCCOMB_X81_Y47_N0
\inst4|Mod0|auto_generated|divider|divider|StageOut[61]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Mod0|auto_generated|divider|divider|StageOut[61]~52_combout\ = (\inst4|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & ((\inst4|Mod0|auto_generated|divider|divider|StageOut[52]~40_combout\) # 
-- ((\inst4|Mod0|auto_generated|divider|divider|StageOut[52]~41_combout\)))) # (!\inst4|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & (((\inst4|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datab => \inst4|Mod0|auto_generated|divider|divider|StageOut[52]~40_combout\,
	datac => \inst4|Mod0|auto_generated|divider|divider|StageOut[52]~41_combout\,
	datad => \inst4|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~6_combout\,
	combout => \inst4|Mod0|auto_generated|divider|divider|StageOut[61]~52_combout\);

-- Location: LCCOMB_X80_Y47_N6
\inst4|Mod0|auto_generated|divider|divider|StageOut[58]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Mod0|auto_generated|divider|divider|StageOut[58]~61_combout\ = (\inst4|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & ((\inst2|s_initial_val\(2)))) # 
-- (!\inst4|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & (\inst4|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\,
	datac => \inst4|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => \inst2|s_initial_val\(2),
	combout => \inst4|Mod0|auto_generated|divider|divider|StageOut[58]~61_combout\);

-- Location: LCCOMB_X81_Y46_N22
\inst4|Mod0|auto_generated|divider|divider|StageOut[48]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Mod0|auto_generated|divider|divider|StageOut[48]~59_combout\ = (!\inst4|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & \inst2|s_initial_val\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \inst2|s_initial_val\(1),
	combout => \inst4|Mod0|auto_generated|divider|divider|StageOut[48]~59_combout\);

-- Location: LCCOMB_X81_Y46_N28
\inst4|Mod0|auto_generated|divider|divider|StageOut[48]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Mod0|auto_generated|divider|divider|StageOut[48]~58_combout\ = (\inst4|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & \inst2|s_initial_val\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \inst2|s_initial_val\(1),
	combout => \inst4|Mod0|auto_generated|divider|divider|StageOut[48]~58_combout\);

-- Location: LCCOMB_X81_Y46_N24
\inst4|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~14_combout\ = (\inst4|Mod0|auto_generated|divider|divider|StageOut[48]~59_combout\) # (\inst4|Mod0|auto_generated|divider|divider|StageOut[48]~58_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|Mod0|auto_generated|divider|divider|StageOut[48]~59_combout\,
	datad => \inst4|Mod0|auto_generated|divider|divider|StageOut[48]~58_combout\,
	combout => \inst4|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~14_combout\);

-- Location: LCCOMB_X81_Y46_N8
\inst4|Mod0|auto_generated|divider|divider|StageOut[57]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Mod0|auto_generated|divider|divider|StageOut[57]~60_combout\ = (\inst4|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & (\inst2|s_initial_val\(1))) # 
-- (!\inst4|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & ((\inst4|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datab => \inst2|s_initial_val\(1),
	datad => \inst4|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~14_combout\,
	combout => \inst4|Mod0|auto_generated|divider|divider|StageOut[57]~60_combout\);

-- Location: LCCOMB_X76_Y44_N0
\inst6|decOut_1[3]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|decOut_1[3]~8_combout\ = (\inst4|Mod0|auto_generated|divider|divider|StageOut[58]~61_combout\ & ((\inst4|Mod0|auto_generated|divider|divider|StageOut[57]~60_combout\) # (\inst4|Mod0|auto_generated|divider|divider|StageOut[59]~53_combout\))) # 
-- (!\inst4|Mod0|auto_generated|divider|divider|StageOut[58]~61_combout\ & (\inst4|Mod0|auto_generated|divider|divider|StageOut[57]~60_combout\ & \inst4|Mod0|auto_generated|divider|divider|StageOut[59]~53_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Mod0|auto_generated|divider|divider|StageOut[58]~61_combout\,
	datab => \inst4|Mod0|auto_generated|divider|divider|StageOut[57]~60_combout\,
	datac => \inst4|Mod0|auto_generated|divider|divider|StageOut[59]~53_combout\,
	combout => \inst6|decOut_1[3]~8_combout\);

-- Location: LCCOMB_X76_Y44_N10
\inst6|decOut_1[3]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|decOut_1[3]~9_combout\ = (\inst4|Mod0|auto_generated|divider|divider|StageOut[59]~53_combout\ & ((\inst4|Mod0|auto_generated|divider|divider|StageOut[60]~54_combout\) # ((\inst4|Mod0|auto_generated|divider|divider|StageOut[61]~52_combout\ & 
-- \inst6|decOut_1[3]~8_combout\)))) # (!\inst4|Mod0|auto_generated|divider|divider|StageOut[59]~53_combout\ & (\inst4|Mod0|auto_generated|divider|divider|StageOut[60]~54_combout\ & ((\inst4|Mod0|auto_generated|divider|divider|StageOut[61]~52_combout\) # 
-- (\inst6|decOut_1[3]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Mod0|auto_generated|divider|divider|StageOut[59]~53_combout\,
	datab => \inst4|Mod0|auto_generated|divider|divider|StageOut[60]~54_combout\,
	datac => \inst4|Mod0|auto_generated|divider|divider|StageOut[61]~52_combout\,
	datad => \inst6|decOut_1[3]~8_combout\,
	combout => \inst6|decOut_1[3]~9_combout\);

-- Location: LCCOMB_X77_Y44_N10
\inst6|decOut_1[3]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|decOut_1[3]~7_combout\ = (!\inst4|Mod0|auto_generated|divider|divider|StageOut[60]~54_combout\ & (((!\inst4|Mod0|auto_generated|divider|divider|StageOut[57]~60_combout\ & !\inst4|Mod0|auto_generated|divider|divider|StageOut[58]~61_combout\)) # 
-- (!\inst4|Mod0|auto_generated|divider|divider|StageOut[59]~53_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Mod0|auto_generated|divider|divider|StageOut[60]~54_combout\,
	datab => \inst4|Mod0|auto_generated|divider|divider|StageOut[57]~60_combout\,
	datac => \inst4|Mod0|auto_generated|divider|divider|StageOut[58]~61_combout\,
	datad => \inst4|Mod0|auto_generated|divider|divider|StageOut[59]~53_combout\,
	combout => \inst6|decOut_1[3]~7_combout\);

-- Location: LCCOMB_X81_Y47_N28
\inst4|Mod0|auto_generated|divider|divider|StageOut[63]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Mod0|auto_generated|divider|divider|StageOut[63]~55_combout\ = (\inst4|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & ((\inst4|Mod0|auto_generated|divider|divider|StageOut[54]~49_combout\) # 
-- ((\inst4|Mod0|auto_generated|divider|divider|StageOut[54]~48_combout\)))) # (!\inst4|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & (((\inst4|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Mod0|auto_generated|divider|divider|StageOut[54]~49_combout\,
	datab => \inst4|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datac => \inst4|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~10_combout\,
	datad => \inst4|Mod0|auto_generated|divider|divider|StageOut[54]~48_combout\,
	combout => \inst4|Mod0|auto_generated|divider|divider|StageOut[63]~55_combout\);

-- Location: LCCOMB_X76_Y44_N8
\inst6|decOut_1[3]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|decOut_1[3]~10_combout\ = (\inst4|Mod0|auto_generated|divider|divider|StageOut[63]~55_combout\ & (\inst6|decOut_1[3]~9_combout\ $ (((\inst4|Mod0|auto_generated|divider|divider|StageOut[61]~52_combout\))))) # 
-- (!\inst4|Mod0|auto_generated|divider|divider|StageOut[63]~55_combout\ & (((\inst6|decOut_1[3]~7_combout\ & !\inst4|Mod0|auto_generated|divider|divider|StageOut[61]~52_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|decOut_1[3]~9_combout\,
	datab => \inst6|decOut_1[3]~7_combout\,
	datac => \inst4|Mod0|auto_generated|divider|divider|StageOut[61]~52_combout\,
	datad => \inst4|Mod0|auto_generated|divider|divider|StageOut[63]~55_combout\,
	combout => \inst6|decOut_1[3]~10_combout\);

-- Location: LCCOMB_X79_Y44_N6
\inst6|decOut_1[6]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|decOut_1[6]~5_combout\ = (\inst4|Mod0|auto_generated|divider|divider|StageOut[58]~61_combout\ & (\inst4|Mod0|auto_generated|divider|divider|StageOut[60]~54_combout\)) # (!\inst4|Mod0|auto_generated|divider|divider|StageOut[58]~61_combout\ & 
-- (\inst4|Mod0|auto_generated|divider|divider|StageOut[59]~53_combout\ & ((\inst4|Mod0|auto_generated|divider|divider|StageOut[60]~54_combout\) # (!\inst4|Mod0|auto_generated|divider|divider|StageOut[57]~60_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Mod0|auto_generated|divider|divider|StageOut[58]~61_combout\,
	datab => \inst4|Mod0|auto_generated|divider|divider|StageOut[60]~54_combout\,
	datac => \inst4|Mod0|auto_generated|divider|divider|StageOut[57]~60_combout\,
	datad => \inst4|Mod0|auto_generated|divider|divider|StageOut[59]~53_combout\,
	combout => \inst6|decOut_1[6]~5_combout\);

-- Location: LCCOMB_X79_Y44_N8
\inst6|decOut_1[6]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|decOut_1[6]~4_combout\ = (\inst4|Mod0|auto_generated|divider|divider|StageOut[58]~61_combout\) # ((\inst4|Mod0|auto_generated|divider|divider|StageOut[60]~54_combout\) # (\inst4|Mod0|auto_generated|divider|divider|StageOut[57]~60_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Mod0|auto_generated|divider|divider|StageOut[58]~61_combout\,
	datab => \inst4|Mod0|auto_generated|divider|divider|StageOut[60]~54_combout\,
	datac => \inst4|Mod0|auto_generated|divider|divider|StageOut[57]~60_combout\,
	combout => \inst6|decOut_1[6]~4_combout\);

-- Location: LCCOMB_X79_Y44_N20
\inst6|decOut_1[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|decOut_1[6]~6_combout\ = (\inst4|Mod0|auto_generated|divider|divider|StageOut[63]~55_combout\ & (!\inst6|decOut_1[6]~5_combout\ & ((\inst4|Mod0|auto_generated|divider|divider|StageOut[61]~52_combout\) # (!\inst6|decOut_1[6]~4_combout\)))) # 
-- (!\inst4|Mod0|auto_generated|divider|divider|StageOut[63]~55_combout\ & (!\inst4|Mod0|auto_generated|divider|divider|StageOut[61]~52_combout\ & ((!\inst6|decOut_1[6]~4_combout\) # (!\inst6|decOut_1[6]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|decOut_1[6]~5_combout\,
	datab => \inst4|Mod0|auto_generated|divider|divider|StageOut[63]~55_combout\,
	datac => \inst6|decOut_1[6]~4_combout\,
	datad => \inst4|Mod0|auto_generated|divider|divider|StageOut[61]~52_combout\,
	combout => \inst6|decOut_1[6]~6_combout\);

-- Location: LCCOMB_X80_Y47_N20
\inst4|Mod0|auto_generated|divider|divider|StageOut[63]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Mod0|auto_generated|divider|divider|StageOut[63]~57_combout\ = (!\inst4|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & \inst4|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => \inst4|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~10_combout\,
	combout => \inst4|Mod0|auto_generated|divider|divider|StageOut[63]~57_combout\);

-- Location: LCCOMB_X82_Y47_N20
\inst4|Mod0|auto_generated|divider|divider|StageOut[63]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Mod0|auto_generated|divider|divider|StageOut[63]~70_combout\ = (\inst4|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & ((\inst4|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & 
-- ((\inst2|s_initial_val\(7)))) # (!\inst4|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & (\inst4|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~8_combout\,
	datab => \inst2|s_initial_val\(7),
	datac => \inst4|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \inst4|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \inst4|Mod0|auto_generated|divider|divider|StageOut[63]~70_combout\);

-- Location: LCCOMB_X82_Y47_N18
\inst4|Mod0|auto_generated|divider|divider|StageOut[61]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Mod0|auto_generated|divider|divider|StageOut[61]~71_combout\ = (\inst4|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & ((\inst4|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & 
-- (\inst2|s_initial_val\(5))) # (!\inst4|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & ((\inst4|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_initial_val\(5),
	datab => \inst4|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datac => \inst4|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~4_combout\,
	datad => \inst4|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \inst4|Mod0|auto_generated|divider|divider|StageOut[61]~71_combout\);

-- Location: LCCOMB_X80_Y47_N26
\inst4|Mod0|auto_generated|divider|divider|StageOut[61]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Mod0|auto_generated|divider|divider|StageOut[61]~56_combout\ = (!\inst4|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & \inst4|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => \inst4|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~6_combout\,
	combout => \inst4|Mod0|auto_generated|divider|divider|StageOut[61]~56_combout\);

-- Location: LCCOMB_X77_Y44_N8
\inst6|decOut_1[6]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|decOut_1[6]~1_combout\ = (\inst4|Mod0|auto_generated|divider|divider|StageOut[63]~57_combout\ & (((!\inst4|Mod0|auto_generated|divider|divider|StageOut[61]~71_combout\ & !\inst4|Mod0|auto_generated|divider|divider|StageOut[61]~56_combout\)))) # 
-- (!\inst4|Mod0|auto_generated|divider|divider|StageOut[63]~57_combout\ & (\inst4|Mod0|auto_generated|divider|divider|StageOut[63]~70_combout\ $ (((\inst4|Mod0|auto_generated|divider|divider|StageOut[61]~71_combout\) # 
-- (\inst4|Mod0|auto_generated|divider|divider|StageOut[61]~56_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Mod0|auto_generated|divider|divider|StageOut[63]~57_combout\,
	datab => \inst4|Mod0|auto_generated|divider|divider|StageOut[63]~70_combout\,
	datac => \inst4|Mod0|auto_generated|divider|divider|StageOut[61]~71_combout\,
	datad => \inst4|Mod0|auto_generated|divider|divider|StageOut[61]~56_combout\,
	combout => \inst6|decOut_1[6]~1_combout\);

-- Location: LCCOMB_X75_Y44_N0
\inst6|decOut_1[6]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|decOut_1[6]~0_combout\ = (\inst4|Mod0|auto_generated|divider|divider|StageOut[60]~54_combout\ & (\inst4|Mod0|auto_generated|divider|divider|StageOut[59]~53_combout\ & (!\inst4|Mod0|auto_generated|divider|divider|StageOut[63]~55_combout\ & 
-- \inst4|Mod0|auto_generated|divider|divider|StageOut[61]~52_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Mod0|auto_generated|divider|divider|StageOut[60]~54_combout\,
	datab => \inst4|Mod0|auto_generated|divider|divider|StageOut[59]~53_combout\,
	datac => \inst4|Mod0|auto_generated|divider|divider|StageOut[63]~55_combout\,
	datad => \inst4|Mod0|auto_generated|divider|divider|StageOut[61]~52_combout\,
	combout => \inst6|decOut_1[6]~0_combout\);

-- Location: LCCOMB_X75_Y44_N30
\inst6|decOut_1[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|decOut_1[1]~2_combout\ = (!\inst4|Mod0|auto_generated|divider|divider|StageOut[59]~53_combout\ & ((!\inst4|Mod0|auto_generated|divider|divider|StageOut[58]~61_combout\) # (!\inst4|Mod0|auto_generated|divider|divider|StageOut[57]~60_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Mod0|auto_generated|divider|divider|StageOut[57]~60_combout\,
	datab => \inst4|Mod0|auto_generated|divider|divider|StageOut[59]~53_combout\,
	datac => \inst4|Mod0|auto_generated|divider|divider|StageOut[58]~61_combout\,
	combout => \inst6|decOut_1[1]~2_combout\);

-- Location: LCCOMB_X75_Y44_N20
\inst6|decOut_1[6]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|decOut_1[6]~3_combout\ = (\inst6|decOut_1[6]~0_combout\) # ((!\inst6|decOut_1[6]~1_combout\ & (!\inst6|decOut_1[1]~2_combout\ & !\inst4|Mod0|auto_generated|divider|divider|StageOut[60]~54_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|decOut_1[6]~1_combout\,
	datab => \inst6|decOut_1[6]~0_combout\,
	datac => \inst6|decOut_1[1]~2_combout\,
	datad => \inst4|Mod0|auto_generated|divider|divider|StageOut[60]~54_combout\,
	combout => \inst6|decOut_1[6]~3_combout\);

-- Location: LCCOMB_X80_Y47_N4
\inst4|Mod0|auto_generated|divider|divider|StageOut[62]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Mod0|auto_generated|divider|divider|StageOut[62]~62_combout\ = (\inst4|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & ((\inst4|Mod0|auto_generated|divider|divider|StageOut[53]~51_combout\) # 
-- ((\inst4|Mod0|auto_generated|divider|divider|StageOut[53]~50_combout\)))) # (!\inst4|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & (((\inst4|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datab => \inst4|Mod0|auto_generated|divider|divider|StageOut[53]~51_combout\,
	datac => \inst4|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~8_combout\,
	datad => \inst4|Mod0|auto_generated|divider|divider|StageOut[53]~50_combout\,
	combout => \inst4|Mod0|auto_generated|divider|divider|StageOut[62]~62_combout\);

-- Location: LCCOMB_X79_Y44_N2
\inst6|decOut_1[6]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|decOut_1[6]~11_combout\ = (\inst4|Mod0|auto_generated|divider|divider|StageOut[62]~62_combout\ & (((\inst6|decOut_1[6]~3_combout\)))) # (!\inst4|Mod0|auto_generated|divider|divider|StageOut[62]~62_combout\ & (!\inst6|decOut_1[3]~10_combout\ & 
-- (\inst6|decOut_1[6]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|decOut_1[3]~10_combout\,
	datab => \inst6|decOut_1[6]~6_combout\,
	datac => \inst6|decOut_1[6]~3_combout\,
	datad => \inst4|Mod0|auto_generated|divider|divider|StageOut[62]~62_combout\,
	combout => \inst6|decOut_1[6]~11_combout\);

-- Location: LCCOMB_X80_Y47_N22
\inst4|Mod0|auto_generated|divider|divider|StageOut[62]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Mod0|auto_generated|divider|divider|StageOut[62]~63_combout\ = (!\inst4|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & \inst4|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datac => \inst4|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~8_combout\,
	combout => \inst4|Mod0|auto_generated|divider|divider|StageOut[62]~63_combout\);

-- Location: LCCOMB_X81_Y47_N30
\inst4|Mod0|auto_generated|divider|divider|StageOut[62]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Mod0|auto_generated|divider|divider|StageOut[62]~72_combout\ = (\inst4|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & ((\inst4|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & 
-- (\inst2|s_initial_val\(6))) # (!\inst4|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & ((\inst4|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datab => \inst2|s_initial_val\(6),
	datac => \inst4|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~6_combout\,
	datad => \inst4|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \inst4|Mod0|auto_generated|divider|divider|StageOut[62]~72_combout\);

-- Location: LCCOMB_X77_Y44_N12
\inst4|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ = (((\inst4|Mod0|auto_generated|divider|divider|StageOut[61]~56_combout\) # (\inst4|Mod0|auto_generated|divider|divider|StageOut[61]~71_combout\)))
-- \inst4|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ = CARRY((\inst4|Mod0|auto_generated|divider|divider|StageOut[61]~56_combout\) # (\inst4|Mod0|auto_generated|divider|divider|StageOut[61]~71_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Mod0|auto_generated|divider|divider|StageOut[61]~56_combout\,
	datab => \inst4|Mod0|auto_generated|divider|divider|StageOut[61]~71_combout\,
	datad => VCC,
	combout => \inst4|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	cout => \inst4|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\);

-- Location: LCCOMB_X77_Y44_N14
\inst4|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ = (\inst4|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ & (((\inst4|Mod0|auto_generated|divider|divider|StageOut[62]~63_combout\) # 
-- (\inst4|Mod0|auto_generated|divider|divider|StageOut[62]~72_combout\)))) # (!\inst4|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ & (!\inst4|Mod0|auto_generated|divider|divider|StageOut[62]~63_combout\ & 
-- (!\inst4|Mod0|auto_generated|divider|divider|StageOut[62]~72_combout\)))
-- \inst4|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ = CARRY((!\inst4|Mod0|auto_generated|divider|divider|StageOut[62]~63_combout\ & (!\inst4|Mod0|auto_generated|divider|divider|StageOut[62]~72_combout\ & 
-- !\inst4|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Mod0|auto_generated|divider|divider|StageOut[62]~63_combout\,
	datab => \inst4|Mod0|auto_generated|divider|divider|StageOut[62]~72_combout\,
	datad => VCC,
	cin => \inst4|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\,
	combout => \inst4|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	cout => \inst4|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\);

-- Location: LCCOMB_X77_Y44_N16
\inst4|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ = (\inst4|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & (((\inst4|Mod0|auto_generated|divider|divider|StageOut[63]~57_combout\) # 
-- (\inst4|Mod0|auto_generated|divider|divider|StageOut[63]~70_combout\)))) # (!\inst4|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & ((((\inst4|Mod0|auto_generated|divider|divider|StageOut[63]~57_combout\) # 
-- (\inst4|Mod0|auto_generated|divider|divider|StageOut[63]~70_combout\)))))
-- \inst4|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ = CARRY((!\inst4|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & ((\inst4|Mod0|auto_generated|divider|divider|StageOut[63]~57_combout\) # 
-- (\inst4|Mod0|auto_generated|divider|divider|StageOut[63]~70_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Mod0|auto_generated|divider|divider|StageOut[63]~57_combout\,
	datab => \inst4|Mod0|auto_generated|divider|divider|StageOut[63]~70_combout\,
	datad => VCC,
	cin => \inst4|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\,
	combout => \inst4|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	cout => \inst4|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\);

-- Location: LCCOMB_X77_Y44_N18
\inst4|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ = !\inst4|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst4|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\,
	combout => \inst4|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\);

-- Location: LCCOMB_X82_Y47_N28
\inst4|Mod0|auto_generated|divider|divider|StageOut[60]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Mod0|auto_generated|divider|divider|StageOut[60]~73_combout\ = (\inst4|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & ((\inst4|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & 
-- ((\inst2|s_initial_val\(4)))) # (!\inst4|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & (\inst4|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~2_combout\,
	datab => \inst2|s_initial_val\(4),
	datac => \inst4|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datad => \inst4|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \inst4|Mod0|auto_generated|divider|divider|StageOut[60]~73_combout\);

-- Location: LCCOMB_X79_Y47_N16
\inst4|Div1|auto_generated|divider|divider|StageOut[15]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Div1|auto_generated|divider|divider|StageOut[15]~63_combout\ = (\inst4|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\inst4|Mod0|auto_generated|divider|divider|StageOut[60]~73_combout\) # 
-- ((!\inst4|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & \inst4|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Mod0|auto_generated|divider|divider|StageOut[60]~73_combout\,
	datab => \inst4|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datac => \inst4|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \inst4|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\,
	combout => \inst4|Div1|auto_generated|divider|divider|StageOut[15]~63_combout\);

-- Location: LCCOMB_X77_Y44_N28
\inst4|Div1|auto_generated|divider|divider|StageOut[18]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Div1|auto_generated|divider|divider|StageOut[18]~44_combout\ = (\inst4|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ & !\inst4|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	datad => \inst4|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst4|Div1|auto_generated|divider|divider|StageOut[18]~44_combout\);

-- Location: LCCOMB_X80_Y47_N28
\inst4|Div1|auto_generated|divider|divider|StageOut[18]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Div1|auto_generated|divider|divider|StageOut[18]~60_combout\ = (\inst4|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\inst4|Mod0|auto_generated|divider|divider|StageOut[63]~70_combout\) # 
-- ((!\inst4|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & \inst4|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datab => \inst4|Mod0|auto_generated|divider|divider|StageOut[63]~70_combout\,
	datac => \inst4|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => \inst4|Mod0|auto_generated|divider|divider|add_sub_7_result_int[7]~10_combout\,
	combout => \inst4|Div1|auto_generated|divider|divider|StageOut[18]~60_combout\);

-- Location: LCCOMB_X79_Y47_N10
\inst4|Div1|auto_generated|divider|divider|StageOut[17]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Div1|auto_generated|divider|divider|StageOut[17]~45_combout\ = (!\inst4|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \inst4|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => \inst4|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	combout => \inst4|Div1|auto_generated|divider|divider|StageOut[17]~45_combout\);

-- Location: LCCOMB_X80_Y47_N10
\inst4|Div1|auto_generated|divider|divider|StageOut[17]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Div1|auto_generated|divider|divider|StageOut[17]~61_combout\ = (\inst4|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\inst4|Mod0|auto_generated|divider|divider|StageOut[62]~72_combout\) # 
-- ((!\inst4|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & \inst4|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Mod0|auto_generated|divider|divider|StageOut[62]~72_combout\,
	datab => \inst4|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datac => \inst4|Mod0|auto_generated|divider|divider|add_sub_7_result_int[6]~8_combout\,
	datad => \inst4|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst4|Div1|auto_generated|divider|divider|StageOut[17]~61_combout\);

-- Location: LCCOMB_X79_Y47_N12
\inst4|Div1|auto_generated|divider|divider|StageOut[16]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Div1|auto_generated|divider|divider|StageOut[16]~46_combout\ = (!\inst4|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \inst4|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => \inst4|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	combout => \inst4|Div1|auto_generated|divider|divider|StageOut[16]~46_combout\);

-- Location: LCCOMB_X80_Y47_N16
\inst4|Div1|auto_generated|divider|divider|StageOut[16]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Div1|auto_generated|divider|divider|StageOut[16]~62_combout\ = (\inst4|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\inst4|Mod0|auto_generated|divider|divider|StageOut[61]~71_combout\) # 
-- ((!\inst4|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & \inst4|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Mod0|auto_generated|divider|divider|StageOut[61]~71_combout\,
	datab => \inst4|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => \inst4|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => \inst4|Mod0|auto_generated|divider|divider|add_sub_7_result_int[5]~6_combout\,
	combout => \inst4|Div1|auto_generated|divider|divider|StageOut[16]~62_combout\);

-- Location: LCCOMB_X79_Y47_N6
\inst4|Mod0|auto_generated|divider|divider|StageOut[60]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Mod0|auto_generated|divider|divider|StageOut[60]~64_combout\ = (!\inst4|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & \inst4|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => \inst4|Mod0|auto_generated|divider|divider|add_sub_7_result_int[4]~4_combout\,
	combout => \inst4|Mod0|auto_generated|divider|divider|StageOut[60]~64_combout\);

-- Location: LCCOMB_X79_Y47_N0
\inst4|Div1|auto_generated|divider|divider|add_sub_3_result_int[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Div1|auto_generated|divider|divider|add_sub_3_result_int[0]~8_combout\ = (\inst4|Mod0|auto_generated|divider|divider|StageOut[60]~73_combout\) # (\inst4|Mod0|auto_generated|divider|divider|StageOut[60]~64_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|Mod0|auto_generated|divider|divider|StageOut[60]~73_combout\,
	datad => \inst4|Mod0|auto_generated|divider|divider|StageOut[60]~64_combout\,
	combout => \inst4|Div1|auto_generated|divider|divider|add_sub_3_result_int[0]~8_combout\);

-- Location: LCCOMB_X79_Y47_N4
\inst4|Div1|auto_generated|divider|divider|StageOut[15]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Div1|auto_generated|divider|divider|StageOut[15]~47_combout\ = (!\inst4|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \inst4|Div1|auto_generated|divider|divider|add_sub_3_result_int[0]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \inst4|Div1|auto_generated|divider|divider|add_sub_3_result_int[0]~8_combout\,
	combout => \inst4|Div1|auto_generated|divider|divider|StageOut[15]~47_combout\);

-- Location: LCCOMB_X79_Y47_N18
\inst4|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ = (((\inst4|Div1|auto_generated|divider|divider|StageOut[15]~47_combout\) # (\inst4|Div1|auto_generated|divider|divider|StageOut[15]~63_combout\)))
-- \inst4|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ = CARRY((\inst4|Div1|auto_generated|divider|divider|StageOut[15]~47_combout\) # (\inst4|Div1|auto_generated|divider|divider|StageOut[15]~63_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Div1|auto_generated|divider|divider|StageOut[15]~47_combout\,
	datab => \inst4|Div1|auto_generated|divider|divider|StageOut[15]~63_combout\,
	datad => VCC,
	combout => \inst4|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	cout => \inst4|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\);

-- Location: LCCOMB_X79_Y47_N20
\inst4|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ = (\inst4|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (((\inst4|Div1|auto_generated|divider|divider|StageOut[16]~46_combout\) # 
-- (\inst4|Div1|auto_generated|divider|divider|StageOut[16]~62_combout\)))) # (!\inst4|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (!\inst4|Div1|auto_generated|divider|divider|StageOut[16]~46_combout\ & 
-- (!\inst4|Div1|auto_generated|divider|divider|StageOut[16]~62_combout\)))
-- \inst4|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ = CARRY((!\inst4|Div1|auto_generated|divider|divider|StageOut[16]~46_combout\ & (!\inst4|Div1|auto_generated|divider|divider|StageOut[16]~62_combout\ & 
-- !\inst4|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Div1|auto_generated|divider|divider|StageOut[16]~46_combout\,
	datab => \inst4|Div1|auto_generated|divider|divider|StageOut[16]~62_combout\,
	datad => VCC,
	cin => \inst4|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\,
	combout => \inst4|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	cout => \inst4|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\);

-- Location: LCCOMB_X79_Y47_N22
\inst4|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ = (\inst4|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & (((\inst4|Div1|auto_generated|divider|divider|StageOut[17]~45_combout\) # 
-- (\inst4|Div1|auto_generated|divider|divider|StageOut[17]~61_combout\)))) # (!\inst4|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((((\inst4|Div1|auto_generated|divider|divider|StageOut[17]~45_combout\) # 
-- (\inst4|Div1|auto_generated|divider|divider|StageOut[17]~61_combout\)))))
-- \inst4|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ = CARRY((!\inst4|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((\inst4|Div1|auto_generated|divider|divider|StageOut[17]~45_combout\) # 
-- (\inst4|Div1|auto_generated|divider|divider|StageOut[17]~61_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Div1|auto_generated|divider|divider|StageOut[17]~45_combout\,
	datab => \inst4|Div1|auto_generated|divider|divider|StageOut[17]~61_combout\,
	datad => VCC,
	cin => \inst4|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\,
	combout => \inst4|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	cout => \inst4|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\);

-- Location: LCCOMB_X79_Y47_N24
\inst4|Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ = CARRY((!\inst4|Div1|auto_generated|divider|divider|StageOut[18]~44_combout\ & (!\inst4|Div1|auto_generated|divider|divider|StageOut[18]~60_combout\ & 
-- !\inst4|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Div1|auto_generated|divider|divider|StageOut[18]~44_combout\,
	datab => \inst4|Div1|auto_generated|divider|divider|StageOut[18]~60_combout\,
	datad => VCC,
	cin => \inst4|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\,
	cout => \inst4|Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\);

-- Location: LCCOMB_X79_Y47_N26
\inst4|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ = \inst4|Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst4|Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\,
	combout => \inst4|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\);

-- Location: LCCOMB_X79_Y47_N28
\inst4|Div1|auto_generated|divider|divider|StageOut[21]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Div1|auto_generated|divider|divider|StageOut[21]~66_combout\ = (\inst4|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\inst4|Div1|auto_generated|divider|divider|StageOut[15]~63_combout\) # 
-- ((!\inst4|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \inst4|Div1|auto_generated|divider|divider|add_sub_3_result_int[0]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datab => \inst4|Div1|auto_generated|divider|divider|StageOut[15]~63_combout\,
	datac => \inst4|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \inst4|Div1|auto_generated|divider|divider|add_sub_3_result_int[0]~8_combout\,
	combout => \inst4|Div1|auto_generated|divider|divider|StageOut[21]~66_combout\);

-- Location: LCCOMB_X79_Y47_N30
\inst4|Div1|auto_generated|divider|divider|StageOut[23]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Div1|auto_generated|divider|divider|StageOut[23]~48_combout\ = (\inst4|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ & !\inst4|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	datac => \inst4|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst4|Div1|auto_generated|divider|divider|StageOut[23]~48_combout\);

-- Location: LCCOMB_X79_Y47_N14
\inst4|Div1|auto_generated|divider|divider|StageOut[23]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Div1|auto_generated|divider|divider|StageOut[23]~64_combout\ = (\inst4|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\inst4|Div1|auto_generated|divider|divider|StageOut[17]~61_combout\) # 
-- ((!\inst4|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \inst4|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \inst4|Div1|auto_generated|divider|divider|StageOut[17]~61_combout\,
	datac => \inst4|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \inst4|Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	combout => \inst4|Div1|auto_generated|divider|divider|StageOut[23]~64_combout\);

-- Location: LCCOMB_X79_Y46_N10
\inst4|Div1|auto_generated|divider|divider|StageOut[22]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Div1|auto_generated|divider|divider|StageOut[22]~49_combout\ = (!\inst4|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \inst4|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \inst4|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	combout => \inst4|Div1|auto_generated|divider|divider|StageOut[22]~49_combout\);

-- Location: LCCOMB_X79_Y47_N8
\inst4|Div1|auto_generated|divider|divider|StageOut[22]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Div1|auto_generated|divider|divider|StageOut[22]~65_combout\ = (\inst4|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\inst4|Div1|auto_generated|divider|divider|StageOut[16]~62_combout\) # 
-- ((!\inst4|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \inst4|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datab => \inst4|Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datac => \inst4|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \inst4|Div1|auto_generated|divider|divider|StageOut[16]~62_combout\,
	combout => \inst4|Div1|auto_generated|divider|divider|StageOut[22]~65_combout\);

-- Location: LCCOMB_X79_Y46_N20
\inst4|Div1|auto_generated|divider|divider|StageOut[21]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Div1|auto_generated|divider|divider|StageOut[21]~50_combout\ = (\inst4|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ & !\inst4|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datac => \inst4|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst4|Div1|auto_generated|divider|divider|StageOut[21]~50_combout\);

-- Location: LCCOMB_X82_Y47_N30
\inst4|Mod0|auto_generated|divider|divider|StageOut[59]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Mod0|auto_generated|divider|divider|StageOut[59]~74_combout\ = (\inst4|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & ((\inst4|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & 
-- ((\inst2|s_initial_val\(3)))) # (!\inst4|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\ & (\inst4|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~0_combout\,
	datab => \inst4|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~10_combout\,
	datac => \inst2|s_initial_val\(3),
	datad => \inst4|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \inst4|Mod0|auto_generated|divider|divider|StageOut[59]~74_combout\);

-- Location: LCCOMB_X79_Y46_N2
\inst4|Mod0|auto_generated|divider|divider|StageOut[59]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Mod0|auto_generated|divider|divider|StageOut[59]~65_combout\ = (!\inst4|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & \inst4|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => \inst4|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\,
	combout => \inst4|Mod0|auto_generated|divider|divider|StageOut[59]~65_combout\);

-- Location: LCCOMB_X79_Y46_N0
\inst4|Div1|auto_generated|divider|divider|add_sub_4_result_int[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Div1|auto_generated|divider|divider|add_sub_4_result_int[0]~10_combout\ = (\inst4|Mod0|auto_generated|divider|divider|StageOut[59]~74_combout\) # (\inst4|Mod0|auto_generated|divider|divider|StageOut[59]~65_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Mod0|auto_generated|divider|divider|StageOut[59]~74_combout\,
	datad => \inst4|Mod0|auto_generated|divider|divider|StageOut[59]~65_combout\,
	combout => \inst4|Div1|auto_generated|divider|divider|add_sub_4_result_int[0]~10_combout\);

-- Location: LCCOMB_X79_Y46_N16
\inst4|Div1|auto_generated|divider|divider|StageOut[20]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Div1|auto_generated|divider|divider|StageOut[20]~51_combout\ = (\inst4|Div1|auto_generated|divider|divider|add_sub_4_result_int[0]~10_combout\ & !\inst4|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|Div1|auto_generated|divider|divider|add_sub_4_result_int[0]~10_combout\,
	datac => \inst4|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst4|Div1|auto_generated|divider|divider|StageOut[20]~51_combout\);

-- Location: LCCOMB_X79_Y46_N18
\inst4|Div1|auto_generated|divider|divider|StageOut[20]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Div1|auto_generated|divider|divider|StageOut[20]~67_combout\ = (\inst4|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\inst4|Mod0|auto_generated|divider|divider|StageOut[59]~74_combout\) # 
-- ((!\inst4|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & \inst4|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Mod0|auto_generated|divider|divider|StageOut[59]~74_combout\,
	datab => \inst4|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \inst4|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => \inst4|Mod0|auto_generated|divider|divider|add_sub_7_result_int[3]~2_combout\,
	combout => \inst4|Div1|auto_generated|divider|divider|StageOut[20]~67_combout\);

-- Location: LCCOMB_X79_Y46_N22
\inst4|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ = (((\inst4|Div1|auto_generated|divider|divider|StageOut[20]~51_combout\) # (\inst4|Div1|auto_generated|divider|divider|StageOut[20]~67_combout\)))
-- \inst4|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ = CARRY((\inst4|Div1|auto_generated|divider|divider|StageOut[20]~51_combout\) # (\inst4|Div1|auto_generated|divider|divider|StageOut[20]~67_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Div1|auto_generated|divider|divider|StageOut[20]~51_combout\,
	datab => \inst4|Div1|auto_generated|divider|divider|StageOut[20]~67_combout\,
	datad => VCC,
	combout => \inst4|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	cout => \inst4|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\);

-- Location: LCCOMB_X79_Y46_N24
\inst4|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ = (\inst4|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (((\inst4|Div1|auto_generated|divider|divider|StageOut[21]~66_combout\) # 
-- (\inst4|Div1|auto_generated|divider|divider|StageOut[21]~50_combout\)))) # (!\inst4|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (!\inst4|Div1|auto_generated|divider|divider|StageOut[21]~66_combout\ & 
-- (!\inst4|Div1|auto_generated|divider|divider|StageOut[21]~50_combout\)))
-- \inst4|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ = CARRY((!\inst4|Div1|auto_generated|divider|divider|StageOut[21]~66_combout\ & (!\inst4|Div1|auto_generated|divider|divider|StageOut[21]~50_combout\ & 
-- !\inst4|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Div1|auto_generated|divider|divider|StageOut[21]~66_combout\,
	datab => \inst4|Div1|auto_generated|divider|divider|StageOut[21]~50_combout\,
	datad => VCC,
	cin => \inst4|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~1\,
	combout => \inst4|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	cout => \inst4|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\);

-- Location: LCCOMB_X79_Y46_N26
\inst4|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ = (\inst4|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & (((\inst4|Div1|auto_generated|divider|divider|StageOut[22]~49_combout\) # 
-- (\inst4|Div1|auto_generated|divider|divider|StageOut[22]~65_combout\)))) # (!\inst4|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((((\inst4|Div1|auto_generated|divider|divider|StageOut[22]~49_combout\) # 
-- (\inst4|Div1|auto_generated|divider|divider|StageOut[22]~65_combout\)))))
-- \inst4|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ = CARRY((!\inst4|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((\inst4|Div1|auto_generated|divider|divider|StageOut[22]~49_combout\) # 
-- (\inst4|Div1|auto_generated|divider|divider|StageOut[22]~65_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Div1|auto_generated|divider|divider|StageOut[22]~49_combout\,
	datab => \inst4|Div1|auto_generated|divider|divider|StageOut[22]~65_combout\,
	datad => VCC,
	cin => \inst4|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~3\,
	combout => \inst4|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	cout => \inst4|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\);

-- Location: LCCOMB_X79_Y46_N28
\inst4|Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\ = CARRY((!\inst4|Div1|auto_generated|divider|divider|StageOut[23]~48_combout\ & (!\inst4|Div1|auto_generated|divider|divider|StageOut[23]~64_combout\ & 
-- !\inst4|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Div1|auto_generated|divider|divider|StageOut[23]~48_combout\,
	datab => \inst4|Div1|auto_generated|divider|divider|StageOut[23]~64_combout\,
	datad => VCC,
	cin => \inst4|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~5\,
	cout => \inst4|Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\);

-- Location: LCCOMB_X79_Y46_N30
\inst4|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ = \inst4|Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst4|Div1|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\,
	combout => \inst4|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\);

-- Location: LCCOMB_X79_Y46_N14
\inst4|Div1|auto_generated|divider|divider|StageOut[27]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Div1|auto_generated|divider|divider|StageOut[27]~69_combout\ = (\inst4|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((\inst4|Div1|auto_generated|divider|divider|StageOut[21]~66_combout\) # 
-- ((!\inst4|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \inst4|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Div1|auto_generated|divider|divider|StageOut[21]~66_combout\,
	datab => \inst4|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \inst4|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \inst4|Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	combout => \inst4|Div1|auto_generated|divider|divider|StageOut[27]~69_combout\);

-- Location: LCCOMB_X79_Y46_N4
\inst4|Div1|auto_generated|divider|divider|StageOut[27]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Div1|auto_generated|divider|divider|StageOut[27]~53_combout\ = (!\inst4|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & \inst4|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \inst4|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	combout => \inst4|Div1|auto_generated|divider|divider|StageOut[27]~53_combout\);

-- Location: LCCOMB_X79_Y46_N8
\inst4|Div1|auto_generated|divider|divider|StageOut[26]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Div1|auto_generated|divider|divider|StageOut[26]~70_combout\ = (\inst4|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((\inst4|Div1|auto_generated|divider|divider|StageOut[20]~67_combout\) # 
-- ((!\inst4|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \inst4|Div1|auto_generated|divider|divider|add_sub_4_result_int[0]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datab => \inst4|Div1|auto_generated|divider|divider|StageOut[20]~67_combout\,
	datac => \inst4|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \inst4|Div1|auto_generated|divider|divider|add_sub_4_result_int[0]~10_combout\,
	combout => \inst4|Div1|auto_generated|divider|divider|StageOut[26]~70_combout\);

-- Location: LCCOMB_X80_Y46_N16
\inst4|Div1|auto_generated|divider|divider|StageOut[26]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Div1|auto_generated|divider|divider|StageOut[26]~54_combout\ = (\inst4|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ & !\inst4|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datad => \inst4|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \inst4|Div1|auto_generated|divider|divider|StageOut[26]~54_combout\);

-- Location: LCCOMB_X80_Y47_N30
\inst4|Div1|auto_generated|divider|divider|StageOut[25]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Div1|auto_generated|divider|divider|StageOut[25]~74_combout\ = (\inst4|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((\inst4|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & 
-- (\inst2|s_initial_val\(2))) # (!\inst4|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & ((\inst4|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|s_initial_val\(2),
	datab => \inst4|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\,
	datac => \inst4|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => \inst4|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \inst4|Div1|auto_generated|divider|divider|StageOut[25]~74_combout\);

-- Location: LCCOMB_X80_Y47_N14
\inst4|Mod0|auto_generated|divider|divider|StageOut[58]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Mod0|auto_generated|divider|divider|StageOut[58]~67_combout\ = (!\inst4|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & \inst4|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datac => \inst4|Mod0|auto_generated|divider|divider|add_sub_7_result_int[2]~0_combout\,
	combout => \inst4|Mod0|auto_generated|divider|divider|StageOut[58]~67_combout\);

-- Location: LCCOMB_X80_Y47_N12
\inst4|Mod0|auto_generated|divider|divider|StageOut[58]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Mod0|auto_generated|divider|divider|StageOut[58]~66_combout\ = (\inst4|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & \inst2|s_initial_val\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => \inst2|s_initial_val\(2),
	combout => \inst4|Mod0|auto_generated|divider|divider|StageOut[58]~66_combout\);

-- Location: LCCOMB_X80_Y47_N8
\inst4|Div1|auto_generated|divider|divider|add_sub_5_result_int[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Div1|auto_generated|divider|divider|add_sub_5_result_int[0]~10_combout\ = (\inst4|Mod0|auto_generated|divider|divider|StageOut[58]~67_combout\) # (\inst4|Mod0|auto_generated|divider|divider|StageOut[58]~66_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|Mod0|auto_generated|divider|divider|StageOut[58]~67_combout\,
	datad => \inst4|Mod0|auto_generated|divider|divider|StageOut[58]~66_combout\,
	combout => \inst4|Div1|auto_generated|divider|divider|add_sub_5_result_int[0]~10_combout\);

-- Location: LCCOMB_X80_Y46_N2
\inst4|Div1|auto_generated|divider|divider|StageOut[25]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Div1|auto_generated|divider|divider|StageOut[25]~55_combout\ = (!\inst4|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & \inst4|Div1|auto_generated|divider|divider|add_sub_5_result_int[0]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \inst4|Div1|auto_generated|divider|divider|add_sub_5_result_int[0]~10_combout\,
	combout => \inst4|Div1|auto_generated|divider|divider|StageOut[25]~55_combout\);

-- Location: LCCOMB_X80_Y46_N22
\inst4|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ = (((\inst4|Div1|auto_generated|divider|divider|StageOut[25]~74_combout\) # (\inst4|Div1|auto_generated|divider|divider|StageOut[25]~55_combout\)))
-- \inst4|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ = CARRY((\inst4|Div1|auto_generated|divider|divider|StageOut[25]~74_combout\) # (\inst4|Div1|auto_generated|divider|divider|StageOut[25]~55_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Div1|auto_generated|divider|divider|StageOut[25]~74_combout\,
	datab => \inst4|Div1|auto_generated|divider|divider|StageOut[25]~55_combout\,
	datad => VCC,
	combout => \inst4|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	cout => \inst4|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\);

-- Location: LCCOMB_X80_Y46_N24
\inst4|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ = (\inst4|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (((\inst4|Div1|auto_generated|divider|divider|StageOut[26]~70_combout\) # 
-- (\inst4|Div1|auto_generated|divider|divider|StageOut[26]~54_combout\)))) # (!\inst4|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (!\inst4|Div1|auto_generated|divider|divider|StageOut[26]~70_combout\ & 
-- (!\inst4|Div1|auto_generated|divider|divider|StageOut[26]~54_combout\)))
-- \inst4|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ = CARRY((!\inst4|Div1|auto_generated|divider|divider|StageOut[26]~70_combout\ & (!\inst4|Div1|auto_generated|divider|divider|StageOut[26]~54_combout\ & 
-- !\inst4|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Div1|auto_generated|divider|divider|StageOut[26]~70_combout\,
	datab => \inst4|Div1|auto_generated|divider|divider|StageOut[26]~54_combout\,
	datad => VCC,
	cin => \inst4|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~1\,
	combout => \inst4|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	cout => \inst4|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\);

-- Location: LCCOMB_X80_Y46_N26
\inst4|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ = (\inst4|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & (((\inst4|Div1|auto_generated|divider|divider|StageOut[27]~69_combout\) # 
-- (\inst4|Div1|auto_generated|divider|divider|StageOut[27]~53_combout\)))) # (!\inst4|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((((\inst4|Div1|auto_generated|divider|divider|StageOut[27]~69_combout\) # 
-- (\inst4|Div1|auto_generated|divider|divider|StageOut[27]~53_combout\)))))
-- \inst4|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ = CARRY((!\inst4|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((\inst4|Div1|auto_generated|divider|divider|StageOut[27]~69_combout\) # 
-- (\inst4|Div1|auto_generated|divider|divider|StageOut[27]~53_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Div1|auto_generated|divider|divider|StageOut[27]~69_combout\,
	datab => \inst4|Div1|auto_generated|divider|divider|StageOut[27]~53_combout\,
	datad => VCC,
	cin => \inst4|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~3\,
	combout => \inst4|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	cout => \inst4|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\);

-- Location: LCCOMB_X79_Y46_N12
\inst4|Div1|auto_generated|divider|divider|StageOut[28]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Div1|auto_generated|divider|divider|StageOut[28]~68_combout\ = (\inst4|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((\inst4|Div1|auto_generated|divider|divider|StageOut[22]~65_combout\) # 
-- ((\inst4|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ & !\inst4|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datab => \inst4|Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datac => \inst4|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \inst4|Div1|auto_generated|divider|divider|StageOut[22]~65_combout\,
	combout => \inst4|Div1|auto_generated|divider|divider|StageOut[28]~68_combout\);

-- Location: LCCOMB_X79_Y46_N6
\inst4|Div1|auto_generated|divider|divider|StageOut[28]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Div1|auto_generated|divider|divider|StageOut[28]~52_combout\ = (\inst4|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ & !\inst4|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Div1|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	datac => \inst4|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \inst4|Div1|auto_generated|divider|divider|StageOut[28]~52_combout\);

-- Location: LCCOMB_X80_Y46_N28
\inst4|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\ = CARRY((!\inst4|Div1|auto_generated|divider|divider|StageOut[28]~68_combout\ & (!\inst4|Div1|auto_generated|divider|divider|StageOut[28]~52_combout\ & 
-- !\inst4|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Div1|auto_generated|divider|divider|StageOut[28]~68_combout\,
	datab => \inst4|Div1|auto_generated|divider|divider|StageOut[28]~52_combout\,
	datad => VCC,
	cin => \inst4|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~5\,
	cout => \inst4|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\);

-- Location: LCCOMB_X80_Y46_N30
\inst4|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ = \inst4|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst4|Div1|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\,
	combout => \inst4|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\);

-- Location: LCCOMB_X81_Y46_N2
\inst4|Div1|auto_generated|divider|divider|StageOut[33]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Div1|auto_generated|divider|divider|StageOut[33]~56_combout\ = (\inst4|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ & !\inst4|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|Div1|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	datad => \inst4|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \inst4|Div1|auto_generated|divider|divider|StageOut[33]~56_combout\);

-- Location: LCCOMB_X80_Y46_N0
\inst4|Div1|auto_generated|divider|divider|StageOut[33]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Div1|auto_generated|divider|divider|StageOut[33]~71_combout\ = (\inst4|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & ((\inst4|Div1|auto_generated|divider|divider|StageOut[27]~69_combout\) # 
-- ((!\inst4|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & \inst4|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Div1|auto_generated|divider|divider|StageOut[27]~69_combout\,
	datab => \inst4|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datac => \inst4|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \inst4|Div1|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	combout => \inst4|Div1|auto_generated|divider|divider|StageOut[33]~71_combout\);

-- Location: LCCOMB_X81_Y46_N4
\inst4|Div1|auto_generated|divider|divider|StageOut[32]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Div1|auto_generated|divider|divider|StageOut[32]~57_combout\ = (!\inst4|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & \inst4|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \inst4|Div1|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	combout => \inst4|Div1|auto_generated|divider|divider|StageOut[32]~57_combout\);

-- Location: LCCOMB_X80_Y46_N18
\inst4|Div1|auto_generated|divider|divider|StageOut[32]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Div1|auto_generated|divider|divider|StageOut[32]~72_combout\ = (\inst4|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & ((\inst4|Div1|auto_generated|divider|divider|StageOut[26]~70_combout\) # 
-- ((\inst4|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ & !\inst4|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Div1|auto_generated|divider|divider|StageOut[26]~70_combout\,
	datab => \inst4|Div1|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datac => \inst4|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \inst4|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \inst4|Div1|auto_generated|divider|divider|StageOut[32]~72_combout\);

-- Location: LCCOMB_X80_Y46_N20
\inst4|Div1|auto_generated|divider|divider|StageOut[31]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Div1|auto_generated|divider|divider|StageOut[31]~58_combout\ = (\inst4|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ & !\inst4|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Div1|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	datac => \inst4|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	combout => \inst4|Div1|auto_generated|divider|divider|StageOut[31]~58_combout\);

-- Location: LCCOMB_X80_Y46_N4
\inst4|Div1|auto_generated|divider|divider|StageOut[31]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Div1|auto_generated|divider|divider|StageOut[31]~73_combout\ = (\inst4|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & ((\inst4|Div1|auto_generated|divider|divider|StageOut[25]~74_combout\) # 
-- ((!\inst4|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & \inst4|Div1|auto_generated|divider|divider|add_sub_5_result_int[0]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datab => \inst4|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datac => \inst4|Div1|auto_generated|divider|divider|StageOut[25]~74_combout\,
	datad => \inst4|Div1|auto_generated|divider|divider|add_sub_5_result_int[0]~10_combout\,
	combout => \inst4|Div1|auto_generated|divider|divider|StageOut[31]~73_combout\);

-- Location: LCCOMB_X81_Y46_N12
\inst4|Mod0|auto_generated|divider|divider|StageOut[57]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Mod0|auto_generated|divider|divider|StageOut[57]~69_combout\ = (!\inst4|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & \inst4|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datad => \inst4|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~14_combout\,
	combout => \inst4|Mod0|auto_generated|divider|divider|StageOut[57]~69_combout\);

-- Location: LCCOMB_X81_Y46_N18
\inst4|Mod0|auto_generated|divider|divider|StageOut[57]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Mod0|auto_generated|divider|divider|StageOut[57]~68_combout\ = (\inst2|s_initial_val\(1) & \inst4|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|s_initial_val\(1),
	datad => \inst4|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	combout => \inst4|Mod0|auto_generated|divider|divider|StageOut[57]~68_combout\);

-- Location: LCCOMB_X81_Y46_N10
\inst4|Div1|auto_generated|divider|divider|add_sub_6_result_int[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Div1|auto_generated|divider|divider|add_sub_6_result_int[0]~10_combout\ = (\inst4|Mod0|auto_generated|divider|divider|StageOut[57]~69_combout\) # (\inst4|Mod0|auto_generated|divider|divider|StageOut[57]~68_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Mod0|auto_generated|divider|divider|StageOut[57]~69_combout\,
	datad => \inst4|Mod0|auto_generated|divider|divider|StageOut[57]~68_combout\,
	combout => \inst4|Div1|auto_generated|divider|divider|add_sub_6_result_int[0]~10_combout\);

-- Location: LCCOMB_X81_Y46_N6
\inst4|Div1|auto_generated|divider|divider|StageOut[30]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Div1|auto_generated|divider|divider|StageOut[30]~59_combout\ = (!\inst4|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & \inst4|Div1|auto_generated|divider|divider|add_sub_6_result_int[0]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \inst4|Div1|auto_generated|divider|divider|add_sub_6_result_int[0]~10_combout\,
	combout => \inst4|Div1|auto_generated|divider|divider|StageOut[30]~59_combout\);

-- Location: LCCOMB_X81_Y46_N0
\inst4|Div1|auto_generated|divider|divider|StageOut[30]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Div1|auto_generated|divider|divider|StageOut[30]~75_combout\ = (\inst4|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & ((\inst4|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & 
-- (\inst2|s_initial_val\(1))) # (!\inst4|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\ & ((\inst4|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~14_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Mod0|auto_generated|divider|divider|add_sub_7_result_int[8]~12_combout\,
	datab => \inst4|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datac => \inst2|s_initial_val\(1),
	datad => \inst4|Mod0|auto_generated|divider|divider|add_sub_7_result_int[1]~14_combout\,
	combout => \inst4|Div1|auto_generated|divider|divider|StageOut[30]~75_combout\);

-- Location: LCCOMB_X80_Y46_N6
\inst4|Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~1_cout\ = CARRY((\inst4|Div1|auto_generated|divider|divider|StageOut[30]~59_combout\) # (\inst4|Div1|auto_generated|divider|divider|StageOut[30]~75_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Div1|auto_generated|divider|divider|StageOut[30]~59_combout\,
	datab => \inst4|Div1|auto_generated|divider|divider|StageOut[30]~75_combout\,
	datad => VCC,
	cout => \inst4|Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~1_cout\);

-- Location: LCCOMB_X80_Y46_N8
\inst4|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~3_cout\ = CARRY((!\inst4|Div1|auto_generated|divider|divider|StageOut[31]~58_combout\ & (!\inst4|Div1|auto_generated|divider|divider|StageOut[31]~73_combout\ & 
-- !\inst4|Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Div1|auto_generated|divider|divider|StageOut[31]~58_combout\,
	datab => \inst4|Div1|auto_generated|divider|divider|StageOut[31]~73_combout\,
	datad => VCC,
	cin => \inst4|Div1|auto_generated|divider|divider|add_sub_7_result_int[1]~1_cout\,
	cout => \inst4|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~3_cout\);

-- Location: LCCOMB_X80_Y46_N10
\inst4|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~5_cout\ = CARRY((!\inst4|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~3_cout\ & ((\inst4|Div1|auto_generated|divider|divider|StageOut[32]~57_combout\) # 
-- (\inst4|Div1|auto_generated|divider|divider|StageOut[32]~72_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Div1|auto_generated|divider|divider|StageOut[32]~57_combout\,
	datab => \inst4|Div1|auto_generated|divider|divider|StageOut[32]~72_combout\,
	datad => VCC,
	cin => \inst4|Div1|auto_generated|divider|divider|add_sub_7_result_int[2]~3_cout\,
	cout => \inst4|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~5_cout\);

-- Location: LCCOMB_X80_Y46_N12
\inst4|Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\ = CARRY((!\inst4|Div1|auto_generated|divider|divider|StageOut[33]~56_combout\ & (!\inst4|Div1|auto_generated|divider|divider|StageOut[33]~71_combout\ & 
-- !\inst4|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Div1|auto_generated|divider|divider|StageOut[33]~56_combout\,
	datab => \inst4|Div1|auto_generated|divider|divider|StageOut[33]~71_combout\,
	datad => VCC,
	cin => \inst4|Div1|auto_generated|divider|divider|add_sub_7_result_int[3]~5_cout\,
	cout => \inst4|Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\);

-- Location: LCCOMB_X80_Y46_N14
\inst4|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ = \inst4|Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst4|Div1|auto_generated|divider|divider|add_sub_7_result_int[4]~7_cout\,
	combout => \inst4|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\);

-- Location: LCCOMB_X76_Y44_N6
\inst6|decOut_1[3]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|decOut_1[3]~12_combout\ = (!\inst4|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & (!\inst4|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- (!\inst4|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & !\inst4|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datab => \inst4|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \inst4|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \inst4|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \inst6|decOut_1[3]~12_combout\);

-- Location: LCCOMB_X79_Y44_N12
\inst6|decOut_1[6]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|decOut_1[6]~13_combout\ = (\inst6|decOut_1[6]~11_combout\) # ((\inst6|decOut_1[3]~10_combout\ & (!\inst6|decOut_1[3]~12_combout\ & !\inst4|Mod0|auto_generated|divider|divider|StageOut[62]~62_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|decOut_1[3]~10_combout\,
	datab => \inst6|decOut_1[6]~11_combout\,
	datac => \inst6|decOut_1[3]~12_combout\,
	datad => \inst4|Mod0|auto_generated|divider|divider|StageOut[62]~62_combout\,
	combout => \inst6|decOut_1[6]~13_combout\);

-- Location: LCCOMB_X77_Y44_N6
\inst6|decOut_1[2]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|decOut_1[2]~16_combout\ = (!\inst4|Mod0|auto_generated|divider|divider|StageOut[62]~72_combout\ & (!\inst4|Mod0|auto_generated|divider|divider|StageOut[62]~63_combout\ & (\inst4|Mod0|auto_generated|divider|divider|StageOut[63]~55_combout\ $ 
-- (!\inst4|Mod0|auto_generated|divider|divider|StageOut[61]~52_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Mod0|auto_generated|divider|divider|StageOut[63]~55_combout\,
	datab => \inst4|Mod0|auto_generated|divider|divider|StageOut[62]~72_combout\,
	datac => \inst4|Mod0|auto_generated|divider|divider|StageOut[62]~63_combout\,
	datad => \inst4|Mod0|auto_generated|divider|divider|StageOut[61]~52_combout\,
	combout => \inst6|decOut_1[2]~16_combout\);

-- Location: LCCOMB_X76_Y44_N24
\inst6|decOut_1~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|decOut_1~17_combout\ = (!\inst4|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & (!\inst4|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- (\inst4|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & !\inst4|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datab => \inst4|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \inst4|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \inst4|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \inst6|decOut_1~17_combout\);

-- Location: LCCOMB_X75_Y44_N22
\inst6|decOut_1[5]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|decOut_1[5]~14_combout\ = (\inst4|Mod0|auto_generated|divider|divider|StageOut[63]~55_combout\ & ((\inst4|Mod0|auto_generated|divider|divider|StageOut[61]~52_combout\ & ((!\inst6|decOut_1[1]~2_combout\))) # 
-- (!\inst4|Mod0|auto_generated|divider|divider|StageOut[61]~52_combout\ & (!\inst4|Mod0|auto_generated|divider|divider|StageOut[59]~53_combout\)))) # (!\inst4|Mod0|auto_generated|divider|divider|StageOut[63]~55_combout\ & (((!\inst6|decOut_1[1]~2_combout\ & 
-- !\inst4|Mod0|auto_generated|divider|divider|StageOut[61]~52_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000100111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Mod0|auto_generated|divider|divider|StageOut[63]~55_combout\,
	datab => \inst4|Mod0|auto_generated|divider|divider|StageOut[59]~53_combout\,
	datac => \inst6|decOut_1[1]~2_combout\,
	datad => \inst4|Mod0|auto_generated|divider|divider|StageOut[61]~52_combout\,
	combout => \inst6|decOut_1[5]~14_combout\);

-- Location: LCCOMB_X75_Y44_N8
\inst6|decOut_1[5]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|decOut_1[5]~15_combout\ = (\inst4|Mod0|auto_generated|divider|divider|StageOut[62]~62_combout\ & (\inst6|decOut_1[5]~14_combout\ & !\inst4|Mod0|auto_generated|divider|divider|StageOut[60]~54_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Mod0|auto_generated|divider|divider|StageOut[62]~62_combout\,
	datac => \inst6|decOut_1[5]~14_combout\,
	datad => \inst4|Mod0|auto_generated|divider|divider|StageOut[60]~54_combout\,
	combout => \inst6|decOut_1[5]~15_combout\);

-- Location: LCCOMB_X76_Y44_N14
\inst6|decOut_1[5]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|decOut_1[5]~18_combout\ = (\inst6|decOut_1[5]~15_combout\) # ((\inst6|decOut_1[2]~16_combout\ & ((\inst6|decOut_1~17_combout\) # (!\inst6|decOut_1[3]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|decOut_1[2]~16_combout\,
	datab => \inst6|decOut_1~17_combout\,
	datac => \inst6|decOut_1[3]~7_combout\,
	datad => \inst6|decOut_1[5]~15_combout\,
	combout => \inst6|decOut_1[5]~18_combout\);

-- Location: LCCOMB_X77_Y44_N20
\inst6|decOut_1[5]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|decOut_1[5]~21_combout\ = (!\inst4|Mod0|auto_generated|divider|divider|StageOut[63]~57_combout\ & (!\inst4|Mod0|auto_generated|divider|divider|StageOut[63]~70_combout\ & ((\inst4|Mod0|auto_generated|divider|divider|StageOut[61]~71_combout\) # 
-- (\inst4|Mod0|auto_generated|divider|divider|StageOut[61]~56_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Mod0|auto_generated|divider|divider|StageOut[63]~57_combout\,
	datab => \inst4|Mod0|auto_generated|divider|divider|StageOut[63]~70_combout\,
	datac => \inst4|Mod0|auto_generated|divider|divider|StageOut[61]~71_combout\,
	datad => \inst4|Mod0|auto_generated|divider|divider|StageOut[61]~56_combout\,
	combout => \inst6|decOut_1[5]~21_combout\);

-- Location: LCCOMB_X77_Y44_N30
\inst6|decOut_1[5]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|decOut_1[5]~20_combout\ = (\inst4|Mod0|auto_generated|divider|divider|StageOut[60]~54_combout\ & (\inst6|decOut_1~17_combout\ & (\inst4|Mod0|auto_generated|divider|divider|StageOut[62]~62_combout\ & 
-- \inst4|Mod0|auto_generated|divider|divider|StageOut[59]~53_combout\))) # (!\inst4|Mod0|auto_generated|divider|divider|StageOut[60]~54_combout\ & (((!\inst4|Mod0|auto_generated|divider|divider|StageOut[62]~62_combout\ & 
-- !\inst4|Mod0|auto_generated|divider|divider|StageOut[59]~53_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Mod0|auto_generated|divider|divider|StageOut[60]~54_combout\,
	datab => \inst6|decOut_1~17_combout\,
	datac => \inst4|Mod0|auto_generated|divider|divider|StageOut[62]~62_combout\,
	datad => \inst4|Mod0|auto_generated|divider|divider|StageOut[59]~53_combout\,
	combout => \inst6|decOut_1[5]~20_combout\);

-- Location: LCCOMB_X77_Y44_N24
\inst6|decOut_1[5]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|decOut_1[5]~19_combout\ = (\inst6|decOut_1~17_combout\ & (!\inst4|Mod0|auto_generated|divider|divider|StageOut[62]~62_combout\ & (!\inst4|Mod0|auto_generated|divider|divider|StageOut[61]~71_combout\ & 
-- !\inst4|Mod0|auto_generated|divider|divider|StageOut[61]~56_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|decOut_1~17_combout\,
	datab => \inst4|Mod0|auto_generated|divider|divider|StageOut[62]~62_combout\,
	datac => \inst4|Mod0|auto_generated|divider|divider|StageOut[61]~71_combout\,
	datad => \inst4|Mod0|auto_generated|divider|divider|StageOut[61]~56_combout\,
	combout => \inst6|decOut_1[5]~19_combout\);

-- Location: LCCOMB_X77_Y44_N22
\inst6|decOut_1[5]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|decOut_1[5]~22_combout\ = (\inst6|decOut_1[5]~18_combout\) # ((\inst6|decOut_1[5]~19_combout\) # ((\inst6|decOut_1[5]~21_combout\ & \inst6|decOut_1[5]~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|decOut_1[5]~18_combout\,
	datab => \inst6|decOut_1[5]~21_combout\,
	datac => \inst6|decOut_1[5]~20_combout\,
	datad => \inst6|decOut_1[5]~19_combout\,
	combout => \inst6|decOut_1[5]~22_combout\);

-- Location: LCCOMB_X76_Y44_N12
\inst6|decOut_1[4]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|decOut_1[4]~23_combout\ = (\inst4|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & ((\inst4|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & 
-- (!\inst4|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\)) # (!\inst4|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((\inst4|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))))) # 
-- (!\inst4|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & (!\inst4|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\ & (\inst4|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datab => \inst4|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \inst4|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \inst4|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \inst6|decOut_1[4]~23_combout\);

-- Location: LCCOMB_X79_Y44_N26
\inst6|decOut_1[3]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|decOut_1[3]~24_combout\ = (!\inst4|Mod0|auto_generated|divider|divider|StageOut[58]~61_combout\ & (\inst4|Mod0|auto_generated|divider|divider|StageOut[63]~55_combout\ & (!\inst4|Mod0|auto_generated|divider|divider|StageOut[57]~60_combout\ & 
-- !\inst4|Mod0|auto_generated|divider|divider|StageOut[61]~52_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Mod0|auto_generated|divider|divider|StageOut[58]~61_combout\,
	datab => \inst4|Mod0|auto_generated|divider|divider|StageOut[63]~55_combout\,
	datac => \inst4|Mod0|auto_generated|divider|divider|StageOut[57]~60_combout\,
	datad => \inst4|Mod0|auto_generated|divider|divider|StageOut[61]~52_combout\,
	combout => \inst6|decOut_1[3]~24_combout\);

-- Location: LCCOMB_X79_Y44_N4
\inst6|decOut_1[3]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|decOut_1[3]~53_combout\ = (\inst4|Mod0|auto_generated|divider|divider|StageOut[59]~53_combout\ & ((\inst4|Mod0|auto_generated|divider|divider|StageOut[63]~55_combout\) # ((!\inst4|Mod0|auto_generated|divider|divider|StageOut[61]~52_combout\) # 
-- (!\inst4|Mod0|auto_generated|divider|divider|StageOut[57]~60_combout\)))) # (!\inst4|Mod0|auto_generated|divider|divider|StageOut[59]~53_combout\ & ((\inst4|Mod0|auto_generated|divider|divider|StageOut[63]~55_combout\ & 
-- (\inst4|Mod0|auto_generated|divider|divider|StageOut[57]~60_combout\ & \inst4|Mod0|auto_generated|divider|divider|StageOut[61]~52_combout\)) # (!\inst4|Mod0|auto_generated|divider|divider|StageOut[63]~55_combout\ & 
-- ((\inst4|Mod0|auto_generated|divider|divider|StageOut[57]~60_combout\) # (\inst4|Mod0|auto_generated|divider|divider|StageOut[61]~52_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101110111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Mod0|auto_generated|divider|divider|StageOut[59]~53_combout\,
	datab => \inst4|Mod0|auto_generated|divider|divider|StageOut[63]~55_combout\,
	datac => \inst4|Mod0|auto_generated|divider|divider|StageOut[57]~60_combout\,
	datad => \inst4|Mod0|auto_generated|divider|divider|StageOut[61]~52_combout\,
	combout => \inst6|decOut_1[3]~53_combout\);

-- Location: LCCOMB_X79_Y44_N18
\inst6|decOut_1[3]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|decOut_1[3]~54_combout\ = (!\inst4|Mod0|auto_generated|divider|divider|StageOut[60]~54_combout\ & ((\inst4|Mod0|auto_generated|divider|divider|StageOut[58]~61_combout\ & (\inst6|decOut_1[3]~53_combout\)) # 
-- (!\inst4|Mod0|auto_generated|divider|divider|StageOut[58]~61_combout\ & ((\inst4|Mod0|auto_generated|divider|divider|StageOut[59]~53_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Mod0|auto_generated|divider|divider|StageOut[58]~61_combout\,
	datab => \inst4|Mod0|auto_generated|divider|divider|StageOut[60]~54_combout\,
	datac => \inst6|decOut_1[3]~53_combout\,
	datad => \inst4|Mod0|auto_generated|divider|divider|StageOut[59]~53_combout\,
	combout => \inst6|decOut_1[3]~54_combout\);

-- Location: LCCOMB_X79_Y44_N24
\inst6|decOut_1[3]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|decOut_1[3]~25_combout\ = (\inst6|decOut_1[3]~54_combout\) # ((\inst6|decOut_1[3]~24_combout\ & (\inst4|Mod0|auto_generated|divider|divider|StageOut[60]~54_combout\ & !\inst4|Mod0|auto_generated|divider|divider|StageOut[59]~53_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|decOut_1[3]~24_combout\,
	datab => \inst6|decOut_1[3]~54_combout\,
	datac => \inst4|Mod0|auto_generated|divider|divider|StageOut[60]~54_combout\,
	datad => \inst4|Mod0|auto_generated|divider|divider|StageOut[59]~53_combout\,
	combout => \inst6|decOut_1[3]~25_combout\);

-- Location: LCCOMB_X79_Y44_N10
\inst6|decOut_1[3]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|decOut_1[3]~26_combout\ = (\inst4|Mod0|auto_generated|divider|divider|StageOut[62]~62_combout\ & (((\inst6|decOut_1[3]~25_combout\)))) # (!\inst4|Mod0|auto_generated|divider|divider|StageOut[62]~62_combout\ & (\inst6|decOut_1[3]~10_combout\ & 
-- ((\inst6|decOut_1[3]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|decOut_1[3]~10_combout\,
	datab => \inst6|decOut_1[3]~25_combout\,
	datac => \inst6|decOut_1[3]~12_combout\,
	datad => \inst4|Mod0|auto_generated|divider|divider|StageOut[62]~62_combout\,
	combout => \inst6|decOut_1[3]~26_combout\);

-- Location: LCCOMB_X79_Y44_N28
\inst6|decOut_1[3]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|decOut_1[3]~27_combout\ = (!\inst4|Mod0|auto_generated|divider|divider|StageOut[63]~55_combout\ & (!\inst4|Mod0|auto_generated|divider|divider|StageOut[60]~54_combout\ & ((\inst4|Mod0|auto_generated|divider|divider|StageOut[59]~53_combout\) # 
-- (!\inst4|Mod0|auto_generated|divider|divider|StageOut[61]~52_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Mod0|auto_generated|divider|divider|StageOut[59]~53_combout\,
	datab => \inst4|Mod0|auto_generated|divider|divider|StageOut[63]~55_combout\,
	datac => \inst4|Mod0|auto_generated|divider|divider|StageOut[60]~54_combout\,
	datad => \inst4|Mod0|auto_generated|divider|divider|StageOut[61]~52_combout\,
	combout => \inst6|decOut_1[3]~27_combout\);

-- Location: LCCOMB_X79_Y44_N30
\inst6|decOut_1[3]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|decOut_1[3]~28_combout\ = (\inst4|Mod0|auto_generated|divider|divider|StageOut[61]~52_combout\ & (!\inst4|Mod0|auto_generated|divider|divider|StageOut[57]~60_combout\ & ((\inst4|Mod0|auto_generated|divider|divider|StageOut[60]~54_combout\)))) # 
-- (!\inst4|Mod0|auto_generated|divider|divider|StageOut[61]~52_combout\ & (((!\inst4|Mod0|auto_generated|divider|divider|StageOut[63]~55_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Mod0|auto_generated|divider|divider|StageOut[57]~60_combout\,
	datab => \inst4|Mod0|auto_generated|divider|divider|StageOut[63]~55_combout\,
	datac => \inst4|Mod0|auto_generated|divider|divider|StageOut[60]~54_combout\,
	datad => \inst4|Mod0|auto_generated|divider|divider|StageOut[61]~52_combout\,
	combout => \inst6|decOut_1[3]~28_combout\);

-- Location: LCCOMB_X79_Y44_N0
\inst6|decOut_1[3]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|decOut_1[3]~29_combout\ = (\inst6|decOut_1[3]~27_combout\) # ((!\inst4|Mod0|auto_generated|divider|divider|StageOut[58]~61_combout\ & (\inst6|decOut_1[3]~28_combout\ & !\inst4|Mod0|auto_generated|divider|divider|StageOut[59]~53_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Mod0|auto_generated|divider|divider|StageOut[58]~61_combout\,
	datab => \inst6|decOut_1[3]~27_combout\,
	datac => \inst6|decOut_1[3]~28_combout\,
	datad => \inst4|Mod0|auto_generated|divider|divider|StageOut[59]~53_combout\,
	combout => \inst6|decOut_1[3]~29_combout\);

-- Location: LCCOMB_X79_Y44_N22
\inst6|decOut_1[3]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|decOut_1[3]~30_combout\ = (\inst4|Mod0|auto_generated|divider|divider|StageOut[58]~61_combout\ & (!\inst4|Mod0|auto_generated|divider|divider|StageOut[60]~54_combout\)) # (!\inst4|Mod0|auto_generated|divider|divider|StageOut[58]~61_combout\ & 
-- (\inst4|Mod0|auto_generated|divider|divider|StageOut[57]~60_combout\ & ((!\inst4|Mod0|auto_generated|divider|divider|StageOut[59]~53_combout\) # (!\inst4|Mod0|auto_generated|divider|divider|StageOut[60]~54_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001001110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Mod0|auto_generated|divider|divider|StageOut[58]~61_combout\,
	datab => \inst4|Mod0|auto_generated|divider|divider|StageOut[60]~54_combout\,
	datac => \inst4|Mod0|auto_generated|divider|divider|StageOut[57]~60_combout\,
	datad => \inst4|Mod0|auto_generated|divider|divider|StageOut[59]~53_combout\,
	combout => \inst6|decOut_1[3]~30_combout\);

-- Location: LCCOMB_X79_Y44_N16
\inst6|decOut_1[3]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|decOut_1[3]~31_combout\ = (\inst6|decOut_1[3]~29_combout\) # ((\inst4|Mod0|auto_generated|divider|divider|StageOut[61]~52_combout\ & (\inst6|decOut_1[3]~30_combout\ & \inst4|Mod0|auto_generated|divider|divider|StageOut[63]~55_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Mod0|auto_generated|divider|divider|StageOut[61]~52_combout\,
	datab => \inst6|decOut_1[3]~29_combout\,
	datac => \inst6|decOut_1[3]~30_combout\,
	datad => \inst4|Mod0|auto_generated|divider|divider|StageOut[63]~55_combout\,
	combout => \inst6|decOut_1[3]~31_combout\);

-- Location: LCCOMB_X79_Y44_N14
\inst6|decOut_1[3]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|decOut_1[3]~32_combout\ = (\inst6|decOut_1[3]~26_combout\) # ((\inst6|decOut_1[3]~31_combout\ & (!\inst6|decOut_1[3]~10_combout\ & !\inst4|Mod0|auto_generated|divider|divider|StageOut[62]~62_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|decOut_1[3]~26_combout\,
	datab => \inst6|decOut_1[3]~31_combout\,
	datac => \inst6|decOut_1[3]~10_combout\,
	datad => \inst4|Mod0|auto_generated|divider|divider|StageOut[62]~62_combout\,
	combout => \inst6|decOut_1[3]~32_combout\);

-- Location: LCCOMB_X76_Y44_N16
\inst6|decOut_1[2]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|decOut_1[2]~36_combout\ = (\inst4|Mod0|auto_generated|divider|divider|StageOut[60]~54_combout\ & ((\inst4|Mod0|auto_generated|divider|divider|StageOut[58]~61_combout\ & ((!\inst4|Mod0|auto_generated|divider|divider|StageOut[57]~60_combout\) # 
-- (!\inst4|Mod0|auto_generated|divider|divider|StageOut[59]~53_combout\))) # (!\inst4|Mod0|auto_generated|divider|divider|StageOut[58]~61_combout\ & (\inst4|Mod0|auto_generated|divider|divider|StageOut[59]~53_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Mod0|auto_generated|divider|divider|StageOut[58]~61_combout\,
	datab => \inst4|Mod0|auto_generated|divider|divider|StageOut[60]~54_combout\,
	datac => \inst4|Mod0|auto_generated|divider|divider|StageOut[59]~53_combout\,
	datad => \inst4|Mod0|auto_generated|divider|divider|StageOut[57]~60_combout\,
	combout => \inst6|decOut_1[2]~36_combout\);

-- Location: LCCOMB_X76_Y44_N30
\inst6|decOut_1~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|decOut_1~33_combout\ = (!\inst4|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (!\inst4|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & 
-- ((\inst4|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\) # (!\inst4|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Div1|auto_generated|divider|divider|add_sub_7_result_int[5]~8_combout\,
	datab => \inst4|Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \inst4|Div1|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datad => \inst4|Div1|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \inst6|decOut_1~33_combout\);

-- Location: LCCOMB_X77_Y44_N4
\inst6|decOut_1[2]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|decOut_1[2]~34_combout\ = (\inst4|Mod0|auto_generated|divider|divider|StageOut[62]~62_combout\ & (\inst4|Mod0|auto_generated|divider|divider|StageOut[60]~54_combout\ & (\inst4|Mod0|auto_generated|divider|divider|StageOut[59]~53_combout\ & 
-- \inst4|Mod0|auto_generated|divider|divider|StageOut[61]~52_combout\))) # (!\inst4|Mod0|auto_generated|divider|divider|StageOut[62]~62_combout\ & (((!\inst4|Mod0|auto_generated|divider|divider|StageOut[61]~52_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Mod0|auto_generated|divider|divider|StageOut[60]~54_combout\,
	datab => \inst4|Mod0|auto_generated|divider|divider|StageOut[59]~53_combout\,
	datac => \inst4|Mod0|auto_generated|divider|divider|StageOut[62]~62_combout\,
	datad => \inst4|Mod0|auto_generated|divider|divider|StageOut[61]~52_combout\,
	combout => \inst6|decOut_1[2]~34_combout\);

-- Location: LCCOMB_X77_Y44_N26
\inst6|decOut_1[2]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|decOut_1[2]~35_combout\ = (\inst6|decOut_1[2]~16_combout\ & ((\inst6|decOut_1[3]~7_combout\) # ((\inst6|decOut_1[6]~1_combout\ & \inst6|decOut_1[2]~34_combout\)))) # (!\inst6|decOut_1[2]~16_combout\ & (\inst6|decOut_1[6]~1_combout\ & 
-- (\inst6|decOut_1[2]~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|decOut_1[2]~16_combout\,
	datab => \inst6|decOut_1[6]~1_combout\,
	datac => \inst6|decOut_1[2]~34_combout\,
	datad => \inst6|decOut_1[3]~7_combout\,
	combout => \inst6|decOut_1[2]~35_combout\);

-- Location: LCCOMB_X76_Y44_N22
\inst6|decOut_1[2]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|decOut_1[2]~37_combout\ = (\inst6|decOut_1[2]~16_combout\ & ((\inst6|decOut_1[2]~36_combout\) # ((\inst6|decOut_1~33_combout\ & \inst6|decOut_1[2]~35_combout\)))) # (!\inst6|decOut_1[2]~16_combout\ & (((\inst6|decOut_1~33_combout\ & 
-- \inst6|decOut_1[2]~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|decOut_1[2]~16_combout\,
	datab => \inst6|decOut_1[2]~36_combout\,
	datac => \inst6|decOut_1~33_combout\,
	datad => \inst6|decOut_1[2]~35_combout\,
	combout => \inst6|decOut_1[2]~37_combout\);

-- Location: LCCOMB_X75_Y44_N4
\inst6|decOut_1[1]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|decOut_1[1]~41_combout\ = (\inst4|Mod0|auto_generated|divider|divider|StageOut[59]~53_combout\ & (\inst4|Mod0|auto_generated|divider|divider|StageOut[57]~60_combout\ & (\inst4|Mod0|auto_generated|divider|divider|StageOut[58]~61_combout\ & 
-- !\inst4|Mod0|auto_generated|divider|divider|StageOut[60]~54_combout\))) # (!\inst4|Mod0|auto_generated|divider|divider|StageOut[59]~53_combout\ & (((\inst4|Mod0|auto_generated|divider|divider|StageOut[60]~54_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Mod0|auto_generated|divider|divider|StageOut[57]~60_combout\,
	datab => \inst4|Mod0|auto_generated|divider|divider|StageOut[59]~53_combout\,
	datac => \inst4|Mod0|auto_generated|divider|divider|StageOut[58]~61_combout\,
	datad => \inst4|Mod0|auto_generated|divider|divider|StageOut[60]~54_combout\,
	combout => \inst6|decOut_1[1]~41_combout\);

-- Location: LCCOMB_X75_Y44_N14
\inst6|decOut_1[1]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|decOut_1[1]~42_combout\ = (\inst4|Mod0|auto_generated|divider|divider|StageOut[60]~54_combout\ & ((\inst4|Mod0|auto_generated|divider|divider|StageOut[57]~60_combout\) # ((\inst4|Mod0|auto_generated|divider|divider|StageOut[59]~53_combout\) # 
-- (\inst4|Mod0|auto_generated|divider|divider|StageOut[58]~61_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Mod0|auto_generated|divider|divider|StageOut[57]~60_combout\,
	datab => \inst4|Mod0|auto_generated|divider|divider|StageOut[59]~53_combout\,
	datac => \inst4|Mod0|auto_generated|divider|divider|StageOut[58]~61_combout\,
	datad => \inst4|Mod0|auto_generated|divider|divider|StageOut[60]~54_combout\,
	combout => \inst6|decOut_1[1]~42_combout\);

-- Location: LCCOMB_X75_Y44_N12
\inst6|decOut_1[1]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|decOut_1[1]~43_combout\ = (\inst4|Mod0|auto_generated|divider|divider|StageOut[62]~62_combout\ & ((\inst4|Mod0|auto_generated|divider|divider|StageOut[61]~52_combout\ & (\inst6|decOut_1[1]~41_combout\)) # 
-- (!\inst4|Mod0|auto_generated|divider|divider|StageOut[61]~52_combout\ & ((\inst6|decOut_1[1]~42_combout\))))) # (!\inst4|Mod0|auto_generated|divider|divider|StageOut[62]~62_combout\ & (((\inst6|decOut_1[1]~42_combout\ & 
-- \inst4|Mod0|auto_generated|divider|divider|StageOut[61]~52_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Mod0|auto_generated|divider|divider|StageOut[62]~62_combout\,
	datab => \inst6|decOut_1[1]~41_combout\,
	datac => \inst6|decOut_1[1]~42_combout\,
	datad => \inst4|Mod0|auto_generated|divider|divider|StageOut[61]~52_combout\,
	combout => \inst6|decOut_1[1]~43_combout\);

-- Location: LCCOMB_X76_Y44_N28
\inst6|decOut_1[1]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|decOut_1[1]~38_combout\ = (\inst4|Mod0|auto_generated|divider|divider|StageOut[62]~62_combout\ & (\inst4|Mod0|auto_generated|divider|divider|StageOut[60]~54_combout\ & (\inst4|Mod0|auto_generated|divider|divider|StageOut[61]~52_combout\ & 
-- !\inst4|Mod0|auto_generated|divider|divider|StageOut[63]~55_combout\))) # (!\inst4|Mod0|auto_generated|divider|divider|StageOut[62]~62_combout\ & (((!\inst4|Mod0|auto_generated|divider|divider|StageOut[61]~52_combout\ & 
-- \inst4|Mod0|auto_generated|divider|divider|StageOut[63]~55_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Mod0|auto_generated|divider|divider|StageOut[62]~62_combout\,
	datab => \inst4|Mod0|auto_generated|divider|divider|StageOut[60]~54_combout\,
	datac => \inst4|Mod0|auto_generated|divider|divider|StageOut[61]~52_combout\,
	datad => \inst4|Mod0|auto_generated|divider|divider|StageOut[63]~55_combout\,
	combout => \inst6|decOut_1[1]~38_combout\);

-- Location: LCCOMB_X76_Y44_N18
\inst6|decOut_1[1]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|decOut_1[1]~39_combout\ = (\inst6|decOut_1~33_combout\ & ((\inst6|decOut_1[1]~38_combout\) # ((\inst6|decOut_1[3]~7_combout\ & \inst6|decOut_1[2]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|decOut_1~33_combout\,
	datab => \inst6|decOut_1[1]~38_combout\,
	datac => \inst6|decOut_1[3]~7_combout\,
	datad => \inst6|decOut_1[2]~16_combout\,
	combout => \inst6|decOut_1[1]~39_combout\);

-- Location: LCCOMB_X75_Y44_N18
\inst6|decOut_1[1]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|decOut_1[1]~40_combout\ = (\inst4|Mod0|auto_generated|divider|divider|StageOut[62]~62_combout\ & (!\inst6|decOut_1[6]~1_combout\ & (\inst6|decOut_1[1]~2_combout\ & !\inst4|Mod0|auto_generated|divider|divider|StageOut[60]~54_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Mod0|auto_generated|divider|divider|StageOut[62]~62_combout\,
	datab => \inst6|decOut_1[6]~1_combout\,
	datac => \inst6|decOut_1[1]~2_combout\,
	datad => \inst4|Mod0|auto_generated|divider|divider|StageOut[60]~54_combout\,
	combout => \inst6|decOut_1[1]~40_combout\);

-- Location: LCCOMB_X75_Y44_N6
\inst6|decOut_1[1]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|decOut_1[1]~44_combout\ = (\inst6|decOut_1[1]~39_combout\) # ((\inst6|decOut_1[1]~40_combout\) # ((\inst6|decOut_1[1]~43_combout\ & \inst6|decOut_1[6]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|decOut_1[1]~43_combout\,
	datab => \inst6|decOut_1[1]~39_combout\,
	datac => \inst6|decOut_1[6]~1_combout\,
	datad => \inst6|decOut_1[1]~40_combout\,
	combout => \inst6|decOut_1[1]~44_combout\);

-- Location: LCCOMB_X75_Y44_N2
\inst6|decOut_1[0]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|decOut_1[0]~47_combout\ = (\inst4|Mod0|auto_generated|divider|divider|StageOut[62]~62_combout\ & (((\inst4|Mod0|auto_generated|divider|divider|StageOut[58]~61_combout\ & \inst4|Mod0|auto_generated|divider|divider|StageOut[57]~60_combout\)) # 
-- (!\inst4|Mod0|auto_generated|divider|divider|StageOut[61]~52_combout\))) # (!\inst4|Mod0|auto_generated|divider|divider|StageOut[62]~62_combout\ & (((\inst4|Mod0|auto_generated|divider|divider|StageOut[61]~52_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Mod0|auto_generated|divider|divider|StageOut[62]~62_combout\,
	datab => \inst4|Mod0|auto_generated|divider|divider|StageOut[58]~61_combout\,
	datac => \inst4|Mod0|auto_generated|divider|divider|StageOut[57]~60_combout\,
	datad => \inst4|Mod0|auto_generated|divider|divider|StageOut[61]~52_combout\,
	combout => \inst6|decOut_1[0]~47_combout\);

-- Location: LCCOMB_X75_Y44_N28
\inst6|decOut_1[0]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|decOut_1[0]~46_combout\ = (\inst4|Mod0|auto_generated|divider|divider|StageOut[59]~53_combout\ & (\inst6|decOut_1[2]~16_combout\ & ((\inst4|Mod0|auto_generated|divider|divider|StageOut[57]~60_combout\) # 
-- (\inst4|Mod0|auto_generated|divider|divider|StageOut[58]~61_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Mod0|auto_generated|divider|divider|StageOut[57]~60_combout\,
	datab => \inst4|Mod0|auto_generated|divider|divider|StageOut[58]~61_combout\,
	datac => \inst4|Mod0|auto_generated|divider|divider|StageOut[59]~53_combout\,
	datad => \inst6|decOut_1[2]~16_combout\,
	combout => \inst6|decOut_1[0]~46_combout\);

-- Location: LCCOMB_X75_Y44_N16
\inst6|decOut_1[0]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|decOut_1[0]~48_combout\ = (\inst6|decOut_1[0]~46_combout\) # ((\inst6|decOut_1[6]~1_combout\ & (\inst6|decOut_1[0]~47_combout\ & \inst4|Mod0|auto_generated|divider|divider|StageOut[59]~53_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|decOut_1[6]~1_combout\,
	datab => \inst6|decOut_1[0]~47_combout\,
	datac => \inst4|Mod0|auto_generated|divider|divider|StageOut[59]~53_combout\,
	datad => \inst6|decOut_1[0]~46_combout\,
	combout => \inst6|decOut_1[0]~48_combout\);

-- Location: LCCOMB_X76_Y44_N20
\inst6|decOut_1[0]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|decOut_1[0]~45_combout\ = (\inst4|Mod0|auto_generated|divider|divider|StageOut[62]~62_combout\ & (\inst4|Mod0|auto_generated|divider|divider|StageOut[60]~54_combout\ & (\inst4|Mod0|auto_generated|divider|divider|StageOut[61]~52_combout\ & 
-- !\inst4|Mod0|auto_generated|divider|divider|StageOut[63]~55_combout\))) # (!\inst4|Mod0|auto_generated|divider|divider|StageOut[62]~62_combout\ & ((\inst4|Mod0|auto_generated|divider|divider|StageOut[60]~54_combout\ & 
-- (!\inst4|Mod0|auto_generated|divider|divider|StageOut[61]~52_combout\ & \inst4|Mod0|auto_generated|divider|divider|StageOut[63]~55_combout\)) # (!\inst4|Mod0|auto_generated|divider|divider|StageOut[60]~54_combout\ & 
-- ((\inst4|Mod0|auto_generated|divider|divider|StageOut[63]~55_combout\) # (!\inst4|Mod0|auto_generated|divider|divider|StageOut[61]~52_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010110000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Mod0|auto_generated|divider|divider|StageOut[62]~62_combout\,
	datab => \inst4|Mod0|auto_generated|divider|divider|StageOut[60]~54_combout\,
	datac => \inst4|Mod0|auto_generated|divider|divider|StageOut[61]~52_combout\,
	datad => \inst4|Mod0|auto_generated|divider|divider|StageOut[63]~55_combout\,
	combout => \inst6|decOut_1[0]~45_combout\);

-- Location: LCCOMB_X76_Y44_N26
\inst6|decOut_1[0]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|decOut_1[0]~49_combout\ = (\inst6|decOut_1[0]~48_combout\ & (((\inst6|decOut_1[0]~45_combout\ & \inst6|decOut_1~17_combout\)) # (!\inst4|Mod0|auto_generated|divider|divider|StageOut[60]~54_combout\))) # (!\inst6|decOut_1[0]~48_combout\ & 
-- (\inst6|decOut_1[0]~45_combout\ & ((\inst6|decOut_1~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|decOut_1[0]~48_combout\,
	datab => \inst6|decOut_1[0]~45_combout\,
	datac => \inst4|Mod0|auto_generated|divider|divider|StageOut[60]~54_combout\,
	datad => \inst6|decOut_1~17_combout\,
	combout => \inst6|decOut_1[0]~49_combout\);

-- Location: LCCOMB_X75_Y44_N10
\inst6|decOut_1[0]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|decOut_1[0]~50_combout\ = (\inst4|Mod0|auto_generated|divider|divider|StageOut[62]~62_combout\ & ((\inst4|Mod0|auto_generated|divider|divider|StageOut[61]~52_combout\) # ((!\inst4|Mod0|auto_generated|divider|divider|StageOut[58]~61_combout\ & 
-- !\inst4|Mod0|auto_generated|divider|divider|StageOut[57]~60_combout\)))) # (!\inst4|Mod0|auto_generated|divider|divider|StageOut[62]~62_combout\ & (!\inst4|Mod0|auto_generated|divider|divider|StageOut[58]~61_combout\ & 
-- (!\inst4|Mod0|auto_generated|divider|divider|StageOut[57]~60_combout\ & \inst4|Mod0|auto_generated|divider|divider|StageOut[61]~52_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Mod0|auto_generated|divider|divider|StageOut[62]~62_combout\,
	datab => \inst4|Mod0|auto_generated|divider|divider|StageOut[58]~61_combout\,
	datac => \inst4|Mod0|auto_generated|divider|divider|StageOut[57]~60_combout\,
	datad => \inst4|Mod0|auto_generated|divider|divider|StageOut[61]~52_combout\,
	combout => \inst6|decOut_1[0]~50_combout\);

-- Location: LCCOMB_X75_Y44_N24
\inst6|decOut_1[0]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|decOut_1[0]~51_combout\ = (\inst6|decOut_1[6]~1_combout\ & ((\inst6|decOut_1[0]~50_combout\) # ((\inst6|decOut_1[2]~16_combout\ & !\inst4|Mod0|auto_generated|divider|divider|StageOut[58]~61_combout\)))) # (!\inst6|decOut_1[6]~1_combout\ & 
-- (\inst6|decOut_1[2]~16_combout\ & (!\inst4|Mod0|auto_generated|divider|divider|StageOut[58]~61_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|decOut_1[6]~1_combout\,
	datab => \inst6|decOut_1[2]~16_combout\,
	datac => \inst4|Mod0|auto_generated|divider|divider|StageOut[58]~61_combout\,
	datad => \inst6|decOut_1[0]~50_combout\,
	combout => \inst6|decOut_1[0]~51_combout\);

-- Location: LCCOMB_X75_Y44_N26
\inst6|decOut_1[0]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|decOut_1[0]~52_combout\ = (\inst6|decOut_1[0]~49_combout\) # ((\inst4|Mod0|auto_generated|divider|divider|StageOut[60]~54_combout\ & (!\inst4|Mod0|auto_generated|divider|divider|StageOut[59]~53_combout\ & \inst6|decOut_1[0]~51_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Mod0|auto_generated|divider|divider|StageOut[60]~54_combout\,
	datab => \inst6|decOut_1[0]~49_combout\,
	datac => \inst4|Mod0|auto_generated|divider|divider|StageOut[59]~53_combout\,
	datad => \inst6|decOut_1[0]~51_combout\,
	combout => \inst6|decOut_1[0]~52_combout\);

-- Location: LCCOMB_X88_Y51_N2
\inst|food_in\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|food_in~combout\ = (\inst|current_state.WAIT_O_COOK~q\) # (\inst|current_state.WAIT_O_PRE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|current_state.WAIT_O_COOK~q\,
	datad => \inst|current_state.WAIT_O_PRE~q\,
	combout => \inst|food_in~combout\);

-- Location: LCCOMB_X89_Y51_N6
\inst|WideOr11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|WideOr11~combout\ = ((\inst|current_state.COOK~q\) # ((\inst|current_state.PREHEAT~q\) # (\inst|current_state.IDLE~q\))) # (!\inst|current_state.OFF~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|current_state.OFF~q\,
	datab => \inst|current_state.COOK~q\,
	datac => \inst|current_state.PREHEAT~q\,
	datad => \inst|current_state.IDLE~q\,
	combout => \inst|WideOr11~combout\);

-- Location: LCCOMB_X89_Y51_N26
\inst|WideOr12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|WideOr12~combout\ = (\inst|current_state.COOK~q\) # ((\inst|current_state.FINISH~q\) # (\inst|current_state.PREHEAT~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|current_state.COOK~q\,
	datab => \inst|current_state.FINISH~q\,
	datac => \inst|current_state.PREHEAT~q\,
	combout => \inst|WideOr12~combout\);

-- Location: LCCOMB_X89_Y51_N22
\inst|WideOr13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|WideOr13~0_combout\ = (\inst|current_state.COOK~q\) # ((\inst|current_state.FINISH~q\) # ((\inst|current_state.COOLDOWN~q\) # (\inst|current_state.IDLE~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|current_state.COOK~q\,
	datab => \inst|current_state.FINISH~q\,
	datac => \inst|current_state.COOLDOWN~q\,
	datad => \inst|current_state.IDLE~q\,
	combout => \inst|WideOr13~0_combout\);

ww_HEX6(6) <= \HEX6[6]~output_o\;

ww_HEX6(5) <= \HEX6[5]~output_o\;

ww_HEX6(4) <= \HEX6[4]~output_o\;

ww_HEX6(3) <= \HEX6[3]~output_o\;

ww_HEX6(2) <= \HEX6[2]~output_o\;

ww_HEX6(1) <= \HEX6[1]~output_o\;

ww_HEX6(0) <= \HEX6[0]~output_o\;

ww_HEX7(6) <= \HEX7[6]~output_o\;

ww_HEX7(5) <= \HEX7[5]~output_o\;

ww_HEX7(4) <= \HEX7[4]~output_o\;

ww_HEX7(3) <= \HEX7[3]~output_o\;

ww_HEX7(2) <= \HEX7[2]~output_o\;

ww_HEX7(1) <= \HEX7[1]~output_o\;

ww_HEX7(0) <= \HEX7[0]~output_o\;

ww_LEDG(0) <= \LEDG[0]~output_o\;

ww_LEDR(5) <= \LEDR[5]~output_o\;

ww_LEDR(4) <= \LEDR[4]~output_o\;

ww_LEDR(3) <= \LEDR[3]~output_o\;

ww_LEDR(2) <= \LEDR[2]~output_o\;

ww_LEDR(1) <= \LEDR[1]~output_o\;

ww_LEDR(0) <= \LEDR[0]~output_o\;
END structure;


