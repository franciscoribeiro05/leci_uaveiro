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
-- Generated on "05/23/2024 09:53:06"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          ProgramControler_Demo
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY ProgramControler_Demo_vhd_vec_tst IS
END ProgramControler_Demo_vhd_vec_tst;
ARCHITECTURE ProgramControler_Demo_arch OF ProgramControler_Demo_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL LEDG : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL SW0 : STD_LOGIC;
SIGNAL SW1 : STD_LOGIC;
SIGNAL SW2 : STD_LOGIC;
SIGNAL SW4 : STD_LOGIC;
SIGNAL SW5 : STD_LOGIC;
SIGNAL SW6 : STD_LOGIC;
COMPONENT ProgramControler_Demo
	PORT (
	LEDG : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	SW0 : IN STD_LOGIC;
	SW1 : IN STD_LOGIC;
	SW2 : IN STD_LOGIC;
	SW4 : IN STD_LOGIC;
	SW5 : IN STD_LOGIC;
	SW6 : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : ProgramControler_Demo
	PORT MAP (
-- list connections between master ports and signals
	LEDG => LEDG,
	SW0 => SW0,
	SW1 => SW1,
	SW2 => SW2,
	SW4 => SW4,
	SW5 => SW5,
	SW6 => SW6
	);

-- SW0
t_prcs_SW0: PROCESS
BEGIN
	SW0 <= '0';
WAIT;
END PROCESS t_prcs_SW0;

-- SW1
t_prcs_SW1: PROCESS
BEGIN
	SW1 <= '0';
	WAIT FOR 120000 ps;
	SW1 <= '1';
	WAIT FOR 200000 ps;
	SW1 <= '0';
WAIT;
END PROCESS t_prcs_SW1;

-- SW2
t_prcs_SW2: PROCESS
BEGIN
	SW2 <= '0';
	WAIT FOR 560000 ps;
	SW2 <= '1';
	WAIT FOR 200000 ps;
	SW2 <= '0';
WAIT;
END PROCESS t_prcs_SW2;

-- SW4
t_prcs_SW4: PROCESS
BEGIN
	SW4 <= '0';
WAIT;
END PROCESS t_prcs_SW4;

-- SW5
t_prcs_SW5: PROCESS
BEGIN
	SW5 <= '1';
WAIT;
END PROCESS t_prcs_SW5;

-- SW6
t_prcs_SW6: PROCESS
BEGIN
	SW6 <= '0';
WAIT;
END PROCESS t_prcs_SW6;
END ProgramControler_Demo_arch;
