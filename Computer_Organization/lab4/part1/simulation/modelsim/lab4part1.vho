-- Copyright (C) 1991-2015 Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus II License Agreement,
-- the Altera MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Altera and sold by Altera or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 15.0.0 Build 145 04/22/2015 SJ Full Version"

-- DATE "06/27/2016 19:22:07"

-- 
-- Device: Altera 5CSEMA5F31C6 Package FBGA896
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	lab4part1 IS
    PORT (
	SW : IN std_logic_vector(9 DOWNTO 0);
	KEY : IN std_logic_vector(3 DOWNTO 0);
	HEX0 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX1 : BUFFER std_logic_vector(6 DOWNTO 0)
	);
END lab4part1;

-- Design Ports Information
-- SW[2]	=>  Location: PIN_AF9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_AF10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_AD11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_AD12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_AE11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_AC9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_AD10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_AE12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_W15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[0]	=>  Location: PIN_AE26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[1]	=>  Location: PIN_AE27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[2]	=>  Location: PIN_AE28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[3]	=>  Location: PIN_AG27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[4]	=>  Location: PIN_AF28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[5]	=>  Location: PIN_AG28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[6]	=>  Location: PIN_AH28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[0]	=>  Location: PIN_AJ29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[1]	=>  Location: PIN_AH29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[2]	=>  Location: PIN_AH30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[3]	=>  Location: PIN_AG30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[4]	=>  Location: PIN_AF29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[5]	=>  Location: PIN_AF30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[6]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_AC12,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF lab4part1 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_SW : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_KEY : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \KEY[0]~inputCLKENA0_outclk\ : std_logic;
SIGNAL \c1|count[0]~0_combout\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \c1|Add0~9_sumout\ : std_logic;
SIGNAL \c1|Add0~10\ : std_logic;
SIGNAL \c1|Add0~1_sumout\ : std_logic;
SIGNAL \c1|Add0~2\ : std_logic;
SIGNAL \c1|Add0~5_sumout\ : std_logic;
SIGNAL \h0|out0~0_combout\ : std_logic;
SIGNAL \h0|out1~0_combout\ : std_logic;
SIGNAL \h0|out2~0_combout\ : std_logic;
SIGNAL \h0|out3~combout\ : std_logic;
SIGNAL \h0|out4~0_combout\ : std_logic;
SIGNAL \h0|out5~0_combout\ : std_logic;
SIGNAL \h0|out6~combout\ : std_logic;
SIGNAL \c1|Add0~6\ : std_logic;
SIGNAL \c1|Add0~25_sumout\ : std_logic;
SIGNAL \c1|Add0~26\ : std_logic;
SIGNAL \c1|Add0~17_sumout\ : std_logic;
SIGNAL \c1|Add0~18\ : std_logic;
SIGNAL \c1|Add0~21_sumout\ : std_logic;
SIGNAL \c1|Add0~22\ : std_logic;
SIGNAL \c1|Add0~13_sumout\ : std_logic;
SIGNAL \h1|out0~0_combout\ : std_logic;
SIGNAL \h1|out1~0_combout\ : std_logic;
SIGNAL \h1|out2~0_combout\ : std_logic;
SIGNAL \h1|out3~combout\ : std_logic;
SIGNAL \h1|out4~0_combout\ : std_logic;
SIGNAL \h1|out5~0_combout\ : std_logic;
SIGNAL \h1|out6~combout\ : std_logic;
SIGNAL \c1|count\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \c1|ALT_INV_count\ : std_logic_vector(7 DOWNTO 0);

BEGIN

ww_SW <= SW;
ww_KEY <= KEY;
HEX0 <= ww_HEX0;
HEX1 <= ww_HEX1;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\c1|ALT_INV_count\(4) <= NOT \c1|count\(4);
\c1|ALT_INV_count\(6) <= NOT \c1|count\(6);
\c1|ALT_INV_count\(5) <= NOT \c1|count\(5);
\c1|ALT_INV_count\(7) <= NOT \c1|count\(7);
\c1|ALT_INV_count\(1) <= NOT \c1|count\(1);
\c1|ALT_INV_count\(3) <= NOT \c1|count\(3);
\c1|ALT_INV_count\(2) <= NOT \c1|count\(2);
\c1|ALT_INV_count\(0) <= NOT \c1|count\(0);

-- Location: IOOBUF_X89_Y8_N39
\HEX0[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \h0|out0~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(0));

-- Location: IOOBUF_X89_Y11_N79
\HEX0[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \h0|out1~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(1));

-- Location: IOOBUF_X89_Y11_N96
\HEX0[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \h0|out2~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(2));

-- Location: IOOBUF_X89_Y4_N79
\HEX0[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \h0|out3~combout\,
	devoe => ww_devoe,
	o => ww_HEX0(3));

-- Location: IOOBUF_X89_Y13_N56
\HEX0[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \h0|out4~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(4));

-- Location: IOOBUF_X89_Y13_N39
\HEX0[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \h0|out5~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(5));

-- Location: IOOBUF_X89_Y4_N96
\HEX0[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \h0|out6~combout\,
	devoe => ww_devoe,
	o => ww_HEX0(6));

-- Location: IOOBUF_X89_Y6_N39
\HEX1[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \h1|out0~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(0));

-- Location: IOOBUF_X89_Y6_N56
\HEX1[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \h1|out1~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(1));

-- Location: IOOBUF_X89_Y16_N39
\HEX1[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \h1|out2~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(2));

-- Location: IOOBUF_X89_Y16_N56
\HEX1[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \h1|out3~combout\,
	devoe => ww_devoe,
	o => ww_HEX1(3));

-- Location: IOOBUF_X89_Y15_N39
\HEX1[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \h1|out4~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(4));

-- Location: IOOBUF_X89_Y15_N56
\HEX1[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \h1|out5~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(5));

-- Location: IOOBUF_X89_Y8_N56
\HEX1[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \h1|out6~combout\,
	devoe => ww_devoe,
	o => ww_HEX1(6));

-- Location: IOIBUF_X36_Y0_N1
\KEY[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

-- Location: CLKCTRL_G6
\KEY[0]~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \KEY[0]~input_o\,
	outclk => \KEY[0]~inputCLKENA0_outclk\);

-- Location: MLABCELL_X87_Y12_N24
\c1|count[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \c1|count[0]~0_combout\ = ( !\c1|count\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \c1|ALT_INV_count\(0),
	combout => \c1|count[0]~0_combout\);

-- Location: IOIBUF_X12_Y0_N18
\SW[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: IOIBUF_X16_Y0_N1
\SW[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

-- Location: FF_X87_Y12_N26
\c1|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \c1|count[0]~0_combout\,
	clrn => \SW[0]~input_o\,
	ena => \SW[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c1|count\(0));

-- Location: MLABCELL_X87_Y12_N0
\c1|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \c1|Add0~9_sumout\ = SUM(( \c1|count\(1) ) + ( \c1|count\(0) ) + ( !VCC ))
-- \c1|Add0~10\ = CARRY(( \c1|count\(1) ) + ( \c1|count\(0) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \c1|ALT_INV_count\(0),
	datad => \c1|ALT_INV_count\(1),
	cin => GND,
	sumout => \c1|Add0~9_sumout\,
	cout => \c1|Add0~10\);

-- Location: FF_X87_Y12_N2
\c1|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \c1|Add0~9_sumout\,
	clrn => \SW[0]~input_o\,
	ena => \SW[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c1|count\(1));

-- Location: MLABCELL_X87_Y12_N3
\c1|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \c1|Add0~1_sumout\ = SUM(( \c1|count\(2) ) + ( GND ) + ( \c1|Add0~10\ ))
-- \c1|Add0~2\ = CARRY(( \c1|count\(2) ) + ( GND ) + ( \c1|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \c1|ALT_INV_count\(2),
	cin => \c1|Add0~10\,
	sumout => \c1|Add0~1_sumout\,
	cout => \c1|Add0~2\);

-- Location: FF_X87_Y12_N5
\c1|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \c1|Add0~1_sumout\,
	clrn => \SW[0]~input_o\,
	ena => \SW[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c1|count\(2));

-- Location: MLABCELL_X87_Y12_N6
\c1|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \c1|Add0~5_sumout\ = SUM(( \c1|count\(3) ) + ( GND ) + ( \c1|Add0~2\ ))
-- \c1|Add0~6\ = CARRY(( \c1|count\(3) ) + ( GND ) + ( \c1|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \c1|ALT_INV_count\(3),
	cin => \c1|Add0~2\,
	sumout => \c1|Add0~5_sumout\,
	cout => \c1|Add0~6\);

-- Location: FF_X87_Y12_N8
\c1|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \c1|Add0~5_sumout\,
	clrn => \SW[0]~input_o\,
	ena => \SW[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c1|count\(3));

-- Location: MLABCELL_X87_Y12_N45
\h0|out0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \h0|out0~0_combout\ = ( \c1|count\(1) & ( \c1|count\(0) & ( (!\c1|count\(2) & \c1|count\(3)) ) ) ) # ( !\c1|count\(1) & ( \c1|count\(0) & ( !\c1|count\(2) $ (\c1|count\(3)) ) ) ) # ( !\c1|count\(1) & ( !\c1|count\(0) & ( (\c1|count\(2) & !\c1|count\(3)) ) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000000000000000000010100101101001010000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \c1|ALT_INV_count\(2),
	datac => \c1|ALT_INV_count\(3),
	datae => \c1|ALT_INV_count\(1),
	dataf => \c1|ALT_INV_count\(0),
	combout => \h0|out0~0_combout\);

-- Location: MLABCELL_X87_Y12_N30
\h0|out1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \h0|out1~0_combout\ = ( \c1|count\(0) & ( (!\c1|count\(1) & (!\c1|count\(3) & \c1|count\(2))) # (\c1|count\(1) & (\c1|count\(3))) ) ) # ( !\c1|count\(0) & ( (\c1|count\(2) & ((\c1|count\(3)) # (\c1|count\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011100000111000001110000011100011001000110010001100100011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \c1|ALT_INV_count\(1),
	datab => \c1|ALT_INV_count\(3),
	datac => \c1|ALT_INV_count\(2),
	dataf => \c1|ALT_INV_count\(0),
	combout => \h0|out1~0_combout\);

-- Location: MLABCELL_X87_Y12_N39
\h0|out2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \h0|out2~0_combout\ = ( \c1|count\(1) & ( \c1|count\(0) & ( (\c1|count\(2) & \c1|count\(3)) ) ) ) # ( \c1|count\(1) & ( !\c1|count\(0) & ( !\c1|count\(2) $ (\c1|count\(3)) ) ) ) # ( !\c1|count\(1) & ( !\c1|count\(0) & ( (\c1|count\(2) & \c1|count\(3)) ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101101001011010010100000000000000000000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \c1|ALT_INV_count\(2),
	datac => \c1|ALT_INV_count\(3),
	datae => \c1|ALT_INV_count\(1),
	dataf => \c1|ALT_INV_count\(0),
	combout => \h0|out2~0_combout\);

-- Location: MLABCELL_X87_Y12_N48
\h0|out3\ : cyclonev_lcell_comb
-- Equation(s):
-- \h0|out3~combout\ = ( \c1|count\(0) & ( (!\c1|count\(1) & (!\c1|count\(3) & !\c1|count\(2))) # (\c1|count\(1) & ((\c1|count\(2)))) ) ) # ( !\c1|count\(0) & ( (!\c1|count\(1) & (!\c1|count\(3) & \c1|count\(2))) # (\c1|count\(1) & (\c1|count\(3) & 
-- !\c1|count\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001100000011000000110000001100010000101100001011000010110000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \c1|ALT_INV_count\(1),
	datab => \c1|ALT_INV_count\(3),
	datac => \c1|ALT_INV_count\(2),
	dataf => \c1|ALT_INV_count\(0),
	combout => \h0|out3~combout\);

-- Location: MLABCELL_X87_Y12_N51
\h0|out4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \h0|out4~0_combout\ = ( \c1|count\(0) & ( (!\c1|count\(3)) # ((!\c1|count\(1) & !\c1|count\(2))) ) ) # ( !\c1|count\(0) & ( (!\c1|count\(1) & (!\c1|count\(3) & \c1|count\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010001000000000001000100011101110110011001110111011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \c1|ALT_INV_count\(1),
	datab => \c1|ALT_INV_count\(3),
	datad => \c1|ALT_INV_count\(2),
	dataf => \c1|ALT_INV_count\(0),
	combout => \h0|out4~0_combout\);

-- Location: MLABCELL_X87_Y12_N54
\h0|out5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \h0|out5~0_combout\ = ( \c1|count\(0) & ( !\c1|count\(3) $ (((!\c1|count\(1) & \c1|count\(2)))) ) ) # ( !\c1|count\(0) & ( (!\c1|count\(3) & (\c1|count\(1) & !\c1|count\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000000000000011000000000011001100001111001100110000111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \c1|ALT_INV_count\(3),
	datac => \c1|ALT_INV_count\(1),
	datad => \c1|ALT_INV_count\(2),
	dataf => \c1|ALT_INV_count\(0),
	combout => \h0|out5~0_combout\);

-- Location: MLABCELL_X87_Y12_N57
\h0|out6\ : cyclonev_lcell_comb
-- Equation(s):
-- \h0|out6~combout\ = ( \c1|count\(0) & ( (!\c1|count\(3) & (!\c1|count\(1) $ (\c1|count\(2)))) ) ) # ( !\c1|count\(0) & ( (!\c1|count\(1) & (!\c1|count\(3) $ (\c1|count\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100000100010100010000010001010001000010001001000100001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \c1|ALT_INV_count\(1),
	datab => \c1|ALT_INV_count\(3),
	datad => \c1|ALT_INV_count\(2),
	dataf => \c1|ALT_INV_count\(0),
	combout => \h0|out6~combout\);

-- Location: MLABCELL_X87_Y12_N9
\c1|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \c1|Add0~25_sumout\ = SUM(( \c1|count\(4) ) + ( GND ) + ( \c1|Add0~6\ ))
-- \c1|Add0~26\ = CARRY(( \c1|count\(4) ) + ( GND ) + ( \c1|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \c1|ALT_INV_count\(4),
	cin => \c1|Add0~6\,
	sumout => \c1|Add0~25_sumout\,
	cout => \c1|Add0~26\);

-- Location: FF_X87_Y12_N11
\c1|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \c1|Add0~25_sumout\,
	clrn => \SW[0]~input_o\,
	ena => \SW[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c1|count\(4));

-- Location: MLABCELL_X87_Y12_N12
\c1|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \c1|Add0~17_sumout\ = SUM(( \c1|count\(5) ) + ( GND ) + ( \c1|Add0~26\ ))
-- \c1|Add0~18\ = CARRY(( \c1|count\(5) ) + ( GND ) + ( \c1|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \c1|ALT_INV_count\(5),
	cin => \c1|Add0~26\,
	sumout => \c1|Add0~17_sumout\,
	cout => \c1|Add0~18\);

-- Location: FF_X87_Y12_N14
\c1|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \c1|Add0~17_sumout\,
	clrn => \SW[0]~input_o\,
	ena => \SW[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c1|count\(5));

-- Location: MLABCELL_X87_Y12_N15
\c1|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \c1|Add0~21_sumout\ = SUM(( \c1|count\(6) ) + ( GND ) + ( \c1|Add0~18\ ))
-- \c1|Add0~22\ = CARRY(( \c1|count\(6) ) + ( GND ) + ( \c1|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \c1|ALT_INV_count\(6),
	cin => \c1|Add0~18\,
	sumout => \c1|Add0~21_sumout\,
	cout => \c1|Add0~22\);

-- Location: FF_X87_Y12_N17
\c1|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \c1|Add0~21_sumout\,
	clrn => \SW[0]~input_o\,
	ena => \SW[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c1|count\(6));

-- Location: MLABCELL_X87_Y12_N18
\c1|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \c1|Add0~13_sumout\ = SUM(( \c1|count\(7) ) + ( GND ) + ( \c1|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \c1|ALT_INV_count\(7),
	cin => \c1|Add0~22\,
	sumout => \c1|Add0~13_sumout\);

-- Location: FF_X87_Y12_N20
\c1|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \c1|Add0~13_sumout\,
	clrn => \SW[0]~input_o\,
	ena => \SW[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c1|count\(7));

-- Location: LABCELL_X88_Y12_N0
\h1|out0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \h1|out0~0_combout\ = ( !\c1|count\(5) & ( \c1|count\(6) & ( !\c1|count\(4) $ (\c1|count\(7)) ) ) ) # ( \c1|count\(5) & ( !\c1|count\(6) & ( (\c1|count\(4) & \c1|count\(7)) ) ) ) # ( !\c1|count\(5) & ( !\c1|count\(6) & ( (\c1|count\(4) & !\c1|count\(7)) ) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000000000110000001111000011110000110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \c1|ALT_INV_count\(4),
	datac => \c1|ALT_INV_count\(7),
	datae => \c1|ALT_INV_count\(5),
	dataf => \c1|ALT_INV_count\(6),
	combout => \h1|out0~0_combout\);

-- Location: LABCELL_X88_Y12_N57
\h1|out1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \h1|out1~0_combout\ = ( \c1|count\(5) & ( \c1|count\(6) & ( (!\c1|count\(4)) # (\c1|count\(7)) ) ) ) # ( !\c1|count\(5) & ( \c1|count\(6) & ( !\c1|count\(7) $ (!\c1|count\(4)) ) ) ) # ( \c1|count\(5) & ( !\c1|count\(6) & ( (\c1|count\(7) & \c1|count\(4)) 
-- ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010000010101011010010110101111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \c1|ALT_INV_count\(7),
	datac => \c1|ALT_INV_count\(4),
	datae => \c1|ALT_INV_count\(5),
	dataf => \c1|ALT_INV_count\(6),
	combout => \h1|out1~0_combout\);

-- Location: LABCELL_X88_Y12_N36
\h1|out2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \h1|out2~0_combout\ = ( \c1|count\(5) & ( \c1|count\(6) & ( \c1|count\(7) ) ) ) # ( !\c1|count\(5) & ( \c1|count\(6) & ( (!\c1|count\(4) & \c1|count\(7)) ) ) ) # ( \c1|count\(5) & ( !\c1|count\(6) & ( (!\c1|count\(4) & !\c1|count\(7)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110000001100000000001100000011000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \c1|ALT_INV_count\(4),
	datac => \c1|ALT_INV_count\(7),
	datae => \c1|ALT_INV_count\(5),
	dataf => \c1|ALT_INV_count\(6),
	combout => \h1|out2~0_combout\);

-- Location: LABCELL_X88_Y12_N45
\h1|out3\ : cyclonev_lcell_comb
-- Equation(s):
-- \h1|out3~combout\ = ( \c1|count\(5) & ( \c1|count\(6) & ( \c1|count\(4) ) ) ) # ( !\c1|count\(5) & ( \c1|count\(6) & ( (!\c1|count\(7) & !\c1|count\(4)) ) ) ) # ( \c1|count\(5) & ( !\c1|count\(6) & ( (\c1|count\(7) & !\c1|count\(4)) ) ) ) # ( 
-- !\c1|count\(5) & ( !\c1|count\(6) & ( (!\c1|count\(7) & \c1|count\(4)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010010100000101000010100000101000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \c1|ALT_INV_count\(7),
	datac => \c1|ALT_INV_count\(4),
	datae => \c1|ALT_INV_count\(5),
	dataf => \c1|ALT_INV_count\(6),
	combout => \h1|out3~combout\);

-- Location: LABCELL_X88_Y12_N15
\h1|out4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \h1|out4~0_combout\ = ( \c1|count\(5) & ( \c1|count\(6) & ( (!\c1|count\(7) & \c1|count\(4)) ) ) ) # ( !\c1|count\(5) & ( \c1|count\(6) & ( !\c1|count\(7) ) ) ) # ( \c1|count\(5) & ( !\c1|count\(6) & ( (!\c1|count\(7) & \c1|count\(4)) ) ) ) # ( 
-- !\c1|count\(5) & ( !\c1|count\(6) & ( \c1|count\(4) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000010100000101010101010101010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \c1|ALT_INV_count\(7),
	datac => \c1|ALT_INV_count\(4),
	datae => \c1|ALT_INV_count\(5),
	dataf => \c1|ALT_INV_count\(6),
	combout => \h1|out4~0_combout\);

-- Location: LABCELL_X88_Y12_N30
\h1|out5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \h1|out5~0_combout\ = ( \c1|count\(5) & ( \c1|count\(6) & ( (\c1|count\(4) & !\c1|count\(7)) ) ) ) # ( !\c1|count\(5) & ( \c1|count\(6) & ( (\c1|count\(4) & \c1|count\(7)) ) ) ) # ( \c1|count\(5) & ( !\c1|count\(6) & ( !\c1|count\(7) ) ) ) # ( 
-- !\c1|count\(5) & ( !\c1|count\(6) & ( (\c1|count\(4) & !\c1|count\(7)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000111100001111000000000011000000110011000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \c1|ALT_INV_count\(4),
	datac => \c1|ALT_INV_count\(7),
	datae => \c1|ALT_INV_count\(5),
	dataf => \c1|ALT_INV_count\(6),
	combout => \h1|out5~0_combout\);

-- Location: LABCELL_X88_Y12_N48
\h1|out6\ : cyclonev_lcell_comb
-- Equation(s):
-- \h1|out6~combout\ = ( \c1|count\(5) & ( \c1|count\(6) & ( (\c1|count\(4) & !\c1|count\(7)) ) ) ) # ( !\c1|count\(5) & ( \c1|count\(6) & ( (!\c1|count\(4) & \c1|count\(7)) ) ) ) # ( !\c1|count\(5) & ( !\c1|count\(6) & ( !\c1|count\(7) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000000000000000000000001100000011000011000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \c1|ALT_INV_count\(4),
	datac => \c1|ALT_INV_count\(7),
	datae => \c1|ALT_INV_count\(5),
	dataf => \c1|ALT_INV_count\(6),
	combout => \h1|out6~combout\);

-- Location: IOIBUF_X8_Y0_N35
\SW[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

-- Location: IOIBUF_X4_Y0_N52
\SW[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

-- Location: IOIBUF_X2_Y0_N41
\SW[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(4),
	o => \SW[4]~input_o\);

-- Location: IOIBUF_X16_Y0_N18
\SW[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(5),
	o => \SW[5]~input_o\);

-- Location: IOIBUF_X4_Y0_N35
\SW[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(6),
	o => \SW[6]~input_o\);

-- Location: IOIBUF_X4_Y0_N1
\SW[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(7),
	o => \SW[7]~input_o\);

-- Location: IOIBUF_X4_Y0_N18
\SW[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(8),
	o => \SW[8]~input_o\);

-- Location: IOIBUF_X2_Y0_N58
\SW[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(9),
	o => \SW[9]~input_o\);

-- Location: IOIBUF_X36_Y0_N18
\KEY[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

-- Location: IOIBUF_X40_Y0_N1
\KEY[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(2),
	o => \KEY[2]~input_o\);

-- Location: IOIBUF_X40_Y0_N18
\KEY[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(3),
	o => \KEY[3]~input_o\);

-- Location: LABCELL_X42_Y57_N0
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


