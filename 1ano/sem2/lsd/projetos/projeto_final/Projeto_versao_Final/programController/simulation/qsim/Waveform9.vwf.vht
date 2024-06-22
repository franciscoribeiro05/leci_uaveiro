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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "05/28/2024 04:13:53"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          UserControl
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY UserControl_vhd_vec_tst IS
END UserControl_vhd_vec_tst;
ARCHITECTURE UserControl_arch OF UserControl_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL mode_sel : STD_LOGIC;
SIGNAL temp_out_cook : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL temp_out_pre : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL tempDw : STD_LOGIC;
SIGNAL tempUp : STD_LOGIC;
SIGNAL time_out_cook : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL time_out_pre : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL timeDw : STD_LOGIC;
SIGNAL timeUp : STD_LOGIC;
COMPONENT UserControl
	PORT (
	clk : IN STD_LOGIC;
	mode_sel : IN STD_LOGIC;
	temp_out_cook : BUFFER STD_LOGIC_VECTOR(7 DOWNTO 0);
	temp_out_pre : BUFFER STD_LOGIC_VECTOR(7 DOWNTO 0);
	tempDw : IN STD_LOGIC;
	tempUp : IN STD_LOGIC;
	time_out_cook : BUFFER STD_LOGIC_VECTOR(7 DOWNTO 0);
	time_out_pre : BUFFER STD_LOGIC_VECTOR(7 DOWNTO 0);
	timeDw : IN STD_LOGIC;
	timeUp : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : UserControl
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	mode_sel => mode_sel,
	temp_out_cook => temp_out_cook,
	temp_out_pre => temp_out_pre,
	tempDw => tempDw,
	tempUp => tempUp,
	time_out_cook => time_out_cook,
	time_out_pre => time_out_pre,
	timeDw => timeDw,
	timeUp => timeUp
	);

-- clk
t_prcs_clk: PROCESS
BEGIN
LOOP
	clk <= '0';
	WAIT FOR 10000 ps;
	clk <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clk;

-- mode_sel
t_prcs_mode_sel: PROCESS
BEGIN
	mode_sel <= '0';
WAIT;
END PROCESS t_prcs_mode_sel;

-- tempDw
t_prcs_tempDw: PROCESS
BEGIN
	tempDw <= '0';
WAIT;
END PROCESS t_prcs_tempDw;

-- tempUp
t_prcs_tempUp: PROCESS
BEGIN
	tempUp <= '0';
	WAIT FOR 50000 ps;
	tempUp <= '1';
	WAIT FOR 30000 ps;
	tempUp <= '0';
	WAIT FOR 210000 ps;
	tempUp <= '1';
	WAIT FOR 10000 ps;
	tempUp <= '0';
WAIT;
END PROCESS t_prcs_tempUp;

-- timeDw
t_prcs_timeDw: PROCESS
BEGIN
	timeDw <= '0';
WAIT;
END PROCESS t_prcs_timeDw;

-- timeUp
t_prcs_timeUp: PROCESS
BEGIN
	timeUp <= '0';
WAIT;
END PROCESS t_prcs_timeUp;
END UserControl_arch;
