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
-- Generated on "05/27/2024 23:33:02"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          User_Control_Demo
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY User_Control_Demo_vhd_vec_tst IS
END User_Control_Demo_vhd_vec_tst;
ARCHITECTURE User_Control_Demo_arch OF User_Control_Demo_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL CLOCK_50 : STD_LOGIC;
SIGNAL KEY0 : STD_LOGIC;
SIGNAL KEY1 : STD_LOGIC;
SIGNAL KEY3 : STD_LOGIC;
SIGNAL KEY4 : STD_LOGIC;
SIGNAL LEDG : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL LEDR : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL SW : STD_LOGIC_VECTOR(0 DOWNTO 0);
COMPONENT User_Control_Demo
	PORT (
	CLOCK_50 : IN STD_LOGIC;
	KEY0 : IN STD_LOGIC;
	KEY1 : IN STD_LOGIC;
	KEY3 : IN STD_LOGIC;
	KEY4 : IN STD_LOGIC;
	LEDG : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	LEDR : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	SW : IN STD_LOGIC_VECTOR(0 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : User_Control_Demo
	PORT MAP (
-- list connections between master ports and signals
	CLOCK_50 => CLOCK_50,
	KEY0 => KEY0,
	KEY1 => KEY1,
	KEY3 => KEY3,
	KEY4 => KEY4,
	LEDG => LEDG,
	LEDR => LEDR,
	SW => SW
	);
END User_Control_Demo_arch;
