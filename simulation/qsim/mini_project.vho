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

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 20.1.1 Build 720 11/11/2020 SJ Lite Edition"

-- DATE "10/13/2025 07:54:06"

-- 
-- Device: Altera 10M50DAF484C7G Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	multiplier IS
    PORT (
	CLK : IN std_logic;
	RST_N : IN std_logic;
	INPUT_A : IN std_logic_vector(9 DOWNTO 0);
	INPUT_B : IN std_logic_vector(9 DOWNTO 0);
	PRODUCT : OUT std_logic_vector(19 DOWNTO 0)
	);
END multiplier;

ARCHITECTURE structure OF multiplier IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_RST_N : std_logic;
SIGNAL ww_INPUT_A : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_INPUT_B : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_PRODUCT : std_logic_vector(19 DOWNTO 0);
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \INPUT_A[9]~input_o\ : std_logic;
SIGNAL \INPUT_A[0]~input_o\ : std_logic;
SIGNAL \a_abs~0_combout\ : std_logic;
SIGNAL \multiplicand_u[0]~10_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \RST_N~input_o\ : std_logic;
SIGNAL \Selector50~0_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \Selector53~0_combout\ : std_logic;
SIGNAL \Selector52~1_combout\ : std_logic;
SIGNAL \Add3~0_combout\ : std_logic;
SIGNAL \Selector50~1_combout\ : std_logic;
SIGNAL \state~10_combout\ : std_logic;
SIGNAL \state.FINISH~q\ : std_logic;
SIGNAL \Selector52~0_combout\ : std_logic;
SIGNAL \Selector51~0_combout\ : std_logic;
SIGNAL \Selector55~0_combout\ : std_logic;
SIGNAL \state.IDLE~0_combout\ : std_logic;
SIGNAL \state.IDLE~q\ : std_logic;
SIGNAL \Selector55~1_combout\ : std_logic;
SIGNAL \state.CALC~q\ : std_logic;
SIGNAL \multiplicand_u[7]~12_combout\ : std_logic;
SIGNAL \Add2~0_combout\ : std_logic;
SIGNAL \INPUT_B[9]~input_o\ : std_logic;
SIGNAL \INPUT_B[0]~input_o\ : std_logic;
SIGNAL \b_abs~0_combout\ : std_logic;
SIGNAL \multiplier_u[0]~10_combout\ : std_logic;
SIGNAL \INPUT_B[1]~input_o\ : std_logic;
SIGNAL \multiplier_u[0]~11\ : std_logic;
SIGNAL \multiplier_u[1]~12_combout\ : std_logic;
SIGNAL \INPUT_B[2]~input_o\ : std_logic;
SIGNAL \multiplier_u[1]~13\ : std_logic;
SIGNAL \multiplier_u[2]~14_combout\ : std_logic;
SIGNAL \INPUT_B[3]~input_o\ : std_logic;
SIGNAL \multiplier_u[2]~15\ : std_logic;
SIGNAL \multiplier_u[3]~16_combout\ : std_logic;
SIGNAL \INPUT_B[4]~input_o\ : std_logic;
SIGNAL \multiplier_u[3]~17\ : std_logic;
SIGNAL \multiplier_u[4]~18_combout\ : std_logic;
SIGNAL \INPUT_B[5]~input_o\ : std_logic;
SIGNAL \multiplier_u[4]~19\ : std_logic;
SIGNAL \multiplier_u[5]~20_combout\ : std_logic;
SIGNAL \INPUT_B[6]~input_o\ : std_logic;
SIGNAL \multiplier_u[5]~21\ : std_logic;
SIGNAL \multiplier_u[6]~22_combout\ : std_logic;
SIGNAL \INPUT_B[7]~input_o\ : std_logic;
SIGNAL \multiplier_u[6]~23\ : std_logic;
SIGNAL \multiplier_u[7]~24_combout\ : std_logic;
SIGNAL \INPUT_B[8]~input_o\ : std_logic;
SIGNAL \multiplier_u[7]~25\ : std_logic;
SIGNAL \multiplier_u[8]~26_combout\ : std_logic;
SIGNAL \multiplier_u[8]~27\ : std_logic;
SIGNAL \multiplier_u[9]~28_combout\ : std_logic;
SIGNAL \Add2~2_combout\ : std_logic;
SIGNAL \Add2~3_combout\ : std_logic;
SIGNAL \Selector49~0_combout\ : std_logic;
SIGNAL \sign_res~0_combout\ : std_logic;
SIGNAL \sign_res~q\ : std_logic;
SIGNAL \Add4~0_combout\ : std_logic;
SIGNAL \PRODUCT[0]~20_combout\ : std_logic;
SIGNAL \PRODUCT[0]~reg0_q\ : std_logic;
SIGNAL \INPUT_A[1]~input_o\ : std_logic;
SIGNAL \multiplicand_u[0]~11\ : std_logic;
SIGNAL \multiplicand_u[1]~13_combout\ : std_logic;
SIGNAL \Add2~1\ : std_logic;
SIGNAL \Add2~4_combout\ : std_logic;
SIGNAL \Add2~6_combout\ : std_logic;
SIGNAL \Selector48~0_combout\ : std_logic;
SIGNAL \PRODUCT[0]~21\ : std_logic;
SIGNAL \PRODUCT[1]~22_combout\ : std_logic;
SIGNAL \PRODUCT[1]~reg0_q\ : std_logic;
SIGNAL \INPUT_A[2]~input_o\ : std_logic;
SIGNAL \multiplicand_u[1]~14\ : std_logic;
SIGNAL \multiplicand_u[2]~15_combout\ : std_logic;
SIGNAL \Add2~5\ : std_logic;
SIGNAL \Add2~7_combout\ : std_logic;
SIGNAL \Add2~9_combout\ : std_logic;
SIGNAL \Selector47~0_combout\ : std_logic;
SIGNAL \PRODUCT[1]~23\ : std_logic;
SIGNAL \PRODUCT[2]~24_combout\ : std_logic;
SIGNAL \PRODUCT[2]~reg0_q\ : std_logic;
SIGNAL \INPUT_A[3]~input_o\ : std_logic;
SIGNAL \multiplicand_u[2]~16\ : std_logic;
SIGNAL \multiplicand_u[3]~17_combout\ : std_logic;
SIGNAL \Add2~8\ : std_logic;
SIGNAL \Add2~10_combout\ : std_logic;
SIGNAL \Add2~12_combout\ : std_logic;
SIGNAL \Selector46~0_combout\ : std_logic;
SIGNAL \PRODUCT[2]~25\ : std_logic;
SIGNAL \PRODUCT[3]~26_combout\ : std_logic;
SIGNAL \PRODUCT[3]~reg0_q\ : std_logic;
SIGNAL \INPUT_A[4]~input_o\ : std_logic;
SIGNAL \multiplicand_u[3]~18\ : std_logic;
SIGNAL \multiplicand_u[4]~19_combout\ : std_logic;
SIGNAL \Add2~11\ : std_logic;
SIGNAL \Add2~13_combout\ : std_logic;
SIGNAL \Add2~15_combout\ : std_logic;
SIGNAL \Selector45~0_combout\ : std_logic;
SIGNAL \PRODUCT[3]~27\ : std_logic;
SIGNAL \PRODUCT[4]~28_combout\ : std_logic;
SIGNAL \PRODUCT[4]~reg0_q\ : std_logic;
SIGNAL \INPUT_A[5]~input_o\ : std_logic;
SIGNAL \multiplicand_u[4]~20\ : std_logic;
SIGNAL \multiplicand_u[5]~21_combout\ : std_logic;
SIGNAL \Add2~14\ : std_logic;
SIGNAL \Add2~16_combout\ : std_logic;
SIGNAL \Add2~18_combout\ : std_logic;
SIGNAL \Selector44~0_combout\ : std_logic;
SIGNAL \PRODUCT[4]~29\ : std_logic;
SIGNAL \PRODUCT[5]~30_combout\ : std_logic;
SIGNAL \PRODUCT[5]~reg0_q\ : std_logic;
SIGNAL \INPUT_A[6]~input_o\ : std_logic;
SIGNAL \multiplicand_u[5]~22\ : std_logic;
SIGNAL \multiplicand_u[6]~23_combout\ : std_logic;
SIGNAL \Add2~17\ : std_logic;
SIGNAL \Add2~19_combout\ : std_logic;
SIGNAL \Add2~21_combout\ : std_logic;
SIGNAL \Selector43~0_combout\ : std_logic;
SIGNAL \PRODUCT[5]~31\ : std_logic;
SIGNAL \PRODUCT[6]~32_combout\ : std_logic;
SIGNAL \PRODUCT[6]~reg0_q\ : std_logic;
SIGNAL \Add2~22_combout\ : std_logic;
SIGNAL \INPUT_A[7]~input_o\ : std_logic;
SIGNAL \multiplicand_u[6]~24\ : std_logic;
SIGNAL \multiplicand_u[7]~25_combout\ : std_logic;
SIGNAL \Add2~20\ : std_logic;
SIGNAL \Add2~23_combout\ : std_logic;
SIGNAL \Selector41~0_combout\ : std_logic;
SIGNAL \Selector42~0_combout\ : std_logic;
SIGNAL \PRODUCT[6]~33\ : std_logic;
SIGNAL \PRODUCT[7]~34_combout\ : std_logic;
SIGNAL \PRODUCT[7]~reg0_q\ : std_logic;
SIGNAL \INPUT_A[8]~input_o\ : std_logic;
SIGNAL \multiplicand_u[7]~26\ : std_logic;
SIGNAL \multiplicand_u[8]~27_combout\ : std_logic;
SIGNAL \Add2~24\ : std_logic;
SIGNAL \Add2~25_combout\ : std_logic;
SIGNAL \Selector41~1_combout\ : std_logic;
SIGNAL \PRODUCT[7]~35\ : std_logic;
SIGNAL \PRODUCT[8]~36_combout\ : std_logic;
SIGNAL \PRODUCT[8]~reg0_q\ : std_logic;
SIGNAL \multiplicand_u[8]~28\ : std_logic;
SIGNAL \multiplicand_u[9]~29_combout\ : std_logic;
SIGNAL \Add2~26\ : std_logic;
SIGNAL \Add2~27_combout\ : std_logic;
SIGNAL \Selector40~0_combout\ : std_logic;
SIGNAL \PRODUCT[8]~37\ : std_logic;
SIGNAL \PRODUCT[9]~38_combout\ : std_logic;
SIGNAL \PRODUCT[9]~reg0_q\ : std_logic;
SIGNAL \Selector9~0_combout\ : std_logic;
SIGNAL \Selector9~1_combout\ : std_logic;
SIGNAL \Add2~28\ : std_logic;
SIGNAL \Add2~29_combout\ : std_logic;
SIGNAL \Selector39~0_combout\ : std_logic;
SIGNAL \PRODUCT[9]~39\ : std_logic;
SIGNAL \PRODUCT[10]~40_combout\ : std_logic;
SIGNAL \PRODUCT[10]~reg0_q\ : std_logic;
SIGNAL \Selector8~0_combout\ : std_logic;
SIGNAL \Selector8~1_combout\ : std_logic;
SIGNAL \Add2~30\ : std_logic;
SIGNAL \Add2~31_combout\ : std_logic;
SIGNAL \Selector38~0_combout\ : std_logic;
SIGNAL \PRODUCT[10]~41\ : std_logic;
SIGNAL \PRODUCT[11]~42_combout\ : std_logic;
SIGNAL \PRODUCT[11]~reg0_q\ : std_logic;
SIGNAL \Selector7~0_combout\ : std_logic;
SIGNAL \Selector7~1_combout\ : std_logic;
SIGNAL \Add2~32\ : std_logic;
SIGNAL \Add2~33_combout\ : std_logic;
SIGNAL \Selector37~0_combout\ : std_logic;
SIGNAL \PRODUCT[11]~43\ : std_logic;
SIGNAL \PRODUCT[12]~44_combout\ : std_logic;
SIGNAL \PRODUCT[12]~reg0_q\ : std_logic;
SIGNAL \Selector6~0_combout\ : std_logic;
SIGNAL \Selector6~1_combout\ : std_logic;
SIGNAL \Add2~34\ : std_logic;
SIGNAL \Add2~35_combout\ : std_logic;
SIGNAL \Selector36~0_combout\ : std_logic;
SIGNAL \PRODUCT[12]~45\ : std_logic;
SIGNAL \PRODUCT[13]~46_combout\ : std_logic;
SIGNAL \PRODUCT[13]~reg0_q\ : std_logic;
SIGNAL \Selector5~0_combout\ : std_logic;
SIGNAL \Selector5~1_combout\ : std_logic;
SIGNAL \Add2~36\ : std_logic;
SIGNAL \Add2~37_combout\ : std_logic;
SIGNAL \Selector35~0_combout\ : std_logic;
SIGNAL \PRODUCT[13]~47\ : std_logic;
SIGNAL \PRODUCT[14]~48_combout\ : std_logic;
SIGNAL \PRODUCT[14]~reg0_q\ : std_logic;
SIGNAL \Selector4~0_combout\ : std_logic;
SIGNAL \Selector4~1_combout\ : std_logic;
SIGNAL \Add2~38\ : std_logic;
SIGNAL \Add2~39_combout\ : std_logic;
SIGNAL \Selector34~0_combout\ : std_logic;
SIGNAL \PRODUCT[14]~49\ : std_logic;
SIGNAL \PRODUCT[15]~50_combout\ : std_logic;
SIGNAL \PRODUCT[15]~reg0_q\ : std_logic;
SIGNAL \Selector3~0_combout\ : std_logic;
SIGNAL \Selector3~1_combout\ : std_logic;
SIGNAL \Add2~40\ : std_logic;
SIGNAL \Add2~41_combout\ : std_logic;
SIGNAL \Selector33~0_combout\ : std_logic;
SIGNAL \PRODUCT[15]~51\ : std_logic;
SIGNAL \PRODUCT[16]~52_combout\ : std_logic;
SIGNAL \PRODUCT[16]~reg0_q\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \Selector2~1_combout\ : std_logic;
SIGNAL \Add2~42\ : std_logic;
SIGNAL \Add2~43_combout\ : std_logic;
SIGNAL \Selector32~0_combout\ : std_logic;
SIGNAL \PRODUCT[16]~53\ : std_logic;
SIGNAL \PRODUCT[17]~54_combout\ : std_logic;
SIGNAL \PRODUCT[17]~reg0_q\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \Selector1~1_combout\ : std_logic;
SIGNAL \Add2~44\ : std_logic;
SIGNAL \Add2~45_combout\ : std_logic;
SIGNAL \Selector31~0_combout\ : std_logic;
SIGNAL \PRODUCT[17]~55\ : std_logic;
SIGNAL \PRODUCT[18]~56_combout\ : std_logic;
SIGNAL \PRODUCT[18]~reg0_q\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \Selector0~1_combout\ : std_logic;
SIGNAL \Add2~46\ : std_logic;
SIGNAL \Add2~47_combout\ : std_logic;
SIGNAL \Selector30~0_combout\ : std_logic;
SIGNAL \PRODUCT[18]~57\ : std_logic;
SIGNAL \PRODUCT[19]~58_combout\ : std_logic;
SIGNAL \PRODUCT[19]~reg0_q\ : std_logic;
SIGNAL multiplicand_u : std_logic_vector(19 DOWNTO 0);
SIGNAL multiplier_u : std_logic_vector(9 DOWNTO 0);
SIGNAL result_u : std_logic_vector(19 DOWNTO 0);
SIGNAL bit_cnt : std_logic_vector(3 DOWNTO 0);

BEGIN

ww_CLK <= CLK;
ww_RST_N <= RST_N;
ww_INPUT_A <= INPUT_A;
ww_INPUT_B <= INPUT_B;
PRODUCT <= ww_PRODUCT;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\PRODUCT[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PRODUCT[0]~reg0_q\,
	devoe => ww_devoe,
	o => ww_PRODUCT(0));

\PRODUCT[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PRODUCT[1]~reg0_q\,
	devoe => ww_devoe,
	o => ww_PRODUCT(1));

\PRODUCT[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PRODUCT[2]~reg0_q\,
	devoe => ww_devoe,
	o => ww_PRODUCT(2));

\PRODUCT[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PRODUCT[3]~reg0_q\,
	devoe => ww_devoe,
	o => ww_PRODUCT(3));

\PRODUCT[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PRODUCT[4]~reg0_q\,
	devoe => ww_devoe,
	o => ww_PRODUCT(4));

\PRODUCT[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PRODUCT[5]~reg0_q\,
	devoe => ww_devoe,
	o => ww_PRODUCT(5));

\PRODUCT[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PRODUCT[6]~reg0_q\,
	devoe => ww_devoe,
	o => ww_PRODUCT(6));

\PRODUCT[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PRODUCT[7]~reg0_q\,
	devoe => ww_devoe,
	o => ww_PRODUCT(7));

\PRODUCT[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PRODUCT[8]~reg0_q\,
	devoe => ww_devoe,
	o => ww_PRODUCT(8));

\PRODUCT[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PRODUCT[9]~reg0_q\,
	devoe => ww_devoe,
	o => ww_PRODUCT(9));

\PRODUCT[10]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PRODUCT[10]~reg0_q\,
	devoe => ww_devoe,
	o => ww_PRODUCT(10));

\PRODUCT[11]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PRODUCT[11]~reg0_q\,
	devoe => ww_devoe,
	o => ww_PRODUCT(11));

\PRODUCT[12]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PRODUCT[12]~reg0_q\,
	devoe => ww_devoe,
	o => ww_PRODUCT(12));

\PRODUCT[13]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PRODUCT[13]~reg0_q\,
	devoe => ww_devoe,
	o => ww_PRODUCT(13));

\PRODUCT[14]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PRODUCT[14]~reg0_q\,
	devoe => ww_devoe,
	o => ww_PRODUCT(14));

\PRODUCT[15]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PRODUCT[15]~reg0_q\,
	devoe => ww_devoe,
	o => ww_PRODUCT(15));

\PRODUCT[16]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PRODUCT[16]~reg0_q\,
	devoe => ww_devoe,
	o => ww_PRODUCT(16));

\PRODUCT[17]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PRODUCT[17]~reg0_q\,
	devoe => ww_devoe,
	o => ww_PRODUCT(17));

\PRODUCT[18]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PRODUCT[18]~reg0_q\,
	devoe => ww_devoe,
	o => ww_PRODUCT(18));

\PRODUCT[19]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PRODUCT[19]~reg0_q\,
	devoe => ww_devoe,
	o => ww_PRODUCT(19));

\CLK~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK,
	o => \CLK~input_o\);

\INPUT_A[9]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INPUT_A(9),
	o => \INPUT_A[9]~input_o\);

\INPUT_A[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INPUT_A(0),
	o => \INPUT_A[0]~input_o\);

\a_abs~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \a_abs~0_combout\ = \INPUT_A[9]~input_o\ $ (\INPUT_A[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \INPUT_A[9]~input_o\,
	datad => \INPUT_A[0]~input_o\,
	combout => \a_abs~0_combout\);

\multiplicand_u[0]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multiplicand_u[0]~10_combout\ = (\INPUT_A[9]~input_o\ & (\a_abs~0_combout\ $ (VCC))) # (!\INPUT_A[9]~input_o\ & (\a_abs~0_combout\ & VCC))
-- \multiplicand_u[0]~11\ = CARRY((\INPUT_A[9]~input_o\ & \a_abs~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INPUT_A[9]~input_o\,
	datab => \a_abs~0_combout\,
	datad => VCC,
	combout => \multiplicand_u[0]~10_combout\,
	cout => \multiplicand_u[0]~11\);

\~GND\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

\RST_N~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RST_N,
	o => \RST_N~input_o\);

\Selector50~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector50~0_combout\ = (bit_cnt(3) & ((\state.FINISH~q\) # (\state.CALC~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bit_cnt(3),
	datab => \state.FINISH~q\,
	datac => \state.CALC~q\,
	combout => \Selector50~0_combout\);

\LessThan0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (bit_cnt(3) & ((bit_cnt(2)) # (bit_cnt(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bit_cnt(3),
	datab => bit_cnt(2),
	datac => bit_cnt(1),
	combout => \LessThan0~0_combout\);

\Selector53~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector53~0_combout\ = (bit_cnt(0) & ((\state.FINISH~q\) # ((\state.CALC~q\ & \LessThan0~0_combout\)))) # (!bit_cnt(0) & (((\state.CALC~q\ & !\LessThan0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bit_cnt(0),
	datab => \state.FINISH~q\,
	datac => \state.CALC~q\,
	datad => \LessThan0~0_combout\,
	combout => \Selector53~0_combout\);

\bit_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \Selector53~0_combout\,
	clrn => \RST_N~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_cnt(0));

\Selector52~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector52~1_combout\ = (bit_cnt(1) & ((\Selector52~0_combout\) # ((\Selector55~0_combout\ & !bit_cnt(0))))) # (!bit_cnt(1) & (((\Selector55~0_combout\ & bit_cnt(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector52~0_combout\,
	datab => \Selector55~0_combout\,
	datac => bit_cnt(1),
	datad => bit_cnt(0),
	combout => \Selector52~1_combout\);

\bit_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \Selector52~1_combout\,
	clrn => \RST_N~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_cnt(1));

\Add3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add3~0_combout\ = (bit_cnt(1) & bit_cnt(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bit_cnt(1),
	datab => bit_cnt(0),
	combout => \Add3~0_combout\);

\Selector50~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector50~1_combout\ = (\Selector50~0_combout\) # ((bit_cnt(2) & (\state.CALC~q\ & \Add3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector50~0_combout\,
	datab => bit_cnt(2),
	datac => \state.CALC~q\,
	datad => \Add3~0_combout\,
	combout => \Selector50~1_combout\);

\bit_cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \Selector50~1_combout\,
	clrn => \RST_N~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_cnt(3));

\state~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state~10_combout\ = (bit_cnt(3) & (\state.CALC~q\ & ((bit_cnt(2)) # (bit_cnt(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bit_cnt(3),
	datab => \state.CALC~q\,
	datac => bit_cnt(2),
	datad => bit_cnt(1),
	combout => \state~10_combout\);

\state.FINISH\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \state~10_combout\,
	clrn => \RST_N~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.FINISH~q\);

\Selector52~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector52~0_combout\ = (\state.FINISH~q\) # ((bit_cnt(3) & \state.CALC~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.FINISH~q\,
	datab => bit_cnt(3),
	datac => \state.CALC~q\,
	combout => \Selector52~0_combout\);

\Selector51~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector51~0_combout\ = (bit_cnt(2) & ((\Selector52~0_combout\) # ((\Selector55~0_combout\ & !\Add3~0_combout\)))) # (!bit_cnt(2) & (((\Selector55~0_combout\ & \Add3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector52~0_combout\,
	datab => \Selector55~0_combout\,
	datac => bit_cnt(2),
	datad => \Add3~0_combout\,
	combout => \Selector51~0_combout\);

\bit_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \Selector51~0_combout\,
	clrn => \RST_N~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bit_cnt(2));

\Selector55~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector55~0_combout\ = (\state.CALC~q\ & (((!bit_cnt(2) & !bit_cnt(1))) # (!bit_cnt(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.CALC~q\,
	datab => bit_cnt(2),
	datac => bit_cnt(1),
	datad => bit_cnt(3),
	combout => \Selector55~0_combout\);

\state.IDLE~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state.IDLE~0_combout\ = !\state.FINISH~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.FINISH~q\,
	combout => \state.IDLE~0_combout\);

\state.IDLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \state.IDLE~0_combout\,
	clrn => \RST_N~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.IDLE~q\);

\Selector55~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector55~1_combout\ = (\Selector55~0_combout\) # (!\state.IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector55~0_combout\,
	datad => \state.IDLE~q\,
	combout => \Selector55~1_combout\);

\state.CALC\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \Selector55~1_combout\,
	clrn => \RST_N~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.CALC~q\);

\multiplicand_u[7]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multiplicand_u[7]~12_combout\ = (!\state.FINISH~q\ & !\state~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.FINISH~q\,
	datab => \state~10_combout\,
	combout => \multiplicand_u[7]~12_combout\);

\multiplicand_u[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \multiplicand_u[0]~10_combout\,
	asdata => \~GND~combout\,
	clrn => \RST_N~input_o\,
	sload => \state.CALC~q\,
	ena => \multiplicand_u[7]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => multiplicand_u(0));

\Add2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~0_combout\ = (result_u(0) & (multiplicand_u(0) $ (VCC))) # (!result_u(0) & (multiplicand_u(0) & VCC))
-- \Add2~1\ = CARRY((result_u(0) & multiplicand_u(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => result_u(0),
	datab => multiplicand_u(0),
	datad => VCC,
	combout => \Add2~0_combout\,
	cout => \Add2~1\);

\INPUT_B[9]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INPUT_B(9),
	o => \INPUT_B[9]~input_o\);

\INPUT_B[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INPUT_B(0),
	o => \INPUT_B[0]~input_o\);

\b_abs~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \b_abs~0_combout\ = \INPUT_B[9]~input_o\ $ (\INPUT_B[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \INPUT_B[9]~input_o\,
	datad => \INPUT_B[0]~input_o\,
	combout => \b_abs~0_combout\);

\multiplier_u[0]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multiplier_u[0]~10_combout\ = (\INPUT_B[9]~input_o\ & (\b_abs~0_combout\ $ (VCC))) # (!\INPUT_B[9]~input_o\ & (\b_abs~0_combout\ & VCC))
-- \multiplier_u[0]~11\ = CARRY((\INPUT_B[9]~input_o\ & \b_abs~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INPUT_B[9]~input_o\,
	datab => \b_abs~0_combout\,
	datad => VCC,
	combout => \multiplier_u[0]~10_combout\,
	cout => \multiplier_u[0]~11\);

\INPUT_B[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INPUT_B(1),
	o => \INPUT_B[1]~input_o\);

\multiplier_u[1]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multiplier_u[1]~12_combout\ = (\multiplier_u[0]~11\ & (\INPUT_B[1]~input_o\ $ ((!\INPUT_B[9]~input_o\)))) # (!\multiplier_u[0]~11\ & ((\INPUT_B[1]~input_o\ $ (\INPUT_B[9]~input_o\)) # (GND)))
-- \multiplier_u[1]~13\ = CARRY((\INPUT_B[1]~input_o\ $ (!\INPUT_B[9]~input_o\)) # (!\multiplier_u[0]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INPUT_B[1]~input_o\,
	datab => \INPUT_B[9]~input_o\,
	datad => VCC,
	cin => \multiplier_u[0]~11\,
	combout => \multiplier_u[1]~12_combout\,
	cout => \multiplier_u[1]~13\);

\INPUT_B[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INPUT_B(2),
	o => \INPUT_B[2]~input_o\);

\multiplier_u[2]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multiplier_u[2]~14_combout\ = (\multiplier_u[1]~13\ & ((\INPUT_B[2]~input_o\ $ (\INPUT_B[9]~input_o\)))) # (!\multiplier_u[1]~13\ & (\INPUT_B[2]~input_o\ $ (\INPUT_B[9]~input_o\ $ (VCC))))
-- \multiplier_u[2]~15\ = CARRY((!\multiplier_u[1]~13\ & (\INPUT_B[2]~input_o\ $ (\INPUT_B[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INPUT_B[2]~input_o\,
	datab => \INPUT_B[9]~input_o\,
	datad => VCC,
	cin => \multiplier_u[1]~13\,
	combout => \multiplier_u[2]~14_combout\,
	cout => \multiplier_u[2]~15\);

\INPUT_B[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INPUT_B(3),
	o => \INPUT_B[3]~input_o\);

\multiplier_u[3]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multiplier_u[3]~16_combout\ = (\multiplier_u[2]~15\ & (\INPUT_B[3]~input_o\ $ ((!\INPUT_B[9]~input_o\)))) # (!\multiplier_u[2]~15\ & ((\INPUT_B[3]~input_o\ $ (\INPUT_B[9]~input_o\)) # (GND)))
-- \multiplier_u[3]~17\ = CARRY((\INPUT_B[3]~input_o\ $ (!\INPUT_B[9]~input_o\)) # (!\multiplier_u[2]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INPUT_B[3]~input_o\,
	datab => \INPUT_B[9]~input_o\,
	datad => VCC,
	cin => \multiplier_u[2]~15\,
	combout => \multiplier_u[3]~16_combout\,
	cout => \multiplier_u[3]~17\);

\INPUT_B[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INPUT_B(4),
	o => \INPUT_B[4]~input_o\);

\multiplier_u[4]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multiplier_u[4]~18_combout\ = (\multiplier_u[3]~17\ & ((\INPUT_B[4]~input_o\ $ (\INPUT_B[9]~input_o\)))) # (!\multiplier_u[3]~17\ & (\INPUT_B[4]~input_o\ $ (\INPUT_B[9]~input_o\ $ (VCC))))
-- \multiplier_u[4]~19\ = CARRY((!\multiplier_u[3]~17\ & (\INPUT_B[4]~input_o\ $ (\INPUT_B[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INPUT_B[4]~input_o\,
	datab => \INPUT_B[9]~input_o\,
	datad => VCC,
	cin => \multiplier_u[3]~17\,
	combout => \multiplier_u[4]~18_combout\,
	cout => \multiplier_u[4]~19\);

\INPUT_B[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INPUT_B(5),
	o => \INPUT_B[5]~input_o\);

\multiplier_u[5]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multiplier_u[5]~20_combout\ = (\multiplier_u[4]~19\ & (\INPUT_B[5]~input_o\ $ ((!\INPUT_B[9]~input_o\)))) # (!\multiplier_u[4]~19\ & ((\INPUT_B[5]~input_o\ $ (\INPUT_B[9]~input_o\)) # (GND)))
-- \multiplier_u[5]~21\ = CARRY((\INPUT_B[5]~input_o\ $ (!\INPUT_B[9]~input_o\)) # (!\multiplier_u[4]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INPUT_B[5]~input_o\,
	datab => \INPUT_B[9]~input_o\,
	datad => VCC,
	cin => \multiplier_u[4]~19\,
	combout => \multiplier_u[5]~20_combout\,
	cout => \multiplier_u[5]~21\);

\INPUT_B[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INPUT_B(6),
	o => \INPUT_B[6]~input_o\);

\multiplier_u[6]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multiplier_u[6]~22_combout\ = (\multiplier_u[5]~21\ & ((\INPUT_B[6]~input_o\ $ (\INPUT_B[9]~input_o\)))) # (!\multiplier_u[5]~21\ & (\INPUT_B[6]~input_o\ $ (\INPUT_B[9]~input_o\ $ (VCC))))
-- \multiplier_u[6]~23\ = CARRY((!\multiplier_u[5]~21\ & (\INPUT_B[6]~input_o\ $ (\INPUT_B[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INPUT_B[6]~input_o\,
	datab => \INPUT_B[9]~input_o\,
	datad => VCC,
	cin => \multiplier_u[5]~21\,
	combout => \multiplier_u[6]~22_combout\,
	cout => \multiplier_u[6]~23\);

\INPUT_B[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INPUT_B(7),
	o => \INPUT_B[7]~input_o\);

\multiplier_u[7]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multiplier_u[7]~24_combout\ = (\multiplier_u[6]~23\ & (\INPUT_B[7]~input_o\ $ ((!\INPUT_B[9]~input_o\)))) # (!\multiplier_u[6]~23\ & ((\INPUT_B[7]~input_o\ $ (\INPUT_B[9]~input_o\)) # (GND)))
-- \multiplier_u[7]~25\ = CARRY((\INPUT_B[7]~input_o\ $ (!\INPUT_B[9]~input_o\)) # (!\multiplier_u[6]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INPUT_B[7]~input_o\,
	datab => \INPUT_B[9]~input_o\,
	datad => VCC,
	cin => \multiplier_u[6]~23\,
	combout => \multiplier_u[7]~24_combout\,
	cout => \multiplier_u[7]~25\);

\INPUT_B[8]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INPUT_B(8),
	o => \INPUT_B[8]~input_o\);

\multiplier_u[8]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multiplier_u[8]~26_combout\ = (\multiplier_u[7]~25\ & ((\INPUT_B[8]~input_o\ $ (\INPUT_B[9]~input_o\)))) # (!\multiplier_u[7]~25\ & (\INPUT_B[8]~input_o\ $ (\INPUT_B[9]~input_o\ $ (VCC))))
-- \multiplier_u[8]~27\ = CARRY((!\multiplier_u[7]~25\ & (\INPUT_B[8]~input_o\ $ (\INPUT_B[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INPUT_B[8]~input_o\,
	datab => \INPUT_B[9]~input_o\,
	datad => VCC,
	cin => \multiplier_u[7]~25\,
	combout => \multiplier_u[8]~26_combout\,
	cout => \multiplier_u[8]~27\);

\multiplier_u[9]~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multiplier_u[9]~28_combout\ = \multiplier_u[8]~27\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \multiplier_u[8]~27\,
	combout => \multiplier_u[9]~28_combout\);

\multiplier_u[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \multiplier_u[9]~28_combout\,
	asdata => \~GND~combout\,
	clrn => \RST_N~input_o\,
	sload => \state.CALC~q\,
	ena => \multiplicand_u[7]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => multiplier_u(9));

\multiplier_u[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \multiplier_u[8]~26_combout\,
	asdata => multiplier_u(9),
	clrn => \RST_N~input_o\,
	sload => \state.CALC~q\,
	ena => \multiplicand_u[7]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => multiplier_u(8));

\multiplier_u[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \multiplier_u[7]~24_combout\,
	asdata => multiplier_u(8),
	clrn => \RST_N~input_o\,
	sload => \state.CALC~q\,
	ena => \multiplicand_u[7]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => multiplier_u(7));

\multiplier_u[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \multiplier_u[6]~22_combout\,
	asdata => multiplier_u(7),
	clrn => \RST_N~input_o\,
	sload => \state.CALC~q\,
	ena => \multiplicand_u[7]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => multiplier_u(6));

\multiplier_u[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \multiplier_u[5]~20_combout\,
	asdata => multiplier_u(6),
	clrn => \RST_N~input_o\,
	sload => \state.CALC~q\,
	ena => \multiplicand_u[7]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => multiplier_u(5));

\multiplier_u[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \multiplier_u[4]~18_combout\,
	asdata => multiplier_u(5),
	clrn => \RST_N~input_o\,
	sload => \state.CALC~q\,
	ena => \multiplicand_u[7]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => multiplier_u(4));

\multiplier_u[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \multiplier_u[3]~16_combout\,
	asdata => multiplier_u(4),
	clrn => \RST_N~input_o\,
	sload => \state.CALC~q\,
	ena => \multiplicand_u[7]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => multiplier_u(3));

\multiplier_u[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \multiplier_u[2]~14_combout\,
	asdata => multiplier_u(3),
	clrn => \RST_N~input_o\,
	sload => \state.CALC~q\,
	ena => \multiplicand_u[7]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => multiplier_u(2));

\multiplier_u[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \multiplier_u[1]~12_combout\,
	asdata => multiplier_u(2),
	clrn => \RST_N~input_o\,
	sload => \state.CALC~q\,
	ena => \multiplicand_u[7]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => multiplier_u(1));

\multiplier_u[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \multiplier_u[0]~10_combout\,
	asdata => multiplier_u(1),
	clrn => \RST_N~input_o\,
	sload => \state.CALC~q\,
	ena => \multiplicand_u[7]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => multiplier_u(0));

\Add2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~2_combout\ = (\Add2~0_combout\ & (multiplier_u(0) & (\state.CALC~q\ & !\LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~0_combout\,
	datab => multiplier_u(0),
	datac => \state.CALC~q\,
	datad => \LessThan0~0_combout\,
	combout => \Add2~2_combout\);

\Add2~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~3_combout\ = (\state.CALC~q\ & ((\LessThan0~0_combout\) # (!multiplier_u(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.CALC~q\,
	datab => \LessThan0~0_combout\,
	datad => multiplier_u(0),
	combout => \Add2~3_combout\);

\Selector49~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector49~0_combout\ = (\Add2~2_combout\) # ((result_u(0) & ((\state.FINISH~q\) # (\Add2~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~2_combout\,
	datab => result_u(0),
	datac => \state.FINISH~q\,
	datad => \Add2~3_combout\,
	combout => \Selector49~0_combout\);

\result_u[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \Selector49~0_combout\,
	clrn => \RST_N~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => result_u(0));

\sign_res~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sign_res~0_combout\ = (\state.IDLE~q\ & (\sign_res~q\)) # (!\state.IDLE~q\ & ((\INPUT_A[9]~input_o\ $ (\INPUT_B[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sign_res~q\,
	datab => \state.IDLE~q\,
	datac => \INPUT_A[9]~input_o\,
	datad => \INPUT_B[9]~input_o\,
	combout => \sign_res~0_combout\);

sign_res : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \sign_res~0_combout\,
	clrn => \RST_N~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sign_res~q\);

\Add4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add4~0_combout\ = result_u(0) $ (\sign_res~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => result_u(0),
	datad => \sign_res~q\,
	combout => \Add4~0_combout\);

\PRODUCT[0]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PRODUCT[0]~20_combout\ = (\Add4~0_combout\ & (\sign_res~q\ $ (VCC))) # (!\Add4~0_combout\ & (\sign_res~q\ & VCC))
-- \PRODUCT[0]~21\ = CARRY((\Add4~0_combout\ & \sign_res~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~0_combout\,
	datab => \sign_res~q\,
	datad => VCC,
	combout => \PRODUCT[0]~20_combout\,
	cout => \PRODUCT[0]~21\);

\PRODUCT[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \PRODUCT[0]~20_combout\,
	clrn => \RST_N~input_o\,
	ena => \state.FINISH~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PRODUCT[0]~reg0_q\);

\INPUT_A[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INPUT_A(1),
	o => \INPUT_A[1]~input_o\);

\multiplicand_u[1]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multiplicand_u[1]~13_combout\ = (\multiplicand_u[0]~11\ & (\INPUT_A[1]~input_o\ $ ((!\INPUT_A[9]~input_o\)))) # (!\multiplicand_u[0]~11\ & ((\INPUT_A[1]~input_o\ $ (\INPUT_A[9]~input_o\)) # (GND)))
-- \multiplicand_u[1]~14\ = CARRY((\INPUT_A[1]~input_o\ $ (!\INPUT_A[9]~input_o\)) # (!\multiplicand_u[0]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INPUT_A[1]~input_o\,
	datab => \INPUT_A[9]~input_o\,
	datad => VCC,
	cin => \multiplicand_u[0]~11\,
	combout => \multiplicand_u[1]~13_combout\,
	cout => \multiplicand_u[1]~14\);

\multiplicand_u[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \multiplicand_u[1]~13_combout\,
	asdata => multiplicand_u(0),
	clrn => \RST_N~input_o\,
	sload => \state.CALC~q\,
	ena => \multiplicand_u[7]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => multiplicand_u(1));

\Add2~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~4_combout\ = (result_u(1) & ((multiplicand_u(1) & (\Add2~1\ & VCC)) # (!multiplicand_u(1) & (!\Add2~1\)))) # (!result_u(1) & ((multiplicand_u(1) & (!\Add2~1\)) # (!multiplicand_u(1) & ((\Add2~1\) # (GND)))))
-- \Add2~5\ = CARRY((result_u(1) & (!multiplicand_u(1) & !\Add2~1\)) # (!result_u(1) & ((!\Add2~1\) # (!multiplicand_u(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => result_u(1),
	datab => multiplicand_u(1),
	datad => VCC,
	cin => \Add2~1\,
	combout => \Add2~4_combout\,
	cout => \Add2~5\);

\Add2~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~6_combout\ = (multiplier_u(0) & (\state.CALC~q\ & (\Add2~4_combout\ & !\LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => multiplier_u(0),
	datab => \state.CALC~q\,
	datac => \Add2~4_combout\,
	datad => \LessThan0~0_combout\,
	combout => \Add2~6_combout\);

\Selector48~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector48~0_combout\ = (\Add2~6_combout\) # ((result_u(1) & ((\state.FINISH~q\) # (\Add2~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~6_combout\,
	datab => result_u(1),
	datac => \state.FINISH~q\,
	datad => \Add2~3_combout\,
	combout => \Selector48~0_combout\);

\result_u[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \Selector48~0_combout\,
	clrn => \RST_N~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => result_u(1));

\PRODUCT[1]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PRODUCT[1]~22_combout\ = (\PRODUCT[0]~21\ & (result_u(1) $ ((!\sign_res~q\)))) # (!\PRODUCT[0]~21\ & ((result_u(1) $ (\sign_res~q\)) # (GND)))
-- \PRODUCT[1]~23\ = CARRY((result_u(1) $ (!\sign_res~q\)) # (!\PRODUCT[0]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => result_u(1),
	datab => \sign_res~q\,
	datad => VCC,
	cin => \PRODUCT[0]~21\,
	combout => \PRODUCT[1]~22_combout\,
	cout => \PRODUCT[1]~23\);

\PRODUCT[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \PRODUCT[1]~22_combout\,
	clrn => \RST_N~input_o\,
	ena => \state.FINISH~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PRODUCT[1]~reg0_q\);

\INPUT_A[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INPUT_A(2),
	o => \INPUT_A[2]~input_o\);

\multiplicand_u[2]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multiplicand_u[2]~15_combout\ = (\multiplicand_u[1]~14\ & ((\INPUT_A[2]~input_o\ $ (\INPUT_A[9]~input_o\)))) # (!\multiplicand_u[1]~14\ & (\INPUT_A[2]~input_o\ $ (\INPUT_A[9]~input_o\ $ (VCC))))
-- \multiplicand_u[2]~16\ = CARRY((!\multiplicand_u[1]~14\ & (\INPUT_A[2]~input_o\ $ (\INPUT_A[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INPUT_A[2]~input_o\,
	datab => \INPUT_A[9]~input_o\,
	datad => VCC,
	cin => \multiplicand_u[1]~14\,
	combout => \multiplicand_u[2]~15_combout\,
	cout => \multiplicand_u[2]~16\);

\multiplicand_u[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \multiplicand_u[2]~15_combout\,
	asdata => multiplicand_u(1),
	clrn => \RST_N~input_o\,
	sload => \state.CALC~q\,
	ena => \multiplicand_u[7]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => multiplicand_u(2));

\Add2~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~7_combout\ = ((result_u(2) $ (multiplicand_u(2) $ (!\Add2~5\)))) # (GND)
-- \Add2~8\ = CARRY((result_u(2) & ((multiplicand_u(2)) # (!\Add2~5\))) # (!result_u(2) & (multiplicand_u(2) & !\Add2~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => result_u(2),
	datab => multiplicand_u(2),
	datad => VCC,
	cin => \Add2~5\,
	combout => \Add2~7_combout\,
	cout => \Add2~8\);

\Add2~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~9_combout\ = (multiplier_u(0) & (\state.CALC~q\ & (\Add2~7_combout\ & !\LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => multiplier_u(0),
	datab => \state.CALC~q\,
	datac => \Add2~7_combout\,
	datad => \LessThan0~0_combout\,
	combout => \Add2~9_combout\);

\Selector47~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector47~0_combout\ = (\Add2~9_combout\) # ((result_u(2) & ((\state.FINISH~q\) # (\Add2~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~9_combout\,
	datab => result_u(2),
	datac => \state.FINISH~q\,
	datad => \Add2~3_combout\,
	combout => \Selector47~0_combout\);

\result_u[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \Selector47~0_combout\,
	clrn => \RST_N~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => result_u(2));

\PRODUCT[2]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PRODUCT[2]~24_combout\ = (\PRODUCT[1]~23\ & ((result_u(2) $ (\sign_res~q\)))) # (!\PRODUCT[1]~23\ & (result_u(2) $ (\sign_res~q\ $ (VCC))))
-- \PRODUCT[2]~25\ = CARRY((!\PRODUCT[1]~23\ & (result_u(2) $ (\sign_res~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => result_u(2),
	datab => \sign_res~q\,
	datad => VCC,
	cin => \PRODUCT[1]~23\,
	combout => \PRODUCT[2]~24_combout\,
	cout => \PRODUCT[2]~25\);

\PRODUCT[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \PRODUCT[2]~24_combout\,
	clrn => \RST_N~input_o\,
	ena => \state.FINISH~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PRODUCT[2]~reg0_q\);

\INPUT_A[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INPUT_A(3),
	o => \INPUT_A[3]~input_o\);

\multiplicand_u[3]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multiplicand_u[3]~17_combout\ = (\multiplicand_u[2]~16\ & (\INPUT_A[3]~input_o\ $ ((!\INPUT_A[9]~input_o\)))) # (!\multiplicand_u[2]~16\ & ((\INPUT_A[3]~input_o\ $ (\INPUT_A[9]~input_o\)) # (GND)))
-- \multiplicand_u[3]~18\ = CARRY((\INPUT_A[3]~input_o\ $ (!\INPUT_A[9]~input_o\)) # (!\multiplicand_u[2]~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INPUT_A[3]~input_o\,
	datab => \INPUT_A[9]~input_o\,
	datad => VCC,
	cin => \multiplicand_u[2]~16\,
	combout => \multiplicand_u[3]~17_combout\,
	cout => \multiplicand_u[3]~18\);

\multiplicand_u[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \multiplicand_u[3]~17_combout\,
	asdata => multiplicand_u(2),
	clrn => \RST_N~input_o\,
	sload => \state.CALC~q\,
	ena => \multiplicand_u[7]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => multiplicand_u(3));

\Add2~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~10_combout\ = (result_u(3) & ((multiplicand_u(3) & (\Add2~8\ & VCC)) # (!multiplicand_u(3) & (!\Add2~8\)))) # (!result_u(3) & ((multiplicand_u(3) & (!\Add2~8\)) # (!multiplicand_u(3) & ((\Add2~8\) # (GND)))))
-- \Add2~11\ = CARRY((result_u(3) & (!multiplicand_u(3) & !\Add2~8\)) # (!result_u(3) & ((!\Add2~8\) # (!multiplicand_u(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => result_u(3),
	datab => multiplicand_u(3),
	datad => VCC,
	cin => \Add2~8\,
	combout => \Add2~10_combout\,
	cout => \Add2~11\);

\Add2~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~12_combout\ = (multiplier_u(0) & (\state.CALC~q\ & (\Add2~10_combout\ & !\LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => multiplier_u(0),
	datab => \state.CALC~q\,
	datac => \Add2~10_combout\,
	datad => \LessThan0~0_combout\,
	combout => \Add2~12_combout\);

\Selector46~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector46~0_combout\ = (\Add2~12_combout\) # ((result_u(3) & ((\state.FINISH~q\) # (\Add2~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~12_combout\,
	datab => result_u(3),
	datac => \state.FINISH~q\,
	datad => \Add2~3_combout\,
	combout => \Selector46~0_combout\);

\result_u[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \Selector46~0_combout\,
	clrn => \RST_N~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => result_u(3));

\PRODUCT[3]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PRODUCT[3]~26_combout\ = (\PRODUCT[2]~25\ & (result_u(3) $ ((!\sign_res~q\)))) # (!\PRODUCT[2]~25\ & ((result_u(3) $ (\sign_res~q\)) # (GND)))
-- \PRODUCT[3]~27\ = CARRY((result_u(3) $ (!\sign_res~q\)) # (!\PRODUCT[2]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => result_u(3),
	datab => \sign_res~q\,
	datad => VCC,
	cin => \PRODUCT[2]~25\,
	combout => \PRODUCT[3]~26_combout\,
	cout => \PRODUCT[3]~27\);

\PRODUCT[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \PRODUCT[3]~26_combout\,
	clrn => \RST_N~input_o\,
	ena => \state.FINISH~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PRODUCT[3]~reg0_q\);

\INPUT_A[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INPUT_A(4),
	o => \INPUT_A[4]~input_o\);

\multiplicand_u[4]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multiplicand_u[4]~19_combout\ = (\multiplicand_u[3]~18\ & ((\INPUT_A[4]~input_o\ $ (\INPUT_A[9]~input_o\)))) # (!\multiplicand_u[3]~18\ & (\INPUT_A[4]~input_o\ $ (\INPUT_A[9]~input_o\ $ (VCC))))
-- \multiplicand_u[4]~20\ = CARRY((!\multiplicand_u[3]~18\ & (\INPUT_A[4]~input_o\ $ (\INPUT_A[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INPUT_A[4]~input_o\,
	datab => \INPUT_A[9]~input_o\,
	datad => VCC,
	cin => \multiplicand_u[3]~18\,
	combout => \multiplicand_u[4]~19_combout\,
	cout => \multiplicand_u[4]~20\);

\multiplicand_u[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \multiplicand_u[4]~19_combout\,
	asdata => multiplicand_u(3),
	clrn => \RST_N~input_o\,
	sload => \state.CALC~q\,
	ena => \multiplicand_u[7]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => multiplicand_u(4));

\Add2~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~13_combout\ = ((result_u(4) $ (multiplicand_u(4) $ (!\Add2~11\)))) # (GND)
-- \Add2~14\ = CARRY((result_u(4) & ((multiplicand_u(4)) # (!\Add2~11\))) # (!result_u(4) & (multiplicand_u(4) & !\Add2~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => result_u(4),
	datab => multiplicand_u(4),
	datad => VCC,
	cin => \Add2~11\,
	combout => \Add2~13_combout\,
	cout => \Add2~14\);

\Add2~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~15_combout\ = (multiplier_u(0) & (\state.CALC~q\ & (\Add2~13_combout\ & !\LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => multiplier_u(0),
	datab => \state.CALC~q\,
	datac => \Add2~13_combout\,
	datad => \LessThan0~0_combout\,
	combout => \Add2~15_combout\);

\Selector45~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector45~0_combout\ = (\Add2~15_combout\) # ((result_u(4) & ((\state.FINISH~q\) # (\Add2~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~15_combout\,
	datab => result_u(4),
	datac => \state.FINISH~q\,
	datad => \Add2~3_combout\,
	combout => \Selector45~0_combout\);

\result_u[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \Selector45~0_combout\,
	clrn => \RST_N~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => result_u(4));

\PRODUCT[4]~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PRODUCT[4]~28_combout\ = (\PRODUCT[3]~27\ & ((result_u(4) $ (\sign_res~q\)))) # (!\PRODUCT[3]~27\ & (result_u(4) $ (\sign_res~q\ $ (VCC))))
-- \PRODUCT[4]~29\ = CARRY((!\PRODUCT[3]~27\ & (result_u(4) $ (\sign_res~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => result_u(4),
	datab => \sign_res~q\,
	datad => VCC,
	cin => \PRODUCT[3]~27\,
	combout => \PRODUCT[4]~28_combout\,
	cout => \PRODUCT[4]~29\);

\PRODUCT[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \PRODUCT[4]~28_combout\,
	clrn => \RST_N~input_o\,
	ena => \state.FINISH~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PRODUCT[4]~reg0_q\);

\INPUT_A[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INPUT_A(5),
	o => \INPUT_A[5]~input_o\);

\multiplicand_u[5]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multiplicand_u[5]~21_combout\ = (\multiplicand_u[4]~20\ & (\INPUT_A[5]~input_o\ $ ((!\INPUT_A[9]~input_o\)))) # (!\multiplicand_u[4]~20\ & ((\INPUT_A[5]~input_o\ $ (\INPUT_A[9]~input_o\)) # (GND)))
-- \multiplicand_u[5]~22\ = CARRY((\INPUT_A[5]~input_o\ $ (!\INPUT_A[9]~input_o\)) # (!\multiplicand_u[4]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INPUT_A[5]~input_o\,
	datab => \INPUT_A[9]~input_o\,
	datad => VCC,
	cin => \multiplicand_u[4]~20\,
	combout => \multiplicand_u[5]~21_combout\,
	cout => \multiplicand_u[5]~22\);

\multiplicand_u[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \multiplicand_u[5]~21_combout\,
	asdata => multiplicand_u(4),
	clrn => \RST_N~input_o\,
	sload => \state.CALC~q\,
	ena => \multiplicand_u[7]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => multiplicand_u(5));

\Add2~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~16_combout\ = (result_u(5) & ((multiplicand_u(5) & (\Add2~14\ & VCC)) # (!multiplicand_u(5) & (!\Add2~14\)))) # (!result_u(5) & ((multiplicand_u(5) & (!\Add2~14\)) # (!multiplicand_u(5) & ((\Add2~14\) # (GND)))))
-- \Add2~17\ = CARRY((result_u(5) & (!multiplicand_u(5) & !\Add2~14\)) # (!result_u(5) & ((!\Add2~14\) # (!multiplicand_u(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => result_u(5),
	datab => multiplicand_u(5),
	datad => VCC,
	cin => \Add2~14\,
	combout => \Add2~16_combout\,
	cout => \Add2~17\);

\Add2~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~18_combout\ = (multiplier_u(0) & (\state.CALC~q\ & (\Add2~16_combout\ & !\LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => multiplier_u(0),
	datab => \state.CALC~q\,
	datac => \Add2~16_combout\,
	datad => \LessThan0~0_combout\,
	combout => \Add2~18_combout\);

\Selector44~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector44~0_combout\ = (\Add2~18_combout\) # ((result_u(5) & ((\state.FINISH~q\) # (\Add2~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~18_combout\,
	datab => result_u(5),
	datac => \state.FINISH~q\,
	datad => \Add2~3_combout\,
	combout => \Selector44~0_combout\);

\result_u[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \Selector44~0_combout\,
	clrn => \RST_N~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => result_u(5));

\PRODUCT[5]~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PRODUCT[5]~30_combout\ = (\PRODUCT[4]~29\ & (result_u(5) $ ((!\sign_res~q\)))) # (!\PRODUCT[4]~29\ & ((result_u(5) $ (\sign_res~q\)) # (GND)))
-- \PRODUCT[5]~31\ = CARRY((result_u(5) $ (!\sign_res~q\)) # (!\PRODUCT[4]~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => result_u(5),
	datab => \sign_res~q\,
	datad => VCC,
	cin => \PRODUCT[4]~29\,
	combout => \PRODUCT[5]~30_combout\,
	cout => \PRODUCT[5]~31\);

\PRODUCT[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \PRODUCT[5]~30_combout\,
	clrn => \RST_N~input_o\,
	ena => \state.FINISH~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PRODUCT[5]~reg0_q\);

\INPUT_A[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INPUT_A(6),
	o => \INPUT_A[6]~input_o\);

\multiplicand_u[6]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multiplicand_u[6]~23_combout\ = (\multiplicand_u[5]~22\ & ((\INPUT_A[6]~input_o\ $ (\INPUT_A[9]~input_o\)))) # (!\multiplicand_u[5]~22\ & (\INPUT_A[6]~input_o\ $ (\INPUT_A[9]~input_o\ $ (VCC))))
-- \multiplicand_u[6]~24\ = CARRY((!\multiplicand_u[5]~22\ & (\INPUT_A[6]~input_o\ $ (\INPUT_A[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INPUT_A[6]~input_o\,
	datab => \INPUT_A[9]~input_o\,
	datad => VCC,
	cin => \multiplicand_u[5]~22\,
	combout => \multiplicand_u[6]~23_combout\,
	cout => \multiplicand_u[6]~24\);

\multiplicand_u[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \multiplicand_u[6]~23_combout\,
	asdata => multiplicand_u(5),
	clrn => \RST_N~input_o\,
	sload => \state.CALC~q\,
	ena => \multiplicand_u[7]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => multiplicand_u(6));

\Add2~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~19_combout\ = ((result_u(6) $ (multiplicand_u(6) $ (!\Add2~17\)))) # (GND)
-- \Add2~20\ = CARRY((result_u(6) & ((multiplicand_u(6)) # (!\Add2~17\))) # (!result_u(6) & (multiplicand_u(6) & !\Add2~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => result_u(6),
	datab => multiplicand_u(6),
	datad => VCC,
	cin => \Add2~17\,
	combout => \Add2~19_combout\,
	cout => \Add2~20\);

\Add2~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~21_combout\ = (multiplier_u(0) & (\state.CALC~q\ & (\Add2~19_combout\ & !\LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => multiplier_u(0),
	datab => \state.CALC~q\,
	datac => \Add2~19_combout\,
	datad => \LessThan0~0_combout\,
	combout => \Add2~21_combout\);

\Selector43~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector43~0_combout\ = (\Add2~21_combout\) # ((result_u(6) & ((\state.FINISH~q\) # (\Add2~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~21_combout\,
	datab => result_u(6),
	datac => \state.FINISH~q\,
	datad => \Add2~3_combout\,
	combout => \Selector43~0_combout\);

\result_u[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \Selector43~0_combout\,
	clrn => \RST_N~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => result_u(6));

\PRODUCT[6]~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PRODUCT[6]~32_combout\ = (\PRODUCT[5]~31\ & ((result_u(6) $ (\sign_res~q\)))) # (!\PRODUCT[5]~31\ & (result_u(6) $ (\sign_res~q\ $ (VCC))))
-- \PRODUCT[6]~33\ = CARRY((!\PRODUCT[5]~31\ & (result_u(6) $ (\sign_res~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => result_u(6),
	datab => \sign_res~q\,
	datad => VCC,
	cin => \PRODUCT[5]~31\,
	combout => \PRODUCT[6]~32_combout\,
	cout => \PRODUCT[6]~33\);

\PRODUCT[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \PRODUCT[6]~32_combout\,
	clrn => \RST_N~input_o\,
	ena => \state.FINISH~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PRODUCT[6]~reg0_q\);

\Add2~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~22_combout\ = (multiplier_u(0) & (\state.CALC~q\ & !\LessThan0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => multiplier_u(0),
	datab => \state.CALC~q\,
	datad => \LessThan0~0_combout\,
	combout => \Add2~22_combout\);

\INPUT_A[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INPUT_A(7),
	o => \INPUT_A[7]~input_o\);

\multiplicand_u[7]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multiplicand_u[7]~25_combout\ = (\multiplicand_u[6]~24\ & (\INPUT_A[7]~input_o\ $ ((!\INPUT_A[9]~input_o\)))) # (!\multiplicand_u[6]~24\ & ((\INPUT_A[7]~input_o\ $ (\INPUT_A[9]~input_o\)) # (GND)))
-- \multiplicand_u[7]~26\ = CARRY((\INPUT_A[7]~input_o\ $ (!\INPUT_A[9]~input_o\)) # (!\multiplicand_u[6]~24\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INPUT_A[7]~input_o\,
	datab => \INPUT_A[9]~input_o\,
	datad => VCC,
	cin => \multiplicand_u[6]~24\,
	combout => \multiplicand_u[7]~25_combout\,
	cout => \multiplicand_u[7]~26\);

\multiplicand_u[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \multiplicand_u[7]~25_combout\,
	asdata => multiplicand_u(6),
	clrn => \RST_N~input_o\,
	sload => \state.CALC~q\,
	ena => \multiplicand_u[7]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => multiplicand_u(7));

\Add2~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~23_combout\ = (result_u(7) & ((multiplicand_u(7) & (\Add2~20\ & VCC)) # (!multiplicand_u(7) & (!\Add2~20\)))) # (!result_u(7) & ((multiplicand_u(7) & (!\Add2~20\)) # (!multiplicand_u(7) & ((\Add2~20\) # (GND)))))
-- \Add2~24\ = CARRY((result_u(7) & (!multiplicand_u(7) & !\Add2~20\)) # (!result_u(7) & ((!\Add2~20\) # (!multiplicand_u(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => result_u(7),
	datab => multiplicand_u(7),
	datad => VCC,
	cin => \Add2~20\,
	combout => \Add2~23_combout\,
	cout => \Add2~24\);

\Selector41~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector41~0_combout\ = (\state.FINISH~q\) # ((\state.CALC~q\ & ((\LessThan0~0_combout\) # (!multiplier_u(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.FINISH~q\,
	datab => \state.CALC~q\,
	datac => \LessThan0~0_combout\,
	datad => multiplier_u(0),
	combout => \Selector41~0_combout\);

\Selector42~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector42~0_combout\ = (result_u(7) & ((\Selector41~0_combout\) # ((\Add2~22_combout\ & \Add2~23_combout\)))) # (!result_u(7) & (\Add2~22_combout\ & (\Add2~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => result_u(7),
	datab => \Add2~22_combout\,
	datac => \Add2~23_combout\,
	datad => \Selector41~0_combout\,
	combout => \Selector42~0_combout\);

\result_u[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \Selector42~0_combout\,
	clrn => \RST_N~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => result_u(7));

\PRODUCT[7]~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PRODUCT[7]~34_combout\ = (\PRODUCT[6]~33\ & (result_u(7) $ ((!\sign_res~q\)))) # (!\PRODUCT[6]~33\ & ((result_u(7) $ (\sign_res~q\)) # (GND)))
-- \PRODUCT[7]~35\ = CARRY((result_u(7) $ (!\sign_res~q\)) # (!\PRODUCT[6]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => result_u(7),
	datab => \sign_res~q\,
	datad => VCC,
	cin => \PRODUCT[6]~33\,
	combout => \PRODUCT[7]~34_combout\,
	cout => \PRODUCT[7]~35\);

\PRODUCT[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \PRODUCT[7]~34_combout\,
	clrn => \RST_N~input_o\,
	ena => \state.FINISH~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PRODUCT[7]~reg0_q\);

\INPUT_A[8]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INPUT_A(8),
	o => \INPUT_A[8]~input_o\);

\multiplicand_u[8]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multiplicand_u[8]~27_combout\ = (\multiplicand_u[7]~26\ & ((\INPUT_A[8]~input_o\ $ (\INPUT_A[9]~input_o\)))) # (!\multiplicand_u[7]~26\ & (\INPUT_A[8]~input_o\ $ (\INPUT_A[9]~input_o\ $ (VCC))))
-- \multiplicand_u[8]~28\ = CARRY((!\multiplicand_u[7]~26\ & (\INPUT_A[8]~input_o\ $ (\INPUT_A[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INPUT_A[8]~input_o\,
	datab => \INPUT_A[9]~input_o\,
	datad => VCC,
	cin => \multiplicand_u[7]~26\,
	combout => \multiplicand_u[8]~27_combout\,
	cout => \multiplicand_u[8]~28\);

\multiplicand_u[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \multiplicand_u[8]~27_combout\,
	asdata => multiplicand_u(7),
	clrn => \RST_N~input_o\,
	sload => \state.CALC~q\,
	ena => \multiplicand_u[7]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => multiplicand_u(8));

\Add2~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~25_combout\ = ((result_u(8) $ (multiplicand_u(8) $ (!\Add2~24\)))) # (GND)
-- \Add2~26\ = CARRY((result_u(8) & ((multiplicand_u(8)) # (!\Add2~24\))) # (!result_u(8) & (multiplicand_u(8) & !\Add2~24\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => result_u(8),
	datab => multiplicand_u(8),
	datad => VCC,
	cin => \Add2~24\,
	combout => \Add2~25_combout\,
	cout => \Add2~26\);

\Selector41~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector41~1_combout\ = (result_u(8) & ((\Selector41~0_combout\) # ((\Add2~22_combout\ & \Add2~25_combout\)))) # (!result_u(8) & (\Add2~22_combout\ & (\Add2~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => result_u(8),
	datab => \Add2~22_combout\,
	datac => \Add2~25_combout\,
	datad => \Selector41~0_combout\,
	combout => \Selector41~1_combout\);

\result_u[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \Selector41~1_combout\,
	clrn => \RST_N~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => result_u(8));

\PRODUCT[8]~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PRODUCT[8]~36_combout\ = (\PRODUCT[7]~35\ & ((result_u(8) $ (\sign_res~q\)))) # (!\PRODUCT[7]~35\ & (result_u(8) $ (\sign_res~q\ $ (VCC))))
-- \PRODUCT[8]~37\ = CARRY((!\PRODUCT[7]~35\ & (result_u(8) $ (\sign_res~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => result_u(8),
	datab => \sign_res~q\,
	datad => VCC,
	cin => \PRODUCT[7]~35\,
	combout => \PRODUCT[8]~36_combout\,
	cout => \PRODUCT[8]~37\);

\PRODUCT[8]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \PRODUCT[8]~36_combout\,
	clrn => \RST_N~input_o\,
	ena => \state.FINISH~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PRODUCT[8]~reg0_q\);

\multiplicand_u[9]~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \multiplicand_u[9]~29_combout\ = \multiplicand_u[8]~28\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \multiplicand_u[8]~28\,
	combout => \multiplicand_u[9]~29_combout\);

\multiplicand_u[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \multiplicand_u[9]~29_combout\,
	asdata => multiplicand_u(8),
	clrn => \RST_N~input_o\,
	sload => \state.CALC~q\,
	ena => \multiplicand_u[7]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => multiplicand_u(9));

\Add2~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~27_combout\ = (result_u(9) & ((multiplicand_u(9) & (\Add2~26\ & VCC)) # (!multiplicand_u(9) & (!\Add2~26\)))) # (!result_u(9) & ((multiplicand_u(9) & (!\Add2~26\)) # (!multiplicand_u(9) & ((\Add2~26\) # (GND)))))
-- \Add2~28\ = CARRY((result_u(9) & (!multiplicand_u(9) & !\Add2~26\)) # (!result_u(9) & ((!\Add2~26\) # (!multiplicand_u(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => result_u(9),
	datab => multiplicand_u(9),
	datad => VCC,
	cin => \Add2~26\,
	combout => \Add2~27_combout\,
	cout => \Add2~28\);

\Selector40~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector40~0_combout\ = (result_u(9) & ((\Selector41~0_combout\) # ((\Add2~22_combout\ & \Add2~27_combout\)))) # (!result_u(9) & (\Add2~22_combout\ & (\Add2~27_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => result_u(9),
	datab => \Add2~22_combout\,
	datac => \Add2~27_combout\,
	datad => \Selector41~0_combout\,
	combout => \Selector40~0_combout\);

\result_u[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \Selector40~0_combout\,
	clrn => \RST_N~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => result_u(9));

\PRODUCT[9]~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PRODUCT[9]~38_combout\ = (\PRODUCT[8]~37\ & (result_u(9) $ ((!\sign_res~q\)))) # (!\PRODUCT[8]~37\ & ((result_u(9) $ (\sign_res~q\)) # (GND)))
-- \PRODUCT[9]~39\ = CARRY((result_u(9) $ (!\sign_res~q\)) # (!\PRODUCT[8]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => result_u(9),
	datab => \sign_res~q\,
	datad => VCC,
	cin => \PRODUCT[8]~37\,
	combout => \PRODUCT[9]~38_combout\,
	cout => \PRODUCT[9]~39\);

\PRODUCT[9]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \PRODUCT[9]~38_combout\,
	clrn => \RST_N~input_o\,
	ena => \state.FINISH~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PRODUCT[9]~reg0_q\);

\Selector9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector9~0_combout\ = (\state~10_combout\ & ((multiplicand_u(10)) # ((multiplicand_u(9) & \Selector55~0_combout\)))) # (!\state~10_combout\ & (multiplicand_u(9) & (\Selector55~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state~10_combout\,
	datab => multiplicand_u(9),
	datac => \Selector55~0_combout\,
	datad => multiplicand_u(10),
	combout => \Selector9~0_combout\);

\Selector9~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector9~1_combout\ = (\Selector9~0_combout\) # ((\state.FINISH~q\ & multiplicand_u(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector9~0_combout\,
	datab => \state.FINISH~q\,
	datac => multiplicand_u(10),
	combout => \Selector9~1_combout\);

\multiplicand_u[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \Selector9~1_combout\,
	clrn => \RST_N~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => multiplicand_u(10));

\Add2~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~29_combout\ = ((result_u(10) $ (multiplicand_u(10) $ (!\Add2~28\)))) # (GND)
-- \Add2~30\ = CARRY((result_u(10) & ((multiplicand_u(10)) # (!\Add2~28\))) # (!result_u(10) & (multiplicand_u(10) & !\Add2~28\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => result_u(10),
	datab => multiplicand_u(10),
	datad => VCC,
	cin => \Add2~28\,
	combout => \Add2~29_combout\,
	cout => \Add2~30\);

\Selector39~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector39~0_combout\ = (result_u(10) & ((\Selector41~0_combout\) # ((\Add2~22_combout\ & \Add2~29_combout\)))) # (!result_u(10) & (\Add2~22_combout\ & (\Add2~29_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => result_u(10),
	datab => \Add2~22_combout\,
	datac => \Add2~29_combout\,
	datad => \Selector41~0_combout\,
	combout => \Selector39~0_combout\);

\result_u[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \Selector39~0_combout\,
	clrn => \RST_N~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => result_u(10));

\PRODUCT[10]~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PRODUCT[10]~40_combout\ = (\PRODUCT[9]~39\ & ((result_u(10) $ (\sign_res~q\)))) # (!\PRODUCT[9]~39\ & (result_u(10) $ (\sign_res~q\ $ (VCC))))
-- \PRODUCT[10]~41\ = CARRY((!\PRODUCT[9]~39\ & (result_u(10) $ (\sign_res~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => result_u(10),
	datab => \sign_res~q\,
	datad => VCC,
	cin => \PRODUCT[9]~39\,
	combout => \PRODUCT[10]~40_combout\,
	cout => \PRODUCT[10]~41\);

\PRODUCT[10]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \PRODUCT[10]~40_combout\,
	clrn => \RST_N~input_o\,
	ena => \state.FINISH~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PRODUCT[10]~reg0_q\);

\Selector8~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector8~0_combout\ = (\state~10_combout\ & ((multiplicand_u(11)) # ((multiplicand_u(10) & \Selector55~0_combout\)))) # (!\state~10_combout\ & (multiplicand_u(10) & (\Selector55~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state~10_combout\,
	datab => multiplicand_u(10),
	datac => \Selector55~0_combout\,
	datad => multiplicand_u(11),
	combout => \Selector8~0_combout\);

\Selector8~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector8~1_combout\ = (\Selector8~0_combout\) # ((\state.FINISH~q\ & multiplicand_u(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector8~0_combout\,
	datab => \state.FINISH~q\,
	datac => multiplicand_u(11),
	combout => \Selector8~1_combout\);

\multiplicand_u[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \Selector8~1_combout\,
	clrn => \RST_N~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => multiplicand_u(11));

\Add2~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~31_combout\ = (result_u(11) & ((multiplicand_u(11) & (\Add2~30\ & VCC)) # (!multiplicand_u(11) & (!\Add2~30\)))) # (!result_u(11) & ((multiplicand_u(11) & (!\Add2~30\)) # (!multiplicand_u(11) & ((\Add2~30\) # (GND)))))
-- \Add2~32\ = CARRY((result_u(11) & (!multiplicand_u(11) & !\Add2~30\)) # (!result_u(11) & ((!\Add2~30\) # (!multiplicand_u(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => result_u(11),
	datab => multiplicand_u(11),
	datad => VCC,
	cin => \Add2~30\,
	combout => \Add2~31_combout\,
	cout => \Add2~32\);

\Selector38~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector38~0_combout\ = (result_u(11) & ((\Selector41~0_combout\) # ((\Add2~22_combout\ & \Add2~31_combout\)))) # (!result_u(11) & (\Add2~22_combout\ & (\Add2~31_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => result_u(11),
	datab => \Add2~22_combout\,
	datac => \Add2~31_combout\,
	datad => \Selector41~0_combout\,
	combout => \Selector38~0_combout\);

\result_u[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \Selector38~0_combout\,
	clrn => \RST_N~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => result_u(11));

\PRODUCT[11]~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PRODUCT[11]~42_combout\ = (\PRODUCT[10]~41\ & (result_u(11) $ ((!\sign_res~q\)))) # (!\PRODUCT[10]~41\ & ((result_u(11) $ (\sign_res~q\)) # (GND)))
-- \PRODUCT[11]~43\ = CARRY((result_u(11) $ (!\sign_res~q\)) # (!\PRODUCT[10]~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => result_u(11),
	datab => \sign_res~q\,
	datad => VCC,
	cin => \PRODUCT[10]~41\,
	combout => \PRODUCT[11]~42_combout\,
	cout => \PRODUCT[11]~43\);

\PRODUCT[11]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \PRODUCT[11]~42_combout\,
	clrn => \RST_N~input_o\,
	ena => \state.FINISH~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PRODUCT[11]~reg0_q\);

\Selector7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector7~0_combout\ = (\state~10_combout\ & ((multiplicand_u(12)) # ((multiplicand_u(11) & \Selector55~0_combout\)))) # (!\state~10_combout\ & (multiplicand_u(11) & (\Selector55~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state~10_combout\,
	datab => multiplicand_u(11),
	datac => \Selector55~0_combout\,
	datad => multiplicand_u(12),
	combout => \Selector7~0_combout\);

\Selector7~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector7~1_combout\ = (\Selector7~0_combout\) # ((\state.FINISH~q\ & multiplicand_u(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector7~0_combout\,
	datab => \state.FINISH~q\,
	datac => multiplicand_u(12),
	combout => \Selector7~1_combout\);

\multiplicand_u[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \Selector7~1_combout\,
	clrn => \RST_N~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => multiplicand_u(12));

\Add2~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~33_combout\ = ((result_u(12) $ (multiplicand_u(12) $ (!\Add2~32\)))) # (GND)
-- \Add2~34\ = CARRY((result_u(12) & ((multiplicand_u(12)) # (!\Add2~32\))) # (!result_u(12) & (multiplicand_u(12) & !\Add2~32\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => result_u(12),
	datab => multiplicand_u(12),
	datad => VCC,
	cin => \Add2~32\,
	combout => \Add2~33_combout\,
	cout => \Add2~34\);

\Selector37~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector37~0_combout\ = (result_u(12) & ((\Selector41~0_combout\) # ((\Add2~22_combout\ & \Add2~33_combout\)))) # (!result_u(12) & (\Add2~22_combout\ & (\Add2~33_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => result_u(12),
	datab => \Add2~22_combout\,
	datac => \Add2~33_combout\,
	datad => \Selector41~0_combout\,
	combout => \Selector37~0_combout\);

\result_u[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \Selector37~0_combout\,
	clrn => \RST_N~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => result_u(12));

\PRODUCT[12]~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PRODUCT[12]~44_combout\ = (\PRODUCT[11]~43\ & ((result_u(12) $ (\sign_res~q\)))) # (!\PRODUCT[11]~43\ & (result_u(12) $ (\sign_res~q\ $ (VCC))))
-- \PRODUCT[12]~45\ = CARRY((!\PRODUCT[11]~43\ & (result_u(12) $ (\sign_res~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => result_u(12),
	datab => \sign_res~q\,
	datad => VCC,
	cin => \PRODUCT[11]~43\,
	combout => \PRODUCT[12]~44_combout\,
	cout => \PRODUCT[12]~45\);

\PRODUCT[12]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \PRODUCT[12]~44_combout\,
	clrn => \RST_N~input_o\,
	ena => \state.FINISH~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PRODUCT[12]~reg0_q\);

\Selector6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector6~0_combout\ = (\state~10_combout\ & ((multiplicand_u(13)) # ((multiplicand_u(12) & \Selector55~0_combout\)))) # (!\state~10_combout\ & (multiplicand_u(12) & (\Selector55~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state~10_combout\,
	datab => multiplicand_u(12),
	datac => \Selector55~0_combout\,
	datad => multiplicand_u(13),
	combout => \Selector6~0_combout\);

\Selector6~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector6~1_combout\ = (\Selector6~0_combout\) # ((\state.FINISH~q\ & multiplicand_u(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector6~0_combout\,
	datab => \state.FINISH~q\,
	datac => multiplicand_u(13),
	combout => \Selector6~1_combout\);

\multiplicand_u[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \Selector6~1_combout\,
	clrn => \RST_N~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => multiplicand_u(13));

\Add2~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~35_combout\ = (result_u(13) & ((multiplicand_u(13) & (\Add2~34\ & VCC)) # (!multiplicand_u(13) & (!\Add2~34\)))) # (!result_u(13) & ((multiplicand_u(13) & (!\Add2~34\)) # (!multiplicand_u(13) & ((\Add2~34\) # (GND)))))
-- \Add2~36\ = CARRY((result_u(13) & (!multiplicand_u(13) & !\Add2~34\)) # (!result_u(13) & ((!\Add2~34\) # (!multiplicand_u(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => result_u(13),
	datab => multiplicand_u(13),
	datad => VCC,
	cin => \Add2~34\,
	combout => \Add2~35_combout\,
	cout => \Add2~36\);

\Selector36~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector36~0_combout\ = (result_u(13) & ((\Selector41~0_combout\) # ((\Add2~22_combout\ & \Add2~35_combout\)))) # (!result_u(13) & (\Add2~22_combout\ & (\Add2~35_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => result_u(13),
	datab => \Add2~22_combout\,
	datac => \Add2~35_combout\,
	datad => \Selector41~0_combout\,
	combout => \Selector36~0_combout\);

\result_u[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \Selector36~0_combout\,
	clrn => \RST_N~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => result_u(13));

\PRODUCT[13]~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PRODUCT[13]~46_combout\ = (\PRODUCT[12]~45\ & (result_u(13) $ ((!\sign_res~q\)))) # (!\PRODUCT[12]~45\ & ((result_u(13) $ (\sign_res~q\)) # (GND)))
-- \PRODUCT[13]~47\ = CARRY((result_u(13) $ (!\sign_res~q\)) # (!\PRODUCT[12]~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => result_u(13),
	datab => \sign_res~q\,
	datad => VCC,
	cin => \PRODUCT[12]~45\,
	combout => \PRODUCT[13]~46_combout\,
	cout => \PRODUCT[13]~47\);

\PRODUCT[13]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \PRODUCT[13]~46_combout\,
	clrn => \RST_N~input_o\,
	ena => \state.FINISH~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PRODUCT[13]~reg0_q\);

\Selector5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector5~0_combout\ = (\state~10_combout\ & ((multiplicand_u(14)) # ((multiplicand_u(13) & \Selector55~0_combout\)))) # (!\state~10_combout\ & (multiplicand_u(13) & (\Selector55~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state~10_combout\,
	datab => multiplicand_u(13),
	datac => \Selector55~0_combout\,
	datad => multiplicand_u(14),
	combout => \Selector5~0_combout\);

\Selector5~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector5~1_combout\ = (\Selector5~0_combout\) # ((\state.FINISH~q\ & multiplicand_u(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector5~0_combout\,
	datab => \state.FINISH~q\,
	datac => multiplicand_u(14),
	combout => \Selector5~1_combout\);

\multiplicand_u[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \Selector5~1_combout\,
	clrn => \RST_N~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => multiplicand_u(14));

\Add2~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~37_combout\ = ((result_u(14) $ (multiplicand_u(14) $ (!\Add2~36\)))) # (GND)
-- \Add2~38\ = CARRY((result_u(14) & ((multiplicand_u(14)) # (!\Add2~36\))) # (!result_u(14) & (multiplicand_u(14) & !\Add2~36\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => result_u(14),
	datab => multiplicand_u(14),
	datad => VCC,
	cin => \Add2~36\,
	combout => \Add2~37_combout\,
	cout => \Add2~38\);

\Selector35~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector35~0_combout\ = (result_u(14) & ((\Selector41~0_combout\) # ((\Add2~22_combout\ & \Add2~37_combout\)))) # (!result_u(14) & (\Add2~22_combout\ & (\Add2~37_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => result_u(14),
	datab => \Add2~22_combout\,
	datac => \Add2~37_combout\,
	datad => \Selector41~0_combout\,
	combout => \Selector35~0_combout\);

\result_u[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \Selector35~0_combout\,
	clrn => \RST_N~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => result_u(14));

\PRODUCT[14]~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PRODUCT[14]~48_combout\ = (\PRODUCT[13]~47\ & ((result_u(14) $ (\sign_res~q\)))) # (!\PRODUCT[13]~47\ & (result_u(14) $ (\sign_res~q\ $ (VCC))))
-- \PRODUCT[14]~49\ = CARRY((!\PRODUCT[13]~47\ & (result_u(14) $ (\sign_res~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => result_u(14),
	datab => \sign_res~q\,
	datad => VCC,
	cin => \PRODUCT[13]~47\,
	combout => \PRODUCT[14]~48_combout\,
	cout => \PRODUCT[14]~49\);

\PRODUCT[14]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \PRODUCT[14]~48_combout\,
	clrn => \RST_N~input_o\,
	ena => \state.FINISH~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PRODUCT[14]~reg0_q\);

\Selector4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector4~0_combout\ = (\state~10_combout\ & ((multiplicand_u(15)) # ((multiplicand_u(14) & \Selector55~0_combout\)))) # (!\state~10_combout\ & (multiplicand_u(14) & (\Selector55~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state~10_combout\,
	datab => multiplicand_u(14),
	datac => \Selector55~0_combout\,
	datad => multiplicand_u(15),
	combout => \Selector4~0_combout\);

\Selector4~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector4~1_combout\ = (\Selector4~0_combout\) # ((\state.FINISH~q\ & multiplicand_u(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector4~0_combout\,
	datab => \state.FINISH~q\,
	datac => multiplicand_u(15),
	combout => \Selector4~1_combout\);

\multiplicand_u[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \Selector4~1_combout\,
	clrn => \RST_N~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => multiplicand_u(15));

\Add2~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~39_combout\ = (result_u(15) & ((multiplicand_u(15) & (\Add2~38\ & VCC)) # (!multiplicand_u(15) & (!\Add2~38\)))) # (!result_u(15) & ((multiplicand_u(15) & (!\Add2~38\)) # (!multiplicand_u(15) & ((\Add2~38\) # (GND)))))
-- \Add2~40\ = CARRY((result_u(15) & (!multiplicand_u(15) & !\Add2~38\)) # (!result_u(15) & ((!\Add2~38\) # (!multiplicand_u(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => result_u(15),
	datab => multiplicand_u(15),
	datad => VCC,
	cin => \Add2~38\,
	combout => \Add2~39_combout\,
	cout => \Add2~40\);

\Selector34~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector34~0_combout\ = (result_u(15) & ((\Selector41~0_combout\) # ((\Add2~22_combout\ & \Add2~39_combout\)))) # (!result_u(15) & (\Add2~22_combout\ & (\Add2~39_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => result_u(15),
	datab => \Add2~22_combout\,
	datac => \Add2~39_combout\,
	datad => \Selector41~0_combout\,
	combout => \Selector34~0_combout\);

\result_u[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \Selector34~0_combout\,
	clrn => \RST_N~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => result_u(15));

\PRODUCT[15]~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PRODUCT[15]~50_combout\ = (\PRODUCT[14]~49\ & (result_u(15) $ ((!\sign_res~q\)))) # (!\PRODUCT[14]~49\ & ((result_u(15) $ (\sign_res~q\)) # (GND)))
-- \PRODUCT[15]~51\ = CARRY((result_u(15) $ (!\sign_res~q\)) # (!\PRODUCT[14]~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => result_u(15),
	datab => \sign_res~q\,
	datad => VCC,
	cin => \PRODUCT[14]~49\,
	combout => \PRODUCT[15]~50_combout\,
	cout => \PRODUCT[15]~51\);

\PRODUCT[15]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \PRODUCT[15]~50_combout\,
	clrn => \RST_N~input_o\,
	ena => \state.FINISH~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PRODUCT[15]~reg0_q\);

\Selector3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector3~0_combout\ = (\state~10_combout\ & ((multiplicand_u(16)) # ((multiplicand_u(15) & \Selector55~0_combout\)))) # (!\state~10_combout\ & (multiplicand_u(15) & (\Selector55~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state~10_combout\,
	datab => multiplicand_u(15),
	datac => \Selector55~0_combout\,
	datad => multiplicand_u(16),
	combout => \Selector3~0_combout\);

\Selector3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector3~1_combout\ = (\Selector3~0_combout\) # ((\state.FINISH~q\ & multiplicand_u(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector3~0_combout\,
	datab => \state.FINISH~q\,
	datac => multiplicand_u(16),
	combout => \Selector3~1_combout\);

\multiplicand_u[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \Selector3~1_combout\,
	clrn => \RST_N~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => multiplicand_u(16));

\Add2~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~41_combout\ = ((result_u(16) $ (multiplicand_u(16) $ (!\Add2~40\)))) # (GND)
-- \Add2~42\ = CARRY((result_u(16) & ((multiplicand_u(16)) # (!\Add2~40\))) # (!result_u(16) & (multiplicand_u(16) & !\Add2~40\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => result_u(16),
	datab => multiplicand_u(16),
	datad => VCC,
	cin => \Add2~40\,
	combout => \Add2~41_combout\,
	cout => \Add2~42\);

\Selector33~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector33~0_combout\ = (result_u(16) & ((\Selector41~0_combout\) # ((\Add2~22_combout\ & \Add2~41_combout\)))) # (!result_u(16) & (\Add2~22_combout\ & (\Add2~41_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => result_u(16),
	datab => \Add2~22_combout\,
	datac => \Add2~41_combout\,
	datad => \Selector41~0_combout\,
	combout => \Selector33~0_combout\);

\result_u[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \Selector33~0_combout\,
	clrn => \RST_N~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => result_u(16));

\PRODUCT[16]~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PRODUCT[16]~52_combout\ = (\PRODUCT[15]~51\ & ((result_u(16) $ (\sign_res~q\)))) # (!\PRODUCT[15]~51\ & (result_u(16) $ (\sign_res~q\ $ (VCC))))
-- \PRODUCT[16]~53\ = CARRY((!\PRODUCT[15]~51\ & (result_u(16) $ (\sign_res~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => result_u(16),
	datab => \sign_res~q\,
	datad => VCC,
	cin => \PRODUCT[15]~51\,
	combout => \PRODUCT[16]~52_combout\,
	cout => \PRODUCT[16]~53\);

\PRODUCT[16]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \PRODUCT[16]~52_combout\,
	clrn => \RST_N~input_o\,
	ena => \state.FINISH~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PRODUCT[16]~reg0_q\);

\Selector2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = (\state~10_combout\ & ((multiplicand_u(17)) # ((multiplicand_u(16) & \Selector55~0_combout\)))) # (!\state~10_combout\ & (multiplicand_u(16) & (\Selector55~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state~10_combout\,
	datab => multiplicand_u(16),
	datac => \Selector55~0_combout\,
	datad => multiplicand_u(17),
	combout => \Selector2~0_combout\);

\Selector2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector2~1_combout\ = (\Selector2~0_combout\) # ((\state.FINISH~q\ & multiplicand_u(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector2~0_combout\,
	datab => \state.FINISH~q\,
	datac => multiplicand_u(17),
	combout => \Selector2~1_combout\);

\multiplicand_u[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \Selector2~1_combout\,
	clrn => \RST_N~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => multiplicand_u(17));

\Add2~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~43_combout\ = (result_u(17) & ((multiplicand_u(17) & (\Add2~42\ & VCC)) # (!multiplicand_u(17) & (!\Add2~42\)))) # (!result_u(17) & ((multiplicand_u(17) & (!\Add2~42\)) # (!multiplicand_u(17) & ((\Add2~42\) # (GND)))))
-- \Add2~44\ = CARRY((result_u(17) & (!multiplicand_u(17) & !\Add2~42\)) # (!result_u(17) & ((!\Add2~42\) # (!multiplicand_u(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => result_u(17),
	datab => multiplicand_u(17),
	datad => VCC,
	cin => \Add2~42\,
	combout => \Add2~43_combout\,
	cout => \Add2~44\);

\Selector32~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector32~0_combout\ = (result_u(17) & ((\Selector41~0_combout\) # ((\Add2~22_combout\ & \Add2~43_combout\)))) # (!result_u(17) & (\Add2~22_combout\ & (\Add2~43_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => result_u(17),
	datab => \Add2~22_combout\,
	datac => \Add2~43_combout\,
	datad => \Selector41~0_combout\,
	combout => \Selector32~0_combout\);

\result_u[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \Selector32~0_combout\,
	clrn => \RST_N~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => result_u(17));

\PRODUCT[17]~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PRODUCT[17]~54_combout\ = (\PRODUCT[16]~53\ & (result_u(17) $ ((!\sign_res~q\)))) # (!\PRODUCT[16]~53\ & ((result_u(17) $ (\sign_res~q\)) # (GND)))
-- \PRODUCT[17]~55\ = CARRY((result_u(17) $ (!\sign_res~q\)) # (!\PRODUCT[16]~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => result_u(17),
	datab => \sign_res~q\,
	datad => VCC,
	cin => \PRODUCT[16]~53\,
	combout => \PRODUCT[17]~54_combout\,
	cout => \PRODUCT[17]~55\);

\PRODUCT[17]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \PRODUCT[17]~54_combout\,
	clrn => \RST_N~input_o\,
	ena => \state.FINISH~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PRODUCT[17]~reg0_q\);

\Selector1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = (\state~10_combout\ & ((multiplicand_u(18)) # ((multiplicand_u(17) & \Selector55~0_combout\)))) # (!\state~10_combout\ & (multiplicand_u(17) & (\Selector55~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state~10_combout\,
	datab => multiplicand_u(17),
	datac => \Selector55~0_combout\,
	datad => multiplicand_u(18),
	combout => \Selector1~0_combout\);

\Selector1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector1~1_combout\ = (\Selector1~0_combout\) # ((\state.FINISH~q\ & multiplicand_u(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector1~0_combout\,
	datab => \state.FINISH~q\,
	datac => multiplicand_u(18),
	combout => \Selector1~1_combout\);

\multiplicand_u[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \Selector1~1_combout\,
	clrn => \RST_N~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => multiplicand_u(18));

\Add2~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~45_combout\ = ((result_u(18) $ (multiplicand_u(18) $ (!\Add2~44\)))) # (GND)
-- \Add2~46\ = CARRY((result_u(18) & ((multiplicand_u(18)) # (!\Add2~44\))) # (!result_u(18) & (multiplicand_u(18) & !\Add2~44\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => result_u(18),
	datab => multiplicand_u(18),
	datad => VCC,
	cin => \Add2~44\,
	combout => \Add2~45_combout\,
	cout => \Add2~46\);

\Selector31~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector31~0_combout\ = (result_u(18) & ((\Selector41~0_combout\) # ((\Add2~22_combout\ & \Add2~45_combout\)))) # (!result_u(18) & (\Add2~22_combout\ & (\Add2~45_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => result_u(18),
	datab => \Add2~22_combout\,
	datac => \Add2~45_combout\,
	datad => \Selector41~0_combout\,
	combout => \Selector31~0_combout\);

\result_u[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \Selector31~0_combout\,
	clrn => \RST_N~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => result_u(18));

\PRODUCT[18]~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PRODUCT[18]~56_combout\ = (\PRODUCT[17]~55\ & ((result_u(18) $ (\sign_res~q\)))) # (!\PRODUCT[17]~55\ & (result_u(18) $ (\sign_res~q\ $ (VCC))))
-- \PRODUCT[18]~57\ = CARRY((!\PRODUCT[17]~55\ & (result_u(18) $ (\sign_res~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => result_u(18),
	datab => \sign_res~q\,
	datad => VCC,
	cin => \PRODUCT[17]~55\,
	combout => \PRODUCT[18]~56_combout\,
	cout => \PRODUCT[18]~57\);

\PRODUCT[18]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \PRODUCT[18]~56_combout\,
	clrn => \RST_N~input_o\,
	ena => \state.FINISH~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PRODUCT[18]~reg0_q\);

\Selector0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = (\state~10_combout\ & ((multiplicand_u(19)) # ((multiplicand_u(18) & \Selector55~0_combout\)))) # (!\state~10_combout\ & (multiplicand_u(18) & (\Selector55~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state~10_combout\,
	datab => multiplicand_u(18),
	datac => \Selector55~0_combout\,
	datad => multiplicand_u(19),
	combout => \Selector0~0_combout\);

\Selector0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector0~1_combout\ = (\Selector0~0_combout\) # ((\state.FINISH~q\ & multiplicand_u(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector0~0_combout\,
	datab => \state.FINISH~q\,
	datac => multiplicand_u(19),
	combout => \Selector0~1_combout\);

\multiplicand_u[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \Selector0~1_combout\,
	clrn => \RST_N~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => multiplicand_u(19));

\Add2~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~47_combout\ = result_u(19) $ (multiplicand_u(19) $ (\Add2~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => result_u(19),
	datab => multiplicand_u(19),
	cin => \Add2~46\,
	combout => \Add2~47_combout\);

\Selector30~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector30~0_combout\ = (result_u(19) & ((\Selector41~0_combout\) # ((\Add2~22_combout\ & \Add2~47_combout\)))) # (!result_u(19) & (\Add2~22_combout\ & (\Add2~47_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => result_u(19),
	datab => \Add2~22_combout\,
	datac => \Add2~47_combout\,
	datad => \Selector41~0_combout\,
	combout => \Selector30~0_combout\);

\result_u[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \Selector30~0_combout\,
	clrn => \RST_N~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => result_u(19));

\PRODUCT[19]~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \PRODUCT[19]~58_combout\ = result_u(19) $ (\sign_res~q\ $ (\PRODUCT[18]~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => result_u(19),
	datab => \sign_res~q\,
	cin => \PRODUCT[18]~57\,
	combout => \PRODUCT[19]~58_combout\);

\PRODUCT[19]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \PRODUCT[19]~58_combout\,
	clrn => \RST_N~input_o\,
	ena => \state.FINISH~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PRODUCT[19]~reg0_q\);
END structure;


