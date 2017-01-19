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

-- DATE "05/30/2016 19:11:14"

-- 
-- Device: Altera 5CSEMA5F31C6 Package FBGA896
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

ENTITY 	show000 IS
    PORT (
	LEDR : OUT std_logic_vector(0 DOWNTO 0);
	SW3 : IN std_logic;
	SW8 : IN std_logic;
	SW2 : IN std_logic;
	SW9 : IN std_logic;
	SW1 : IN std_logic;
	SW0 : IN std_logic
	);
END show000;

-- Design Ports Information
-- LEDR[0]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW0	=>  Location: PIN_AF18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW1	=>  Location: PIN_AE16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW2	=>  Location: PIN_AE17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW3	=>  Location: PIN_AG16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW8	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW9	=>  Location: PIN_AF16,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF show000 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_LEDR : std_logic_vector(0 DOWNTO 0);
SIGNAL ww_SW3 : std_logic;
SIGNAL ww_SW8 : std_logic;
SIGNAL ww_SW2 : std_logic;
SIGNAL ww_SW9 : std_logic;
SIGNAL ww_SW1 : std_logic;
SIGNAL ww_SW0 : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \SW8~input_o\ : std_logic;
SIGNAL \SW2~input_o\ : std_logic;
SIGNAL \SW0~input_o\ : std_logic;
SIGNAL \SW1~input_o\ : std_logic;
SIGNAL \SW3~input_o\ : std_logic;
SIGNAL \SW9~input_o\ : std_logic;
SIGNAL \inst15~0_combout\ : std_logic;
SIGNAL \ALT_INV_SW9~input_o\ : std_logic;
SIGNAL \ALT_INV_SW8~input_o\ : std_logic;
SIGNAL \ALT_INV_SW3~input_o\ : std_logic;
SIGNAL \ALT_INV_SW2~input_o\ : std_logic;
SIGNAL \ALT_INV_SW1~input_o\ : std_logic;
SIGNAL \ALT_INV_SW0~input_o\ : std_logic;

BEGIN

LEDR <= ww_LEDR;
ww_SW3 <= SW3;
ww_SW8 <= SW8;
ww_SW2 <= SW2;
ww_SW9 <= SW9;
ww_SW1 <= SW1;
ww_SW0 <= SW0;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_SW9~input_o\ <= NOT \SW9~input_o\;
\ALT_INV_SW8~input_o\ <= NOT \SW8~input_o\;
\ALT_INV_SW3~input_o\ <= NOT \SW3~input_o\;
\ALT_INV_SW2~input_o\ <= NOT \SW2~input_o\;
\ALT_INV_SW1~input_o\ <= NOT \SW1~input_o\;
\ALT_INV_SW0~input_o\ <= NOT \SW0~input_o\;

-- Location: IOOBUF_X52_Y0_N2
\LEDR[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst15~0_combout\,
	devoe => ww_devoe,
	o => ww_LEDR(0));

-- Location: IOIBUF_X52_Y0_N18
\SW8~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW8,
	o => \SW8~input_o\);

-- Location: IOIBUF_X50_Y0_N41
\SW2~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW2,
	o => \SW2~input_o\);

-- Location: IOIBUF_X50_Y0_N58
\SW0~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW0,
	o => \SW0~input_o\);

-- Location: IOIBUF_X52_Y0_N35
\SW1~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW1,
	o => \SW1~input_o\);

-- Location: IOIBUF_X50_Y0_N75
\SW3~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW3,
	o => \SW3~input_o\);

-- Location: IOIBUF_X52_Y0_N52
\SW9~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW9,
	o => \SW9~input_o\);

-- Location: MLABCELL_X52_Y1_N30
\inst15~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst15~0_combout\ = ( \SW3~input_o\ & ( \SW9~input_o\ & ( (\SW2~input_o\) # (\SW8~input_o\) ) ) ) # ( !\SW3~input_o\ & ( \SW9~input_o\ & ( (!\SW8~input_o\ & \SW2~input_o\) ) ) ) # ( \SW3~input_o\ & ( !\SW9~input_o\ & ( (!\SW8~input_o\ & (\SW0~input_o\)) 
-- # (\SW8~input_o\ & ((\SW1~input_o\))) ) ) ) # ( !\SW3~input_o\ & ( !\SW9~input_o\ & ( (!\SW8~input_o\ & (\SW0~input_o\)) # (\SW8~input_o\ & ((\SW1~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001011111000010100101111100100010001000100111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW8~input_o\,
	datab => \ALT_INV_SW2~input_o\,
	datac => \ALT_INV_SW0~input_o\,
	datad => \ALT_INV_SW1~input_o\,
	datae => \ALT_INV_SW3~input_o\,
	dataf => \ALT_INV_SW9~input_o\,
	combout => \inst15~0_combout\);

-- Location: LABCELL_X10_Y69_N0
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


