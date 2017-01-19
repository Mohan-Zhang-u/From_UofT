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

-- DATE "06/27/2016 18:42:05"

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

ENTITY 	lab4part3 IS
    PORT (
	SW : IN std_logic_vector(2 DOWNTO 0);
	KEY : IN std_logic_vector(1 DOWNTO 0);
	CLOCK_50 : IN std_logic;
	LEDR : OUT std_logic_vector(0 DOWNTO 0)
	);
END lab4part3;

-- Design Ports Information
-- LEDR[0]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_AF14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_AF9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_AC12,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF lab4part3 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_SW : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_KEY : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_LEDR : std_logic_vector(0 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputCLKENA0_outclk\ : std_logic;
SIGNAL \rdv|Add0~17_sumout\ : std_logic;
SIGNAL \rdv|p[0]~3_combout\ : std_logic;
SIGNAL \rdv|Add0~18\ : std_logic;
SIGNAL \rdv|Add0~13_sumout\ : std_logic;
SIGNAL \rdv|p[1]~2_combout\ : std_logic;
SIGNAL \rdv|Add0~14\ : std_logic;
SIGNAL \rdv|Add0~9_sumout\ : std_logic;
SIGNAL \rdv|p[2]~1_combout\ : std_logic;
SIGNAL \rdv|Add0~10\ : std_logic;
SIGNAL \rdv|Add0~5_sumout\ : std_logic;
SIGNAL \rdv|p[3]~0_combout\ : std_logic;
SIGNAL \rdv|Add0~6\ : std_logic;
SIGNAL \rdv|Add0~21_sumout\ : std_logic;
SIGNAL \rdv|p[4]~4_combout\ : std_logic;
SIGNAL \rdv|Add0~22\ : std_logic;
SIGNAL \rdv|Add0~25_sumout\ : std_logic;
SIGNAL \rdv|p[5]~5_combout\ : std_logic;
SIGNAL \rdv|Add0~26\ : std_logic;
SIGNAL \rdv|Add0~85_sumout\ : std_logic;
SIGNAL \rdv|Add0~86\ : std_logic;
SIGNAL \rdv|Add0~89_sumout\ : std_logic;
SIGNAL \rdv|Add0~90\ : std_logic;
SIGNAL \rdv|Add0~93_sumout\ : std_logic;
SIGNAL \rdv|Add0~94\ : std_logic;
SIGNAL \rdv|Add0~97_sumout\ : std_logic;
SIGNAL \rdv|Add0~98\ : std_logic;
SIGNAL \rdv|Add0~101_sumout\ : std_logic;
SIGNAL \rdv|Add0~102\ : std_logic;
SIGNAL \rdv|Add0~29_sumout\ : std_logic;
SIGNAL \rdv|p[11]~6_combout\ : std_logic;
SIGNAL \rdv|p[11]~DUPLICATE_q\ : std_logic;
SIGNAL \rdv|Add0~30\ : std_logic;
SIGNAL \rdv|Add0~33_sumout\ : std_logic;
SIGNAL \rdv|p[12]~7_combout\ : std_logic;
SIGNAL \rdv|p[12]~DUPLICATE_q\ : std_logic;
SIGNAL \rdv|Add0~34\ : std_logic;
SIGNAL \rdv|Add0~37_sumout\ : std_logic;
SIGNAL \rdv|p[13]~8_combout\ : std_logic;
SIGNAL \rdv|p[13]~DUPLICATE_q\ : std_logic;
SIGNAL \rdv|Add0~38\ : std_logic;
SIGNAL \rdv|Add0~41_sumout\ : std_logic;
SIGNAL \rdv|p[14]~9_combout\ : std_logic;
SIGNAL \rdv|Add0~42\ : std_logic;
SIGNAL \rdv|Add0~105_sumout\ : std_logic;
SIGNAL \rdv|Add0~106\ : std_logic;
SIGNAL \rdv|Add0~45_sumout\ : std_logic;
SIGNAL \rdv|p[16]~10_combout\ : std_logic;
SIGNAL \rdv|Add0~46\ : std_logic;
SIGNAL \rdv|Add0~109_sumout\ : std_logic;
SIGNAL \rdv|Add0~110\ : std_logic;
SIGNAL \rdv|Add0~49_sumout\ : std_logic;
SIGNAL \rdv|p[18]~11_combout\ : std_logic;
SIGNAL \rdv|Add0~50\ : std_logic;
SIGNAL \rdv|Add0~53_sumout\ : std_logic;
SIGNAL \rdv|p[19]~12_combout\ : std_logic;
SIGNAL \rdv|Add0~54\ : std_logic;
SIGNAL \rdv|Add0~57_sumout\ : std_logic;
SIGNAL \rdv|p[20]~13_combout\ : std_logic;
SIGNAL \rdv|p[20]~DUPLICATE_q\ : std_logic;
SIGNAL \rdv|Add0~58\ : std_logic;
SIGNAL \rdv|Add0~61_sumout\ : std_logic;
SIGNAL \rdv|p[21]~14_combout\ : std_logic;
SIGNAL \rdv|p[21]~DUPLICATE_q\ : std_logic;
SIGNAL \rdv|Add0~62\ : std_logic;
SIGNAL \rdv|Add0~65_sumout\ : std_logic;
SIGNAL \rdv|p[22]~15_combout\ : std_logic;
SIGNAL \rdv|Add0~66\ : std_logic;
SIGNAL \rdv|Add0~113_sumout\ : std_logic;
SIGNAL \rdv|Add0~114\ : std_logic;
SIGNAL \rdv|Add0~69_sumout\ : std_logic;
SIGNAL \rdv|p[24]~16_combout\ : std_logic;
SIGNAL \rdv|p[24]~DUPLICATE_q\ : std_logic;
SIGNAL \rdv|Add0~70\ : std_logic;
SIGNAL \rdv|Add0~1_sumout\ : std_logic;
SIGNAL \rdv|Add0~2\ : std_logic;
SIGNAL \rdv|Add0~73_sumout\ : std_logic;
SIGNAL \rdv|Add0~74\ : std_logic;
SIGNAL \rdv|Add0~77_sumout\ : std_logic;
SIGNAL \rdv|p[28]~DUPLICATE_q\ : std_logic;
SIGNAL \rdv|Add0~78\ : std_logic;
SIGNAL \rdv|Add0~81_sumout\ : std_logic;
SIGNAL \rdv|Equal0~3_combout\ : std_logic;
SIGNAL \rdv|Equal0~4_combout\ : std_logic;
SIGNAL \rdv|Equal0~2_combout\ : std_logic;
SIGNAL \rdv|p[4]~DUPLICATE_q\ : std_logic;
SIGNAL \rdv|p[0]~DUPLICATE_q\ : std_logic;
SIGNAL \rdv|p[3]~DUPLICATE_q\ : std_logic;
SIGNAL \rdv|p[1]~DUPLICATE_q\ : std_logic;
SIGNAL \rdv|Equal0~0_combout\ : std_logic;
SIGNAL \rdv|Equal0~1_combout\ : std_logic;
SIGNAL \rdv|Equal0~5_combout\ : std_logic;
SIGNAL \rdv|q~q\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \morsetobinary|outtt~4_combout\ : std_logic;
SIGNAL \s12bit|b10|M2|m~0_combout\ : std_logic;
SIGNAL \s12bit|b10|F0|out~q\ : std_logic;
SIGNAL \s12bit|b9|M2|m~0_combout\ : std_logic;
SIGNAL \s12bit|b9|F0|out~q\ : std_logic;
SIGNAL \s12bit|b8|F0|out~feeder_combout\ : std_logic;
SIGNAL \morsetobinary|outtt~5_combout\ : std_logic;
SIGNAL \s12bit|b8|F0|out~q\ : std_logic;
SIGNAL \s12bit|b7|F0|out~feeder_combout\ : std_logic;
SIGNAL \s12bit|b7|F0|out~q\ : std_logic;
SIGNAL \s12bit|b6|F0|out~feeder_combout\ : std_logic;
SIGNAL \morsetobinary|Equal0~0_combout\ : std_logic;
SIGNAL \s12bit|b6|F0|out~q\ : std_logic;
SIGNAL \s12bit|b5|F0|out~feeder_combout\ : std_logic;
SIGNAL \morsetobinary|outtt~3_combout\ : std_logic;
SIGNAL \s12bit|b5|F0|out~q\ : std_logic;
SIGNAL \s12bit|b4|F0|out~feeder_combout\ : std_logic;
SIGNAL \morsetobinary|outtt~1_combout\ : std_logic;
SIGNAL \s12bit|b4|F0|out~q\ : std_logic;
SIGNAL \s12bit|b3|F0|out~feeder_combout\ : std_logic;
SIGNAL \morsetobinary|outtt~2_combout\ : std_logic;
SIGNAL \s12bit|b3|F0|out~q\ : std_logic;
SIGNAL \s12bit|b2|F0|out~feeder_combout\ : std_logic;
SIGNAL \s12bit|b2|F0|out~q\ : std_logic;
SIGNAL \s12bit|b1|F0|out~feeder_combout\ : std_logic;
SIGNAL \morsetobinary|outtt~0_combout\ : std_logic;
SIGNAL \s12bit|b1|F0|out~q\ : std_logic;
SIGNAL \s12bit|b0|M2|m~0_combout\ : std_logic;
SIGNAL \s12bit|b0|F0|out~q\ : std_logic;
SIGNAL \morsetobinary|outtt\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \rdv|p\ : std_logic_vector(28 DOWNTO 0);
SIGNAL \rdv|ALT_INV_p[24]~DUPLICATE_q\ : std_logic;
SIGNAL \rdv|ALT_INV_p[21]~DUPLICATE_q\ : std_logic;
SIGNAL \rdv|ALT_INV_p[20]~DUPLICATE_q\ : std_logic;
SIGNAL \rdv|ALT_INV_p[13]~DUPLICATE_q\ : std_logic;
SIGNAL \rdv|ALT_INV_p[12]~DUPLICATE_q\ : std_logic;
SIGNAL \rdv|ALT_INV_p[11]~DUPLICATE_q\ : std_logic;
SIGNAL \rdv|ALT_INV_p[4]~DUPLICATE_q\ : std_logic;
SIGNAL \rdv|ALT_INV_p[0]~DUPLICATE_q\ : std_logic;
SIGNAL \rdv|ALT_INV_p[1]~DUPLICATE_q\ : std_logic;
SIGNAL \rdv|ALT_INV_p[3]~DUPLICATE_q\ : std_logic;
SIGNAL \rdv|ALT_INV_p[28]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_SW[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_KEY[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_KEY[1]~input_o\ : std_logic;
SIGNAL \s12bit|b10|F0|ALT_INV_out~q\ : std_logic;
SIGNAL \s12bit|b9|F0|ALT_INV_out~q\ : std_logic;
SIGNAL \morsetobinary|ALT_INV_outtt\ : std_logic_vector(10 DOWNTO 10);
SIGNAL \rdv|ALT_INV_Equal0~4_combout\ : std_logic;
SIGNAL \rdv|ALT_INV_Equal0~3_combout\ : std_logic;
SIGNAL \rdv|ALT_INV_Equal0~2_combout\ : std_logic;
SIGNAL \rdv|ALT_INV_p\ : std_logic_vector(28 DOWNTO 0);
SIGNAL \rdv|ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \rdv|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \s12bit|b8|F0|ALT_INV_out~q\ : std_logic;
SIGNAL \s12bit|b7|F0|ALT_INV_out~q\ : std_logic;
SIGNAL \s12bit|b6|F0|ALT_INV_out~q\ : std_logic;
SIGNAL \s12bit|b5|F0|ALT_INV_out~q\ : std_logic;
SIGNAL \s12bit|b4|F0|ALT_INV_out~q\ : std_logic;
SIGNAL \rdv|ALT_INV_Add0~69_sumout\ : std_logic;
SIGNAL \rdv|ALT_INV_Add0~65_sumout\ : std_logic;
SIGNAL \rdv|ALT_INV_Add0~61_sumout\ : std_logic;
SIGNAL \rdv|ALT_INV_Add0~57_sumout\ : std_logic;
SIGNAL \rdv|ALT_INV_Add0~53_sumout\ : std_logic;
SIGNAL \rdv|ALT_INV_Add0~49_sumout\ : std_logic;
SIGNAL \rdv|ALT_INV_Add0~45_sumout\ : std_logic;
SIGNAL \rdv|ALT_INV_Add0~41_sumout\ : std_logic;
SIGNAL \rdv|ALT_INV_Add0~37_sumout\ : std_logic;
SIGNAL \rdv|ALT_INV_Add0~33_sumout\ : std_logic;
SIGNAL \rdv|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \rdv|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \rdv|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \rdv|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \rdv|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \rdv|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \rdv|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \s12bit|b3|F0|ALT_INV_out~q\ : std_logic;
SIGNAL \s12bit|b2|F0|ALT_INV_out~q\ : std_logic;
SIGNAL \s12bit|b1|F0|ALT_INV_out~q\ : std_logic;

BEGIN

ww_SW <= SW;
ww_KEY <= KEY;
ww_CLOCK_50 <= CLOCK_50;
LEDR <= ww_LEDR;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\rdv|ALT_INV_p[24]~DUPLICATE_q\ <= NOT \rdv|p[24]~DUPLICATE_q\;
\rdv|ALT_INV_p[21]~DUPLICATE_q\ <= NOT \rdv|p[21]~DUPLICATE_q\;
\rdv|ALT_INV_p[20]~DUPLICATE_q\ <= NOT \rdv|p[20]~DUPLICATE_q\;
\rdv|ALT_INV_p[13]~DUPLICATE_q\ <= NOT \rdv|p[13]~DUPLICATE_q\;
\rdv|ALT_INV_p[12]~DUPLICATE_q\ <= NOT \rdv|p[12]~DUPLICATE_q\;
\rdv|ALT_INV_p[11]~DUPLICATE_q\ <= NOT \rdv|p[11]~DUPLICATE_q\;
\rdv|ALT_INV_p[4]~DUPLICATE_q\ <= NOT \rdv|p[4]~DUPLICATE_q\;
\rdv|ALT_INV_p[0]~DUPLICATE_q\ <= NOT \rdv|p[0]~DUPLICATE_q\;
\rdv|ALT_INV_p[1]~DUPLICATE_q\ <= NOT \rdv|p[1]~DUPLICATE_q\;
\rdv|ALT_INV_p[3]~DUPLICATE_q\ <= NOT \rdv|p[3]~DUPLICATE_q\;
\rdv|ALT_INV_p[28]~DUPLICATE_q\ <= NOT \rdv|p[28]~DUPLICATE_q\;
\ALT_INV_SW[1]~input_o\ <= NOT \SW[1]~input_o\;
\ALT_INV_SW[2]~input_o\ <= NOT \SW[2]~input_o\;
\ALT_INV_SW[0]~input_o\ <= NOT \SW[0]~input_o\;
\ALT_INV_KEY[0]~input_o\ <= NOT \KEY[0]~input_o\;
\ALT_INV_KEY[1]~input_o\ <= NOT \KEY[1]~input_o\;
\s12bit|b10|F0|ALT_INV_out~q\ <= NOT \s12bit|b10|F0|out~q\;
\s12bit|b9|F0|ALT_INV_out~q\ <= NOT \s12bit|b9|F0|out~q\;
\morsetobinary|ALT_INV_outtt\(10) <= NOT \morsetobinary|outtt\(10);
\rdv|ALT_INV_Equal0~4_combout\ <= NOT \rdv|Equal0~4_combout\;
\rdv|ALT_INV_Equal0~3_combout\ <= NOT \rdv|Equal0~3_combout\;
\rdv|ALT_INV_Equal0~2_combout\ <= NOT \rdv|Equal0~2_combout\;
\rdv|ALT_INV_p\(24) <= NOT \rdv|p\(24);
\rdv|ALT_INV_p\(22) <= NOT \rdv|p\(22);
\rdv|ALT_INV_p\(21) <= NOT \rdv|p\(21);
\rdv|ALT_INV_p\(20) <= NOT \rdv|p\(20);
\rdv|ALT_INV_p\(19) <= NOT \rdv|p\(19);
\rdv|ALT_INV_Equal0~1_combout\ <= NOT \rdv|Equal0~1_combout\;
\rdv|ALT_INV_p\(18) <= NOT \rdv|p\(18);
\rdv|ALT_INV_p\(16) <= NOT \rdv|p\(16);
\rdv|ALT_INV_p\(14) <= NOT \rdv|p\(14);
\rdv|ALT_INV_p\(13) <= NOT \rdv|p\(13);
\rdv|ALT_INV_p\(12) <= NOT \rdv|p\(12);
\rdv|ALT_INV_p\(11) <= NOT \rdv|p\(11);
\rdv|ALT_INV_Equal0~0_combout\ <= NOT \rdv|Equal0~0_combout\;
\rdv|ALT_INV_p\(5) <= NOT \rdv|p\(5);
\rdv|ALT_INV_p\(4) <= NOT \rdv|p\(4);
\rdv|ALT_INV_p\(0) <= NOT \rdv|p\(0);
\rdv|ALT_INV_p\(1) <= NOT \rdv|p\(1);
\rdv|ALT_INV_p\(2) <= NOT \rdv|p\(2);
\rdv|ALT_INV_p\(3) <= NOT \rdv|p\(3);
\s12bit|b8|F0|ALT_INV_out~q\ <= NOT \s12bit|b8|F0|out~q\;
\s12bit|b7|F0|ALT_INV_out~q\ <= NOT \s12bit|b7|F0|out~q\;
\s12bit|b6|F0|ALT_INV_out~q\ <= NOT \s12bit|b6|F0|out~q\;
\s12bit|b5|F0|ALT_INV_out~q\ <= NOT \s12bit|b5|F0|out~q\;
\s12bit|b4|F0|ALT_INV_out~q\ <= NOT \s12bit|b4|F0|out~q\;
\rdv|ALT_INV_Add0~69_sumout\ <= NOT \rdv|Add0~69_sumout\;
\rdv|ALT_INV_Add0~65_sumout\ <= NOT \rdv|Add0~65_sumout\;
\rdv|ALT_INV_Add0~61_sumout\ <= NOT \rdv|Add0~61_sumout\;
\rdv|ALT_INV_Add0~57_sumout\ <= NOT \rdv|Add0~57_sumout\;
\rdv|ALT_INV_Add0~53_sumout\ <= NOT \rdv|Add0~53_sumout\;
\rdv|ALT_INV_Add0~49_sumout\ <= NOT \rdv|Add0~49_sumout\;
\rdv|ALT_INV_Add0~45_sumout\ <= NOT \rdv|Add0~45_sumout\;
\rdv|ALT_INV_Add0~41_sumout\ <= NOT \rdv|Add0~41_sumout\;
\rdv|ALT_INV_Add0~37_sumout\ <= NOT \rdv|Add0~37_sumout\;
\rdv|ALT_INV_Add0~33_sumout\ <= NOT \rdv|Add0~33_sumout\;
\rdv|ALT_INV_Add0~29_sumout\ <= NOT \rdv|Add0~29_sumout\;
\rdv|ALT_INV_Add0~25_sumout\ <= NOT \rdv|Add0~25_sumout\;
\rdv|ALT_INV_Add0~21_sumout\ <= NOT \rdv|Add0~21_sumout\;
\rdv|ALT_INV_Add0~17_sumout\ <= NOT \rdv|Add0~17_sumout\;
\rdv|ALT_INV_Add0~13_sumout\ <= NOT \rdv|Add0~13_sumout\;
\rdv|ALT_INV_Add0~9_sumout\ <= NOT \rdv|Add0~9_sumout\;
\rdv|ALT_INV_Add0~5_sumout\ <= NOT \rdv|Add0~5_sumout\;
\s12bit|b3|F0|ALT_INV_out~q\ <= NOT \s12bit|b3|F0|out~q\;
\rdv|ALT_INV_p\(23) <= NOT \rdv|p\(23);
\rdv|ALT_INV_p\(17) <= NOT \rdv|p\(17);
\rdv|ALT_INV_p\(15) <= NOT \rdv|p\(15);
\rdv|ALT_INV_p\(10) <= NOT \rdv|p\(10);
\rdv|ALT_INV_p\(9) <= NOT \rdv|p\(9);
\rdv|ALT_INV_p\(8) <= NOT \rdv|p\(8);
\rdv|ALT_INV_p\(7) <= NOT \rdv|p\(7);
\rdv|ALT_INV_p\(6) <= NOT \rdv|p\(6);
\rdv|ALT_INV_p\(28) <= NOT \rdv|p\(28);
\rdv|ALT_INV_p\(27) <= NOT \rdv|p\(27);
\rdv|ALT_INV_p\(26) <= NOT \rdv|p\(26);
\rdv|ALT_INV_p\(25) <= NOT \rdv|p\(25);
\s12bit|b2|F0|ALT_INV_out~q\ <= NOT \s12bit|b2|F0|out~q\;
\s12bit|b1|F0|ALT_INV_out~q\ <= NOT \s12bit|b1|F0|out~q\;

-- Location: IOOBUF_X52_Y0_N2
\LEDR[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \s12bit|b0|F0|out~q\,
	devoe => ww_devoe,
	o => ww_LEDR(0));

-- Location: IOIBUF_X32_Y0_N1
\CLOCK_50~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: CLKCTRL_G6
\CLOCK_50~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK_50~input_o\,
	outclk => \CLOCK_50~inputCLKENA0_outclk\);

-- Location: LABCELL_X37_Y2_N30
\rdv|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \rdv|Add0~17_sumout\ = SUM(( !\rdv|p\(0) ) + ( VCC ) + ( !VCC ))
-- \rdv|Add0~18\ = CARRY(( !\rdv|p\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \rdv|ALT_INV_p\(0),
	cin => GND,
	sumout => \rdv|Add0~17_sumout\,
	cout => \rdv|Add0~18\);

-- Location: LABCELL_X37_Y2_N21
\rdv|p[0]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \rdv|p[0]~3_combout\ = ( !\rdv|Add0~17_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \rdv|ALT_INV_Add0~17_sumout\,
	combout => \rdv|p[0]~3_combout\);

-- Location: FF_X37_Y2_N23
\rdv|p[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \rdv|p[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rdv|p\(0));

-- Location: LABCELL_X37_Y2_N33
\rdv|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \rdv|Add0~13_sumout\ = SUM(( !\rdv|p\(1) ) + ( VCC ) + ( \rdv|Add0~18\ ))
-- \rdv|Add0~14\ = CARRY(( !\rdv|p\(1) ) + ( VCC ) + ( \rdv|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \rdv|ALT_INV_p\(1),
	cin => \rdv|Add0~18\,
	sumout => \rdv|Add0~13_sumout\,
	cout => \rdv|Add0~14\);

-- Location: LABCELL_X37_Y2_N0
\rdv|p[1]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \rdv|p[1]~2_combout\ = ( !\rdv|Add0~13_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \rdv|ALT_INV_Add0~13_sumout\,
	combout => \rdv|p[1]~2_combout\);

-- Location: FF_X37_Y2_N2
\rdv|p[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \rdv|p[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rdv|p\(1));

-- Location: LABCELL_X37_Y2_N36
\rdv|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \rdv|Add0~9_sumout\ = SUM(( !\rdv|p\(2) ) + ( VCC ) + ( \rdv|Add0~14\ ))
-- \rdv|Add0~10\ = CARRY(( !\rdv|p\(2) ) + ( VCC ) + ( \rdv|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \rdv|ALT_INV_p\(2),
	cin => \rdv|Add0~14\,
	sumout => \rdv|Add0~9_sumout\,
	cout => \rdv|Add0~10\);

-- Location: LABCELL_X37_Y2_N3
\rdv|p[2]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \rdv|p[2]~1_combout\ = ( !\rdv|Add0~9_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \rdv|ALT_INV_Add0~9_sumout\,
	combout => \rdv|p[2]~1_combout\);

-- Location: FF_X37_Y2_N5
\rdv|p[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \rdv|p[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rdv|p\(2));

-- Location: LABCELL_X37_Y2_N39
\rdv|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \rdv|Add0~5_sumout\ = SUM(( !\rdv|p\(3) ) + ( VCC ) + ( \rdv|Add0~10\ ))
-- \rdv|Add0~6\ = CARRY(( !\rdv|p\(3) ) + ( VCC ) + ( \rdv|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \rdv|ALT_INV_p\(3),
	cin => \rdv|Add0~10\,
	sumout => \rdv|Add0~5_sumout\,
	cout => \rdv|Add0~6\);

-- Location: LABCELL_X37_Y2_N18
\rdv|p[3]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \rdv|p[3]~0_combout\ = ( !\rdv|Add0~5_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \rdv|ALT_INV_Add0~5_sumout\,
	combout => \rdv|p[3]~0_combout\);

-- Location: FF_X37_Y2_N19
\rdv|p[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \rdv|p[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rdv|p\(3));

-- Location: LABCELL_X37_Y2_N42
\rdv|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \rdv|Add0~21_sumout\ = SUM(( !\rdv|p\(4) ) + ( VCC ) + ( \rdv|Add0~6\ ))
-- \rdv|Add0~22\ = CARRY(( !\rdv|p\(4) ) + ( VCC ) + ( \rdv|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \rdv|ALT_INV_p\(4),
	cin => \rdv|Add0~6\,
	sumout => \rdv|Add0~21_sumout\,
	cout => \rdv|Add0~22\);

-- Location: LABCELL_X37_Y2_N24
\rdv|p[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \rdv|p[4]~4_combout\ = ( !\rdv|Add0~21_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \rdv|ALT_INV_Add0~21_sumout\,
	combout => \rdv|p[4]~4_combout\);

-- Location: FF_X37_Y2_N26
\rdv|p[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \rdv|p[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rdv|p\(4));

-- Location: LABCELL_X37_Y2_N45
\rdv|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \rdv|Add0~25_sumout\ = SUM(( !\rdv|p\(5) ) + ( VCC ) + ( \rdv|Add0~22\ ))
-- \rdv|Add0~26\ = CARRY(( !\rdv|p\(5) ) + ( VCC ) + ( \rdv|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \rdv|ALT_INV_p\(5),
	cin => \rdv|Add0~22\,
	sumout => \rdv|Add0~25_sumout\,
	cout => \rdv|Add0~26\);

-- Location: LABCELL_X37_Y2_N15
\rdv|p[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \rdv|p[5]~5_combout\ = ( !\rdv|Add0~25_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \rdv|ALT_INV_Add0~25_sumout\,
	combout => \rdv|p[5]~5_combout\);

-- Location: FF_X37_Y2_N17
\rdv|p[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \rdv|p[5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rdv|p\(5));

-- Location: LABCELL_X37_Y2_N48
\rdv|Add0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \rdv|Add0~85_sumout\ = SUM(( \rdv|p\(6) ) + ( VCC ) + ( \rdv|Add0~26\ ))
-- \rdv|Add0~86\ = CARRY(( \rdv|p\(6) ) + ( VCC ) + ( \rdv|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \rdv|ALT_INV_p\(6),
	cin => \rdv|Add0~26\,
	sumout => \rdv|Add0~85_sumout\,
	cout => \rdv|Add0~86\);

-- Location: FF_X37_Y2_N49
\rdv|p[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \rdv|Add0~85_sumout\,
	sclr => \rdv|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rdv|p\(6));

-- Location: LABCELL_X37_Y2_N51
\rdv|Add0~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \rdv|Add0~89_sumout\ = SUM(( \rdv|p\(7) ) + ( VCC ) + ( \rdv|Add0~86\ ))
-- \rdv|Add0~90\ = CARRY(( \rdv|p\(7) ) + ( VCC ) + ( \rdv|Add0~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \rdv|ALT_INV_p\(7),
	cin => \rdv|Add0~86\,
	sumout => \rdv|Add0~89_sumout\,
	cout => \rdv|Add0~90\);

-- Location: FF_X37_Y2_N53
\rdv|p[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \rdv|Add0~89_sumout\,
	sclr => \rdv|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rdv|p\(7));

-- Location: LABCELL_X37_Y2_N54
\rdv|Add0~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \rdv|Add0~93_sumout\ = SUM(( \rdv|p\(8) ) + ( VCC ) + ( \rdv|Add0~90\ ))
-- \rdv|Add0~94\ = CARRY(( \rdv|p\(8) ) + ( VCC ) + ( \rdv|Add0~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \rdv|ALT_INV_p\(8),
	cin => \rdv|Add0~90\,
	sumout => \rdv|Add0~93_sumout\,
	cout => \rdv|Add0~94\);

-- Location: FF_X37_Y2_N55
\rdv|p[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \rdv|Add0~93_sumout\,
	sclr => \rdv|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rdv|p\(8));

-- Location: LABCELL_X37_Y2_N57
\rdv|Add0~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \rdv|Add0~97_sumout\ = SUM(( \rdv|p\(9) ) + ( VCC ) + ( \rdv|Add0~94\ ))
-- \rdv|Add0~98\ = CARRY(( \rdv|p\(9) ) + ( VCC ) + ( \rdv|Add0~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \rdv|ALT_INV_p\(9),
	cin => \rdv|Add0~94\,
	sumout => \rdv|Add0~97_sumout\,
	cout => \rdv|Add0~98\);

-- Location: FF_X37_Y2_N59
\rdv|p[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \rdv|Add0~97_sumout\,
	sclr => \rdv|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rdv|p\(9));

-- Location: LABCELL_X37_Y1_N0
\rdv|Add0~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \rdv|Add0~101_sumout\ = SUM(( \rdv|p\(10) ) + ( VCC ) + ( \rdv|Add0~98\ ))
-- \rdv|Add0~102\ = CARRY(( \rdv|p\(10) ) + ( VCC ) + ( \rdv|Add0~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \rdv|ALT_INV_p\(10),
	cin => \rdv|Add0~98\,
	sumout => \rdv|Add0~101_sumout\,
	cout => \rdv|Add0~102\);

-- Location: FF_X37_Y1_N1
\rdv|p[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \rdv|Add0~101_sumout\,
	sclr => \rdv|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rdv|p\(10));

-- Location: LABCELL_X37_Y1_N3
\rdv|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \rdv|Add0~29_sumout\ = SUM(( !\rdv|p[11]~DUPLICATE_q\ ) + ( VCC ) + ( \rdv|Add0~102\ ))
-- \rdv|Add0~30\ = CARRY(( !\rdv|p[11]~DUPLICATE_q\ ) + ( VCC ) + ( \rdv|Add0~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \rdv|ALT_INV_p[11]~DUPLICATE_q\,
	cin => \rdv|Add0~102\,
	sumout => \rdv|Add0~29_sumout\,
	cout => \rdv|Add0~30\);

-- Location: LABCELL_X36_Y2_N27
\rdv|p[11]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \rdv|p[11]~6_combout\ = !\rdv|Add0~29_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \rdv|ALT_INV_Add0~29_sumout\,
	combout => \rdv|p[11]~6_combout\);

-- Location: FF_X36_Y2_N28
\rdv|p[11]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \rdv|p[11]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rdv|p[11]~DUPLICATE_q\);

-- Location: LABCELL_X37_Y1_N6
\rdv|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \rdv|Add0~33_sumout\ = SUM(( !\rdv|p[12]~DUPLICATE_q\ ) + ( VCC ) + ( \rdv|Add0~30\ ))
-- \rdv|Add0~34\ = CARRY(( !\rdv|p[12]~DUPLICATE_q\ ) + ( VCC ) + ( \rdv|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \rdv|ALT_INV_p[12]~DUPLICATE_q\,
	cin => \rdv|Add0~30\,
	sumout => \rdv|Add0~33_sumout\,
	cout => \rdv|Add0~34\);

-- Location: LABCELL_X36_Y2_N39
\rdv|p[12]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \rdv|p[12]~7_combout\ = !\rdv|Add0~33_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \rdv|ALT_INV_Add0~33_sumout\,
	combout => \rdv|p[12]~7_combout\);

-- Location: FF_X36_Y2_N40
\rdv|p[12]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \rdv|p[12]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rdv|p[12]~DUPLICATE_q\);

-- Location: LABCELL_X37_Y1_N9
\rdv|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \rdv|Add0~37_sumout\ = SUM(( !\rdv|p[13]~DUPLICATE_q\ ) + ( VCC ) + ( \rdv|Add0~34\ ))
-- \rdv|Add0~38\ = CARRY(( !\rdv|p[13]~DUPLICATE_q\ ) + ( VCC ) + ( \rdv|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \rdv|ALT_INV_p[13]~DUPLICATE_q\,
	cin => \rdv|Add0~34\,
	sumout => \rdv|Add0~37_sumout\,
	cout => \rdv|Add0~38\);

-- Location: LABCELL_X36_Y2_N48
\rdv|p[13]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \rdv|p[13]~8_combout\ = ( !\rdv|Add0~37_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \rdv|ALT_INV_Add0~37_sumout\,
	combout => \rdv|p[13]~8_combout\);

-- Location: FF_X36_Y2_N49
\rdv|p[13]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \rdv|p[13]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rdv|p[13]~DUPLICATE_q\);

-- Location: LABCELL_X37_Y1_N12
\rdv|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \rdv|Add0~41_sumout\ = SUM(( !\rdv|p\(14) ) + ( VCC ) + ( \rdv|Add0~38\ ))
-- \rdv|Add0~42\ = CARRY(( !\rdv|p\(14) ) + ( VCC ) + ( \rdv|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \rdv|ALT_INV_p\(14),
	cin => \rdv|Add0~38\,
	sumout => \rdv|Add0~41_sumout\,
	cout => \rdv|Add0~42\);

-- Location: LABCELL_X36_Y2_N15
\rdv|p[14]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \rdv|p[14]~9_combout\ = ( !\rdv|Add0~41_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \rdv|ALT_INV_Add0~41_sumout\,
	combout => \rdv|p[14]~9_combout\);

-- Location: FF_X36_Y2_N17
\rdv|p[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \rdv|p[14]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rdv|p\(14));

-- Location: LABCELL_X37_Y1_N15
\rdv|Add0~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \rdv|Add0~105_sumout\ = SUM(( \rdv|p\(15) ) + ( VCC ) + ( \rdv|Add0~42\ ))
-- \rdv|Add0~106\ = CARRY(( \rdv|p\(15) ) + ( VCC ) + ( \rdv|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \rdv|ALT_INV_p\(15),
	cin => \rdv|Add0~42\,
	sumout => \rdv|Add0~105_sumout\,
	cout => \rdv|Add0~106\);

-- Location: FF_X37_Y1_N16
\rdv|p[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \rdv|Add0~105_sumout\,
	sclr => \rdv|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rdv|p\(15));

-- Location: LABCELL_X37_Y1_N18
\rdv|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \rdv|Add0~45_sumout\ = SUM(( !\rdv|p\(16) ) + ( VCC ) + ( \rdv|Add0~106\ ))
-- \rdv|Add0~46\ = CARRY(( !\rdv|p\(16) ) + ( VCC ) + ( \rdv|Add0~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \rdv|ALT_INV_p\(16),
	cin => \rdv|Add0~106\,
	sumout => \rdv|Add0~45_sumout\,
	cout => \rdv|Add0~46\);

-- Location: LABCELL_X36_Y2_N12
\rdv|p[16]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \rdv|p[16]~10_combout\ = ( !\rdv|Add0~45_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \rdv|ALT_INV_Add0~45_sumout\,
	combout => \rdv|p[16]~10_combout\);

-- Location: FF_X36_Y2_N13
\rdv|p[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \rdv|p[16]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rdv|p\(16));

-- Location: LABCELL_X37_Y1_N21
\rdv|Add0~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \rdv|Add0~109_sumout\ = SUM(( \rdv|p\(17) ) + ( VCC ) + ( \rdv|Add0~46\ ))
-- \rdv|Add0~110\ = CARRY(( \rdv|p\(17) ) + ( VCC ) + ( \rdv|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \rdv|ALT_INV_p\(17),
	cin => \rdv|Add0~46\,
	sumout => \rdv|Add0~109_sumout\,
	cout => \rdv|Add0~110\);

-- Location: FF_X37_Y1_N22
\rdv|p[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \rdv|Add0~109_sumout\,
	sclr => \rdv|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rdv|p\(17));

-- Location: LABCELL_X37_Y1_N24
\rdv|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \rdv|Add0~49_sumout\ = SUM(( !\rdv|p\(18) ) + ( VCC ) + ( \rdv|Add0~110\ ))
-- \rdv|Add0~50\ = CARRY(( !\rdv|p\(18) ) + ( VCC ) + ( \rdv|Add0~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \rdv|ALT_INV_p\(18),
	cin => \rdv|Add0~110\,
	sumout => \rdv|Add0~49_sumout\,
	cout => \rdv|Add0~50\);

-- Location: LABCELL_X36_Y2_N51
\rdv|p[18]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \rdv|p[18]~11_combout\ = ( !\rdv|Add0~49_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \rdv|ALT_INV_Add0~49_sumout\,
	combout => \rdv|p[18]~11_combout\);

-- Location: FF_X36_Y2_N52
\rdv|p[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \rdv|p[18]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rdv|p\(18));

-- Location: LABCELL_X37_Y1_N27
\rdv|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \rdv|Add0~53_sumout\ = SUM(( !\rdv|p\(19) ) + ( VCC ) + ( \rdv|Add0~50\ ))
-- \rdv|Add0~54\ = CARRY(( !\rdv|p\(19) ) + ( VCC ) + ( \rdv|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \rdv|ALT_INV_p\(19),
	cin => \rdv|Add0~50\,
	sumout => \rdv|Add0~53_sumout\,
	cout => \rdv|Add0~54\);

-- Location: LABCELL_X36_Y2_N57
\rdv|p[19]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \rdv|p[19]~12_combout\ = ( !\rdv|Add0~53_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \rdv|ALT_INV_Add0~53_sumout\,
	combout => \rdv|p[19]~12_combout\);

-- Location: FF_X36_Y2_N59
\rdv|p[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \rdv|p[19]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rdv|p\(19));

-- Location: LABCELL_X37_Y1_N30
\rdv|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \rdv|Add0~57_sumout\ = SUM(( !\rdv|p[20]~DUPLICATE_q\ ) + ( VCC ) + ( \rdv|Add0~54\ ))
-- \rdv|Add0~58\ = CARRY(( !\rdv|p[20]~DUPLICATE_q\ ) + ( VCC ) + ( \rdv|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \rdv|ALT_INV_p[20]~DUPLICATE_q\,
	cin => \rdv|Add0~54\,
	sumout => \rdv|Add0~57_sumout\,
	cout => \rdv|Add0~58\);

-- Location: LABCELL_X36_Y2_N9
\rdv|p[20]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \rdv|p[20]~13_combout\ = ( !\rdv|Add0~57_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \rdv|ALT_INV_Add0~57_sumout\,
	combout => \rdv|p[20]~13_combout\);

-- Location: FF_X36_Y2_N10
\rdv|p[20]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \rdv|p[20]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rdv|p[20]~DUPLICATE_q\);

-- Location: LABCELL_X37_Y1_N33
\rdv|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \rdv|Add0~61_sumout\ = SUM(( !\rdv|p[21]~DUPLICATE_q\ ) + ( VCC ) + ( \rdv|Add0~58\ ))
-- \rdv|Add0~62\ = CARRY(( !\rdv|p[21]~DUPLICATE_q\ ) + ( VCC ) + ( \rdv|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \rdv|ALT_INV_p[21]~DUPLICATE_q\,
	cin => \rdv|Add0~58\,
	sumout => \rdv|Add0~61_sumout\,
	cout => \rdv|Add0~62\);

-- Location: LABCELL_X36_Y2_N6
\rdv|p[21]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \rdv|p[21]~14_combout\ = ( !\rdv|Add0~61_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \rdv|ALT_INV_Add0~61_sumout\,
	combout => \rdv|p[21]~14_combout\);

-- Location: FF_X36_Y2_N7
\rdv|p[21]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \rdv|p[21]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rdv|p[21]~DUPLICATE_q\);

-- Location: LABCELL_X37_Y1_N36
\rdv|Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \rdv|Add0~65_sumout\ = SUM(( !\rdv|p\(22) ) + ( VCC ) + ( \rdv|Add0~62\ ))
-- \rdv|Add0~66\ = CARRY(( !\rdv|p\(22) ) + ( VCC ) + ( \rdv|Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \rdv|ALT_INV_p\(22),
	cin => \rdv|Add0~62\,
	sumout => \rdv|Add0~65_sumout\,
	cout => \rdv|Add0~66\);

-- Location: LABCELL_X36_Y2_N45
\rdv|p[22]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \rdv|p[22]~15_combout\ = ( !\rdv|Add0~65_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \rdv|ALT_INV_Add0~65_sumout\,
	combout => \rdv|p[22]~15_combout\);

-- Location: FF_X36_Y2_N46
\rdv|p[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \rdv|p[22]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rdv|p\(22));

-- Location: LABCELL_X37_Y1_N39
\rdv|Add0~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \rdv|Add0~113_sumout\ = SUM(( \rdv|p\(23) ) + ( VCC ) + ( \rdv|Add0~66\ ))
-- \rdv|Add0~114\ = CARRY(( \rdv|p\(23) ) + ( VCC ) + ( \rdv|Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \rdv|ALT_INV_p\(23),
	cin => \rdv|Add0~66\,
	sumout => \rdv|Add0~113_sumout\,
	cout => \rdv|Add0~114\);

-- Location: FF_X37_Y1_N40
\rdv|p[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \rdv|Add0~113_sumout\,
	sclr => \rdv|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rdv|p\(23));

-- Location: LABCELL_X37_Y1_N42
\rdv|Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \rdv|Add0~69_sumout\ = SUM(( !\rdv|p[24]~DUPLICATE_q\ ) + ( VCC ) + ( \rdv|Add0~114\ ))
-- \rdv|Add0~70\ = CARRY(( !\rdv|p[24]~DUPLICATE_q\ ) + ( VCC ) + ( \rdv|Add0~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \rdv|ALT_INV_p[24]~DUPLICATE_q\,
	cin => \rdv|Add0~114\,
	sumout => \rdv|Add0~69_sumout\,
	cout => \rdv|Add0~70\);

-- Location: LABCELL_X36_Y2_N54
\rdv|p[24]~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \rdv|p[24]~16_combout\ = ( !\rdv|Add0~69_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \rdv|ALT_INV_Add0~69_sumout\,
	combout => \rdv|p[24]~16_combout\);

-- Location: FF_X36_Y2_N55
\rdv|p[24]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \rdv|p[24]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rdv|p[24]~DUPLICATE_q\);

-- Location: LABCELL_X37_Y1_N45
\rdv|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \rdv|Add0~1_sumout\ = SUM(( \rdv|p\(25) ) + ( VCC ) + ( \rdv|Add0~70\ ))
-- \rdv|Add0~2\ = CARRY(( \rdv|p\(25) ) + ( VCC ) + ( \rdv|Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \rdv|ALT_INV_p\(25),
	cin => \rdv|Add0~70\,
	sumout => \rdv|Add0~1_sumout\,
	cout => \rdv|Add0~2\);

-- Location: FF_X37_Y1_N47
\rdv|p[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \rdv|Add0~1_sumout\,
	sclr => \rdv|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rdv|p\(25));

-- Location: LABCELL_X37_Y1_N48
\rdv|Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \rdv|Add0~73_sumout\ = SUM(( \rdv|p\(26) ) + ( VCC ) + ( \rdv|Add0~2\ ))
-- \rdv|Add0~74\ = CARRY(( \rdv|p\(26) ) + ( VCC ) + ( \rdv|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \rdv|ALT_INV_p\(26),
	cin => \rdv|Add0~2\,
	sumout => \rdv|Add0~73_sumout\,
	cout => \rdv|Add0~74\);

-- Location: FF_X37_Y1_N49
\rdv|p[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \rdv|Add0~73_sumout\,
	sclr => \rdv|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rdv|p\(26));

-- Location: LABCELL_X37_Y1_N51
\rdv|Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \rdv|Add0~77_sumout\ = SUM(( \rdv|p\(27) ) + ( VCC ) + ( \rdv|Add0~74\ ))
-- \rdv|Add0~78\ = CARRY(( \rdv|p\(27) ) + ( VCC ) + ( \rdv|Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \rdv|ALT_INV_p\(27),
	cin => \rdv|Add0~74\,
	sumout => \rdv|Add0~77_sumout\,
	cout => \rdv|Add0~78\);

-- Location: FF_X37_Y1_N53
\rdv|p[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \rdv|Add0~77_sumout\,
	sclr => \rdv|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rdv|p\(27));

-- Location: FF_X36_Y2_N37
\rdv|p[28]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \rdv|Add0~81_sumout\,
	sclr => \rdv|Equal0~5_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rdv|p[28]~DUPLICATE_q\);

-- Location: LABCELL_X37_Y1_N54
\rdv|Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \rdv|Add0~81_sumout\ = SUM(( \rdv|p[28]~DUPLICATE_q\ ) + ( VCC ) + ( \rdv|Add0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \rdv|ALT_INV_p[28]~DUPLICATE_q\,
	cin => \rdv|Add0~78\,
	sumout => \rdv|Add0~81_sumout\);

-- Location: FF_X36_Y2_N38
\rdv|p[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \rdv|Add0~81_sumout\,
	sclr => \rdv|Equal0~5_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rdv|p\(28));

-- Location: LABCELL_X36_Y2_N0
\rdv|Equal0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \rdv|Equal0~3_combout\ = ( !\rdv|p\(28) & ( !\rdv|p\(8) & ( (!\rdv|p\(7) & (!\rdv|p\(27) & (!\rdv|p\(6) & !\rdv|p\(26)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rdv|ALT_INV_p\(7),
	datab => \rdv|ALT_INV_p\(27),
	datac => \rdv|ALT_INV_p\(6),
	datad => \rdv|ALT_INV_p\(26),
	datae => \rdv|ALT_INV_p\(28),
	dataf => \rdv|ALT_INV_p\(8),
	combout => \rdv|Equal0~3_combout\);

-- Location: LABCELL_X36_Y2_N24
\rdv|Equal0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \rdv|Equal0~4_combout\ = ( !\rdv|p\(15) & ( (!\rdv|p\(10) & (!\rdv|p\(9) & (!\rdv|p\(23) & !\rdv|p\(17)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rdv|ALT_INV_p\(10),
	datab => \rdv|ALT_INV_p\(9),
	datac => \rdv|ALT_INV_p\(23),
	datad => \rdv|ALT_INV_p\(17),
	dataf => \rdv|ALT_INV_p\(15),
	combout => \rdv|Equal0~4_combout\);

-- Location: FF_X36_Y2_N56
\rdv|p[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \rdv|p[24]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rdv|p\(24));

-- Location: FF_X36_Y2_N11
\rdv|p[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \rdv|p[20]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rdv|p\(20));

-- Location: FF_X36_Y2_N8
\rdv|p[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \rdv|p[21]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rdv|p\(21));

-- Location: LABCELL_X36_Y2_N42
\rdv|Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \rdv|Equal0~2_combout\ = ( \rdv|p\(21) & ( (\rdv|p\(24) & (\rdv|p\(20) & (\rdv|p\(22) & \rdv|p\(19)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rdv|ALT_INV_p\(24),
	datab => \rdv|ALT_INV_p\(20),
	datac => \rdv|ALT_INV_p\(22),
	datad => \rdv|ALT_INV_p\(19),
	dataf => \rdv|ALT_INV_p\(21),
	combout => \rdv|Equal0~2_combout\);

-- Location: FF_X37_Y2_N25
\rdv|p[4]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \rdv|p[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rdv|p[4]~DUPLICATE_q\);

-- Location: FF_X37_Y2_N22
\rdv|p[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \rdv|p[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rdv|p[0]~DUPLICATE_q\);

-- Location: FF_X37_Y2_N20
\rdv|p[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \rdv|p[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rdv|p[3]~DUPLICATE_q\);

-- Location: FF_X37_Y2_N1
\rdv|p[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \rdv|p[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rdv|p[1]~DUPLICATE_q\);

-- Location: LABCELL_X37_Y2_N6
\rdv|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \rdv|Equal0~0_combout\ = ( \rdv|p[3]~DUPLICATE_q\ & ( \rdv|p[1]~DUPLICATE_q\ & ( (\rdv|p[4]~DUPLICATE_q\ & (\rdv|p\(5) & (\rdv|p[0]~DUPLICATE_q\ & \rdv|p\(2)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rdv|ALT_INV_p[4]~DUPLICATE_q\,
	datab => \rdv|ALT_INV_p\(5),
	datac => \rdv|ALT_INV_p[0]~DUPLICATE_q\,
	datad => \rdv|ALT_INV_p\(2),
	datae => \rdv|ALT_INV_p[3]~DUPLICATE_q\,
	dataf => \rdv|ALT_INV_p[1]~DUPLICATE_q\,
	combout => \rdv|Equal0~0_combout\);

-- Location: FF_X36_Y2_N50
\rdv|p[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \rdv|p[13]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rdv|p\(13));

-- Location: FF_X36_Y2_N41
\rdv|p[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \rdv|p[12]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rdv|p\(12));

-- Location: FF_X36_Y2_N29
\rdv|p[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \rdv|p[11]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rdv|p\(11));

-- Location: LABCELL_X36_Y2_N18
\rdv|Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \rdv|Equal0~1_combout\ = ( \rdv|p\(11) & ( \rdv|p\(14) & ( (\rdv|p\(16) & (\rdv|p\(18) & (\rdv|p\(13) & \rdv|p\(12)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rdv|ALT_INV_p\(16),
	datab => \rdv|ALT_INV_p\(18),
	datac => \rdv|ALT_INV_p\(13),
	datad => \rdv|ALT_INV_p\(12),
	datae => \rdv|ALT_INV_p\(11),
	dataf => \rdv|ALT_INV_p\(14),
	combout => \rdv|Equal0~1_combout\);

-- Location: LABCELL_X36_Y2_N30
\rdv|Equal0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \rdv|Equal0~5_combout\ = ( \rdv|Equal0~0_combout\ & ( \rdv|Equal0~1_combout\ & ( (\rdv|Equal0~3_combout\ & (!\rdv|p\(25) & (\rdv|Equal0~4_combout\ & \rdv|Equal0~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rdv|ALT_INV_Equal0~3_combout\,
	datab => \rdv|ALT_INV_p\(25),
	datac => \rdv|ALT_INV_Equal0~4_combout\,
	datad => \rdv|ALT_INV_Equal0~2_combout\,
	datae => \rdv|ALT_INV_Equal0~0_combout\,
	dataf => \rdv|ALT_INV_Equal0~1_combout\,
	combout => \rdv|Equal0~5_combout\);

-- Location: FF_X36_Y2_N4
\rdv|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	asdata => \rdv|Equal0~5_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rdv|q~q\);

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

-- Location: MLABCELL_X34_Y1_N33
\morsetobinary|outtt~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \morsetobinary|outtt~4_combout\ = ( !\SW[0]~input_o\ & ( (\SW[1]~input_o\ & (\KEY[0]~input_o\ & !\SW[2]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000000000001010000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[1]~input_o\,
	datac => \ALT_INV_KEY[0]~input_o\,
	datad => \ALT_INV_SW[2]~input_o\,
	dataf => \ALT_INV_SW[0]~input_o\,
	combout => \morsetobinary|outtt~4_combout\);

-- Location: FF_X34_Y1_N35
\morsetobinary|outtt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \morsetobinary|outtt~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \morsetobinary|outtt\(10));

-- Location: MLABCELL_X34_Y1_N27
\s12bit|b10|M2|m~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \s12bit|b10|M2|m~0_combout\ = ( \morsetobinary|outtt\(10) & ( !\KEY[1]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_KEY[1]~input_o\,
	dataf => \morsetobinary|ALT_INV_outtt\(10),
	combout => \s12bit|b10|M2|m~0_combout\);

-- Location: FF_X34_Y1_N28
\s12bit|b10|F0|out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rdv|q~q\,
	d => \s12bit|b10|M2|m~0_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s12bit|b10|F0|out~q\);

-- Location: MLABCELL_X34_Y1_N51
\s12bit|b9|M2|m~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \s12bit|b9|M2|m~0_combout\ = ( \KEY[1]~input_o\ & ( \s12bit|b10|F0|out~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \s12bit|b10|F0|ALT_INV_out~q\,
	datae => \ALT_INV_KEY[1]~input_o\,
	combout => \s12bit|b9|M2|m~0_combout\);

-- Location: FF_X34_Y1_N52
\s12bit|b9|F0|out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rdv|q~q\,
	d => \s12bit|b9|M2|m~0_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s12bit|b9|F0|out~q\);

-- Location: MLABCELL_X34_Y1_N54
\s12bit|b8|F0|out~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \s12bit|b8|F0|out~feeder_combout\ = \s12bit|b9|F0|out~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \s12bit|b9|F0|ALT_INV_out~q\,
	combout => \s12bit|b8|F0|out~feeder_combout\);

-- Location: LABCELL_X33_Y1_N6
\morsetobinary|outtt~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \morsetobinary|outtt~5_combout\ = ( \SW[1]~input_o\ & ( !\SW[0]~input_o\ ) ) # ( !\SW[1]~input_o\ & ( \SW[0]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_SW[0]~input_o\,
	dataf => \ALT_INV_SW[1]~input_o\,
	combout => \morsetobinary|outtt~5_combout\);

-- Location: FF_X33_Y1_N7
\morsetobinary|outtt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \morsetobinary|outtt~5_combout\,
	sclr => \ALT_INV_KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \morsetobinary|outtt\(8));

-- Location: FF_X34_Y1_N55
\s12bit|b8|F0|out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rdv|q~q\,
	d => \s12bit|b8|F0|out~feeder_combout\,
	asdata => \morsetobinary|outtt\(8),
	clrn => \KEY[0]~input_o\,
	sload => \ALT_INV_KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s12bit|b8|F0|out~q\);

-- Location: MLABCELL_X34_Y1_N24
\s12bit|b7|F0|out~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \s12bit|b7|F0|out~feeder_combout\ = \s12bit|b8|F0|out~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \s12bit|b8|F0|ALT_INV_out~q\,
	combout => \s12bit|b7|F0|out~feeder_combout\);

-- Location: FF_X34_Y1_N25
\s12bit|b7|F0|out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rdv|q~q\,
	d => \s12bit|b7|F0|out~feeder_combout\,
	asdata => \morsetobinary|outtt\(10),
	clrn => \KEY[0]~input_o\,
	sload => \ALT_INV_KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s12bit|b7|F0|out~q\);

-- Location: MLABCELL_X34_Y1_N21
\s12bit|b6|F0|out~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \s12bit|b6|F0|out~feeder_combout\ = \s12bit|b7|F0|out~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \s12bit|b7|F0|ALT_INV_out~q\,
	combout => \s12bit|b6|F0|out~feeder_combout\);

-- Location: LABCELL_X33_Y1_N45
\morsetobinary|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \morsetobinary|Equal0~0_combout\ = ( \SW[1]~input_o\ ) # ( !\SW[1]~input_o\ & ( \SW[0]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[0]~input_o\,
	dataf => \ALT_INV_SW[1]~input_o\,
	combout => \morsetobinary|Equal0~0_combout\);

-- Location: FF_X33_Y1_N46
\morsetobinary|outtt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \morsetobinary|Equal0~0_combout\,
	sclr => \ALT_INV_KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \morsetobinary|outtt\(6));

-- Location: FF_X34_Y1_N22
\s12bit|b6|F0|out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rdv|q~q\,
	d => \s12bit|b6|F0|out~feeder_combout\,
	asdata => \morsetobinary|outtt\(6),
	clrn => \KEY[0]~input_o\,
	sload => \ALT_INV_KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s12bit|b6|F0|out~q\);

-- Location: MLABCELL_X34_Y1_N0
\s12bit|b5|F0|out~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \s12bit|b5|F0|out~feeder_combout\ = \s12bit|b6|F0|out~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \s12bit|b6|F0|ALT_INV_out~q\,
	combout => \s12bit|b5|F0|out~feeder_combout\);

-- Location: MLABCELL_X34_Y1_N30
\morsetobinary|outtt~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \morsetobinary|outtt~3_combout\ = ( \SW[2]~input_o\ & ( (\KEY[0]~input_o\ & (!\SW[1]~input_o\ $ (!\SW[0]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000010110100000000001011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[1]~input_o\,
	datac => \ALT_INV_SW[0]~input_o\,
	datad => \ALT_INV_KEY[0]~input_o\,
	dataf => \ALT_INV_SW[2]~input_o\,
	combout => \morsetobinary|outtt~3_combout\);

-- Location: FF_X34_Y1_N32
\morsetobinary|outtt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \morsetobinary|outtt~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \morsetobinary|outtt\(5));

-- Location: FF_X34_Y1_N1
\s12bit|b5|F0|out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rdv|q~q\,
	d => \s12bit|b5|F0|out~feeder_combout\,
	asdata => \morsetobinary|outtt\(5),
	clrn => \KEY[0]~input_o\,
	sload => \ALT_INV_KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s12bit|b5|F0|out~q\);

-- Location: MLABCELL_X34_Y1_N36
\s12bit|b4|F0|out~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \s12bit|b4|F0|out~feeder_combout\ = \s12bit|b5|F0|out~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \s12bit|b5|F0|ALT_INV_out~q\,
	combout => \s12bit|b4|F0|out~feeder_combout\);

-- Location: MLABCELL_X34_Y1_N6
\morsetobinary|outtt~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \morsetobinary|outtt~1_combout\ = ( \SW[2]~input_o\ & ( ((!\KEY[0]~input_o\) # (\SW[0]~input_o\)) # (\SW[1]~input_o\) ) ) # ( !\SW[2]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111010111111111111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[1]~input_o\,
	datac => \ALT_INV_SW[0]~input_o\,
	datad => \ALT_INV_KEY[0]~input_o\,
	dataf => \ALT_INV_SW[2]~input_o\,
	combout => \morsetobinary|outtt~1_combout\);

-- Location: FF_X34_Y1_N8
\morsetobinary|outtt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \morsetobinary|outtt~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \morsetobinary|outtt\(2));

-- Location: FF_X34_Y1_N37
\s12bit|b4|F0|out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rdv|q~q\,
	d => \s12bit|b4|F0|out~feeder_combout\,
	asdata => \morsetobinary|outtt\(2),
	clrn => \KEY[0]~input_o\,
	sload => \ALT_INV_KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s12bit|b4|F0|out~q\);

-- Location: MLABCELL_X34_Y1_N39
\s12bit|b3|F0|out~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \s12bit|b3|F0|out~feeder_combout\ = \s12bit|b4|F0|out~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \s12bit|b4|F0|ALT_INV_out~q\,
	combout => \s12bit|b3|F0|out~feeder_combout\);

-- Location: MLABCELL_X34_Y1_N9
\morsetobinary|outtt~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \morsetobinary|outtt~2_combout\ = ( \SW[0]~input_o\ & ( !\KEY[0]~input_o\ ) ) # ( !\SW[0]~input_o\ & ( (!\KEY[0]~input_o\) # ((!\SW[1]~input_o\ & !\SW[2]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101011110000111110101111000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[1]~input_o\,
	datac => \ALT_INV_KEY[0]~input_o\,
	datad => \ALT_INV_SW[2]~input_o\,
	dataf => \ALT_INV_SW[0]~input_o\,
	combout => \morsetobinary|outtt~2_combout\);

-- Location: FF_X34_Y1_N11
\morsetobinary|outtt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \morsetobinary|outtt~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \morsetobinary|outtt\(3));

-- Location: FF_X34_Y1_N40
\s12bit|b3|F0|out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rdv|q~q\,
	d => \s12bit|b3|F0|out~feeder_combout\,
	asdata => \morsetobinary|outtt\(3),
	clrn => \KEY[0]~input_o\,
	sload => \ALT_INV_KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s12bit|b3|F0|out~q\);

-- Location: MLABCELL_X34_Y1_N15
\s12bit|b2|F0|out~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \s12bit|b2|F0|out~feeder_combout\ = \s12bit|b3|F0|out~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \s12bit|b3|F0|ALT_INV_out~q\,
	combout => \s12bit|b2|F0|out~feeder_combout\);

-- Location: FF_X34_Y1_N16
\s12bit|b2|F0|out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rdv|q~q\,
	d => \s12bit|b2|F0|out~feeder_combout\,
	asdata => \morsetobinary|outtt\(2),
	clrn => \KEY[0]~input_o\,
	sload => \ALT_INV_KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s12bit|b2|F0|out~q\);

-- Location: MLABCELL_X34_Y1_N42
\s12bit|b1|F0|out~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \s12bit|b1|F0|out~feeder_combout\ = \s12bit|b2|F0|out~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \s12bit|b2|F0|ALT_INV_out~q\,
	combout => \s12bit|b1|F0|out~feeder_combout\);

-- Location: LABCELL_X33_Y1_N18
\morsetobinary|outtt~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \morsetobinary|outtt~0_combout\ = ( \SW[1]~input_o\ & ( (!\SW[2]~input_o\) # (!\SW[0]~input_o\) ) ) # ( !\SW[1]~input_o\ & ( (!\SW[2]~input_o\ & \SW[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110011111100111111001111110011111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SW[2]~input_o\,
	datac => \ALT_INV_SW[0]~input_o\,
	dataf => \ALT_INV_SW[1]~input_o\,
	combout => \morsetobinary|outtt~0_combout\);

-- Location: FF_X33_Y1_N19
\morsetobinary|outtt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \morsetobinary|outtt~0_combout\,
	sclr => \ALT_INV_KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \morsetobinary|outtt\(1));

-- Location: FF_X34_Y1_N43
\s12bit|b1|F0|out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rdv|q~q\,
	d => \s12bit|b1|F0|out~feeder_combout\,
	asdata => \morsetobinary|outtt\(1),
	clrn => \KEY[0]~input_o\,
	sload => \ALT_INV_KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s12bit|b1|F0|out~q\);

-- Location: MLABCELL_X34_Y1_N12
\s12bit|b0|M2|m~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \s12bit|b0|M2|m~0_combout\ = (!\KEY[1]~input_o\) # (\s12bit|b1|F0|out~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111101010101111111110101010111111111010101011111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \s12bit|b1|F0|ALT_INV_out~q\,
	datad => \ALT_INV_KEY[1]~input_o\,
	combout => \s12bit|b0|M2|m~0_combout\);

-- Location: FF_X34_Y1_N13
\s12bit|b0|F0|out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \rdv|q~q\,
	d => \s12bit|b0|M2|m~0_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s12bit|b0|F0|out~q\);

-- Location: LABCELL_X24_Y27_N3
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


