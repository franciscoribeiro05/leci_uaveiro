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
-- Generated on "05/25/2024 14:56:59"
                                                             
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
SIGNAL CLOCK_50 : STD_LOGIC;
SIGNAL LEDG : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL SW : STD_LOGIC_VECTOR(5 DOWNTO 0);
COMPONENT ProgramControler_Demo
	PORT (
	CLOCK_50 : IN STD_LOGIC;
	LEDG : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	SW : IN STD_LOGIC_VECTOR(5 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : ProgramControler_Demo
	PORT MAP (
-- list connections between master ports and signals
	CLOCK_50 => CLOCK_50,
	LEDG => LEDG,
	SW => SW
	);
END ProgramControler_Demo_arch;
