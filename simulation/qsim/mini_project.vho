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

-- DATE "10/16/2025 14:14:37"

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

ENTITY 	divider IS
    PORT (
	CLK : IN std_logic;
	RST_N : IN std_logic;
	DIVIDEND : IN std_logic_vector(9 DOWNTO 0);
	DIVISOR : IN std_logic_vector(9 DOWNTO 0);
	QUOTIENT : BUFFER std_logic_vector(9 DOWNTO 0);
	REMAINDER : BUFFER std_logic_vector(9 DOWNTO 0);
	ERROR : BUFFER std_logic;
	DONE : BUFFER std_logic
	);
END divider;

ARCHITECTURE structure OF divider IS
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
SIGNAL ww_DIVIDEND : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_DIVISOR : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_QUOTIENT : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_REMAINDER : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_ERROR : std_logic;
SIGNAL ww_DONE : std_logic;
SIGNAL \QUOTIENT[0]~output_o\ : std_logic;
SIGNAL \QUOTIENT[1]~output_o\ : std_logic;
SIGNAL \QUOTIENT[2]~output_o\ : std_logic;
SIGNAL \QUOTIENT[3]~output_o\ : std_logic;
SIGNAL \QUOTIENT[4]~output_o\ : std_logic;
SIGNAL \QUOTIENT[5]~output_o\ : std_logic;
SIGNAL \QUOTIENT[6]~output_o\ : std_logic;
SIGNAL \QUOTIENT[7]~output_o\ : std_logic;
SIGNAL \QUOTIENT[8]~output_o\ : std_logic;
SIGNAL \QUOTIENT[9]~output_o\ : std_logic;
SIGNAL \REMAINDER[0]~output_o\ : std_logic;
SIGNAL \REMAINDER[1]~output_o\ : std_logic;
SIGNAL \REMAINDER[2]~output_o\ : std_logic;
SIGNAL \REMAINDER[3]~output_o\ : std_logic;
SIGNAL \REMAINDER[4]~output_o\ : std_logic;
SIGNAL \REMAINDER[5]~output_o\ : std_logic;
SIGNAL \REMAINDER[6]~output_o\ : std_logic;
SIGNAL \REMAINDER[7]~output_o\ : std_logic;
SIGNAL \REMAINDER[8]~output_o\ : std_logic;
SIGNAL \REMAINDER[9]~output_o\ : std_logic;
SIGNAL \ERROR~output_o\ : std_logic;
SIGNAL \DONE~output_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \cnt[3]~3_combout\ : std_logic;
SIGNAL \cnt~5_combout\ : std_logic;
SIGNAL \Selector45~0_combout\ : std_logic;
SIGNAL \RST_N~input_o\ : std_logic;
SIGNAL \cnt[1]~1_combout\ : std_logic;
SIGNAL \cnt[3]~4_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \state.SHIFT~q\ : std_logic;
SIGNAL \state.ADD_SUB~q\ : std_logic;
SIGNAL \state.WRITE_BIT~q\ : std_logic;
SIGNAL \Selector47~0_combout\ : std_logic;
SIGNAL \cnt[1]~0_combout\ : std_logic;
SIGNAL \cnt[1]~2_combout\ : std_logic;
SIGNAL \state~13_combout\ : std_logic;
SIGNAL \state.RESTORE~q\ : std_logic;
SIGNAL \state.SIGNAPPLY~q\ : std_logic;
SIGNAL \DIVISOR[0]~input_o\ : std_logic;
SIGNAL \DIVISOR[1]~input_o\ : std_logic;
SIGNAL \DIVISOR[2]~input_o\ : std_logic;
SIGNAL \DIVISOR[3]~input_o\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \DIVISOR[4]~input_o\ : std_logic;
SIGNAL \DIVISOR[5]~input_o\ : std_logic;
SIGNAL \DIVISOR[6]~input_o\ : std_logic;
SIGNAL \DIVISOR[7]~input_o\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \DIVISOR[8]~input_o\ : std_logic;
SIGNAL \DIVISOR[9]~input_o\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \state.DONE_ST~q\ : std_logic;
SIGNAL \state.IDLE~0_combout\ : std_logic;
SIGNAL \state.IDLE~q\ : std_logic;
SIGNAL \state.CHECK_ZERO~0_combout\ : std_logic;
SIGNAL \state.CHECK_ZERO~q\ : std_logic;
SIGNAL \QUOTIENT[6]~1_combout\ : std_logic;
SIGNAL \state.PREP~q\ : std_logic;
SIGNAL \DIVIDEND[9]~input_o\ : std_logic;
SIGNAL \sign_D~q\ : std_logic;
SIGNAL \DIVIDEND[0]~input_o\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Add0~1_combout\ : std_logic;
SIGNAL \DIVIDEND[8]~input_o\ : std_logic;
SIGNAL \DIVIDEND[7]~input_o\ : std_logic;
SIGNAL \DIVIDEND[6]~input_o\ : std_logic;
SIGNAL \DIVIDEND[5]~input_o\ : std_logic;
SIGNAL \DIVIDEND[4]~input_o\ : std_logic;
SIGNAL \DIVIDEND[3]~input_o\ : std_logic;
SIGNAL \DIVIDEND[2]~input_o\ : std_logic;
SIGNAL \DIVIDEND[1]~input_o\ : std_logic;
SIGNAL \Add0~2\ : std_logic;
SIGNAL \Add0~4\ : std_logic;
SIGNAL \Add0~6\ : std_logic;
SIGNAL \Add0~8\ : std_logic;
SIGNAL \Add0~10\ : std_logic;
SIGNAL \Add0~12\ : std_logic;
SIGNAL \Add0~14\ : std_logic;
SIGNAL \Add0~16\ : std_logic;
SIGNAL \Add0~18\ : std_logic;
SIGNAL \Add0~19_combout\ : std_logic;
SIGNAL \Add0~17_combout\ : std_logic;
SIGNAL \Add0~15_combout\ : std_logic;
SIGNAL \Add0~13_combout\ : std_logic;
SIGNAL \Add0~11_combout\ : std_logic;
SIGNAL \Add0~9_combout\ : std_logic;
SIGNAL \Add0~7_combout\ : std_logic;
SIGNAL \Add0~5_combout\ : std_logic;
SIGNAL \Add0~3_combout\ : std_logic;
SIGNAL \Selector43~1_combout\ : std_logic;
SIGNAL \sign_M~q\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \M[0]~10_combout\ : std_logic;
SIGNAL \Add2~0_combout\ : std_logic;
SIGNAL \Add2~2_cout\ : std_logic;
SIGNAL \Add2~3_combout\ : std_logic;
SIGNAL \Selector33~2_combout\ : std_logic;
SIGNAL \A[0]~0_combout\ : std_logic;
SIGNAL \M[0]~11\ : std_logic;
SIGNAL \M[1]~12_combout\ : std_logic;
SIGNAL \Add2~5_combout\ : std_logic;
SIGNAL \Add2~4\ : std_logic;
SIGNAL \Add2~6_combout\ : std_logic;
SIGNAL \Selector32~2_combout\ : std_logic;
SIGNAL \M[1]~13\ : std_logic;
SIGNAL \M[2]~14_combout\ : std_logic;
SIGNAL \Add2~8_combout\ : std_logic;
SIGNAL \Add2~7\ : std_logic;
SIGNAL \Add2~9_combout\ : std_logic;
SIGNAL \Selector31~2_combout\ : std_logic;
SIGNAL \M[2]~15\ : std_logic;
SIGNAL \M[3]~16_combout\ : std_logic;
SIGNAL \Add2~11_combout\ : std_logic;
SIGNAL \Add2~10\ : std_logic;
SIGNAL \Add2~12_combout\ : std_logic;
SIGNAL \Selector30~2_combout\ : std_logic;
SIGNAL \M[3]~17\ : std_logic;
SIGNAL \M[4]~18_combout\ : std_logic;
SIGNAL \Add2~14_combout\ : std_logic;
SIGNAL \Add2~13\ : std_logic;
SIGNAL \Add2~15_combout\ : std_logic;
SIGNAL \Selector29~2_combout\ : std_logic;
SIGNAL \M[4]~19\ : std_logic;
SIGNAL \M[5]~20_combout\ : std_logic;
SIGNAL \Add2~17_combout\ : std_logic;
SIGNAL \Add2~16\ : std_logic;
SIGNAL \Add2~18_combout\ : std_logic;
SIGNAL \Selector28~2_combout\ : std_logic;
SIGNAL \M[5]~21\ : std_logic;
SIGNAL \M[6]~22_combout\ : std_logic;
SIGNAL \Add2~20_combout\ : std_logic;
SIGNAL \Add2~19\ : std_logic;
SIGNAL \Add2~21_combout\ : std_logic;
SIGNAL \Selector27~2_combout\ : std_logic;
SIGNAL \M[6]~23\ : std_logic;
SIGNAL \M[7]~24_combout\ : std_logic;
SIGNAL \Add2~23_combout\ : std_logic;
SIGNAL \Add2~22\ : std_logic;
SIGNAL \Add2~24_combout\ : std_logic;
SIGNAL \Selector26~2_combout\ : std_logic;
SIGNAL \M[7]~25\ : std_logic;
SIGNAL \M[8]~26_combout\ : std_logic;
SIGNAL \Add2~26_combout\ : std_logic;
SIGNAL \Add2~25\ : std_logic;
SIGNAL \Add2~27_combout\ : std_logic;
SIGNAL \Selector25~2_combout\ : std_logic;
SIGNAL \M[8]~27\ : std_logic;
SIGNAL \M[9]~28_combout\ : std_logic;
SIGNAL \Add2~29_combout\ : std_logic;
SIGNAL \Add2~28\ : std_logic;
SIGNAL \Add2~30_combout\ : std_logic;
SIGNAL \Selector24~2_combout\ : std_logic;
SIGNAL \Add2~31\ : std_logic;
SIGNAL \Add2~32_combout\ : std_logic;
SIGNAL \Selector23~0_combout\ : std_logic;
SIGNAL \Selector23~1_combout\ : std_logic;
SIGNAL \Selector23~2_combout\ : std_logic;
SIGNAL \Selector43~0_combout\ : std_logic;
SIGNAL \Selector43~2_combout\ : std_logic;
SIGNAL \sign_Q~0_combout\ : std_logic;
SIGNAL \sign_Q~q\ : std_logic;
SIGNAL \Add5~0_combout\ : std_logic;
SIGNAL \Add5~1_combout\ : std_logic;
SIGNAL \QUOTIENT[6]~0_combout\ : std_logic;
SIGNAL \QUOTIENT[0]~reg0_q\ : std_logic;
SIGNAL \Add5~2\ : std_logic;
SIGNAL \Add5~3_combout\ : std_logic;
SIGNAL \QUOTIENT[1]~reg0_q\ : std_logic;
SIGNAL \Add5~4\ : std_logic;
SIGNAL \Add5~5_combout\ : std_logic;
SIGNAL \QUOTIENT[2]~reg0_q\ : std_logic;
SIGNAL \Add5~6\ : std_logic;
SIGNAL \Add5~7_combout\ : std_logic;
SIGNAL \QUOTIENT[3]~reg0_q\ : std_logic;
SIGNAL \Add5~8\ : std_logic;
SIGNAL \Add5~9_combout\ : std_logic;
SIGNAL \QUOTIENT[4]~reg0_q\ : std_logic;
SIGNAL \Add5~10\ : std_logic;
SIGNAL \Add5~11_combout\ : std_logic;
SIGNAL \QUOTIENT[5]~reg0_q\ : std_logic;
SIGNAL \Add5~12\ : std_logic;
SIGNAL \Add5~13_combout\ : std_logic;
SIGNAL \QUOTIENT[6]~reg0_q\ : std_logic;
SIGNAL \Add5~14\ : std_logic;
SIGNAL \Add5~15_combout\ : std_logic;
SIGNAL \QUOTIENT[7]~reg0_q\ : std_logic;
SIGNAL \Add5~16\ : std_logic;
SIGNAL \Add5~17_combout\ : std_logic;
SIGNAL \QUOTIENT[8]~reg0_q\ : std_logic;
SIGNAL \Add5~18\ : std_logic;
SIGNAL \Add5~19_combout\ : std_logic;
SIGNAL \QUOTIENT[9]~reg0_q\ : std_logic;
SIGNAL \Add6~0_combout\ : std_logic;
SIGNAL \REMAINDER[0]~10_combout\ : std_logic;
SIGNAL \REMAINDER[0]~reg0_q\ : std_logic;
SIGNAL \REMAINDER[0]~11\ : std_logic;
SIGNAL \REMAINDER[1]~12_combout\ : std_logic;
SIGNAL \REMAINDER[1]~reg0_q\ : std_logic;
SIGNAL \REMAINDER[1]~13\ : std_logic;
SIGNAL \REMAINDER[2]~14_combout\ : std_logic;
SIGNAL \REMAINDER[2]~reg0_q\ : std_logic;
SIGNAL \REMAINDER[2]~15\ : std_logic;
SIGNAL \REMAINDER[3]~16_combout\ : std_logic;
SIGNAL \REMAINDER[3]~reg0_q\ : std_logic;
SIGNAL \REMAINDER[3]~17\ : std_logic;
SIGNAL \REMAINDER[4]~18_combout\ : std_logic;
SIGNAL \REMAINDER[4]~reg0_q\ : std_logic;
SIGNAL \REMAINDER[4]~19\ : std_logic;
SIGNAL \REMAINDER[5]~20_combout\ : std_logic;
SIGNAL \REMAINDER[5]~reg0_q\ : std_logic;
SIGNAL \REMAINDER[5]~21\ : std_logic;
SIGNAL \REMAINDER[6]~22_combout\ : std_logic;
SIGNAL \REMAINDER[6]~reg0_q\ : std_logic;
SIGNAL \REMAINDER[6]~23\ : std_logic;
SIGNAL \REMAINDER[7]~24_combout\ : std_logic;
SIGNAL \REMAINDER[7]~reg0_q\ : std_logic;
SIGNAL \REMAINDER[7]~25\ : std_logic;
SIGNAL \REMAINDER[8]~26_combout\ : std_logic;
SIGNAL \REMAINDER[8]~reg0_q\ : std_logic;
SIGNAL \REMAINDER[8]~27\ : std_logic;
SIGNAL \REMAINDER[9]~28_combout\ : std_logic;
SIGNAL \REMAINDER[9]~reg0_q\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \error_flag~q\ : std_logic;
SIGNAL Q : std_logic_vector(9 DOWNTO 0);
SIGNAL M : std_logic_vector(9 DOWNTO 0);
SIGNAL A : std_logic_vector(10 DOWNTO 0);
SIGNAL cnt : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_state.SIGNAPPLY~q\ : std_logic;
SIGNAL \ALT_INV_state.IDLE~q\ : std_logic;

BEGIN

ww_CLK <= CLK;
ww_RST_N <= RST_N;
ww_DIVIDEND <= DIVIDEND;
ww_DIVISOR <= DIVISOR;
QUOTIENT <= ww_QUOTIENT;
REMAINDER <= ww_REMAINDER;
ERROR <= ww_ERROR;
DONE <= ww_DONE;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_state.SIGNAPPLY~q\ <= NOT \state.SIGNAPPLY~q\;
\ALT_INV_state.IDLE~q\ <= NOT \state.IDLE~q\;

\QUOTIENT[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \QUOTIENT[0]~reg0_q\,
	devoe => ww_devoe,
	o => \QUOTIENT[0]~output_o\);

\QUOTIENT[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \QUOTIENT[1]~reg0_q\,
	devoe => ww_devoe,
	o => \QUOTIENT[1]~output_o\);

\QUOTIENT[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \QUOTIENT[2]~reg0_q\,
	devoe => ww_devoe,
	o => \QUOTIENT[2]~output_o\);

\QUOTIENT[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \QUOTIENT[3]~reg0_q\,
	devoe => ww_devoe,
	o => \QUOTIENT[3]~output_o\);

\QUOTIENT[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \QUOTIENT[4]~reg0_q\,
	devoe => ww_devoe,
	o => \QUOTIENT[4]~output_o\);

\QUOTIENT[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \QUOTIENT[5]~reg0_q\,
	devoe => ww_devoe,
	o => \QUOTIENT[5]~output_o\);

\QUOTIENT[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \QUOTIENT[6]~reg0_q\,
	devoe => ww_devoe,
	o => \QUOTIENT[6]~output_o\);

\QUOTIENT[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \QUOTIENT[7]~reg0_q\,
	devoe => ww_devoe,
	o => \QUOTIENT[7]~output_o\);

\QUOTIENT[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \QUOTIENT[8]~reg0_q\,
	devoe => ww_devoe,
	o => \QUOTIENT[8]~output_o\);

\QUOTIENT[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \QUOTIENT[9]~reg0_q\,
	devoe => ww_devoe,
	o => \QUOTIENT[9]~output_o\);

\REMAINDER[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \REMAINDER[0]~reg0_q\,
	devoe => ww_devoe,
	o => \REMAINDER[0]~output_o\);

\REMAINDER[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \REMAINDER[1]~reg0_q\,
	devoe => ww_devoe,
	o => \REMAINDER[1]~output_o\);

\REMAINDER[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \REMAINDER[2]~reg0_q\,
	devoe => ww_devoe,
	o => \REMAINDER[2]~output_o\);

\REMAINDER[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \REMAINDER[3]~reg0_q\,
	devoe => ww_devoe,
	o => \REMAINDER[3]~output_o\);

\REMAINDER[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \REMAINDER[4]~reg0_q\,
	devoe => ww_devoe,
	o => \REMAINDER[4]~output_o\);

\REMAINDER[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \REMAINDER[5]~reg0_q\,
	devoe => ww_devoe,
	o => \REMAINDER[5]~output_o\);

\REMAINDER[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \REMAINDER[6]~reg0_q\,
	devoe => ww_devoe,
	o => \REMAINDER[6]~output_o\);

\REMAINDER[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \REMAINDER[7]~reg0_q\,
	devoe => ww_devoe,
	o => \REMAINDER[7]~output_o\);

\REMAINDER[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \REMAINDER[8]~reg0_q\,
	devoe => ww_devoe,
	o => \REMAINDER[8]~output_o\);

\REMAINDER[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \REMAINDER[9]~reg0_q\,
	devoe => ww_devoe,
	o => \REMAINDER[9]~output_o\);

\ERROR~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \error_flag~q\,
	devoe => ww_devoe,
	o => \ERROR~output_o\);

\DONE~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \state.DONE_ST~q\,
	devoe => ww_devoe,
	o => \DONE~output_o\);

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

\cnt[3]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cnt[3]~3_combout\ = (\state.PREP~q\ & !\state.WRITE_BIT~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.PREP~q\,
	datad => \state.WRITE_BIT~q\,
	combout => \cnt[3]~3_combout\);

\cnt~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cnt~5_combout\ = (cnt(2) & ((cnt(1)) # ((cnt(0))))) # (!cnt(2) & (!cnt(1) & (!cnt(0) & cnt(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt(2),
	datab => cnt(1),
	datac => cnt(0),
	datad => cnt(3),
	combout => \cnt~5_combout\);

\Selector45~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector45~0_combout\ = (\state.WRITE_BIT~q\ & (\cnt~5_combout\)) # (!\state.WRITE_BIT~q\ & (((cnt(2) & !\state.PREP~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cnt~5_combout\,
	datab => \state.WRITE_BIT~q\,
	datac => cnt(2),
	datad => \state.PREP~q\,
	combout => \Selector45~0_combout\);

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

\cnt[2]\ : dffeas
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
	q => cnt(2));

\cnt[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cnt[1]~1_combout\ = (\state.WRITE_BIT~q\ & (!cnt(1) & !cnt(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.WRITE_BIT~q\,
	datac => cnt(1),
	datad => cnt(0),
	combout => \cnt[1]~1_combout\);

\cnt[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cnt[3]~4_combout\ = (\cnt[3]~3_combout\) # ((cnt(3) & ((cnt(2)) # (!\cnt[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cnt[3]~3_combout\,
	datab => cnt(3),
	datac => cnt(2),
	datad => \cnt[1]~1_combout\,
	combout => \cnt[3]~4_combout\);

\cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \cnt[3]~4_combout\,
	clrn => \RST_N~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(3));

\LessThan0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (!cnt(1) & (!cnt(3) & !cnt(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => cnt(1),
	datac => cnt(3),
	datad => cnt(2),
	combout => \LessThan0~0_combout\);

\Selector1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = (\state.PREP~q\) # ((\state.WRITE_BIT~q\ & !\LessThan0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.PREP~q\,
	datab => \state.WRITE_BIT~q\,
	datad => \LessThan0~0_combout\,
	combout => \Selector1~0_combout\);

\state.SHIFT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \Selector1~0_combout\,
	clrn => \RST_N~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.SHIFT~q\);

\state.ADD_SUB\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \state.SHIFT~q\,
	clrn => \RST_N~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.ADD_SUB~q\);

\state.WRITE_BIT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \state.ADD_SUB~q\,
	clrn => \RST_N~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.WRITE_BIT~q\);

\Selector47~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector47~0_combout\ = (cnt(0) & (!\state.WRITE_BIT~q\ & (!\state.PREP~q\))) # (!cnt(0) & (\state.WRITE_BIT~q\ & ((!\LessThan0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001001000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt(0),
	datab => \state.WRITE_BIT~q\,
	datac => \state.PREP~q\,
	datad => \LessThan0~0_combout\,
	combout => \Selector47~0_combout\);

\cnt[0]\ : dffeas
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
	q => cnt(0));

\cnt[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cnt[1]~0_combout\ = (cnt(1) & ((cnt(0)) # ((!\state.WRITE_BIT~q\)))) # (!cnt(1) & (((\state.PREP~q\ & !\state.WRITE_BIT~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt(1),
	datab => cnt(0),
	datac => \state.PREP~q\,
	datad => \state.WRITE_BIT~q\,
	combout => \cnt[1]~0_combout\);

\cnt[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \cnt[1]~2_combout\ = (\cnt[1]~0_combout\) # ((\cnt[1]~1_combout\ & ((cnt(3)) # (cnt(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cnt[1]~0_combout\,
	datab => \cnt[1]~1_combout\,
	datac => cnt(3),
	datad => cnt(2),
	combout => \cnt[1]~2_combout\);

\cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \cnt[1]~2_combout\,
	clrn => \RST_N~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cnt(1));

\state~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state~13_combout\ = (!cnt(1) & (!cnt(3) & (!cnt(2) & \state.WRITE_BIT~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cnt(1),
	datab => cnt(3),
	datac => cnt(2),
	datad => \state.WRITE_BIT~q\,
	combout => \state~13_combout\);

\state.RESTORE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \state~13_combout\,
	clrn => \RST_N~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.RESTORE~q\);

\state.SIGNAPPLY\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \state.RESTORE~q\,
	clrn => \RST_N~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.SIGNAPPLY~q\);

\DIVISOR[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DIVISOR(0),
	o => \DIVISOR[0]~input_o\);

\DIVISOR[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DIVISOR(1),
	o => \DIVISOR[1]~input_o\);

\DIVISOR[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DIVISOR(2),
	o => \DIVISOR[2]~input_o\);

\DIVISOR[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DIVISOR(3),
	o => \DIVISOR[3]~input_o\);

\Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (\DIVISOR[0]~input_o\) # ((\DIVISOR[1]~input_o\) # ((\DIVISOR[2]~input_o\) # (\DIVISOR[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DIVISOR[0]~input_o\,
	datab => \DIVISOR[1]~input_o\,
	datac => \DIVISOR[2]~input_o\,
	datad => \DIVISOR[3]~input_o\,
	combout => \Equal0~0_combout\);

\DIVISOR[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DIVISOR(4),
	o => \DIVISOR[4]~input_o\);

\DIVISOR[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DIVISOR(5),
	o => \DIVISOR[5]~input_o\);

\DIVISOR[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DIVISOR(6),
	o => \DIVISOR[6]~input_o\);

\DIVISOR[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DIVISOR(7),
	o => \DIVISOR[7]~input_o\);

\Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (\DIVISOR[4]~input_o\) # ((\DIVISOR[5]~input_o\) # ((\DIVISOR[6]~input_o\) # (\DIVISOR[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DIVISOR[4]~input_o\,
	datab => \DIVISOR[5]~input_o\,
	datac => \DIVISOR[6]~input_o\,
	datad => \DIVISOR[7]~input_o\,
	combout => \Equal0~1_combout\);

\DIVISOR[8]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DIVISOR(8),
	o => \DIVISOR[8]~input_o\);

\DIVISOR[9]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DIVISOR(9),
	o => \DIVISOR[9]~input_o\);

\Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (\Equal0~0_combout\) # ((\Equal0~1_combout\) # ((\DIVISOR[8]~input_o\) # (\DIVISOR[9]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \Equal0~1_combout\,
	datac => \DIVISOR[8]~input_o\,
	datad => \DIVISOR[9]~input_o\,
	combout => \Equal0~2_combout\);

\Selector2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = (\state.SIGNAPPLY~q\) # ((\state.CHECK_ZERO~q\ & !\Equal0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.SIGNAPPLY~q\,
	datab => \state.CHECK_ZERO~q\,
	datad => \Equal0~2_combout\,
	combout => \Selector2~0_combout\);

\state.DONE_ST\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \Selector2~0_combout\,
	clrn => \RST_N~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.DONE_ST~q\);

\state.IDLE~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state.IDLE~0_combout\ = !\state.DONE_ST~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.DONE_ST~q\,
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

\state.CHECK_ZERO~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state.CHECK_ZERO~0_combout\ = !\state.IDLE~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.IDLE~q\,
	combout => \state.CHECK_ZERO~0_combout\);

\state.CHECK_ZERO\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \state.CHECK_ZERO~0_combout\,
	clrn => \RST_N~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.CHECK_ZERO~q\);

\QUOTIENT[6]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \QUOTIENT[6]~1_combout\ = (\state.CHECK_ZERO~q\ & \Equal0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.CHECK_ZERO~q\,
	datab => \Equal0~2_combout\,
	combout => \QUOTIENT[6]~1_combout\);

\state.PREP\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \QUOTIENT[6]~1_combout\,
	clrn => \RST_N~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.PREP~q\);

\DIVIDEND[9]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DIVIDEND(9),
	o => \DIVIDEND[9]~input_o\);

sign_D : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \DIVIDEND[9]~input_o\,
	clrn => \RST_N~input_o\,
	ena => \ALT_INV_state.IDLE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sign_D~q\);

\DIVIDEND[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DIVIDEND(0),
	o => \DIVIDEND[0]~input_o\);

\Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = \sign_D~q\ $ (\DIVIDEND[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sign_D~q\,
	datad => \DIVIDEND[0]~input_o\,
	combout => \Add0~0_combout\);

\Add0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~1_combout\ = (\Add0~0_combout\ & (\sign_D~q\ $ (VCC))) # (!\Add0~0_combout\ & (\sign_D~q\ & VCC))
-- \Add0~2\ = CARRY((\Add0~0_combout\ & \sign_D~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datab => \sign_D~q\,
	datad => VCC,
	combout => \Add0~1_combout\,
	cout => \Add0~2\);

\DIVIDEND[8]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DIVIDEND(8),
	o => \DIVIDEND[8]~input_o\);

\DIVIDEND[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DIVIDEND(7),
	o => \DIVIDEND[7]~input_o\);

\DIVIDEND[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DIVIDEND(6),
	o => \DIVIDEND[6]~input_o\);

\DIVIDEND[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DIVIDEND(5),
	o => \DIVIDEND[5]~input_o\);

\DIVIDEND[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DIVIDEND(4),
	o => \DIVIDEND[4]~input_o\);

\DIVIDEND[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DIVIDEND(3),
	o => \DIVIDEND[3]~input_o\);

\DIVIDEND[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DIVIDEND(2),
	o => \DIVIDEND[2]~input_o\);

\DIVIDEND[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DIVIDEND(1),
	o => \DIVIDEND[1]~input_o\);

\Add0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~3_combout\ = (\Add0~2\ & (\sign_D~q\ $ ((!\DIVIDEND[1]~input_o\)))) # (!\Add0~2\ & ((\sign_D~q\ $ (\DIVIDEND[1]~input_o\)) # (GND)))
-- \Add0~4\ = CARRY((\sign_D~q\ $ (!\DIVIDEND[1]~input_o\)) # (!\Add0~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sign_D~q\,
	datab => \DIVIDEND[1]~input_o\,
	datad => VCC,
	cin => \Add0~2\,
	combout => \Add0~3_combout\,
	cout => \Add0~4\);

\Add0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~5_combout\ = (\Add0~4\ & ((\sign_D~q\ $ (\DIVIDEND[2]~input_o\)))) # (!\Add0~4\ & (\sign_D~q\ $ (\DIVIDEND[2]~input_o\ $ (VCC))))
-- \Add0~6\ = CARRY((!\Add0~4\ & (\sign_D~q\ $ (\DIVIDEND[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sign_D~q\,
	datab => \DIVIDEND[2]~input_o\,
	datad => VCC,
	cin => \Add0~4\,
	combout => \Add0~5_combout\,
	cout => \Add0~6\);

\Add0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~7_combout\ = (\Add0~6\ & (\sign_D~q\ $ ((!\DIVIDEND[3]~input_o\)))) # (!\Add0~6\ & ((\sign_D~q\ $ (\DIVIDEND[3]~input_o\)) # (GND)))
-- \Add0~8\ = CARRY((\sign_D~q\ $ (!\DIVIDEND[3]~input_o\)) # (!\Add0~6\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sign_D~q\,
	datab => \DIVIDEND[3]~input_o\,
	datad => VCC,
	cin => \Add0~6\,
	combout => \Add0~7_combout\,
	cout => \Add0~8\);

\Add0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~9_combout\ = (\Add0~8\ & ((\sign_D~q\ $ (\DIVIDEND[4]~input_o\)))) # (!\Add0~8\ & (\sign_D~q\ $ (\DIVIDEND[4]~input_o\ $ (VCC))))
-- \Add0~10\ = CARRY((!\Add0~8\ & (\sign_D~q\ $ (\DIVIDEND[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sign_D~q\,
	datab => \DIVIDEND[4]~input_o\,
	datad => VCC,
	cin => \Add0~8\,
	combout => \Add0~9_combout\,
	cout => \Add0~10\);

\Add0~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~11_combout\ = (\Add0~10\ & (\sign_D~q\ $ ((!\DIVIDEND[5]~input_o\)))) # (!\Add0~10\ & ((\sign_D~q\ $ (\DIVIDEND[5]~input_o\)) # (GND)))
-- \Add0~12\ = CARRY((\sign_D~q\ $ (!\DIVIDEND[5]~input_o\)) # (!\Add0~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sign_D~q\,
	datab => \DIVIDEND[5]~input_o\,
	datad => VCC,
	cin => \Add0~10\,
	combout => \Add0~11_combout\,
	cout => \Add0~12\);

\Add0~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~13_combout\ = (\Add0~12\ & ((\sign_D~q\ $ (\DIVIDEND[6]~input_o\)))) # (!\Add0~12\ & (\sign_D~q\ $ (\DIVIDEND[6]~input_o\ $ (VCC))))
-- \Add0~14\ = CARRY((!\Add0~12\ & (\sign_D~q\ $ (\DIVIDEND[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sign_D~q\,
	datab => \DIVIDEND[6]~input_o\,
	datad => VCC,
	cin => \Add0~12\,
	combout => \Add0~13_combout\,
	cout => \Add0~14\);

\Add0~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~15_combout\ = (\Add0~14\ & (\sign_D~q\ $ ((!\DIVIDEND[7]~input_o\)))) # (!\Add0~14\ & ((\sign_D~q\ $ (\DIVIDEND[7]~input_o\)) # (GND)))
-- \Add0~16\ = CARRY((\sign_D~q\ $ (!\DIVIDEND[7]~input_o\)) # (!\Add0~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sign_D~q\,
	datab => \DIVIDEND[7]~input_o\,
	datad => VCC,
	cin => \Add0~14\,
	combout => \Add0~15_combout\,
	cout => \Add0~16\);

\Add0~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~17_combout\ = (\Add0~16\ & ((\sign_D~q\ $ (\DIVIDEND[8]~input_o\)))) # (!\Add0~16\ & (\sign_D~q\ $ (\DIVIDEND[8]~input_o\ $ (VCC))))
-- \Add0~18\ = CARRY((!\Add0~16\ & (\sign_D~q\ $ (\DIVIDEND[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sign_D~q\,
	datab => \DIVIDEND[8]~input_o\,
	datad => VCC,
	cin => \Add0~16\,
	combout => \Add0~17_combout\,
	cout => \Add0~18\);

\Add0~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~19_combout\ = \sign_D~q\ $ (\DIVIDEND[9]~input_o\ $ (\Add0~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sign_D~q\,
	datab => \DIVIDEND[9]~input_o\,
	cin => \Add0~18\,
	combout => \Add0~19_combout\);

\Selector43~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector43~1_combout\ = (\state.PREP~q\) # (\state.SHIFT~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state.PREP~q\,
	datad => \state.SHIFT~q\,
	combout => \Selector43~1_combout\);

\Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \Add0~3_combout\,
	asdata => Q(0),
	clrn => \RST_N~input_o\,
	sload => \state.SHIFT~q\,
	ena => \Selector43~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Q(1));

\Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \Add0~5_combout\,
	asdata => Q(1),
	clrn => \RST_N~input_o\,
	sload => \state.SHIFT~q\,
	ena => \Selector43~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Q(2));

\Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \Add0~7_combout\,
	asdata => Q(2),
	clrn => \RST_N~input_o\,
	sload => \state.SHIFT~q\,
	ena => \Selector43~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Q(3));

\Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \Add0~9_combout\,
	asdata => Q(3),
	clrn => \RST_N~input_o\,
	sload => \state.SHIFT~q\,
	ena => \Selector43~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Q(4));

\Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \Add0~11_combout\,
	asdata => Q(4),
	clrn => \RST_N~input_o\,
	sload => \state.SHIFT~q\,
	ena => \Selector43~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Q(5));

\Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \Add0~13_combout\,
	asdata => Q(5),
	clrn => \RST_N~input_o\,
	sload => \state.SHIFT~q\,
	ena => \Selector43~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Q(6));

\Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \Add0~15_combout\,
	asdata => Q(6),
	clrn => \RST_N~input_o\,
	sload => \state.SHIFT~q\,
	ena => \Selector43~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Q(7));

\Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \Add0~17_combout\,
	asdata => Q(7),
	clrn => \RST_N~input_o\,
	sload => \state.SHIFT~q\,
	ena => \Selector43~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Q(8));

\Q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \Add0~19_combout\,
	asdata => Q(8),
	clrn => \RST_N~input_o\,
	sload => \state.SHIFT~q\,
	ena => \Selector43~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Q(9));

sign_M : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \DIVISOR[9]~input_o\,
	clrn => \RST_N~input_o\,
	ena => \ALT_INV_state.IDLE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sign_M~q\);

\Add1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = \DIVISOR[0]~input_o\ $ (\sign_M~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DIVISOR[0]~input_o\,
	datad => \sign_M~q\,
	combout => \Add1~0_combout\);

\M[0]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \M[0]~10_combout\ = (\Add1~0_combout\ & (\sign_M~q\ $ (VCC))) # (!\Add1~0_combout\ & (\sign_M~q\ & VCC))
-- \M[0]~11\ = CARRY((\Add1~0_combout\ & \sign_M~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~0_combout\,
	datab => \sign_M~q\,
	datad => VCC,
	combout => \M[0]~10_combout\,
	cout => \M[0]~11\);

\M[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \M[0]~10_combout\,
	clrn => \RST_N~input_o\,
	ena => \state.PREP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => M(0));

\Add2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~0_combout\ = M(0) $ (((A(10)) # (!\state.ADD_SUB~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.ADD_SUB~q\,
	datac => A(10),
	datad => M(0),
	combout => \Add2~0_combout\);

\Add2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~2_cout\ = CARRY((!A(10) & \state.ADD_SUB~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => A(10),
	datab => \state.ADD_SUB~q\,
	datad => VCC,
	cout => \Add2~2_cout\);

\Add2~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~3_combout\ = (\Add2~0_combout\ & ((A(0) & (!\Add2~2_cout\)) # (!A(0) & ((\Add2~2_cout\) # (GND))))) # (!\Add2~0_combout\ & ((A(0) & (\Add2~2_cout\ & VCC)) # (!A(0) & (!\Add2~2_cout\))))
-- \Add2~4\ = CARRY((\Add2~0_combout\ & ((!\Add2~2_cout\) # (!A(0)))) # (!\Add2~0_combout\ & (!A(0) & !\Add2~2_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~0_combout\,
	datab => A(0),
	datad => VCC,
	cin => \Add2~2_cout\,
	combout => \Add2~3_combout\,
	cout => \Add2~4\);

\Selector33~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector33~2_combout\ = (\state.SHIFT~q\ & (((Q(9))))) # (!\state.SHIFT~q\ & (!\state.PREP~q\ & ((\Add2~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.PREP~q\,
	datab => \state.SHIFT~q\,
	datac => Q(9),
	datad => \Add2~3_combout\,
	combout => \Selector33~2_combout\);

\A[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \A[0]~0_combout\ = (\state.RESTORE~q\ & (((A(10))))) # (!\state.RESTORE~q\ & ((\Selector43~1_combout\) # ((\state.ADD_SUB~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector43~1_combout\,
	datab => \state.RESTORE~q\,
	datac => \state.ADD_SUB~q\,
	datad => A(10),
	combout => \A[0]~0_combout\);

\A[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \Selector33~2_combout\,
	clrn => \RST_N~input_o\,
	ena => \A[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => A(0));

\M[1]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \M[1]~12_combout\ = (\M[0]~11\ & (\sign_M~q\ $ ((!\DIVISOR[1]~input_o\)))) # (!\M[0]~11\ & ((\sign_M~q\ $ (\DIVISOR[1]~input_o\)) # (GND)))
-- \M[1]~13\ = CARRY((\sign_M~q\ $ (!\DIVISOR[1]~input_o\)) # (!\M[0]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sign_M~q\,
	datab => \DIVISOR[1]~input_o\,
	datad => VCC,
	cin => \M[0]~11\,
	combout => \M[1]~12_combout\,
	cout => \M[1]~13\);

\M[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \M[1]~12_combout\,
	clrn => \RST_N~input_o\,
	ena => \state.PREP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => M(1));

\Add2~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~5_combout\ = M(1) $ (((A(10)) # (!\state.ADD_SUB~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.ADD_SUB~q\,
	datac => A(10),
	datad => M(1),
	combout => \Add2~5_combout\);

\Add2~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~6_combout\ = ((\Add2~5_combout\ $ (A(1) $ (\Add2~4\)))) # (GND)
-- \Add2~7\ = CARRY((\Add2~5_combout\ & (A(1) & !\Add2~4\)) # (!\Add2~5_combout\ & ((A(1)) # (!\Add2~4\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~5_combout\,
	datab => A(1),
	datad => VCC,
	cin => \Add2~4\,
	combout => \Add2~6_combout\,
	cout => \Add2~7\);

\Selector32~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector32~2_combout\ = (\state.SHIFT~q\ & (((A(0))))) # (!\state.SHIFT~q\ & (!\state.PREP~q\ & ((\Add2~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.PREP~q\,
	datab => \state.SHIFT~q\,
	datac => A(0),
	datad => \Add2~6_combout\,
	combout => \Selector32~2_combout\);

\A[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \Selector32~2_combout\,
	clrn => \RST_N~input_o\,
	ena => \A[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => A(1));

\M[2]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \M[2]~14_combout\ = (\M[1]~13\ & ((\sign_M~q\ $ (\DIVISOR[2]~input_o\)))) # (!\M[1]~13\ & (\sign_M~q\ $ (\DIVISOR[2]~input_o\ $ (VCC))))
-- \M[2]~15\ = CARRY((!\M[1]~13\ & (\sign_M~q\ $ (\DIVISOR[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sign_M~q\,
	datab => \DIVISOR[2]~input_o\,
	datad => VCC,
	cin => \M[1]~13\,
	combout => \M[2]~14_combout\,
	cout => \M[2]~15\);

\M[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \M[2]~14_combout\,
	clrn => \RST_N~input_o\,
	ena => \state.PREP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => M(2));

\Add2~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~8_combout\ = M(2) $ (((A(10)) # (!\state.ADD_SUB~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.ADD_SUB~q\,
	datac => A(10),
	datad => M(2),
	combout => \Add2~8_combout\);

\Add2~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~9_combout\ = (\Add2~8_combout\ & ((A(2) & (!\Add2~7\)) # (!A(2) & ((\Add2~7\) # (GND))))) # (!\Add2~8_combout\ & ((A(2) & (\Add2~7\ & VCC)) # (!A(2) & (!\Add2~7\))))
-- \Add2~10\ = CARRY((\Add2~8_combout\ & ((!\Add2~7\) # (!A(2)))) # (!\Add2~8_combout\ & (!A(2) & !\Add2~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~8_combout\,
	datab => A(2),
	datad => VCC,
	cin => \Add2~7\,
	combout => \Add2~9_combout\,
	cout => \Add2~10\);

\Selector31~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector31~2_combout\ = (\state.SHIFT~q\ & (((A(1))))) # (!\state.SHIFT~q\ & (!\state.PREP~q\ & ((\Add2~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.PREP~q\,
	datab => \state.SHIFT~q\,
	datac => A(1),
	datad => \Add2~9_combout\,
	combout => \Selector31~2_combout\);

\A[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \Selector31~2_combout\,
	clrn => \RST_N~input_o\,
	ena => \A[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => A(2));

\M[3]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \M[3]~16_combout\ = (\M[2]~15\ & (\sign_M~q\ $ ((!\DIVISOR[3]~input_o\)))) # (!\M[2]~15\ & ((\sign_M~q\ $ (\DIVISOR[3]~input_o\)) # (GND)))
-- \M[3]~17\ = CARRY((\sign_M~q\ $ (!\DIVISOR[3]~input_o\)) # (!\M[2]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sign_M~q\,
	datab => \DIVISOR[3]~input_o\,
	datad => VCC,
	cin => \M[2]~15\,
	combout => \M[3]~16_combout\,
	cout => \M[3]~17\);

\M[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \M[3]~16_combout\,
	clrn => \RST_N~input_o\,
	ena => \state.PREP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => M(3));

\Add2~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~11_combout\ = M(3) $ (((A(10)) # (!\state.ADD_SUB~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.ADD_SUB~q\,
	datac => A(10),
	datad => M(3),
	combout => \Add2~11_combout\);

\Add2~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~12_combout\ = ((\Add2~11_combout\ $ (A(3) $ (\Add2~10\)))) # (GND)
-- \Add2~13\ = CARRY((\Add2~11_combout\ & (A(3) & !\Add2~10\)) # (!\Add2~11_combout\ & ((A(3)) # (!\Add2~10\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~11_combout\,
	datab => A(3),
	datad => VCC,
	cin => \Add2~10\,
	combout => \Add2~12_combout\,
	cout => \Add2~13\);

\Selector30~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector30~2_combout\ = (\state.SHIFT~q\ & (((A(2))))) # (!\state.SHIFT~q\ & (!\state.PREP~q\ & ((\Add2~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.PREP~q\,
	datab => \state.SHIFT~q\,
	datac => A(2),
	datad => \Add2~12_combout\,
	combout => \Selector30~2_combout\);

\A[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \Selector30~2_combout\,
	clrn => \RST_N~input_o\,
	ena => \A[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => A(3));

\M[4]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \M[4]~18_combout\ = (\M[3]~17\ & ((\sign_M~q\ $ (\DIVISOR[4]~input_o\)))) # (!\M[3]~17\ & (\sign_M~q\ $ (\DIVISOR[4]~input_o\ $ (VCC))))
-- \M[4]~19\ = CARRY((!\M[3]~17\ & (\sign_M~q\ $ (\DIVISOR[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sign_M~q\,
	datab => \DIVISOR[4]~input_o\,
	datad => VCC,
	cin => \M[3]~17\,
	combout => \M[4]~18_combout\,
	cout => \M[4]~19\);

\M[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \M[4]~18_combout\,
	clrn => \RST_N~input_o\,
	ena => \state.PREP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => M(4));

\Add2~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~14_combout\ = M(4) $ (((A(10)) # (!\state.ADD_SUB~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.ADD_SUB~q\,
	datac => A(10),
	datad => M(4),
	combout => \Add2~14_combout\);

\Add2~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~15_combout\ = (\Add2~14_combout\ & ((A(4) & (!\Add2~13\)) # (!A(4) & ((\Add2~13\) # (GND))))) # (!\Add2~14_combout\ & ((A(4) & (\Add2~13\ & VCC)) # (!A(4) & (!\Add2~13\))))
-- \Add2~16\ = CARRY((\Add2~14_combout\ & ((!\Add2~13\) # (!A(4)))) # (!\Add2~14_combout\ & (!A(4) & !\Add2~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~14_combout\,
	datab => A(4),
	datad => VCC,
	cin => \Add2~13\,
	combout => \Add2~15_combout\,
	cout => \Add2~16\);

\Selector29~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector29~2_combout\ = (\state.SHIFT~q\ & (((A(3))))) # (!\state.SHIFT~q\ & (!\state.PREP~q\ & ((\Add2~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.PREP~q\,
	datab => \state.SHIFT~q\,
	datac => A(3),
	datad => \Add2~15_combout\,
	combout => \Selector29~2_combout\);

\A[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \Selector29~2_combout\,
	clrn => \RST_N~input_o\,
	ena => \A[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => A(4));

\M[5]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \M[5]~20_combout\ = (\M[4]~19\ & (\sign_M~q\ $ ((!\DIVISOR[5]~input_o\)))) # (!\M[4]~19\ & ((\sign_M~q\ $ (\DIVISOR[5]~input_o\)) # (GND)))
-- \M[5]~21\ = CARRY((\sign_M~q\ $ (!\DIVISOR[5]~input_o\)) # (!\M[4]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sign_M~q\,
	datab => \DIVISOR[5]~input_o\,
	datad => VCC,
	cin => \M[4]~19\,
	combout => \M[5]~20_combout\,
	cout => \M[5]~21\);

\M[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \M[5]~20_combout\,
	clrn => \RST_N~input_o\,
	ena => \state.PREP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => M(5));

\Add2~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~17_combout\ = M(5) $ (((A(10)) # (!\state.ADD_SUB~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.ADD_SUB~q\,
	datac => A(10),
	datad => M(5),
	combout => \Add2~17_combout\);

\Add2~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~18_combout\ = ((\Add2~17_combout\ $ (A(5) $ (\Add2~16\)))) # (GND)
-- \Add2~19\ = CARRY((\Add2~17_combout\ & (A(5) & !\Add2~16\)) # (!\Add2~17_combout\ & ((A(5)) # (!\Add2~16\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~17_combout\,
	datab => A(5),
	datad => VCC,
	cin => \Add2~16\,
	combout => \Add2~18_combout\,
	cout => \Add2~19\);

\Selector28~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector28~2_combout\ = (\state.SHIFT~q\ & (((A(4))))) # (!\state.SHIFT~q\ & (!\state.PREP~q\ & ((\Add2~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.PREP~q\,
	datab => \state.SHIFT~q\,
	datac => A(4),
	datad => \Add2~18_combout\,
	combout => \Selector28~2_combout\);

\A[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \Selector28~2_combout\,
	clrn => \RST_N~input_o\,
	ena => \A[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => A(5));

\M[6]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \M[6]~22_combout\ = (\M[5]~21\ & ((\sign_M~q\ $ (\DIVISOR[6]~input_o\)))) # (!\M[5]~21\ & (\sign_M~q\ $ (\DIVISOR[6]~input_o\ $ (VCC))))
-- \M[6]~23\ = CARRY((!\M[5]~21\ & (\sign_M~q\ $ (\DIVISOR[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sign_M~q\,
	datab => \DIVISOR[6]~input_o\,
	datad => VCC,
	cin => \M[5]~21\,
	combout => \M[6]~22_combout\,
	cout => \M[6]~23\);

\M[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \M[6]~22_combout\,
	clrn => \RST_N~input_o\,
	ena => \state.PREP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => M(6));

\Add2~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~20_combout\ = M(6) $ (((A(10)) # (!\state.ADD_SUB~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.ADD_SUB~q\,
	datac => A(10),
	datad => M(6),
	combout => \Add2~20_combout\);

\Add2~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~21_combout\ = (\Add2~20_combout\ & ((A(6) & (!\Add2~19\)) # (!A(6) & ((\Add2~19\) # (GND))))) # (!\Add2~20_combout\ & ((A(6) & (\Add2~19\ & VCC)) # (!A(6) & (!\Add2~19\))))
-- \Add2~22\ = CARRY((\Add2~20_combout\ & ((!\Add2~19\) # (!A(6)))) # (!\Add2~20_combout\ & (!A(6) & !\Add2~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~20_combout\,
	datab => A(6),
	datad => VCC,
	cin => \Add2~19\,
	combout => \Add2~21_combout\,
	cout => \Add2~22\);

\Selector27~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector27~2_combout\ = (\state.SHIFT~q\ & (((A(5))))) # (!\state.SHIFT~q\ & (!\state.PREP~q\ & ((\Add2~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.PREP~q\,
	datab => \state.SHIFT~q\,
	datac => A(5),
	datad => \Add2~21_combout\,
	combout => \Selector27~2_combout\);

\A[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \Selector27~2_combout\,
	clrn => \RST_N~input_o\,
	ena => \A[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => A(6));

\M[7]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \M[7]~24_combout\ = (\M[6]~23\ & (\sign_M~q\ $ ((!\DIVISOR[7]~input_o\)))) # (!\M[6]~23\ & ((\sign_M~q\ $ (\DIVISOR[7]~input_o\)) # (GND)))
-- \M[7]~25\ = CARRY((\sign_M~q\ $ (!\DIVISOR[7]~input_o\)) # (!\M[6]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sign_M~q\,
	datab => \DIVISOR[7]~input_o\,
	datad => VCC,
	cin => \M[6]~23\,
	combout => \M[7]~24_combout\,
	cout => \M[7]~25\);

\M[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \M[7]~24_combout\,
	clrn => \RST_N~input_o\,
	ena => \state.PREP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => M(7));

\Add2~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~23_combout\ = M(7) $ (((A(10)) # (!\state.ADD_SUB~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.ADD_SUB~q\,
	datac => A(10),
	datad => M(7),
	combout => \Add2~23_combout\);

\Add2~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~24_combout\ = ((\Add2~23_combout\ $ (A(7) $ (\Add2~22\)))) # (GND)
-- \Add2~25\ = CARRY((\Add2~23_combout\ & (A(7) & !\Add2~22\)) # (!\Add2~23_combout\ & ((A(7)) # (!\Add2~22\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~23_combout\,
	datab => A(7),
	datad => VCC,
	cin => \Add2~22\,
	combout => \Add2~24_combout\,
	cout => \Add2~25\);

\Selector26~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector26~2_combout\ = (\state.SHIFT~q\ & (((A(6))))) # (!\state.SHIFT~q\ & (!\state.PREP~q\ & ((\Add2~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.PREP~q\,
	datab => \state.SHIFT~q\,
	datac => A(6),
	datad => \Add2~24_combout\,
	combout => \Selector26~2_combout\);

\A[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \Selector26~2_combout\,
	clrn => \RST_N~input_o\,
	ena => \A[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => A(7));

\M[8]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \M[8]~26_combout\ = (\M[7]~25\ & ((\sign_M~q\ $ (\DIVISOR[8]~input_o\)))) # (!\M[7]~25\ & (\sign_M~q\ $ (\DIVISOR[8]~input_o\ $ (VCC))))
-- \M[8]~27\ = CARRY((!\M[7]~25\ & (\sign_M~q\ $ (\DIVISOR[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sign_M~q\,
	datab => \DIVISOR[8]~input_o\,
	datad => VCC,
	cin => \M[7]~25\,
	combout => \M[8]~26_combout\,
	cout => \M[8]~27\);

\M[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \M[8]~26_combout\,
	clrn => \RST_N~input_o\,
	ena => \state.PREP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => M(8));

\Add2~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~26_combout\ = M(8) $ (((A(10)) # (!\state.ADD_SUB~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.ADD_SUB~q\,
	datac => A(10),
	datad => M(8),
	combout => \Add2~26_combout\);

\Add2~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~27_combout\ = (\Add2~26_combout\ & ((A(8) & (!\Add2~25\)) # (!A(8) & ((\Add2~25\) # (GND))))) # (!\Add2~26_combout\ & ((A(8) & (\Add2~25\ & VCC)) # (!A(8) & (!\Add2~25\))))
-- \Add2~28\ = CARRY((\Add2~26_combout\ & ((!\Add2~25\) # (!A(8)))) # (!\Add2~26_combout\ & (!A(8) & !\Add2~25\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~26_combout\,
	datab => A(8),
	datad => VCC,
	cin => \Add2~25\,
	combout => \Add2~27_combout\,
	cout => \Add2~28\);

\Selector25~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector25~2_combout\ = (\state.SHIFT~q\ & (((A(7))))) # (!\state.SHIFT~q\ & (!\state.PREP~q\ & ((\Add2~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.PREP~q\,
	datab => \state.SHIFT~q\,
	datac => A(7),
	datad => \Add2~27_combout\,
	combout => \Selector25~2_combout\);

\A[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \Selector25~2_combout\,
	clrn => \RST_N~input_o\,
	ena => \A[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => A(8));

\M[9]~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \M[9]~28_combout\ = \sign_M~q\ $ (\DIVISOR[9]~input_o\ $ (\M[8]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sign_M~q\,
	datab => \DIVISOR[9]~input_o\,
	cin => \M[8]~27\,
	combout => \M[9]~28_combout\);

\M[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \M[9]~28_combout\,
	clrn => \RST_N~input_o\,
	ena => \state.PREP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => M(9));

\Add2~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~29_combout\ = M(9) $ (((A(10)) # (!\state.ADD_SUB~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.ADD_SUB~q\,
	datac => A(10),
	datad => M(9),
	combout => \Add2~29_combout\);

\Add2~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~30_combout\ = ((\Add2~29_combout\ $ (A(9) $ (\Add2~28\)))) # (GND)
-- \Add2~31\ = CARRY((\Add2~29_combout\ & (A(9) & !\Add2~28\)) # (!\Add2~29_combout\ & ((A(9)) # (!\Add2~28\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~29_combout\,
	datab => A(9),
	datad => VCC,
	cin => \Add2~28\,
	combout => \Add2~30_combout\,
	cout => \Add2~31\);

\Selector24~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector24~2_combout\ = (\state.SHIFT~q\ & (((A(8))))) # (!\state.SHIFT~q\ & (!\state.PREP~q\ & ((\Add2~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.PREP~q\,
	datab => \state.SHIFT~q\,
	datac => A(8),
	datad => \Add2~30_combout\,
	combout => \Selector24~2_combout\);

\A[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \Selector24~2_combout\,
	clrn => \RST_N~input_o\,
	ena => \A[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => A(9));

\Add2~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add2~32_combout\ = \Add2~29_combout\ $ (A(10) $ (!\Add2~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~29_combout\,
	datab => A(10),
	cin => \Add2~31\,
	combout => \Add2~32_combout\);

\Selector23~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector23~0_combout\ = (\state.ADD_SUB~q\) # ((A(10) & \state.RESTORE~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => A(10),
	datab => \state.RESTORE~q\,
	datac => \state.ADD_SUB~q\,
	combout => \Selector23~0_combout\);

\Selector23~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector23~1_combout\ = (\Selector23~0_combout\ & (((\Add2~32_combout\)))) # (!\Selector23~0_combout\ & (!\Selector43~1_combout\ & ((A(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector43~1_combout\,
	datab => \Add2~32_combout\,
	datac => A(10),
	datad => \Selector23~0_combout\,
	combout => \Selector23~1_combout\);

\Selector23~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector23~2_combout\ = (\Selector23~1_combout\) # ((A(9) & \state.SHIFT~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => A(9),
	datab => \state.SHIFT~q\,
	datac => \Selector23~1_combout\,
	combout => \Selector23~2_combout\);

\A[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \Selector23~2_combout\,
	clrn => \RST_N~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => A(10));

\Selector43~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector43~0_combout\ = (\state.PREP~q\ & ((\Add0~1_combout\) # ((\state.WRITE_BIT~q\ & !A(10))))) # (!\state.PREP~q\ & (((\state.WRITE_BIT~q\ & !A(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.PREP~q\,
	datab => \Add0~1_combout\,
	datac => \state.WRITE_BIT~q\,
	datad => A(10),
	combout => \Selector43~0_combout\);

\Selector43~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector43~2_combout\ = (\Selector43~0_combout\) # ((Q(0) & (!\Selector43~1_combout\ & !\state.WRITE_BIT~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector43~0_combout\,
	datab => Q(0),
	datac => \Selector43~1_combout\,
	datad => \state.WRITE_BIT~q\,
	combout => \Selector43~2_combout\);

\Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \Selector43~2_combout\,
	clrn => \RST_N~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Q(0));

\sign_Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \sign_Q~0_combout\ = \DIVISOR[9]~input_o\ $ (\DIVIDEND[9]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DIVISOR[9]~input_o\,
	datad => \DIVIDEND[9]~input_o\,
	combout => \sign_Q~0_combout\);

sign_Q : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \sign_Q~0_combout\,
	clrn => \RST_N~input_o\,
	ena => \ALT_INV_state.IDLE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sign_Q~q\);

\Add5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add5~0_combout\ = Q(0) $ (\sign_Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => Q(0),
	datad => \sign_Q~q\,
	combout => \Add5~0_combout\);

\Add5~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add5~1_combout\ = (\Add5~0_combout\ & (\sign_Q~q\ $ (VCC))) # (!\Add5~0_combout\ & (\sign_Q~q\ & VCC))
-- \Add5~2\ = CARRY((\Add5~0_combout\ & \sign_Q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~0_combout\,
	datab => \sign_Q~q\,
	datad => VCC,
	combout => \Add5~1_combout\,
	cout => \Add5~2\);

\QUOTIENT[6]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \QUOTIENT[6]~0_combout\ = (\state.CHECK_ZERO~q\ & (!\Equal0~2_combout\)) # (!\state.CHECK_ZERO~q\ & ((\state.SIGNAPPLY~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~2_combout\,
	datab => \state.CHECK_ZERO~q\,
	datad => \state.SIGNAPPLY~q\,
	combout => \QUOTIENT[6]~0_combout\);

\QUOTIENT[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \Add5~1_combout\,
	clrn => \RST_N~input_o\,
	sclr => \ALT_INV_state.SIGNAPPLY~q\,
	ena => \QUOTIENT[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \QUOTIENT[0]~reg0_q\);

\Add5~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add5~3_combout\ = (\Add5~2\ & (\sign_Q~q\ $ ((!Q(1))))) # (!\Add5~2\ & ((\sign_Q~q\ $ (Q(1))) # (GND)))
-- \Add5~4\ = CARRY((\sign_Q~q\ $ (!Q(1))) # (!\Add5~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sign_Q~q\,
	datab => Q(1),
	datad => VCC,
	cin => \Add5~2\,
	combout => \Add5~3_combout\,
	cout => \Add5~4\);

\QUOTIENT[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \Add5~3_combout\,
	clrn => \RST_N~input_o\,
	sclr => \ALT_INV_state.SIGNAPPLY~q\,
	ena => \QUOTIENT[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \QUOTIENT[1]~reg0_q\);

\Add5~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add5~5_combout\ = (\Add5~4\ & ((\sign_Q~q\ $ (Q(2))))) # (!\Add5~4\ & (\sign_Q~q\ $ (Q(2) $ (VCC))))
-- \Add5~6\ = CARRY((!\Add5~4\ & (\sign_Q~q\ $ (Q(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sign_Q~q\,
	datab => Q(2),
	datad => VCC,
	cin => \Add5~4\,
	combout => \Add5~5_combout\,
	cout => \Add5~6\);

\QUOTIENT[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \Add5~5_combout\,
	clrn => \RST_N~input_o\,
	sclr => \ALT_INV_state.SIGNAPPLY~q\,
	ena => \QUOTIENT[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \QUOTIENT[2]~reg0_q\);

\Add5~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add5~7_combout\ = (\Add5~6\ & (\sign_Q~q\ $ ((!Q(3))))) # (!\Add5~6\ & ((\sign_Q~q\ $ (Q(3))) # (GND)))
-- \Add5~8\ = CARRY((\sign_Q~q\ $ (!Q(3))) # (!\Add5~6\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sign_Q~q\,
	datab => Q(3),
	datad => VCC,
	cin => \Add5~6\,
	combout => \Add5~7_combout\,
	cout => \Add5~8\);

\QUOTIENT[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \Add5~7_combout\,
	clrn => \RST_N~input_o\,
	sclr => \ALT_INV_state.SIGNAPPLY~q\,
	ena => \QUOTIENT[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \QUOTIENT[3]~reg0_q\);

\Add5~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add5~9_combout\ = (\Add5~8\ & ((\sign_Q~q\ $ (Q(4))))) # (!\Add5~8\ & (\sign_Q~q\ $ (Q(4) $ (VCC))))
-- \Add5~10\ = CARRY((!\Add5~8\ & (\sign_Q~q\ $ (Q(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sign_Q~q\,
	datab => Q(4),
	datad => VCC,
	cin => \Add5~8\,
	combout => \Add5~9_combout\,
	cout => \Add5~10\);

\QUOTIENT[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \Add5~9_combout\,
	clrn => \RST_N~input_o\,
	sclr => \ALT_INV_state.SIGNAPPLY~q\,
	ena => \QUOTIENT[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \QUOTIENT[4]~reg0_q\);

\Add5~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add5~11_combout\ = (\Add5~10\ & (\sign_Q~q\ $ ((!Q(5))))) # (!\Add5~10\ & ((\sign_Q~q\ $ (Q(5))) # (GND)))
-- \Add5~12\ = CARRY((\sign_Q~q\ $ (!Q(5))) # (!\Add5~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sign_Q~q\,
	datab => Q(5),
	datad => VCC,
	cin => \Add5~10\,
	combout => \Add5~11_combout\,
	cout => \Add5~12\);

\QUOTIENT[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \Add5~11_combout\,
	clrn => \RST_N~input_o\,
	sclr => \ALT_INV_state.SIGNAPPLY~q\,
	ena => \QUOTIENT[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \QUOTIENT[5]~reg0_q\);

\Add5~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add5~13_combout\ = (\Add5~12\ & ((\sign_Q~q\ $ (Q(6))))) # (!\Add5~12\ & (\sign_Q~q\ $ (Q(6) $ (VCC))))
-- \Add5~14\ = CARRY((!\Add5~12\ & (\sign_Q~q\ $ (Q(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sign_Q~q\,
	datab => Q(6),
	datad => VCC,
	cin => \Add5~12\,
	combout => \Add5~13_combout\,
	cout => \Add5~14\);

\QUOTIENT[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \Add5~13_combout\,
	clrn => \RST_N~input_o\,
	sclr => \ALT_INV_state.SIGNAPPLY~q\,
	ena => \QUOTIENT[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \QUOTIENT[6]~reg0_q\);

\Add5~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add5~15_combout\ = (\Add5~14\ & (\sign_Q~q\ $ ((!Q(7))))) # (!\Add5~14\ & ((\sign_Q~q\ $ (Q(7))) # (GND)))
-- \Add5~16\ = CARRY((\sign_Q~q\ $ (!Q(7))) # (!\Add5~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sign_Q~q\,
	datab => Q(7),
	datad => VCC,
	cin => \Add5~14\,
	combout => \Add5~15_combout\,
	cout => \Add5~16\);

\QUOTIENT[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \Add5~15_combout\,
	clrn => \RST_N~input_o\,
	sclr => \ALT_INV_state.SIGNAPPLY~q\,
	ena => \QUOTIENT[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \QUOTIENT[7]~reg0_q\);

\Add5~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add5~17_combout\ = (\Add5~16\ & ((\sign_Q~q\ $ (Q(8))))) # (!\Add5~16\ & (\sign_Q~q\ $ (Q(8) $ (VCC))))
-- \Add5~18\ = CARRY((!\Add5~16\ & (\sign_Q~q\ $ (Q(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sign_Q~q\,
	datab => Q(8),
	datad => VCC,
	cin => \Add5~16\,
	combout => \Add5~17_combout\,
	cout => \Add5~18\);

\QUOTIENT[8]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \Add5~17_combout\,
	clrn => \RST_N~input_o\,
	sclr => \ALT_INV_state.SIGNAPPLY~q\,
	ena => \QUOTIENT[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \QUOTIENT[8]~reg0_q\);

\Add5~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add5~19_combout\ = \sign_Q~q\ $ (Q(9) $ (\Add5~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sign_Q~q\,
	datab => Q(9),
	cin => \Add5~18\,
	combout => \Add5~19_combout\);

\QUOTIENT[9]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \Add5~19_combout\,
	clrn => \RST_N~input_o\,
	sclr => \ALT_INV_state.SIGNAPPLY~q\,
	ena => \QUOTIENT[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \QUOTIENT[9]~reg0_q\);

\Add6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add6~0_combout\ = A(0) $ (\sign_D~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => A(0),
	datad => \sign_D~q\,
	combout => \Add6~0_combout\);

\REMAINDER[0]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \REMAINDER[0]~10_combout\ = (\Add6~0_combout\ & (\sign_D~q\ $ (VCC))) # (!\Add6~0_combout\ & (\sign_D~q\ & VCC))
-- \REMAINDER[0]~11\ = CARRY((\Add6~0_combout\ & \sign_D~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~0_combout\,
	datab => \sign_D~q\,
	datad => VCC,
	combout => \REMAINDER[0]~10_combout\,
	cout => \REMAINDER[0]~11\);

\REMAINDER[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \REMAINDER[0]~10_combout\,
	clrn => \RST_N~input_o\,
	sclr => \ALT_INV_state.SIGNAPPLY~q\,
	ena => \QUOTIENT[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REMAINDER[0]~reg0_q\);

\REMAINDER[1]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \REMAINDER[1]~12_combout\ = (\REMAINDER[0]~11\ & (A(1) $ ((!\sign_D~q\)))) # (!\REMAINDER[0]~11\ & ((A(1) $ (\sign_D~q\)) # (GND)))
-- \REMAINDER[1]~13\ = CARRY((A(1) $ (!\sign_D~q\)) # (!\REMAINDER[0]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => A(1),
	datab => \sign_D~q\,
	datad => VCC,
	cin => \REMAINDER[0]~11\,
	combout => \REMAINDER[1]~12_combout\,
	cout => \REMAINDER[1]~13\);

\REMAINDER[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \REMAINDER[1]~12_combout\,
	clrn => \RST_N~input_o\,
	sclr => \ALT_INV_state.SIGNAPPLY~q\,
	ena => \QUOTIENT[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REMAINDER[1]~reg0_q\);

\REMAINDER[2]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \REMAINDER[2]~14_combout\ = (\REMAINDER[1]~13\ & ((A(2) $ (\sign_D~q\)))) # (!\REMAINDER[1]~13\ & (A(2) $ (\sign_D~q\ $ (VCC))))
-- \REMAINDER[2]~15\ = CARRY((!\REMAINDER[1]~13\ & (A(2) $ (\sign_D~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => A(2),
	datab => \sign_D~q\,
	datad => VCC,
	cin => \REMAINDER[1]~13\,
	combout => \REMAINDER[2]~14_combout\,
	cout => \REMAINDER[2]~15\);

\REMAINDER[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \REMAINDER[2]~14_combout\,
	clrn => \RST_N~input_o\,
	sclr => \ALT_INV_state.SIGNAPPLY~q\,
	ena => \QUOTIENT[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REMAINDER[2]~reg0_q\);

\REMAINDER[3]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \REMAINDER[3]~16_combout\ = (\REMAINDER[2]~15\ & (A(3) $ ((!\sign_D~q\)))) # (!\REMAINDER[2]~15\ & ((A(3) $ (\sign_D~q\)) # (GND)))
-- \REMAINDER[3]~17\ = CARRY((A(3) $ (!\sign_D~q\)) # (!\REMAINDER[2]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => A(3),
	datab => \sign_D~q\,
	datad => VCC,
	cin => \REMAINDER[2]~15\,
	combout => \REMAINDER[3]~16_combout\,
	cout => \REMAINDER[3]~17\);

\REMAINDER[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \REMAINDER[3]~16_combout\,
	clrn => \RST_N~input_o\,
	sclr => \ALT_INV_state.SIGNAPPLY~q\,
	ena => \QUOTIENT[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REMAINDER[3]~reg0_q\);

\REMAINDER[4]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \REMAINDER[4]~18_combout\ = (\REMAINDER[3]~17\ & ((A(4) $ (\sign_D~q\)))) # (!\REMAINDER[3]~17\ & (A(4) $ (\sign_D~q\ $ (VCC))))
-- \REMAINDER[4]~19\ = CARRY((!\REMAINDER[3]~17\ & (A(4) $ (\sign_D~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => A(4),
	datab => \sign_D~q\,
	datad => VCC,
	cin => \REMAINDER[3]~17\,
	combout => \REMAINDER[4]~18_combout\,
	cout => \REMAINDER[4]~19\);

\REMAINDER[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \REMAINDER[4]~18_combout\,
	clrn => \RST_N~input_o\,
	sclr => \ALT_INV_state.SIGNAPPLY~q\,
	ena => \QUOTIENT[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REMAINDER[4]~reg0_q\);

\REMAINDER[5]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \REMAINDER[5]~20_combout\ = (\REMAINDER[4]~19\ & (A(5) $ ((!\sign_D~q\)))) # (!\REMAINDER[4]~19\ & ((A(5) $ (\sign_D~q\)) # (GND)))
-- \REMAINDER[5]~21\ = CARRY((A(5) $ (!\sign_D~q\)) # (!\REMAINDER[4]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => A(5),
	datab => \sign_D~q\,
	datad => VCC,
	cin => \REMAINDER[4]~19\,
	combout => \REMAINDER[5]~20_combout\,
	cout => \REMAINDER[5]~21\);

\REMAINDER[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \REMAINDER[5]~20_combout\,
	clrn => \RST_N~input_o\,
	sclr => \ALT_INV_state.SIGNAPPLY~q\,
	ena => \QUOTIENT[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REMAINDER[5]~reg0_q\);

\REMAINDER[6]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \REMAINDER[6]~22_combout\ = (\REMAINDER[5]~21\ & ((A(6) $ (\sign_D~q\)))) # (!\REMAINDER[5]~21\ & (A(6) $ (\sign_D~q\ $ (VCC))))
-- \REMAINDER[6]~23\ = CARRY((!\REMAINDER[5]~21\ & (A(6) $ (\sign_D~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => A(6),
	datab => \sign_D~q\,
	datad => VCC,
	cin => \REMAINDER[5]~21\,
	combout => \REMAINDER[6]~22_combout\,
	cout => \REMAINDER[6]~23\);

\REMAINDER[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \REMAINDER[6]~22_combout\,
	clrn => \RST_N~input_o\,
	sclr => \ALT_INV_state.SIGNAPPLY~q\,
	ena => \QUOTIENT[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REMAINDER[6]~reg0_q\);

\REMAINDER[7]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \REMAINDER[7]~24_combout\ = (\REMAINDER[6]~23\ & (A(7) $ ((!\sign_D~q\)))) # (!\REMAINDER[6]~23\ & ((A(7) $ (\sign_D~q\)) # (GND)))
-- \REMAINDER[7]~25\ = CARRY((A(7) $ (!\sign_D~q\)) # (!\REMAINDER[6]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => A(7),
	datab => \sign_D~q\,
	datad => VCC,
	cin => \REMAINDER[6]~23\,
	combout => \REMAINDER[7]~24_combout\,
	cout => \REMAINDER[7]~25\);

\REMAINDER[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \REMAINDER[7]~24_combout\,
	clrn => \RST_N~input_o\,
	sclr => \ALT_INV_state.SIGNAPPLY~q\,
	ena => \QUOTIENT[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REMAINDER[7]~reg0_q\);

\REMAINDER[8]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \REMAINDER[8]~26_combout\ = (\REMAINDER[7]~25\ & ((A(8) $ (\sign_D~q\)))) # (!\REMAINDER[7]~25\ & (A(8) $ (\sign_D~q\ $ (VCC))))
-- \REMAINDER[8]~27\ = CARRY((!\REMAINDER[7]~25\ & (A(8) $ (\sign_D~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => A(8),
	datab => \sign_D~q\,
	datad => VCC,
	cin => \REMAINDER[7]~25\,
	combout => \REMAINDER[8]~26_combout\,
	cout => \REMAINDER[8]~27\);

\REMAINDER[8]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \REMAINDER[8]~26_combout\,
	clrn => \RST_N~input_o\,
	sclr => \ALT_INV_state.SIGNAPPLY~q\,
	ena => \QUOTIENT[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REMAINDER[8]~reg0_q\);

\REMAINDER[9]~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \REMAINDER[9]~28_combout\ = A(9) $ (\sign_D~q\ $ (\REMAINDER[8]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => A(9),
	datab => \sign_D~q\,
	cin => \REMAINDER[8]~27\,
	combout => \REMAINDER[9]~28_combout\);

\REMAINDER[9]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \REMAINDER[9]~28_combout\,
	clrn => \RST_N~input_o\,
	sclr => \ALT_INV_state.SIGNAPPLY~q\,
	ena => \QUOTIENT[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REMAINDER[9]~reg0_q\);

\Selector0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = (\error_flag~q\ & ((\state.CHECK_ZERO~q\) # ((\state.IDLE~q\)))) # (!\error_flag~q\ & (\state.CHECK_ZERO~q\ & ((!\Equal0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \error_flag~q\,
	datab => \state.CHECK_ZERO~q\,
	datac => \state.IDLE~q\,
	datad => \Equal0~2_combout\,
	combout => \Selector0~0_combout\);

error_flag : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \Selector0~0_combout\,
	clrn => \RST_N~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \error_flag~q\);

ww_QUOTIENT(0) <= \QUOTIENT[0]~output_o\;

ww_QUOTIENT(1) <= \QUOTIENT[1]~output_o\;

ww_QUOTIENT(2) <= \QUOTIENT[2]~output_o\;

ww_QUOTIENT(3) <= \QUOTIENT[3]~output_o\;

ww_QUOTIENT(4) <= \QUOTIENT[4]~output_o\;

ww_QUOTIENT(5) <= \QUOTIENT[5]~output_o\;

ww_QUOTIENT(6) <= \QUOTIENT[6]~output_o\;

ww_QUOTIENT(7) <= \QUOTIENT[7]~output_o\;

ww_QUOTIENT(8) <= \QUOTIENT[8]~output_o\;

ww_QUOTIENT(9) <= \QUOTIENT[9]~output_o\;

ww_REMAINDER(0) <= \REMAINDER[0]~output_o\;

ww_REMAINDER(1) <= \REMAINDER[1]~output_o\;

ww_REMAINDER(2) <= \REMAINDER[2]~output_o\;

ww_REMAINDER(3) <= \REMAINDER[3]~output_o\;

ww_REMAINDER(4) <= \REMAINDER[4]~output_o\;

ww_REMAINDER(5) <= \REMAINDER[5]~output_o\;

ww_REMAINDER(6) <= \REMAINDER[6]~output_o\;

ww_REMAINDER(7) <= \REMAINDER[7]~output_o\;

ww_REMAINDER(8) <= \REMAINDER[8]~output_o\;

ww_REMAINDER(9) <= \REMAINDER[9]~output_o\;

ww_ERROR <= \ERROR~output_o\;

ww_DONE <= \DONE~output_o\;
END structure;


