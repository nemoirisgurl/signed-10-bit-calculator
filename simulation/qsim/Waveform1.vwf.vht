-- Copyright (C) 2020  Intel Corporation. All rights reserved.
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
-- Generated on "10/15/2025 16:13:31"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          mini_project
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY mini_project_vhd_vec_tst IS
END mini_project_vhd_vec_tst;
ARCHITECTURE mini_project_arch OF mini_project_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL CLK : STD_LOGIC;
SIGNAL DONE : STD_LOGIC;
SIGNAL INPUT : STD_LOGIC_VECTOR(9 DOWNTO 0);
SIGNAL RESULT : STD_LOGIC_VECTOR(19 DOWNTO 0);
SIGNAL RST_N : STD_LOGIC;
SIGNAL SEVEN_SEG_GRAND : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL SEVEN_SEG_HUNDREDS : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL SEVEN_SEG_SIGN : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL SEVEN_SEG_TEN_GRAND : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL SEVEN_SEG_TENS : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL SEVEN_SEG_UNITS : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL START : STD_LOGIC;
COMPONENT mini_project
	PORT (
	CLK : IN STD_LOGIC;
	DONE : OUT STD_LOGIC;
	INPUT : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
	RESULT : OUT STD_LOGIC_VECTOR(19 DOWNTO 0);
	RST_N : IN STD_LOGIC;
	SEVEN_SEG_GRAND : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	SEVEN_SEG_HUNDREDS : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	SEVEN_SEG_SIGN : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	SEVEN_SEG_TEN_GRAND : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	SEVEN_SEG_TENS : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	SEVEN_SEG_UNITS : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	START : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : mini_project
	PORT MAP (
-- list connections between master ports and signals
	CLK => CLK,
	DONE => DONE,
	INPUT => INPUT,
	RESULT => RESULT,
	RST_N => RST_N,
	SEVEN_SEG_GRAND => SEVEN_SEG_GRAND,
	SEVEN_SEG_HUNDREDS => SEVEN_SEG_HUNDREDS,
	SEVEN_SEG_SIGN => SEVEN_SEG_SIGN,
	SEVEN_SEG_TEN_GRAND => SEVEN_SEG_TEN_GRAND,
	SEVEN_SEG_TENS => SEVEN_SEG_TENS,
	SEVEN_SEG_UNITS => SEVEN_SEG_UNITS,
	START => START
	);

-- CLK
t_prcs_CLK: PROCESS
BEGIN
LOOP
	CLK <= '0';
	WAIT FOR 1000 ps;
	CLK <= '1';
	WAIT FOR 1000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_CLK;
-- INPUT[9]
t_prcs_INPUT_9: PROCESS
BEGIN
	INPUT(9) <= '0';
WAIT;
END PROCESS t_prcs_INPUT_9;
-- INPUT[8]
t_prcs_INPUT_8: PROCESS
BEGIN
	INPUT(8) <= '0';
WAIT;
END PROCESS t_prcs_INPUT_8;
-- INPUT[7]
t_prcs_INPUT_7: PROCESS
BEGIN
	INPUT(7) <= '0';
	WAIT FOR 640000 ps;
	INPUT(7) <= '1';
WAIT;
END PROCESS t_prcs_INPUT_7;
-- INPUT[6]
t_prcs_INPUT_6: PROCESS
BEGIN
	INPUT(6) <= '0';
	WAIT FOR 320000 ps;
	INPUT(6) <= '1';
	WAIT FOR 320000 ps;
	INPUT(6) <= '0';
	WAIT FOR 320000 ps;
	INPUT(6) <= '1';
WAIT;
END PROCESS t_prcs_INPUT_6;
-- INPUT[5]
t_prcs_INPUT_5: PROCESS
BEGIN
	FOR i IN 1 TO 3
	LOOP
		INPUT(5) <= '0';
		WAIT FOR 160000 ps;
		INPUT(5) <= '1';
		WAIT FOR 160000 ps;
	END LOOP;
	INPUT(5) <= '0';
WAIT;
END PROCESS t_prcs_INPUT_5;
-- INPUT[4]
t_prcs_INPUT_4: PROCESS
BEGIN
	FOR i IN 1 TO 6
	LOOP
		INPUT(4) <= '0';
		WAIT FOR 80000 ps;
		INPUT(4) <= '1';
		WAIT FOR 80000 ps;
	END LOOP;
	INPUT(4) <= '0';
WAIT;
END PROCESS t_prcs_INPUT_4;
-- INPUT[3]
t_prcs_INPUT_3: PROCESS
BEGIN
	FOR i IN 1 TO 12
	LOOP
		INPUT(3) <= '0';
		WAIT FOR 40000 ps;
		INPUT(3) <= '1';
		WAIT FOR 40000 ps;
	END LOOP;
	INPUT(3) <= '0';
WAIT;
END PROCESS t_prcs_INPUT_3;
-- INPUT[2]
t_prcs_INPUT_2: PROCESS
BEGIN
LOOP
	INPUT(2) <= '0';
	WAIT FOR 20000 ps;
	INPUT(2) <= '1';
	WAIT FOR 20000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_INPUT_2;
-- INPUT[1]
t_prcs_INPUT_1: PROCESS
BEGIN
LOOP
	INPUT(1) <= '0';
	WAIT FOR 10000 ps;
	INPUT(1) <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_INPUT_1;
-- INPUT[0]
t_prcs_INPUT_0: PROCESS
BEGIN
	INPUT(0) <= '0';
WAIT;
END PROCESS t_prcs_INPUT_0;

-- RST_N
t_prcs_RST_N: PROCESS
BEGIN
	RST_N <= '0';
	WAIT FOR 100000 ps;
	RST_N <= '1';
WAIT;
END PROCESS t_prcs_RST_N;

-- START
t_prcs_START: PROCESS
BEGIN
LOOP
	START <= '0';
	WAIT FOR 50000 ps;
	START <= '1';
	WAIT FOR 50000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_START;
END mini_project_arch;
