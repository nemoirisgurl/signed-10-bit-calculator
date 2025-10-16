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
-- Generated on "10/16/2025 14:14:35"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          divider
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY divider_vhd_vec_tst IS
END divider_vhd_vec_tst;
ARCHITECTURE divider_arch OF divider_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL CLK : STD_LOGIC;
SIGNAL DIVIDEND : STD_LOGIC_VECTOR(9 DOWNTO 0);
SIGNAL DIVISOR : STD_LOGIC_VECTOR(9 DOWNTO 0);
SIGNAL DONE : STD_LOGIC;
SIGNAL ERROR : STD_LOGIC;
SIGNAL QUOTIENT : STD_LOGIC_VECTOR(9 DOWNTO 0);
SIGNAL REMAINDER : STD_LOGIC_VECTOR(9 DOWNTO 0);
SIGNAL RST_N : STD_LOGIC;
COMPONENT divider
	PORT (
	CLK : IN STD_LOGIC;
	DIVIDEND : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
	DIVISOR : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
	DONE : BUFFER STD_LOGIC;
	ERROR : BUFFER STD_LOGIC;
	QUOTIENT : BUFFER STD_LOGIC_VECTOR(9 DOWNTO 0);
	REMAINDER : BUFFER STD_LOGIC_VECTOR(9 DOWNTO 0);
	RST_N : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : divider
	PORT MAP (
-- list connections between master ports and signals
	CLK => CLK,
	DIVIDEND => DIVIDEND,
	DIVISOR => DIVISOR,
	DONE => DONE,
	ERROR => ERROR,
	QUOTIENT => QUOTIENT,
	REMAINDER => REMAINDER,
	RST_N => RST_N
	);

-- CLK
t_prcs_CLK: PROCESS
BEGIN
LOOP
	CLK <= '0';
	WAIT FOR 250 ps;
	CLK <= '1';
	WAIT FOR 250 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_CLK;
-- DIVIDEND[9]
t_prcs_DIVIDEND_9: PROCESS
BEGIN
	DIVIDEND(9) <= '0';
WAIT;
END PROCESS t_prcs_DIVIDEND_9;
-- DIVIDEND[8]
t_prcs_DIVIDEND_8: PROCESS
BEGIN
	DIVIDEND(8) <= '0';
WAIT;
END PROCESS t_prcs_DIVIDEND_8;
-- DIVIDEND[7]
t_prcs_DIVIDEND_7: PROCESS
BEGIN
	DIVIDEND(7) <= '0';
WAIT;
END PROCESS t_prcs_DIVIDEND_7;
-- DIVIDEND[6]
t_prcs_DIVIDEND_6: PROCESS
BEGIN
	DIVIDEND(6) <= '0';
WAIT;
END PROCESS t_prcs_DIVIDEND_6;
-- DIVIDEND[5]
t_prcs_DIVIDEND_5: PROCESS
BEGIN
	DIVIDEND(5) <= '0';
WAIT;
END PROCESS t_prcs_DIVIDEND_5;
-- DIVIDEND[4]
t_prcs_DIVIDEND_4: PROCESS
BEGIN
	DIVIDEND(4) <= '0';
WAIT;
END PROCESS t_prcs_DIVIDEND_4;
-- DIVIDEND[3]
t_prcs_DIVIDEND_3: PROCESS
BEGIN
	DIVIDEND(3) <= '0';
	WAIT FOR 800000 ps;
	DIVIDEND(3) <= '1';
WAIT;
END PROCESS t_prcs_DIVIDEND_3;
-- DIVIDEND[2]
t_prcs_DIVIDEND_2: PROCESS
BEGIN
	DIVIDEND(2) <= '0';
	WAIT FOR 400000 ps;
	DIVIDEND(2) <= '1';
	WAIT FOR 400000 ps;
	DIVIDEND(2) <= '0';
WAIT;
END PROCESS t_prcs_DIVIDEND_2;
-- DIVIDEND[1]
t_prcs_DIVIDEND_1: PROCESS
BEGIN
	FOR i IN 1 TO 2
	LOOP
		DIVIDEND(1) <= '0';
		WAIT FOR 200000 ps;
		DIVIDEND(1) <= '1';
		WAIT FOR 200000 ps;
	END LOOP;
	DIVIDEND(1) <= '0';
WAIT;
END PROCESS t_prcs_DIVIDEND_1;
-- DIVIDEND[0]
t_prcs_DIVIDEND_0: PROCESS
BEGIN
LOOP
	DIVIDEND(0) <= '0';
	WAIT FOR 100000 ps;
	DIVIDEND(0) <= '1';
	WAIT FOR 100000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_DIVIDEND_0;
-- DIVISOR[9]
t_prcs_DIVISOR_9: PROCESS
BEGIN
	DIVISOR(9) <= '0';
WAIT;
END PROCESS t_prcs_DIVISOR_9;
-- DIVISOR[8]
t_prcs_DIVISOR_8: PROCESS
BEGIN
	DIVISOR(8) <= '0';
WAIT;
END PROCESS t_prcs_DIVISOR_8;
-- DIVISOR[7]
t_prcs_DIVISOR_7: PROCESS
BEGIN
	DIVISOR(7) <= '0';
WAIT;
END PROCESS t_prcs_DIVISOR_7;
-- DIVISOR[6]
t_prcs_DIVISOR_6: PROCESS
BEGIN
	DIVISOR(6) <= '0';
WAIT;
END PROCESS t_prcs_DIVISOR_6;
-- DIVISOR[5]
t_prcs_DIVISOR_5: PROCESS
BEGIN
	DIVISOR(5) <= '0';
WAIT;
END PROCESS t_prcs_DIVISOR_5;
-- DIVISOR[4]
t_prcs_DIVISOR_4: PROCESS
BEGIN
	DIVISOR(4) <= '0';
WAIT;
END PROCESS t_prcs_DIVISOR_4;
-- DIVISOR[3]
t_prcs_DIVISOR_3: PROCESS
BEGIN
	DIVISOR(3) <= '0';
WAIT;
END PROCESS t_prcs_DIVISOR_3;
-- DIVISOR[2]
t_prcs_DIVISOR_2: PROCESS
BEGIN
	DIVISOR(2) <= '0';
	WAIT FOR 800000 ps;
	DIVISOR(2) <= '1';
WAIT;
END PROCESS t_prcs_DIVISOR_2;
-- DIVISOR[1]
t_prcs_DIVISOR_1: PROCESS
BEGIN
	DIVISOR(1) <= '0';
	WAIT FOR 400000 ps;
	DIVISOR(1) <= '1';
	WAIT FOR 400000 ps;
	DIVISOR(1) <= '0';
WAIT;
END PROCESS t_prcs_DIVISOR_1;
-- DIVISOR[0]
t_prcs_DIVISOR_0: PROCESS
BEGIN
	FOR i IN 1 TO 2
	LOOP
		DIVISOR(0) <= '0';
		WAIT FOR 200000 ps;
		DIVISOR(0) <= '1';
		WAIT FOR 200000 ps;
	END LOOP;
	DIVISOR(0) <= '0';
WAIT;
END PROCESS t_prcs_DIVISOR_0;

-- RST_N
t_prcs_RST_N: PROCESS
BEGIN
	RST_N <= '1';
WAIT;
END PROCESS t_prcs_RST_N;
END divider_arch;
