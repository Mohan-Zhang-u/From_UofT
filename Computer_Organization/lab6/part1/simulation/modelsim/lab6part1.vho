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

-- DATE "07/11/2016 20:24:27"

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

ENTITY 	lab6part1 IS
    PORT (
	SW : IN std_logic_vector(9 DOWNTO 0);
	KEY : IN std_logic_vector(3 DOWNTO 0);
	HEX0 : OUT std_logic_vector(6 DOWNTO 0);
	HEX2 : OUT std_logic_vector(6 DOWNTO 0);
	HEX4 : OUT std_logic_vector(6 DOWNTO 0);
	HEX5 : OUT std_logic_vector(6 DOWNTO 0)
	);
END lab6part1;

-- Design Ports Information
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
-- HEX2[0]	=>  Location: PIN_AB23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[1]	=>  Location: PIN_AE29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[2]	=>  Location: PIN_AD29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[3]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[4]	=>  Location: PIN_AD30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[5]	=>  Location: PIN_AC29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[6]	=>  Location: PIN_AC30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[0]	=>  Location: PIN_AA24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[1]	=>  Location: PIN_Y23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[2]	=>  Location: PIN_Y24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[3]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[4]	=>  Location: PIN_W24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[5]	=>  Location: PIN_V23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[6]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[0]	=>  Location: PIN_V25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[1]	=>  Location: PIN_AA28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[2]	=>  Location: PIN_Y27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[3]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[4]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[5]	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[6]	=>  Location: PIN_AA25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_AF9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_AC12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_AF10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_AD11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_AE11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_AD12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_AC9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_AD10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_AE12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF lab6part1 IS
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
SIGNAL ww_HEX2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX4 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX5 : std_logic_vector(6 DOWNTO 0);
SIGNAL \r0|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \r0|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \r0|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \KEY[0]~inputCLKENA0_outclk\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \hex0|h0~0_combout\ : std_logic;
SIGNAL \hex0|h1~0_combout\ : std_logic;
SIGNAL \hex0|h2~0_combout\ : std_logic;
SIGNAL \hex0|h3~0_combout\ : std_logic;
SIGNAL \hex0|h4~0_combout\ : std_logic;
SIGNAL \hex0|h5~0_combout\ : std_logic;
SIGNAL \hex0|h6~combout\ : std_logic;
SIGNAL \hex2|h0~0_combout\ : std_logic;
SIGNAL \hex2|h1~0_combout\ : std_logic;
SIGNAL \hex2|h2~0_combout\ : std_logic;
SIGNAL \hex2|h3~0_combout\ : std_logic;
SIGNAL \hex2|h4~0_combout\ : std_logic;
SIGNAL \hex2|h5~0_combout\ : std_logic;
SIGNAL \hex2|h6~combout\ : std_logic;
SIGNAL \hex4|h0~0_combout\ : std_logic;
SIGNAL \hex4|h1~0_combout\ : std_logic;
SIGNAL \hex4|h2~0_combout\ : std_logic;
SIGNAL \hex4|h3~0_combout\ : std_logic;
SIGNAL \hex4|h4~0_combout\ : std_logic;
SIGNAL \hex4|h5~0_combout\ : std_logic;
SIGNAL \hex4|h6~combout\ : std_logic;
SIGNAL \r0|altsyncram_component|auto_generated|q_a\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_SW[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[0]~input_o\ : std_logic;
SIGNAL \r0|altsyncram_component|auto_generated|ALT_INV_q_a\ : std_logic_vector(3 DOWNTO 0);

BEGIN

ww_SW <= SW;
ww_KEY <= KEY;
HEX0 <= ww_HEX0;
HEX2 <= ww_HEX2;
HEX4 <= ww_HEX4;
HEX5 <= ww_HEX5;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\r0|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & \SW[3]~input_o\ & \SW[2]~input_o\ & \SW[1]~input_o\ & \SW[0]~input_o\);

\r0|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\SW[8]~input_o\ & \SW[7]~input_o\ & \SW[6]~input_o\ & \SW[5]~input_o\ & \SW[4]~input_o\);

\r0|altsyncram_component|auto_generated|q_a\(0) <= \r0|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\r0|altsyncram_component|auto_generated|q_a\(1) <= \r0|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\r0|altsyncram_component|auto_generated|q_a\(2) <= \r0|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\r0|altsyncram_component|auto_generated|q_a\(3) <= \r0|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\ALT_INV_SW[7]~input_o\ <= NOT \SW[7]~input_o\;
\ALT_INV_SW[5]~input_o\ <= NOT \SW[5]~input_o\;
\ALT_INV_SW[6]~input_o\ <= NOT \SW[6]~input_o\;
\ALT_INV_SW[4]~input_o\ <= NOT \SW[4]~input_o\;
\ALT_INV_SW[3]~input_o\ <= NOT \SW[3]~input_o\;
\ALT_INV_SW[1]~input_o\ <= NOT \SW[1]~input_o\;
\ALT_INV_SW[2]~input_o\ <= NOT \SW[2]~input_o\;
\ALT_INV_SW[0]~input_o\ <= NOT \SW[0]~input_o\;
\r0|altsyncram_component|auto_generated|ALT_INV_q_a\(1) <= NOT \r0|altsyncram_component|auto_generated|q_a\(1);
\r0|altsyncram_component|auto_generated|ALT_INV_q_a\(2) <= NOT \r0|altsyncram_component|auto_generated|q_a\(2);
\r0|altsyncram_component|auto_generated|ALT_INV_q_a\(3) <= NOT \r0|altsyncram_component|auto_generated|q_a\(3);
\r0|altsyncram_component|auto_generated|ALT_INV_q_a\(0) <= NOT \r0|altsyncram_component|auto_generated|q_a\(0);

-- Location: IOOBUF_X89_Y8_N39
\HEX0[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \hex0|h0~0_combout\,
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
	i => \hex0|h1~0_combout\,
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
	i => \hex0|h2~0_combout\,
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
	i => \hex0|h3~0_combout\,
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
	i => \hex0|h4~0_combout\,
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
	i => \hex0|h5~0_combout\,
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
	i => \hex0|h6~combout\,
	devoe => ww_devoe,
	o => ww_HEX0(6));

-- Location: IOOBUF_X89_Y9_N22
\HEX2[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \hex2|h0~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(0));

-- Location: IOOBUF_X89_Y23_N39
\HEX2[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \hex2|h1~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(1));

-- Location: IOOBUF_X89_Y23_N56
\HEX2[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \hex2|h2~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(2));

-- Location: IOOBUF_X89_Y20_N79
\HEX2[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \hex2|h3~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(3));

-- Location: IOOBUF_X89_Y25_N39
\HEX2[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \hex2|h4~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(4));

-- Location: IOOBUF_X89_Y20_N96
\HEX2[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \hex2|h5~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(5));

-- Location: IOOBUF_X89_Y25_N56
\HEX2[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \hex2|h6~combout\,
	devoe => ww_devoe,
	o => ww_HEX2(6));

-- Location: IOOBUF_X89_Y11_N45
\HEX4[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \hex4|h0~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(0));

-- Location: IOOBUF_X89_Y13_N5
\HEX4[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \hex4|h1~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(1));

-- Location: IOOBUF_X89_Y13_N22
\HEX4[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \hex4|h2~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(2));

-- Location: IOOBUF_X89_Y8_N22
\HEX4[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \hex4|h3~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(3));

-- Location: IOOBUF_X89_Y15_N22
\HEX4[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \hex4|h4~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(4));

-- Location: IOOBUF_X89_Y15_N5
\HEX4[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \hex4|h5~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(5));

-- Location: IOOBUF_X89_Y20_N45
\HEX4[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \hex4|h6~combout\,
	devoe => ww_devoe,
	o => ww_HEX4(6));

-- Location: IOOBUF_X89_Y20_N62
\HEX5[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SW[8]~input_o\,
	devoe => ww_devoe,
	o => ww_HEX5(0));

-- Location: IOOBUF_X89_Y21_N56
\HEX5[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX5(1));

-- Location: IOOBUF_X89_Y25_N22
\HEX5[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX5(2));

-- Location: IOOBUF_X89_Y23_N22
\HEX5[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SW[8]~input_o\,
	devoe => ww_devoe,
	o => ww_HEX5(3));

-- Location: IOOBUF_X89_Y9_N56
\HEX5[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SW[8]~input_o\,
	devoe => ww_devoe,
	o => ww_HEX5(4));

-- Location: IOOBUF_X89_Y23_N5
\HEX5[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SW[8]~input_o\,
	devoe => ww_devoe,
	o => ww_HEX5(5));

-- Location: IOOBUF_X89_Y9_N39
\HEX5[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX5(6));

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

-- Location: M10K_X76_Y11_N0
\r0|altsyncram_component|auto_generated|ram_block1a0\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "ram32x4:r0|altsyncram:altsyncram_component|altsyncram_o9m1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 20,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 4,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_width => 5,
	port_b_data_width => 20,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \SW[9]~input_o\,
	portare => VCC,
	clk0 => \KEY[0]~inputCLKENA0_outclk\,
	portadatain => \r0|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \r0|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \r0|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: LABCELL_X88_Y11_N3
\hex0|h0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \hex0|h0~0_combout\ = ( \r0|altsyncram_component|auto_generated|q_a\(1) & ( \r0|altsyncram_component|auto_generated|q_a\(0) & ( (!\r0|altsyncram_component|auto_generated|q_a\(2) & \r0|altsyncram_component|auto_generated|q_a\(3)) ) ) ) # ( 
-- !\r0|altsyncram_component|auto_generated|q_a\(1) & ( \r0|altsyncram_component|auto_generated|q_a\(0) & ( !\r0|altsyncram_component|auto_generated|q_a\(2) $ (\r0|altsyncram_component|auto_generated|q_a\(3)) ) ) ) # ( 
-- !\r0|altsyncram_component|auto_generated|q_a\(1) & ( !\r0|altsyncram_component|auto_generated|q_a\(0) & ( (\r0|altsyncram_component|auto_generated|q_a\(2) & !\r0|altsyncram_component|auto_generated|q_a\(3)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000000000000000000010100101101001010000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \r0|altsyncram_component|auto_generated|ALT_INV_q_a\(2),
	datac => \r0|altsyncram_component|auto_generated|ALT_INV_q_a\(3),
	datae => \r0|altsyncram_component|auto_generated|ALT_INV_q_a\(1),
	dataf => \r0|altsyncram_component|auto_generated|ALT_INV_q_a\(0),
	combout => \hex0|h0~0_combout\);

-- Location: LABCELL_X88_Y11_N36
\hex0|h1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \hex0|h1~0_combout\ = ( \r0|altsyncram_component|auto_generated|q_a\(1) & ( \r0|altsyncram_component|auto_generated|q_a\(0) & ( \r0|altsyncram_component|auto_generated|q_a\(3) ) ) ) # ( !\r0|altsyncram_component|auto_generated|q_a\(1) & ( 
-- \r0|altsyncram_component|auto_generated|q_a\(0) & ( (!\r0|altsyncram_component|auto_generated|q_a\(3) & \r0|altsyncram_component|auto_generated|q_a\(2)) ) ) ) # ( \r0|altsyncram_component|auto_generated|q_a\(1) & ( 
-- !\r0|altsyncram_component|auto_generated|q_a\(0) & ( \r0|altsyncram_component|auto_generated|q_a\(2) ) ) ) # ( !\r0|altsyncram_component|auto_generated|q_a\(1) & ( !\r0|altsyncram_component|auto_generated|q_a\(0) & ( 
-- (\r0|altsyncram_component|auto_generated|q_a\(3) & \r0|altsyncram_component|auto_generated|q_a\(2)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000011110000111100001100000011000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \r0|altsyncram_component|auto_generated|ALT_INV_q_a\(3),
	datac => \r0|altsyncram_component|auto_generated|ALT_INV_q_a\(2),
	datae => \r0|altsyncram_component|auto_generated|ALT_INV_q_a\(1),
	dataf => \r0|altsyncram_component|auto_generated|ALT_INV_q_a\(0),
	combout => \hex0|h1~0_combout\);

-- Location: LABCELL_X88_Y11_N15
\hex0|h2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \hex0|h2~0_combout\ = ( \r0|altsyncram_component|auto_generated|q_a\(1) & ( \r0|altsyncram_component|auto_generated|q_a\(0) & ( (\r0|altsyncram_component|auto_generated|q_a\(2) & \r0|altsyncram_component|auto_generated|q_a\(3)) ) ) ) # ( 
-- \r0|altsyncram_component|auto_generated|q_a\(1) & ( !\r0|altsyncram_component|auto_generated|q_a\(0) & ( !\r0|altsyncram_component|auto_generated|q_a\(2) $ (\r0|altsyncram_component|auto_generated|q_a\(3)) ) ) ) # ( 
-- !\r0|altsyncram_component|auto_generated|q_a\(1) & ( !\r0|altsyncram_component|auto_generated|q_a\(0) & ( (\r0|altsyncram_component|auto_generated|q_a\(2) & \r0|altsyncram_component|auto_generated|q_a\(3)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101101001011010010100000000000000000000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \r0|altsyncram_component|auto_generated|ALT_INV_q_a\(2),
	datac => \r0|altsyncram_component|auto_generated|ALT_INV_q_a\(3),
	datae => \r0|altsyncram_component|auto_generated|ALT_INV_q_a\(1),
	dataf => \r0|altsyncram_component|auto_generated|ALT_INV_q_a\(0),
	combout => \hex0|h2~0_combout\);

-- Location: LABCELL_X88_Y11_N48
\hex0|h3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \hex0|h3~0_combout\ = ( \r0|altsyncram_component|auto_generated|q_a\(1) & ( \r0|altsyncram_component|auto_generated|q_a\(0) & ( \r0|altsyncram_component|auto_generated|q_a\(2) ) ) ) # ( !\r0|altsyncram_component|auto_generated|q_a\(1) & ( 
-- \r0|altsyncram_component|auto_generated|q_a\(0) & ( (!\r0|altsyncram_component|auto_generated|q_a\(3) & !\r0|altsyncram_component|auto_generated|q_a\(2)) ) ) ) # ( \r0|altsyncram_component|auto_generated|q_a\(1) & ( 
-- !\r0|altsyncram_component|auto_generated|q_a\(0) & ( (\r0|altsyncram_component|auto_generated|q_a\(3) & !\r0|altsyncram_component|auto_generated|q_a\(2)) ) ) ) # ( !\r0|altsyncram_component|auto_generated|q_a\(1) & ( 
-- !\r0|altsyncram_component|auto_generated|q_a\(0) & ( (!\r0|altsyncram_component|auto_generated|q_a\(3) & \r0|altsyncram_component|auto_generated|q_a\(2)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100001100000011000011000000110000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \r0|altsyncram_component|auto_generated|ALT_INV_q_a\(3),
	datac => \r0|altsyncram_component|auto_generated|ALT_INV_q_a\(2),
	datae => \r0|altsyncram_component|auto_generated|ALT_INV_q_a\(1),
	dataf => \r0|altsyncram_component|auto_generated|ALT_INV_q_a\(0),
	combout => \hex0|h3~0_combout\);

-- Location: LABCELL_X88_Y11_N54
\hex0|h4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \hex0|h4~0_combout\ = ( \r0|altsyncram_component|auto_generated|q_a\(1) & ( \r0|altsyncram_component|auto_generated|q_a\(0) & ( !\r0|altsyncram_component|auto_generated|q_a\(3) ) ) ) # ( !\r0|altsyncram_component|auto_generated|q_a\(1) & ( 
-- \r0|altsyncram_component|auto_generated|q_a\(0) & ( (!\r0|altsyncram_component|auto_generated|q_a\(3)) # (!\r0|altsyncram_component|auto_generated|q_a\(2)) ) ) ) # ( !\r0|altsyncram_component|auto_generated|q_a\(1) & ( 
-- !\r0|altsyncram_component|auto_generated|q_a\(0) & ( (!\r0|altsyncram_component|auto_generated|q_a\(3) & \r0|altsyncram_component|auto_generated|q_a\(2)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000000000000000011111100111111001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \r0|altsyncram_component|auto_generated|ALT_INV_q_a\(3),
	datac => \r0|altsyncram_component|auto_generated|ALT_INV_q_a\(2),
	datae => \r0|altsyncram_component|auto_generated|ALT_INV_q_a\(1),
	dataf => \r0|altsyncram_component|auto_generated|ALT_INV_q_a\(0),
	combout => \hex0|h4~0_combout\);

-- Location: LABCELL_X88_Y11_N33
\hex0|h5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \hex0|h5~0_combout\ = ( \r0|altsyncram_component|auto_generated|q_a\(1) & ( \r0|altsyncram_component|auto_generated|q_a\(0) & ( !\r0|altsyncram_component|auto_generated|q_a\(3) ) ) ) # ( !\r0|altsyncram_component|auto_generated|q_a\(1) & ( 
-- \r0|altsyncram_component|auto_generated|q_a\(0) & ( !\r0|altsyncram_component|auto_generated|q_a\(2) $ (\r0|altsyncram_component|auto_generated|q_a\(3)) ) ) ) # ( \r0|altsyncram_component|auto_generated|q_a\(1) & ( 
-- !\r0|altsyncram_component|auto_generated|q_a\(0) & ( (!\r0|altsyncram_component|auto_generated|q_a\(2) & !\r0|altsyncram_component|auto_generated|q_a\(3)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101000001010000010100101101001011111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \r0|altsyncram_component|auto_generated|ALT_INV_q_a\(2),
	datac => \r0|altsyncram_component|auto_generated|ALT_INV_q_a\(3),
	datae => \r0|altsyncram_component|auto_generated|ALT_INV_q_a\(1),
	dataf => \r0|altsyncram_component|auto_generated|ALT_INV_q_a\(0),
	combout => \hex0|h5~0_combout\);

-- Location: LABCELL_X88_Y11_N6
\hex0|h6\ : cyclonev_lcell_comb
-- Equation(s):
-- \hex0|h6~combout\ = ( \r0|altsyncram_component|auto_generated|q_a\(0) & ( (!\r0|altsyncram_component|auto_generated|q_a\(3) & (!\r0|altsyncram_component|auto_generated|q_a\(1) $ (\r0|altsyncram_component|auto_generated|q_a\(2)))) ) ) # ( 
-- !\r0|altsyncram_component|auto_generated|q_a\(0) & ( (!\r0|altsyncram_component|auto_generated|q_a\(1) & (!\r0|altsyncram_component|auto_generated|q_a\(3) $ (\r0|altsyncram_component|auto_generated|q_a\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000110000110000000011000011000000000011001100000000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \r0|altsyncram_component|auto_generated|ALT_INV_q_a\(3),
	datac => \r0|altsyncram_component|auto_generated|ALT_INV_q_a\(1),
	datad => \r0|altsyncram_component|auto_generated|ALT_INV_q_a\(2),
	dataf => \r0|altsyncram_component|auto_generated|ALT_INV_q_a\(0),
	combout => \hex0|h6~combout\);

-- Location: LABCELL_X88_Y11_N9
\hex2|h0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \hex2|h0~0_combout\ = ( \SW[3]~input_o\ & ( (\SW[0]~input_o\ & (!\SW[2]~input_o\ $ (!\SW[1]~input_o\))) ) ) # ( !\SW[3]~input_o\ & ( (!\SW[1]~input_o\ & (!\SW[2]~input_o\ $ (!\SW[0]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101000000000010110100000000000000101000010100000010100001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[2]~input_o\,
	datac => \ALT_INV_SW[0]~input_o\,
	datad => \ALT_INV_SW[1]~input_o\,
	dataf => \ALT_INV_SW[3]~input_o\,
	combout => \hex2|h0~0_combout\);

-- Location: LABCELL_X88_Y11_N42
\hex2|h1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \hex2|h1~0_combout\ = ( \SW[2]~input_o\ & ( (!\SW[1]~input_o\ & (!\SW[0]~input_o\ $ (!\SW[3]~input_o\))) # (\SW[1]~input_o\ & ((!\SW[0]~input_o\) # (\SW[3]~input_o\))) ) ) # ( !\SW[2]~input_o\ & ( (\SW[1]~input_o\ & (\SW[0]~input_o\ & \SW[3]~input_o\)) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010001000000000001000101100110110111010110011011011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[1]~input_o\,
	datab => \ALT_INV_SW[0]~input_o\,
	datad => \ALT_INV_SW[3]~input_o\,
	dataf => \ALT_INV_SW[2]~input_o\,
	combout => \hex2|h1~0_combout\);

-- Location: LABCELL_X88_Y11_N45
\hex2|h2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \hex2|h2~0_combout\ = ( \SW[2]~input_o\ & ( (\SW[3]~input_o\ & ((!\SW[0]~input_o\) # (\SW[1]~input_o\))) ) ) # ( !\SW[2]~input_o\ & ( (\SW[1]~input_o\ & (!\SW[0]~input_o\ & !\SW[3]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000000000010100000000000000000000111101010000000011110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[1]~input_o\,
	datac => \ALT_INV_SW[0]~input_o\,
	datad => \ALT_INV_SW[3]~input_o\,
	dataf => \ALT_INV_SW[2]~input_o\,
	combout => \hex2|h2~0_combout\);

-- Location: LABCELL_X88_Y11_N18
\hex2|h3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \hex2|h3~0_combout\ = ( \SW[2]~input_o\ & ( (!\SW[1]~input_o\ & (!\SW[0]~input_o\ & !\SW[3]~input_o\)) # (\SW[1]~input_o\ & (\SW[0]~input_o\)) ) ) # ( !\SW[2]~input_o\ & ( (!\SW[1]~input_o\ & (\SW[0]~input_o\ & !\SW[3]~input_o\)) # (\SW[1]~input_o\ & 
-- (!\SW[0]~input_o\ & \SW[3]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001001000100001000100100010010011001000100011001100100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[1]~input_o\,
	datab => \ALT_INV_SW[0]~input_o\,
	datad => \ALT_INV_SW[3]~input_o\,
	dataf => \ALT_INV_SW[2]~input_o\,
	combout => \hex2|h3~0_combout\);

-- Location: LABCELL_X88_Y11_N21
\hex2|h4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \hex2|h4~0_combout\ = ( \SW[2]~input_o\ & ( (!\SW[3]~input_o\ & ((!\SW[1]~input_o\) # (\SW[0]~input_o\))) ) ) # ( !\SW[2]~input_o\ & ( (\SW[0]~input_o\ & ((!\SW[1]~input_o\) # (!\SW[3]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001010000011110000101010101111000000001010111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[1]~input_o\,
	datac => \ALT_INV_SW[0]~input_o\,
	datad => \ALT_INV_SW[3]~input_o\,
	dataf => \ALT_INV_SW[2]~input_o\,
	combout => \hex2|h4~0_combout\);

-- Location: LABCELL_X88_Y11_N24
\hex2|h5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \hex2|h5~0_combout\ = ( \SW[2]~input_o\ & ( (\SW[0]~input_o\ & (!\SW[1]~input_o\ $ (!\SW[3]~input_o\))) ) ) # ( !\SW[2]~input_o\ & ( (!\SW[3]~input_o\ & ((\SW[1]~input_o\) # (\SW[0]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100000000001111110000000000000011001100000000001100110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SW[0]~input_o\,
	datac => \ALT_INV_SW[1]~input_o\,
	datad => \ALT_INV_SW[3]~input_o\,
	dataf => \ALT_INV_SW[2]~input_o\,
	combout => \hex2|h5~0_combout\);

-- Location: LABCELL_X88_Y11_N27
\hex2|h6\ : cyclonev_lcell_comb
-- Equation(s):
-- \hex2|h6~combout\ = ( \SW[2]~input_o\ & ( (!\SW[1]~input_o\ & (!\SW[0]~input_o\ & \SW[3]~input_o\)) # (\SW[1]~input_o\ & (\SW[0]~input_o\ & !\SW[3]~input_o\)) ) ) # ( !\SW[2]~input_o\ & ( (!\SW[1]~input_o\ & !\SW[3]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010100000101000001010000000011000000110000001100000011000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[1]~input_o\,
	datab => \ALT_INV_SW[0]~input_o\,
	datac => \ALT_INV_SW[3]~input_o\,
	dataf => \ALT_INV_SW[2]~input_o\,
	combout => \hex2|h6~combout\);

-- Location: LABCELL_X88_Y12_N0
\hex4|h0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \hex4|h0~0_combout\ = ( \SW[7]~input_o\ & ( \SW[5]~input_o\ & ( (!\SW[6]~input_o\ & \SW[4]~input_o\) ) ) ) # ( \SW[7]~input_o\ & ( !\SW[5]~input_o\ & ( (\SW[6]~input_o\ & \SW[4]~input_o\) ) ) ) # ( !\SW[7]~input_o\ & ( !\SW[5]~input_o\ & ( 
-- !\SW[6]~input_o\ $ (!\SW[4]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110000111100000000110000001100000000000000000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SW[6]~input_o\,
	datac => \ALT_INV_SW[4]~input_o\,
	datae => \ALT_INV_SW[7]~input_o\,
	dataf => \ALT_INV_SW[5]~input_o\,
	combout => \hex4|h0~0_combout\);

-- Location: LABCELL_X88_Y12_N9
\hex4|h1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \hex4|h1~0_combout\ = ( \SW[7]~input_o\ & ( \SW[5]~input_o\ & ( (\SW[6]~input_o\) # (\SW[4]~input_o\) ) ) ) # ( !\SW[7]~input_o\ & ( \SW[5]~input_o\ & ( (!\SW[4]~input_o\ & \SW[6]~input_o\) ) ) ) # ( \SW[7]~input_o\ & ( !\SW[5]~input_o\ & ( 
-- (!\SW[4]~input_o\ & \SW[6]~input_o\) ) ) ) # ( !\SW[7]~input_o\ & ( !\SW[5]~input_o\ & ( (\SW[4]~input_o\ & \SW[6]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000010100000101000001010000010100101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[4]~input_o\,
	datac => \ALT_INV_SW[6]~input_o\,
	datae => \ALT_INV_SW[7]~input_o\,
	dataf => \ALT_INV_SW[5]~input_o\,
	combout => \hex4|h1~0_combout\);

-- Location: LABCELL_X88_Y12_N42
\hex4|h2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \hex4|h2~0_combout\ = ( \SW[7]~input_o\ & ( \SW[5]~input_o\ & ( \SW[6]~input_o\ ) ) ) # ( !\SW[7]~input_o\ & ( \SW[5]~input_o\ & ( (!\SW[6]~input_o\ & !\SW[4]~input_o\) ) ) ) # ( \SW[7]~input_o\ & ( !\SW[5]~input_o\ & ( (\SW[6]~input_o\ & 
-- !\SW[4]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100000011000011000000110000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SW[6]~input_o\,
	datac => \ALT_INV_SW[4]~input_o\,
	datae => \ALT_INV_SW[7]~input_o\,
	dataf => \ALT_INV_SW[5]~input_o\,
	combout => \hex4|h2~0_combout\);

-- Location: LABCELL_X88_Y12_N51
\hex4|h3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \hex4|h3~0_combout\ = ( \SW[7]~input_o\ & ( \SW[5]~input_o\ & ( !\SW[4]~input_o\ $ (\SW[6]~input_o\) ) ) ) # ( !\SW[7]~input_o\ & ( \SW[5]~input_o\ & ( (\SW[4]~input_o\ & \SW[6]~input_o\) ) ) ) # ( !\SW[7]~input_o\ & ( !\SW[5]~input_o\ & ( 
-- !\SW[4]~input_o\ $ (!\SW[6]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101001011010000000000000000000000101000001011010010110100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[4]~input_o\,
	datac => \ALT_INV_SW[6]~input_o\,
	datae => \ALT_INV_SW[7]~input_o\,
	dataf => \ALT_INV_SW[5]~input_o\,
	combout => \hex4|h3~0_combout\);

-- Location: LABCELL_X88_Y12_N54
\hex4|h4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \hex4|h4~0_combout\ = ( !\SW[7]~input_o\ & ( \SW[5]~input_o\ & ( \SW[4]~input_o\ ) ) ) # ( \SW[7]~input_o\ & ( !\SW[5]~input_o\ & ( (!\SW[6]~input_o\ & \SW[4]~input_o\) ) ) ) # ( !\SW[7]~input_o\ & ( !\SW[5]~input_o\ & ( (\SW[4]~input_o\) # 
-- (\SW[6]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100111111000011000000110000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SW[6]~input_o\,
	datac => \ALT_INV_SW[4]~input_o\,
	datae => \ALT_INV_SW[7]~input_o\,
	dataf => \ALT_INV_SW[5]~input_o\,
	combout => \hex4|h4~0_combout\);

-- Location: LABCELL_X88_Y12_N33
\hex4|h5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \hex4|h5~0_combout\ = ( !\SW[7]~input_o\ & ( \SW[5]~input_o\ & ( (!\SW[6]~input_o\) # (\SW[4]~input_o\) ) ) ) # ( \SW[7]~input_o\ & ( !\SW[5]~input_o\ & ( (\SW[4]~input_o\ & \SW[6]~input_o\) ) ) ) # ( !\SW[7]~input_o\ & ( !\SW[5]~input_o\ & ( 
-- (\SW[4]~input_o\ & !\SW[6]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000000001010000010111110101111101010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[4]~input_o\,
	datac => \ALT_INV_SW[6]~input_o\,
	datae => \ALT_INV_SW[7]~input_o\,
	dataf => \ALT_INV_SW[5]~input_o\,
	combout => \hex4|h5~0_combout\);

-- Location: LABCELL_X88_Y12_N36
\hex4|h6\ : cyclonev_lcell_comb
-- Equation(s):
-- \hex4|h6~combout\ = ( !\SW[7]~input_o\ & ( \SW[5]~input_o\ & ( (\SW[6]~input_o\ & \SW[4]~input_o\) ) ) ) # ( \SW[7]~input_o\ & ( !\SW[5]~input_o\ & ( (\SW[6]~input_o\ & !\SW[4]~input_o\) ) ) ) # ( !\SW[7]~input_o\ & ( !\SW[5]~input_o\ & ( !\SW[6]~input_o\ 
-- ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100001100000011000000000011000000110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SW[6]~input_o\,
	datac => \ALT_INV_SW[4]~input_o\,
	datae => \ALT_INV_SW[7]~input_o\,
	dataf => \ALT_INV_SW[5]~input_o\,
	combout => \hex4|h6~combout\);

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

-- Location: MLABCELL_X8_Y50_N3
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


