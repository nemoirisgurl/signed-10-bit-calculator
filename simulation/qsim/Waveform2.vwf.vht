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
-- Generated on "10/10/2025 22:24:05"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          bcd_7_segment
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY bcd_7_segment_vhd_vec_tst IS
END bcd_7_segment_vhd_vec_tst;
ARCHITECTURE bcd_7_segment_arch OF bcd_7_segment_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL BCD_GRAND : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL BCD_HUNDREDS : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL BCD_SIGN : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL BCD_TEN_GRAND : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL BCD_TENS : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL BCD_UNITS : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL CLK : STD_LOGIC;
SIGNAL SEVEN_SEG_GRAND : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL SEVEN_SEG_HUNDREDS : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL SEVEN_SEG_SIGN : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL SEVEN_SEG_TEN_GRAND : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL SEVEN_SEG_TENS : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL SEVEN_SEG_UNITS : STD_LOGIC_VECTOR(6 DOWNTO 0);
COMPONENT bcd_7_segment
	PORT (
	BCD_GRAND : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	BCD_HUNDREDS : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	BCD_SIGN : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	BCD_TEN_GRAND : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	BCD_TENS : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	BCD_UNITS : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	CLK : IN STD_LOGIC;
	SEVEN_SEG_GRAND : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	SEVEN_SEG_HUNDREDS : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	SEVEN_SEG_SIGN : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	SEVEN_SEG_TEN_GRAND : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	SEVEN_SEG_TENS : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	SEVEN_SEG_UNITS : OUT STD_LOGIC_VECTOR(6 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : bcd_7_segment
	PORT MAP (
-- list connections between master ports and signals
	BCD_GRAND => BCD_GRAND,
	BCD_HUNDREDS => BCD_HUNDREDS,
	BCD_SIGN => BCD_SIGN,
	BCD_TEN_GRAND => BCD_TEN_GRAND,
	BCD_TENS => BCD_TENS,
	BCD_UNITS => BCD_UNITS,
	CLK => CLK,
	SEVEN_SEG_GRAND => SEVEN_SEG_GRAND,
	SEVEN_SEG_HUNDREDS => SEVEN_SEG_HUNDREDS,
	SEVEN_SEG_SIGN => SEVEN_SEG_SIGN,
	SEVEN_SEG_TEN_GRAND => SEVEN_SEG_TEN_GRAND,
	SEVEN_SEG_TENS => SEVEN_SEG_TENS,
	SEVEN_SEG_UNITS => SEVEN_SEG_UNITS
	);
-- BCD_GRAND[3]
t_prcs_BCD_GRAND_3: PROCESS
BEGIN
	BCD_GRAND(3) <= '0';
WAIT;
END PROCESS t_prcs_BCD_GRAND_3;
-- BCD_GRAND[2]
t_prcs_BCD_GRAND_2: PROCESS
BEGIN
	BCD_GRAND(2) <= '0';
WAIT;
END PROCESS t_prcs_BCD_GRAND_2;
-- BCD_GRAND[1]
t_prcs_BCD_GRAND_1: PROCESS
BEGIN
	BCD_GRAND(1) <= '0';
WAIT;
END PROCESS t_prcs_BCD_GRAND_1;
-- BCD_GRAND[0]
t_prcs_BCD_GRAND_0: PROCESS
BEGIN
	BCD_GRAND(0) <= '0';
WAIT;
END PROCESS t_prcs_BCD_GRAND_0;
-- BCD_HUNDREDS[3]
t_prcs_BCD_HUNDREDS_3: PROCESS
BEGIN
	BCD_HUNDREDS(3) <= '0';
WAIT;
END PROCESS t_prcs_BCD_HUNDREDS_3;
-- BCD_HUNDREDS[2]
t_prcs_BCD_HUNDREDS_2: PROCESS
BEGIN
	BCD_HUNDREDS(2) <= '0';
WAIT;
END PROCESS t_prcs_BCD_HUNDREDS_2;
-- BCD_HUNDREDS[1]
t_prcs_BCD_HUNDREDS_1: PROCESS
BEGIN
	BCD_HUNDREDS(1) <= '0';
WAIT;
END PROCESS t_prcs_BCD_HUNDREDS_1;
-- BCD_HUNDREDS[0]
t_prcs_BCD_HUNDREDS_0: PROCESS
BEGIN
	BCD_HUNDREDS(0) <= '0';
WAIT;
END PROCESS t_prcs_BCD_HUNDREDS_0;
-- BCD_SIGN[3]
t_prcs_BCD_SIGN_3: PROCESS
BEGIN
	BCD_SIGN(3) <= '0';
WAIT;
END PROCESS t_prcs_BCD_SIGN_3;
-- BCD_SIGN[2]
t_prcs_BCD_SIGN_2: PROCESS
BEGIN
	BCD_SIGN(2) <= '0';
WAIT;
END PROCESS t_prcs_BCD_SIGN_2;
-- BCD_SIGN[1]
t_prcs_BCD_SIGN_1: PROCESS
BEGIN
	BCD_SIGN(1) <= '0';
WAIT;
END PROCESS t_prcs_BCD_SIGN_1;
-- BCD_SIGN[0]
t_prcs_BCD_SIGN_0: PROCESS
BEGIN
	BCD_SIGN(0) <= '0';
WAIT;
END PROCESS t_prcs_BCD_SIGN_0;
-- BCD_TEN_GRAND[3]
t_prcs_BCD_TEN_GRAND_3: PROCESS
BEGIN
	BCD_TEN_GRAND(3) <= '0';
WAIT;
END PROCESS t_prcs_BCD_TEN_GRAND_3;
-- BCD_TEN_GRAND[2]
t_prcs_BCD_TEN_GRAND_2: PROCESS
BEGIN
	BCD_TEN_GRAND(2) <= '0';
WAIT;
END PROCESS t_prcs_BCD_TEN_GRAND_2;
-- BCD_TEN_GRAND[1]
t_prcs_BCD_TEN_GRAND_1: PROCESS
BEGIN
	BCD_TEN_GRAND(1) <= '0';
WAIT;
END PROCESS t_prcs_BCD_TEN_GRAND_1;
-- BCD_TEN_GRAND[0]
t_prcs_BCD_TEN_GRAND_0: PROCESS
BEGIN
	BCD_TEN_GRAND(0) <= '0';
WAIT;
END PROCESS t_prcs_BCD_TEN_GRAND_0;
-- BCD_TENS[3]
t_prcs_BCD_TENS_3: PROCESS
BEGIN
	BCD_TENS(3) <= '0';
	WAIT FOR 792000 ps;
	BCD_TENS(3) <= '1';
WAIT;
END PROCESS t_prcs_BCD_TENS_3;
-- BCD_TENS[2]
t_prcs_BCD_TENS_2: PROCESS
BEGIN
	BCD_TENS(2) <= '0';
	WAIT FOR 396000 ps;
	BCD_TENS(2) <= '1';
	WAIT FOR 396000 ps;
	BCD_TENS(2) <= '0';
WAIT;
END PROCESS t_prcs_BCD_TENS_2;
-- BCD_TENS[1]
t_prcs_BCD_TENS_1: PROCESS
BEGIN
	FOR i IN 1 TO 2
	LOOP
		BCD_TENS(1) <= '0';
		WAIT FOR 198000 ps;
		BCD_TENS(1) <= '1';
		WAIT FOR 198000 ps;
	END LOOP;
	BCD_TENS(1) <= '0';
	WAIT FOR 198000 ps;
	BCD_TENS(1) <= '1';
WAIT;
END PROCESS t_prcs_BCD_TENS_1;
-- BCD_TENS[0]
t_prcs_BCD_TENS_0: PROCESS
BEGIN
	FOR i IN 1 TO 5
	LOOP
		BCD_TENS(0) <= '0';
		WAIT FOR 99000 ps;
		BCD_TENS(0) <= '1';
		WAIT FOR 99000 ps;
	END LOOP;
	BCD_TENS(0) <= '0';
WAIT;
END PROCESS t_prcs_BCD_TENS_0;
-- BCD_UNITS[3]
t_prcs_BCD_UNITS_3: PROCESS
BEGIN
	BCD_UNITS(3) <= '0';
WAIT;
END PROCESS t_prcs_BCD_UNITS_3;
-- BCD_UNITS[2]
t_prcs_BCD_UNITS_2: PROCESS
BEGIN
	BCD_UNITS(2) <= '0';
WAIT;
END PROCESS t_prcs_BCD_UNITS_2;
-- BCD_UNITS[1]
t_prcs_BCD_UNITS_1: PROCESS
BEGIN
	BCD_UNITS(1) <= '0';
WAIT;
END PROCESS t_prcs_BCD_UNITS_1;
-- BCD_UNITS[0]
t_prcs_BCD_UNITS_0: PROCESS
BEGIN
	BCD_UNITS(0) <= '0';
WAIT;
END PROCESS t_prcs_BCD_UNITS_0;

-- CLK
t_prcs_CLK: PROCESS
BEGIN
LOOP
	CLK <= '0';
	WAIT FOR 10000 ps;
	CLK <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_CLK;
END bcd_7_segment_arch;
