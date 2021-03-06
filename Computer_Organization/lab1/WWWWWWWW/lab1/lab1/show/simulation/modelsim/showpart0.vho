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

-- DATE "05/30/2016 18:38:10"

-- 
-- Device: Altera 5CSEMA6F31C6 Package FBGA896
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	showpart0 IS
    PORT (
	m : OUT std_logic;
	x : IN std_logic;
	s0 : IN std_logic;
	w : IN std_logic;
	s1 : IN std_logic;
	v : IN std_logic;
	u : IN std_logic
	);
END showpart0;

-- Design Ports Information
-- m	=>  Location: PIN_Y26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- u	=>  Location: PIN_AC30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- v	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w	=>  Location: PIN_AE29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x	=>  Location: PIN_AD29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s0	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s1	=>  Location: PIN_Y27,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF showpart0 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_m : std_logic;
SIGNAL ww_x : std_logic;
SIGNAL ww_s0 : std_logic;
SIGNAL ww_w : std_logic;
SIGNAL ww_s1 : std_logic;
SIGNAL ww_v : std_logic;
SIGNAL ww_u : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \v~input_o\ : std_logic;
SIGNAL \w~input_o\ : std_logic;
SIGNAL \x~input_o\ : std_logic;
SIGNAL \s1~input_o\ : std_logic;
SIGNAL \u~input_o\ : std_logic;
SIGNAL \s0~input_o\ : std_logic;
SIGNAL \inst15~0_combout\ : std_logic;
SIGNAL \ALT_INV_s1~input_o\ : std_logic;
SIGNAL \ALT_INV_s0~input_o\ : std_logic;
SIGNAL \ALT_INV_x~input_o\ : std_logic;
SIGNAL \ALT_INV_w~input_o\ : std_logic;
SIGNAL \ALT_INV_v~input_o\ : std_logic;
SIGNAL \ALT_INV_u~input_o\ : std_logic;

BEGIN

m <= ww_m;
ww_x <= x;
ww_s0 <= s0;
ww_w <= w;
ww_s1 <= s1;
ww_v <= v;
ww_u <= u;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_s1~input_o\ <= NOT \s1~input_o\;
\ALT_INV_s0~input_o\ <= NOT \s0~input_o\;
\ALT_INV_x~input_o\ <= NOT \x~input_o\;
\ALT_INV_w~input_o\ <= NOT \w~input_o\;
\ALT_INV_v~input_o\ <= NOT \v~input_o\;
\ALT_INV_u~input_o\ <= NOT \u~input_o\;

-- Location: IOOBUF_X89_Y25_N5
\m~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst15~0_combout\,
	devoe => ww_devoe,
	o => ww_m);

-- Location: IOIBUF_X89_Y23_N21
\v~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_v,
	o => \v~input_o\);

-- Location: IOIBUF_X89_Y23_N38
\w~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w,
	o => \w~input_o\);

-- Location: IOIBUF_X89_Y23_N55
\x~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x,
	o => \x~input_o\);

-- Location: IOIBUF_X89_Y25_N21
\s1~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s1,
	o => \s1~input_o\);

-- Location: IOIBUF_X89_Y25_N55
\u~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_u,
	o => \u~input_o\);

-- Location: IOIBUF_X89_Y23_N4
\s0~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s0,
	o => \s0~input_o\);

-- Location: LABCELL_X88_Y23_N0
\inst15~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst15~0_combout\ = ( \u~input_o\ & ( \s0~input_o\ & ( (!\s1~input_o\ & (\v~input_o\)) # (\s1~input_o\ & ((\x~input_o\))) ) ) ) # ( !\u~input_o\ & ( \s0~input_o\ & ( (!\s1~input_o\ & (\v~input_o\)) # (\s1~input_o\ & ((\x~input_o\))) ) ) ) # ( \u~input_o\ 
-- & ( !\s0~input_o\ & ( (!\s1~input_o\) # (\w~input_o\) ) ) ) # ( !\u~input_o\ & ( !\s0~input_o\ & ( (\w~input_o\ & \s1~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011111111110011001101010101000011110101010100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_v~input_o\,
	datab => \ALT_INV_w~input_o\,
	datac => \ALT_INV_x~input_o\,
	datad => \ALT_INV_s1~input_o\,
	datae => \ALT_INV_u~input_o\,
	dataf => \ALT_INV_s0~input_o\,
	combout => \inst15~0_combout\);

-- Location: LABCELL_X18_Y48_N3
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


