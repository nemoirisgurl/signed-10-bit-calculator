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
-- Generated on "10/10/2025 21:41:30"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          adder_subtractor
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY adder_subtractor_vhd_vec_tst IS
END adder_subtractor_vhd_vec_tst;
ARCHITECTURE adder_subtractor_arch OF adder_subtractor_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL ADD_SUB : STD_LOGIC;
SIGNAL CARRY_OUT : STD_LOGIC;
SIGNAL INPUT_A : STD_LOGIC_VECTOR(9 DOWNTO 0);
SIGNAL INPUT_B : STD_LOGIC_VECTOR(9 DOWNTO 0);
SIGNAL OVERFLOW : STD_LOGIC;
SIGNAL SUM : STD_LOGIC_VECTOR(9 DOWNTO 0);
COMPONENT adder_subtractor
	PORT (
	ADD_SUB : IN STD_LOGIC;
	CARRY_OUT : OUT STD_LOGIC;
	INPUT_A : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
	INPUT_B : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
	OVERFLOW : OUT STD_LOGIC;
	SUM : OUT STD_LOGIC_VECTOR(9 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : adder_subtractor
	PORT MAP (
-- list connections between master ports and signals
	ADD_SUB => ADD_SUB,
	CARRY_OUT => CARRY_OUT,
	INPUT_A => INPUT_A,
	INPUT_B => INPUT_B,
	OVERFLOW => OVERFLOW,
	SUM => SUM
	);

-- ADD_SUB
t_prcs_ADD_SUB: PROCESS
BEGIN
	ADD_SUB <= '1';
WAIT;
END PROCESS t_prcs_ADD_SUB;
-- INPUT_A[9]
t_prcs_INPUT_A_9: PROCESS
BEGIN
	INPUT_A(9) <= '0';
WAIT;
END PROCESS t_prcs_INPUT_A_9;
-- INPUT_A[8]
t_prcs_INPUT_A_8: PROCESS
BEGIN
	INPUT_A(8) <= '0';
WAIT;
END PROCESS t_prcs_INPUT_A_8;
-- INPUT_A[7]
t_prcs_INPUT_A_7: PROCESS
BEGIN
	INPUT_A(7) <= '0';
WAIT;
END PROCESS t_prcs_INPUT_A_7;
-- INPUT_A[6]
t_prcs_INPUT_A_6: PROCESS
BEGIN
	INPUT_A(6) <= '0';
WAIT;
END PROCESS t_prcs_INPUT_A_6;
-- INPUT_A[5]
t_prcs_INPUT_A_5: PROCESS
BEGIN
	INPUT_A(5) <= '0';
	WAIT FOR 640000 ps;
	INPUT_A(5) <= '1';
WAIT;
END PROCESS t_prcs_INPUT_A_5;
-- INPUT_A[4]
t_prcs_INPUT_A_4: PROCESS
BEGIN
	INPUT_A(4) <= '0';
	WAIT FOR 320000 ps;
	INPUT_A(4) <= '1';
	WAIT FOR 320000 ps;
	INPUT_A(4) <= '0';
	WAIT FOR 320000 ps;
	INPUT_A(4) <= '1';
WAIT;
END PROCESS t_prcs_INPUT_A_4;
-- INPUT_A[3]
t_prcs_INPUT_A_3: PROCESS
BEGIN
	FOR i IN 1 TO 3
	LOOP
		INPUT_A(3) <= '0';
		WAIT FOR 160000 ps;
		INPUT_A(3) <= '1';
		WAIT FOR 160000 ps;
	END LOOP;
	INPUT_A(3) <= '0';
WAIT;
END PROCESS t_prcs_INPUT_A_3;
-- INPUT_A[2]
t_prcs_INPUT_A_2: PROCESS
BEGIN
	FOR i IN 1 TO 6
	LOOP
		INPUT_A(2) <= '0';
		WAIT FOR 80000 ps;
		INPUT_A(2) <= '1';
		WAIT FOR 80000 ps;
	END LOOP;
	INPUT_A(2) <= '0';
WAIT;
END PROCESS t_prcs_INPUT_A_2;
-- INPUT_A[1]
t_prcs_INPUT_A_1: PROCESS
BEGIN
	FOR i IN 1 TO 12
	LOOP
		INPUT_A(1) <= '0';
		WAIT FOR 40000 ps;
		INPUT_A(1) <= '1';
		WAIT FOR 40000 ps;
	END LOOP;
	INPUT_A(1) <= '0';
WAIT;
END PROCESS t_prcs_INPUT_A_1;
-- INPUT_A[0]
t_prcs_INPUT_A_0: PROCESS
BEGIN
LOOP
	INPUT_A(0) <= '0';
	WAIT FOR 20000 ps;
	INPUT_A(0) <= '1';
	WAIT FOR 20000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_INPUT_A_0;
-- INPUT_B[9]
t_prcs_INPUT_B_9: PROCESS
BEGIN
	INPUT_B(9) <= '0';
WAIT;
END PROCESS t_prcs_INPUT_B_9;
-- INPUT_B[8]
t_prcs_INPUT_B_8: PROCESS
BEGIN
	INPUT_B(8) <= '0';
WAIT;
END PROCESS t_prcs_INPUT_B_8;
-- INPUT_B[7]
t_prcs_INPUT_B_7: PROCESS
BEGIN
	INPUT_B(7) <= '0';
WAIT;
END PROCESS t_prcs_INPUT_B_7;
-- INPUT_B[6]
t_prcs_INPUT_B_6: PROCESS
BEGIN
	INPUT_B(6) <= '0';
	WAIT FOR 640000 ps;
	INPUT_B(6) <= '1';
WAIT;
END PROCESS t_prcs_INPUT_B_6;
-- INPUT_B[5]
t_prcs_INPUT_B_5: PROCESS
BEGIN
	INPUT_B(5) <= '0';
	WAIT FOR 320000 ps;
	INPUT_B(5) <= '1';
	WAIT FOR 320000 ps;
	INPUT_B(5) <= '0';
	WAIT FOR 320000 ps;
	INPUT_B(5) <= '1';
WAIT;
END PROCESS t_prcs_INPUT_B_5;
-- INPUT_B[4]
t_prcs_INPUT_B_4: PROCESS
BEGIN
	FOR i IN 1 TO 3
	LOOP
		INPUT_B(4) <= '0';
		WAIT FOR 160000 ps;
		INPUT_B(4) <= '1';
		WAIT FOR 160000 ps;
	END LOOP;
	INPUT_B(4) <= '0';
WAIT;
END PROCESS t_prcs_INPUT_B_4;
-- INPUT_B[3]
t_prcs_INPUT_B_3: PROCESS
BEGIN
	FOR i IN 1 TO 6
	LOOP
		INPUT_B(3) <= '0';
		WAIT FOR 80000 ps;
		INPUT_B(3) <= '1';
		WAIT FOR 80000 ps;
	END LOOP;
	INPUT_B(3) <= '0';
WAIT;
END PROCESS t_prcs_INPUT_B_3;
-- INPUT_B[2]
t_prcs_INPUT_B_2: PROCESS
BEGIN
	FOR i IN 1 TO 12
	LOOP
		INPUT_B(2) <= '0';
		WAIT FOR 40000 ps;
		INPUT_B(2) <= '1';
		WAIT FOR 40000 ps;
	END LOOP;
	INPUT_B(2) <= '0';
WAIT;
END PROCESS t_prcs_INPUT_B_2;
-- INPUT_B[1]
t_prcs_INPUT_B_1: PROCESS
BEGIN
LOOP
	INPUT_B(1) <= '0';
	WAIT FOR 20000 ps;
	INPUT_B(1) <= '1';
	WAIT FOR 20000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_INPUT_B_1;
-- INPUT_B[0]
t_prcs_INPUT_B_0: PROCESS
BEGIN
LOOP
	INPUT_B(0) <= '0';
	WAIT FOR 10000 ps;
	INPUT_B(0) <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_INPUT_B_0;
END adder_subtractor_arch;
