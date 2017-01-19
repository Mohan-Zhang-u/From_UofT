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

-- DATE "06/27/2016 19:31:01"

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

ENTITY 	lab4part2 IS
    PORT (
	SW : IN std_logic_vector(7 DOWNTO 0);
	CLOCK_50 : IN std_logic;
	HEX0 : OUT std_logic_vector(6 DOWNTO 0)
	);
END lab4part2;

-- Design Ports Information
-- SW[4]	=>  Location: PIN_AD11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_AD12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_AE11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_AC9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[0]	=>  Location: PIN_AE26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[1]	=>  Location: PIN_AE27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[2]	=>  Location: PIN_AE28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[3]	=>  Location: PIN_AG27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[4]	=>  Location: PIN_AF28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[5]	=>  Location: PIN_AG28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[6]	=>  Location: PIN_AH28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_AF10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_AF14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_AF9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_AC12,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF lab4part2 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_SW : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputCLKENA0_outclk\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \RD|Add0~77_sumout\ : std_logic;
SIGNAL \RD|count[0]~23_combout\ : std_logic;
SIGNAL \RD|Add0~78\ : std_logic;
SIGNAL \RD|Add0~73_sumout\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \RD|count~11_combout\ : std_logic;
SIGNAL \RD|count[1]~22_combout\ : std_logic;
SIGNAL \RD|Add0~74\ : std_logic;
SIGNAL \RD|Add0~69_sumout\ : std_logic;
SIGNAL \RD|count[2]~21_combout\ : std_logic;
SIGNAL \RD|Add0~70\ : std_logic;
SIGNAL \RD|Add0~81_sumout\ : std_logic;
SIGNAL \RD|count[3]~24_combout\ : std_logic;
SIGNAL \RD|Add0~82\ : std_logic;
SIGNAL \RD|Add0~85_sumout\ : std_logic;
SIGNAL \RD|count[4]~25_combout\ : std_logic;
SIGNAL \RD|Add0~86\ : std_logic;
SIGNAL \RD|Add0~89_sumout\ : std_logic;
SIGNAL \RD|count[5]~26_combout\ : std_logic;
SIGNAL \RD|Equal0~3_combout\ : std_logic;
SIGNAL \RD|count[2]~2_combout\ : std_logic;
SIGNAL \RD|count[18]~3_combout\ : std_logic;
SIGNAL \RD|count~9_combout\ : std_logic;
SIGNAL \RD|Add0~90\ : std_logic;
SIGNAL \RD|Add0~93_sumout\ : std_logic;
SIGNAL \RD|count[6]~27_combout\ : std_logic;
SIGNAL \RD|Add0~94\ : std_logic;
SIGNAL \RD|Add0~97_sumout\ : std_logic;
SIGNAL \RD|count[7]~28_combout\ : std_logic;
SIGNAL \RD|Equal0~4_combout\ : std_logic;
SIGNAL \RD|Equal0~2_combout\ : std_logic;
SIGNAL \RD|Equal0~1_combout\ : std_logic;
SIGNAL \RD|count[2]~29_combout\ : std_logic;
SIGNAL \RD|count[7]~30_combout\ : std_logic;
SIGNAL \RD|Add0~98\ : std_logic;
SIGNAL \RD|Add0~101_sumout\ : std_logic;
SIGNAL \RD|count[8]~31_combout\ : std_logic;
SIGNAL \RD|count[8]~32_combout\ : std_logic;
SIGNAL \RD|Add0~102\ : std_logic;
SIGNAL \RD|Add0~105_sumout\ : std_logic;
SIGNAL \RD|count[9]~33_combout\ : std_logic;
SIGNAL \RD|Add0~106\ : std_logic;
SIGNAL \RD|Add0~109_sumout\ : std_logic;
SIGNAL \RD|count[10]~34_combout\ : std_logic;
SIGNAL \RD|Add0~110\ : std_logic;
SIGNAL \RD|Add0~113_sumout\ : std_logic;
SIGNAL \RD|count[11]~35_combout\ : std_logic;
SIGNAL \RD|Add0~114\ : std_logic;
SIGNAL \RD|Add0~45_sumout\ : std_logic;
SIGNAL \RD|count[12]~15_combout\ : std_logic;
SIGNAL \RD|Add0~46\ : std_logic;
SIGNAL \RD|Add0~49_sumout\ : std_logic;
SIGNAL \RD|count[13]~16_combout\ : std_logic;
SIGNAL \RD|Add0~50\ : std_logic;
SIGNAL \RD|Add0~53_sumout\ : std_logic;
SIGNAL \RD|count[14]~17_combout\ : std_logic;
SIGNAL \RD|Add0~54\ : std_logic;
SIGNAL \RD|Add0~57_sumout\ : std_logic;
SIGNAL \RD|count[15]~18_combout\ : std_logic;
SIGNAL \RD|Add0~58\ : std_logic;
SIGNAL \RD|Add0~61_sumout\ : std_logic;
SIGNAL \RD|count[16]~19_combout\ : std_logic;
SIGNAL \RD|Add0~62\ : std_logic;
SIGNAL \RD|Add0~65_sumout\ : std_logic;
SIGNAL \RD|count[17]~20_combout\ : std_logic;
SIGNAL \RD|Add0~66\ : std_logic;
SIGNAL \RD|Add0~21_sumout\ : std_logic;
SIGNAL \RD|count[18]~7_combout\ : std_logic;
SIGNAL \RD|Add0~22\ : std_logic;
SIGNAL \RD|Add0~25_sumout\ : std_logic;
SIGNAL \RD|count[19]~8_combout\ : std_logic;
SIGNAL \RD|Add0~26\ : std_logic;
SIGNAL \RD|Add0~29_sumout\ : std_logic;
SIGNAL \RD|count[20]~10_combout\ : std_logic;
SIGNAL \RD|Add0~30\ : std_logic;
SIGNAL \RD|Add0~33_sumout\ : std_logic;
SIGNAL \RD|count[21]~12_combout\ : std_logic;
SIGNAL \RD|Add0~34\ : std_logic;
SIGNAL \RD|Add0~37_sumout\ : std_logic;
SIGNAL \RD|count[22]~13_combout\ : std_logic;
SIGNAL \RD|Add0~38\ : std_logic;
SIGNAL \RD|Add0~41_sumout\ : std_logic;
SIGNAL \RD|count[23]~14_combout\ : std_logic;
SIGNAL \RD|Add0~42\ : std_logic;
SIGNAL \RD|Add0~1_sumout\ : std_logic;
SIGNAL \RD|count[24]~0_combout\ : std_logic;
SIGNAL \RD|Add0~2\ : std_logic;
SIGNAL \RD|Add0~5_sumout\ : std_logic;
SIGNAL \RD|count[25]~1_combout\ : std_logic;
SIGNAL \RD|Add0~6\ : std_logic;
SIGNAL \RD|Add0~9_sumout\ : std_logic;
SIGNAL \RD|count[26]~4_combout\ : std_logic;
SIGNAL \RD|Add0~10\ : std_logic;
SIGNAL \RD|Add0~13_sumout\ : std_logic;
SIGNAL \RD|count[27]~5_combout\ : std_logic;
SIGNAL \RD|Add0~14\ : std_logic;
SIGNAL \RD|Add0~17_sumout\ : std_logic;
SIGNAL \RD|count[28]~6_combout\ : std_logic;
SIGNAL \RD|Equal0~0_combout\ : std_logic;
SIGNAL \RD|Equal0~5_combout\ : std_logic;
SIGNAL \RD|load1~0_combout\ : std_logic;
SIGNAL \RD|load1~q\ : std_logic;
SIGNAL \DC|load~2_combout\ : std_logic;
SIGNAL \DC|load~0_combout\ : std_logic;
SIGNAL \DC|load~3_combout\ : std_logic;
SIGNAL \DC|load~1_combout\ : std_logic;
SIGNAL \h0|out0~0_combout\ : std_logic;
SIGNAL \h0|out1~0_combout\ : std_logic;
SIGNAL \h0|out2~0_combout\ : std_logic;
SIGNAL \h0|out3~0_combout\ : std_logic;
SIGNAL \h0|out4~0_combout\ : std_logic;
SIGNAL \h0|out5~0_combout\ : std_logic;
SIGNAL \h0|out6~0_combout\ : std_logic;
SIGNAL \DC|load\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RD|count\ : std_logic_vector(28 DOWNTO 0);
SIGNAL \ALT_INV_SW[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[3]~input_o\ : std_logic;
SIGNAL \RD|ALT_INV_count[8]~31_combout\ : std_logic;
SIGNAL \RD|ALT_INV_count[7]~30_combout\ : std_logic;
SIGNAL \RD|ALT_INV_count[2]~29_combout\ : std_logic;
SIGNAL \RD|ALT_INV_count~11_combout\ : std_logic;
SIGNAL \RD|ALT_INV_count~9_combout\ : std_logic;
SIGNAL \RD|ALT_INV_count[18]~3_combout\ : std_logic;
SIGNAL \RD|ALT_INV_count[2]~2_combout\ : std_logic;
SIGNAL \RD|ALT_INV_Equal0~5_combout\ : std_logic;
SIGNAL \RD|ALT_INV_Equal0~4_combout\ : std_logic;
SIGNAL \RD|ALT_INV_count\ : std_logic_vector(28 DOWNTO 0);
SIGNAL \RD|ALT_INV_Equal0~3_combout\ : std_logic;
SIGNAL \RD|ALT_INV_Equal0~2_combout\ : std_logic;
SIGNAL \RD|ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \RD|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \RD|ALT_INV_load1~q\ : std_logic;
SIGNAL \DC|ALT_INV_load\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RD|ALT_INV_Add0~113_sumout\ : std_logic;
SIGNAL \RD|ALT_INV_Add0~109_sumout\ : std_logic;
SIGNAL \RD|ALT_INV_Add0~105_sumout\ : std_logic;
SIGNAL \RD|ALT_INV_Add0~101_sumout\ : std_logic;
SIGNAL \RD|ALT_INV_Add0~97_sumout\ : std_logic;
SIGNAL \RD|ALT_INV_Add0~93_sumout\ : std_logic;
SIGNAL \RD|ALT_INV_Add0~89_sumout\ : std_logic;
SIGNAL \RD|ALT_INV_Add0~85_sumout\ : std_logic;
SIGNAL \RD|ALT_INV_Add0~81_sumout\ : std_logic;
SIGNAL \RD|ALT_INV_Add0~77_sumout\ : std_logic;
SIGNAL \RD|ALT_INV_Add0~73_sumout\ : std_logic;
SIGNAL \RD|ALT_INV_Add0~69_sumout\ : std_logic;
SIGNAL \RD|ALT_INV_Add0~65_sumout\ : std_logic;
SIGNAL \RD|ALT_INV_Add0~61_sumout\ : std_logic;
SIGNAL \RD|ALT_INV_Add0~57_sumout\ : std_logic;
SIGNAL \RD|ALT_INV_Add0~53_sumout\ : std_logic;
SIGNAL \RD|ALT_INV_Add0~49_sumout\ : std_logic;
SIGNAL \RD|ALT_INV_Add0~45_sumout\ : std_logic;
SIGNAL \RD|ALT_INV_Add0~41_sumout\ : std_logic;
SIGNAL \RD|ALT_INV_Add0~37_sumout\ : std_logic;
SIGNAL \RD|ALT_INV_Add0~33_sumout\ : std_logic;
SIGNAL \RD|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \RD|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \RD|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \RD|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \RD|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \RD|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \RD|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \RD|ALT_INV_Add0~1_sumout\ : std_logic;

BEGIN

ww_SW <= SW;
ww_CLOCK_50 <= CLOCK_50;
HEX0 <= ww_HEX0;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_SW[1]~input_o\ <= NOT \SW[1]~input_o\;
\ALT_INV_SW[0]~input_o\ <= NOT \SW[0]~input_o\;
\ALT_INV_SW[2]~input_o\ <= NOT \SW[2]~input_o\;
\ALT_INV_SW[3]~input_o\ <= NOT \SW[3]~input_o\;
\RD|ALT_INV_count[8]~31_combout\ <= NOT \RD|count[8]~31_combout\;
\RD|ALT_INV_count[7]~30_combout\ <= NOT \RD|count[7]~30_combout\;
\RD|ALT_INV_count[2]~29_combout\ <= NOT \RD|count[2]~29_combout\;
\RD|ALT_INV_count~11_combout\ <= NOT \RD|count~11_combout\;
\RD|ALT_INV_count~9_combout\ <= NOT \RD|count~9_combout\;
\RD|ALT_INV_count[18]~3_combout\ <= NOT \RD|count[18]~3_combout\;
\RD|ALT_INV_count[2]~2_combout\ <= NOT \RD|count[2]~2_combout\;
\RD|ALT_INV_Equal0~5_combout\ <= NOT \RD|Equal0~5_combout\;
\RD|ALT_INV_Equal0~4_combout\ <= NOT \RD|Equal0~4_combout\;
\RD|ALT_INV_count\(11) <= NOT \RD|count\(11);
\RD|ALT_INV_count\(10) <= NOT \RD|count\(10);
\RD|ALT_INV_count\(9) <= NOT \RD|count\(9);
\RD|ALT_INV_count\(8) <= NOT \RD|count\(8);
\RD|ALT_INV_count\(7) <= NOT \RD|count\(7);
\RD|ALT_INV_count\(6) <= NOT \RD|count\(6);
\RD|ALT_INV_Equal0~3_combout\ <= NOT \RD|Equal0~3_combout\;
\RD|ALT_INV_count\(5) <= NOT \RD|count\(5);
\RD|ALT_INV_count\(4) <= NOT \RD|count\(4);
\RD|ALT_INV_count\(3) <= NOT \RD|count\(3);
\RD|ALT_INV_count\(0) <= NOT \RD|count\(0);
\RD|ALT_INV_count\(1) <= NOT \RD|count\(1);
\RD|ALT_INV_count\(2) <= NOT \RD|count\(2);
\RD|ALT_INV_Equal0~2_combout\ <= NOT \RD|Equal0~2_combout\;
\RD|ALT_INV_count\(17) <= NOT \RD|count\(17);
\RD|ALT_INV_count\(16) <= NOT \RD|count\(16);
\RD|ALT_INV_count\(15) <= NOT \RD|count\(15);
\RD|ALT_INV_count\(14) <= NOT \RD|count\(14);
\RD|ALT_INV_count\(13) <= NOT \RD|count\(13);
\RD|ALT_INV_count\(12) <= NOT \RD|count\(12);
\RD|ALT_INV_Equal0~1_combout\ <= NOT \RD|Equal0~1_combout\;
\RD|ALT_INV_count\(23) <= NOT \RD|count\(23);
\RD|ALT_INV_count\(22) <= NOT \RD|count\(22);
\RD|ALT_INV_count\(21) <= NOT \RD|count\(21);
\RD|ALT_INV_count\(20) <= NOT \RD|count\(20);
\RD|ALT_INV_count\(19) <= NOT \RD|count\(19);
\RD|ALT_INV_count\(18) <= NOT \RD|count\(18);
\RD|ALT_INV_Equal0~0_combout\ <= NOT \RD|Equal0~0_combout\;
\RD|ALT_INV_count\(28) <= NOT \RD|count\(28);
\RD|ALT_INV_count\(27) <= NOT \RD|count\(27);
\RD|ALT_INV_count\(26) <= NOT \RD|count\(26);
\RD|ALT_INV_count\(25) <= NOT \RD|count\(25);
\RD|ALT_INV_count\(24) <= NOT \RD|count\(24);
\RD|ALT_INV_load1~q\ <= NOT \RD|load1~q\;
\DC|ALT_INV_load\(2) <= NOT \DC|load\(2);
\DC|ALT_INV_load\(0) <= NOT \DC|load\(0);
\DC|ALT_INV_load\(3) <= NOT \DC|load\(3);
\DC|ALT_INV_load\(1) <= NOT \DC|load\(1);
\RD|ALT_INV_Add0~113_sumout\ <= NOT \RD|Add0~113_sumout\;
\RD|ALT_INV_Add0~109_sumout\ <= NOT \RD|Add0~109_sumout\;
\RD|ALT_INV_Add0~105_sumout\ <= NOT \RD|Add0~105_sumout\;
\RD|ALT_INV_Add0~101_sumout\ <= NOT \RD|Add0~101_sumout\;
\RD|ALT_INV_Add0~97_sumout\ <= NOT \RD|Add0~97_sumout\;
\RD|ALT_INV_Add0~93_sumout\ <= NOT \RD|Add0~93_sumout\;
\RD|ALT_INV_Add0~89_sumout\ <= NOT \RD|Add0~89_sumout\;
\RD|ALT_INV_Add0~85_sumout\ <= NOT \RD|Add0~85_sumout\;
\RD|ALT_INV_Add0~81_sumout\ <= NOT \RD|Add0~81_sumout\;
\RD|ALT_INV_Add0~77_sumout\ <= NOT \RD|Add0~77_sumout\;
\RD|ALT_INV_Add0~73_sumout\ <= NOT \RD|Add0~73_sumout\;
\RD|ALT_INV_Add0~69_sumout\ <= NOT \RD|Add0~69_sumout\;
\RD|ALT_INV_Add0~65_sumout\ <= NOT \RD|Add0~65_sumout\;
\RD|ALT_INV_Add0~61_sumout\ <= NOT \RD|Add0~61_sumout\;
\RD|ALT_INV_Add0~57_sumout\ <= NOT \RD|Add0~57_sumout\;
\RD|ALT_INV_Add0~53_sumout\ <= NOT \RD|Add0~53_sumout\;
\RD|ALT_INV_Add0~49_sumout\ <= NOT \RD|Add0~49_sumout\;
\RD|ALT_INV_Add0~45_sumout\ <= NOT \RD|Add0~45_sumout\;
\RD|ALT_INV_Add0~41_sumout\ <= NOT \RD|Add0~41_sumout\;
\RD|ALT_INV_Add0~37_sumout\ <= NOT \RD|Add0~37_sumout\;
\RD|ALT_INV_Add0~33_sumout\ <= NOT \RD|Add0~33_sumout\;
\RD|ALT_INV_Add0~29_sumout\ <= NOT \RD|Add0~29_sumout\;
\RD|ALT_INV_Add0~25_sumout\ <= NOT \RD|Add0~25_sumout\;
\RD|ALT_INV_Add0~21_sumout\ <= NOT \RD|Add0~21_sumout\;
\RD|ALT_INV_Add0~17_sumout\ <= NOT \RD|Add0~17_sumout\;
\RD|ALT_INV_Add0~13_sumout\ <= NOT \RD|Add0~13_sumout\;
\RD|ALT_INV_Add0~9_sumout\ <= NOT \RD|Add0~9_sumout\;
\RD|ALT_INV_Add0~5_sumout\ <= NOT \RD|Add0~5_sumout\;
\RD|ALT_INV_Add0~1_sumout\ <= NOT \RD|Add0~1_sumout\;

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
	i => \h0|out3~0_combout\,
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
	i => \h0|out6~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(6));

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

-- Location: MLABCELL_X15_Y2_N0
\RD|Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \RD|Add0~77_sumout\ = SUM(( \RD|count\(0) ) + ( VCC ) + ( !VCC ))
-- \RD|Add0~78\ = CARRY(( \RD|count\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \RD|ALT_INV_count\(0),
	cin => GND,
	sumout => \RD|Add0~77_sumout\,
	cout => \RD|Add0~78\);

-- Location: MLABCELL_X15_Y2_N36
\RD|count[0]~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \RD|count[0]~23_combout\ = ( \RD|count\(0) & ( \RD|Add0~77_sumout\ ) ) # ( !\RD|count\(0) & ( \RD|Add0~77_sumout\ & ( (\SW[3]~input_o\ & ((\RD|Equal0~5_combout\) # (\SW[2]~input_o\))) ) ) ) # ( \RD|count\(0) & ( !\RD|Add0~77_sumout\ & ( (!\SW[3]~input_o\) 
-- # ((!\SW[2]~input_o\) # (\RD|Equal0~5_combout\)) ) ) ) # ( !\RD|count\(0) & ( !\RD|Add0~77_sumout\ & ( (\SW[3]~input_o\ & \RD|Equal0~5_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101111011101111111100010001010101011111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[3]~input_o\,
	datab => \ALT_INV_SW[2]~input_o\,
	datad => \RD|ALT_INV_Equal0~5_combout\,
	datae => \RD|ALT_INV_count\(0),
	dataf => \RD|ALT_INV_Add0~77_sumout\,
	combout => \RD|count[0]~23_combout\);

-- Location: FF_X15_Y2_N38
\RD|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RD|count[0]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RD|count\(0));

-- Location: MLABCELL_X15_Y2_N3
\RD|Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \RD|Add0~73_sumout\ = SUM(( \RD|count\(1) ) + ( VCC ) + ( \RD|Add0~78\ ))
-- \RD|Add0~74\ = CARRY(( \RD|count\(1) ) + ( VCC ) + ( \RD|Add0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \RD|ALT_INV_count\(1),
	cin => \RD|Add0~78\,
	sumout => \RD|Add0~73_sumout\,
	cout => \RD|Add0~74\);

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

-- Location: LABCELL_X16_Y1_N9
\RD|count~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \RD|count~11_combout\ = ( !\SW[1]~input_o\ & ( !\SW[0]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_SW[0]~input_o\,
	dataf => \ALT_INV_SW[1]~input_o\,
	combout => \RD|count~11_combout\);

-- Location: MLABCELL_X15_Y2_N54
\RD|count[1]~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \RD|count[1]~22_combout\ = ( \RD|count\(1) & ( \SW[3]~input_o\ & ( (!\RD|Equal0~5_combout\ & (((!\SW[2]~input_o\)) # (\RD|Add0~73_sumout\))) # (\RD|Equal0~5_combout\ & (((!\RD|count~11_combout\)))) ) ) ) # ( !\RD|count\(1) & ( \SW[3]~input_o\ & ( 
-- (!\RD|Equal0~5_combout\ & (\RD|Add0~73_sumout\ & (\SW[2]~input_o\))) # (\RD|Equal0~5_combout\ & (((!\RD|count~11_combout\)))) ) ) ) # ( \RD|count\(1) & ( !\SW[3]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100010001111100001101110111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RD|ALT_INV_Add0~73_sumout\,
	datab => \ALT_INV_SW[2]~input_o\,
	datac => \RD|ALT_INV_count~11_combout\,
	datad => \RD|ALT_INV_Equal0~5_combout\,
	datae => \RD|ALT_INV_count\(1),
	dataf => \ALT_INV_SW[3]~input_o\,
	combout => \RD|count[1]~22_combout\);

-- Location: FF_X15_Y2_N56
\RD|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RD|count[1]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RD|count\(1));

-- Location: MLABCELL_X15_Y2_N6
\RD|Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \RD|Add0~69_sumout\ = SUM(( \RD|count\(2) ) + ( VCC ) + ( \RD|Add0~74\ ))
-- \RD|Add0~70\ = CARRY(( \RD|count\(2) ) + ( VCC ) + ( \RD|Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RD|ALT_INV_count\(2),
	cin => \RD|Add0~74\,
	sumout => \RD|Add0~69_sumout\,
	cout => \RD|Add0~70\);

-- Location: MLABCELL_X15_Y2_N51
\RD|count[2]~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \RD|count[2]~21_combout\ = ( \RD|count\(2) & ( \RD|Add0~69_sumout\ & ( (!\SW[3]~input_o\) # ((!\RD|Equal0~5_combout\) # (!\RD|count~11_combout\)) ) ) ) # ( !\RD|count\(2) & ( \RD|Add0~69_sumout\ & ( (\SW[3]~input_o\ & ((!\RD|Equal0~5_combout\ & 
-- (\SW[2]~input_o\)) # (\RD|Equal0~5_combout\ & ((!\RD|count~11_combout\))))) ) ) ) # ( \RD|count\(2) & ( !\RD|Add0~69_sumout\ & ( (!\SW[3]~input_o\) # ((!\RD|Equal0~5_combout\ & (!\SW[2]~input_o\)) # (\RD|Equal0~5_combout\ & ((!\RD|count~11_combout\)))) ) 
-- ) ) # ( !\RD|count\(2) & ( !\RD|Add0~69_sumout\ & ( (\SW[3]~input_o\ & (\RD|Equal0~5_combout\ & !\RD|count~11_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100000000111110111110101000010101000001001111111111101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[3]~input_o\,
	datab => \RD|ALT_INV_Equal0~5_combout\,
	datac => \ALT_INV_SW[2]~input_o\,
	datad => \RD|ALT_INV_count~11_combout\,
	datae => \RD|ALT_INV_count\(2),
	dataf => \RD|ALT_INV_Add0~69_sumout\,
	combout => \RD|count[2]~21_combout\);

-- Location: FF_X15_Y2_N53
\RD|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RD|count[2]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RD|count\(2));

-- Location: MLABCELL_X15_Y2_N9
\RD|Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \RD|Add0~81_sumout\ = SUM(( \RD|count\(3) ) + ( VCC ) + ( \RD|Add0~70\ ))
-- \RD|Add0~82\ = CARRY(( \RD|count\(3) ) + ( VCC ) + ( \RD|Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RD|ALT_INV_count\(3),
	cin => \RD|Add0~70\,
	sumout => \RD|Add0~81_sumout\,
	cout => \RD|Add0~82\);

-- Location: MLABCELL_X15_Y2_N42
\RD|count[3]~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \RD|count[3]~24_combout\ = ( \RD|count\(3) & ( \RD|Add0~81_sumout\ & ( (!\RD|count~11_combout\) # ((!\SW[3]~input_o\) # (!\RD|Equal0~5_combout\)) ) ) ) # ( !\RD|count\(3) & ( \RD|Add0~81_sumout\ & ( (\SW[3]~input_o\ & ((!\RD|Equal0~5_combout\ & 
-- ((\SW[2]~input_o\))) # (\RD|Equal0~5_combout\ & (!\RD|count~11_combout\)))) ) ) ) # ( \RD|count\(3) & ( !\RD|Add0~81_sumout\ & ( (!\SW[3]~input_o\) # ((!\RD|Equal0~5_combout\ & ((!\SW[2]~input_o\))) # (\RD|Equal0~5_combout\ & (!\RD|count~11_combout\))) ) 
-- ) ) # ( !\RD|count\(3) & ( !\RD|Add0~81_sumout\ & ( (!\RD|count~11_combout\ & (\SW[3]~input_o\ & \RD|Equal0~5_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001010111111001111101000000011000010101111111111111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RD|ALT_INV_count~11_combout\,
	datab => \ALT_INV_SW[2]~input_o\,
	datac => \ALT_INV_SW[3]~input_o\,
	datad => \RD|ALT_INV_Equal0~5_combout\,
	datae => \RD|ALT_INV_count\(3),
	dataf => \RD|ALT_INV_Add0~81_sumout\,
	combout => \RD|count[3]~24_combout\);

-- Location: FF_X15_Y2_N44
\RD|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RD|count[3]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RD|count\(3));

-- Location: MLABCELL_X15_Y2_N12
\RD|Add0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \RD|Add0~85_sumout\ = SUM(( \RD|count\(4) ) + ( VCC ) + ( \RD|Add0~82\ ))
-- \RD|Add0~86\ = CARRY(( \RD|count\(4) ) + ( VCC ) + ( \RD|Add0~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RD|ALT_INV_count\(4),
	cin => \RD|Add0~82\,
	sumout => \RD|Add0~85_sumout\,
	cout => \RD|Add0~86\);

-- Location: MLABCELL_X15_Y2_N33
\RD|count[4]~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \RD|count[4]~25_combout\ = ( \RD|count\(4) & ( \RD|Add0~85_sumout\ & ( (!\RD|count~11_combout\) # ((!\RD|Equal0~5_combout\) # (!\SW[3]~input_o\)) ) ) ) # ( !\RD|count\(4) & ( \RD|Add0~85_sumout\ & ( (\SW[3]~input_o\ & ((!\RD|Equal0~5_combout\ & 
-- ((\SW[2]~input_o\))) # (\RD|Equal0~5_combout\ & (!\RD|count~11_combout\)))) ) ) ) # ( \RD|count\(4) & ( !\RD|Add0~85_sumout\ & ( (!\SW[3]~input_o\) # ((!\RD|Equal0~5_combout\ & ((!\SW[2]~input_o\))) # (\RD|Equal0~5_combout\ & (!\RD|count~11_combout\))) ) 
-- ) ) # ( !\RD|count\(4) & ( !\RD|Add0~85_sumout\ & ( (!\RD|count~11_combout\ & (\RD|Equal0~5_combout\ & \SW[3]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100010111111111110001000000000001011101111111111101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RD|ALT_INV_count~11_combout\,
	datab => \RD|ALT_INV_Equal0~5_combout\,
	datac => \ALT_INV_SW[2]~input_o\,
	datad => \ALT_INV_SW[3]~input_o\,
	datae => \RD|ALT_INV_count\(4),
	dataf => \RD|ALT_INV_Add0~85_sumout\,
	combout => \RD|count[4]~25_combout\);

-- Location: FF_X15_Y2_N35
\RD|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RD|count[4]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RD|count\(4));

-- Location: MLABCELL_X15_Y2_N15
\RD|Add0~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \RD|Add0~89_sumout\ = SUM(( \RD|count\(5) ) + ( VCC ) + ( \RD|Add0~86\ ))
-- \RD|Add0~90\ = CARRY(( \RD|count\(5) ) + ( VCC ) + ( \RD|Add0~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RD|ALT_INV_count\(5),
	cin => \RD|Add0~86\,
	sumout => \RD|Add0~89_sumout\,
	cout => \RD|Add0~90\);

-- Location: MLABCELL_X15_Y2_N30
\RD|count[5]~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \RD|count[5]~26_combout\ = ( \RD|count\(5) & ( \RD|Add0~89_sumout\ & ( (!\RD|count~11_combout\) # ((!\RD|Equal0~5_combout\) # (!\SW[3]~input_o\)) ) ) ) # ( !\RD|count\(5) & ( \RD|Add0~89_sumout\ & ( (\SW[3]~input_o\ & ((!\RD|Equal0~5_combout\ & 
-- ((\SW[2]~input_o\))) # (\RD|Equal0~5_combout\ & (!\RD|count~11_combout\)))) ) ) ) # ( \RD|count\(5) & ( !\RD|Add0~89_sumout\ & ( (!\SW[3]~input_o\) # ((!\RD|Equal0~5_combout\ & ((!\SW[2]~input_o\))) # (\RD|Equal0~5_combout\ & (!\RD|count~11_combout\))) ) 
-- ) ) # ( !\RD|count\(5) & ( !\RD|Add0~89_sumout\ & ( (!\RD|count~11_combout\ & (\RD|Equal0~5_combout\ & \SW[3]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010111111101111001000000010000011101111111011111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RD|ALT_INV_count~11_combout\,
	datab => \RD|ALT_INV_Equal0~5_combout\,
	datac => \ALT_INV_SW[3]~input_o\,
	datad => \ALT_INV_SW[2]~input_o\,
	datae => \RD|ALT_INV_count\(5),
	dataf => \RD|ALT_INV_Add0~89_sumout\,
	combout => \RD|count[5]~26_combout\);

-- Location: FF_X15_Y2_N32
\RD|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RD|count[5]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RD|count\(5));

-- Location: LABCELL_X16_Y2_N12
\RD|Equal0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \RD|Equal0~3_combout\ = ( !\RD|count\(4) & ( !\RD|count\(5) & ( (!\RD|count\(1) & (!\RD|count\(2) & (!\RD|count\(3) & !\RD|count\(0)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RD|ALT_INV_count\(1),
	datab => \RD|ALT_INV_count\(2),
	datac => \RD|ALT_INV_count\(3),
	datad => \RD|ALT_INV_count\(0),
	datae => \RD|ALT_INV_count\(4),
	dataf => \RD|ALT_INV_count\(5),
	combout => \RD|Equal0~3_combout\);

-- Location: LABCELL_X17_Y1_N48
\RD|count[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \RD|count[2]~2_combout\ = ( \RD|Equal0~5_combout\ & ( \SW[3]~input_o\ ) ) # ( !\RD|Equal0~5_combout\ & ( (\SW[2]~input_o\ & \SW[3]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_SW[2]~input_o\,
	datad => \ALT_INV_SW[3]~input_o\,
	dataf => \RD|ALT_INV_Equal0~5_combout\,
	combout => \RD|count[2]~2_combout\);

-- Location: LABCELL_X17_Y1_N24
\RD|count[18]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \RD|count[18]~3_combout\ = ( \SW[0]~input_o\ & ( (\RD|Equal0~5_combout\ & (!\SW[1]~input_o\ & \SW[3]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000010100000000000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RD|ALT_INV_Equal0~5_combout\,
	datac => \ALT_INV_SW[1]~input_o\,
	datad => \ALT_INV_SW[3]~input_o\,
	dataf => \ALT_INV_SW[0]~input_o\,
	combout => \RD|count[18]~3_combout\);

-- Location: LABCELL_X17_Y1_N33
\RD|count~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \RD|count~9_combout\ = ( \SW[0]~input_o\ & ( !\SW[1]~input_o\ ) ) # ( !\SW[0]~input_o\ & ( \SW[1]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_SW[1]~input_o\,
	dataf => \ALT_INV_SW[0]~input_o\,
	combout => \RD|count~9_combout\);

-- Location: MLABCELL_X15_Y2_N18
\RD|Add0~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \RD|Add0~93_sumout\ = SUM(( \RD|count\(6) ) + ( VCC ) + ( \RD|Add0~90\ ))
-- \RD|Add0~94\ = CARRY(( \RD|count\(6) ) + ( VCC ) + ( \RD|Add0~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \RD|ALT_INV_count\(6),
	cin => \RD|Add0~90\,
	sumout => \RD|Add0~93_sumout\,
	cout => \RD|Add0~94\);

-- Location: LABCELL_X16_Y2_N0
\RD|count[6]~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \RD|count[6]~27_combout\ = ( \RD|count\(6) & ( \RD|Add0~93_sumout\ & ( (!\RD|Equal0~5_combout\) # ((!\RD|count~11_combout\) # (!\SW[3]~input_o\)) ) ) ) # ( !\RD|count\(6) & ( \RD|Add0~93_sumout\ & ( (\SW[3]~input_o\ & ((!\RD|Equal0~5_combout\ & 
-- (\SW[2]~input_o\)) # (\RD|Equal0~5_combout\ & ((!\RD|count~11_combout\))))) ) ) ) # ( \RD|count\(6) & ( !\RD|Add0~93_sumout\ & ( (!\SW[3]~input_o\) # ((!\RD|Equal0~5_combout\ & (!\SW[2]~input_o\)) # (\RD|Equal0~5_combout\ & ((!\RD|count~11_combout\)))) ) 
-- ) ) # ( !\RD|count\(6) & ( !\RD|Add0~93_sumout\ & ( (\RD|Equal0~5_combout\ & (!\RD|count~11_combout\ & \SW[3]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010000111111111101100000000000011100101111111111111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RD|ALT_INV_Equal0~5_combout\,
	datab => \ALT_INV_SW[2]~input_o\,
	datac => \RD|ALT_INV_count~11_combout\,
	datad => \ALT_INV_SW[3]~input_o\,
	datae => \RD|ALT_INV_count\(6),
	dataf => \RD|ALT_INV_Add0~93_sumout\,
	combout => \RD|count[6]~27_combout\);

-- Location: FF_X16_Y2_N2
\RD|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RD|count[6]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RD|count\(6));

-- Location: MLABCELL_X15_Y2_N21
\RD|Add0~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \RD|Add0~97_sumout\ = SUM(( \RD|count\(7) ) + ( VCC ) + ( \RD|Add0~94\ ))
-- \RD|Add0~98\ = CARRY(( \RD|count\(7) ) + ( VCC ) + ( \RD|Add0~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \RD|ALT_INV_count\(7),
	cin => \RD|Add0~94\,
	sumout => \RD|Add0~97_sumout\,
	cout => \RD|Add0~98\);

-- Location: LABCELL_X16_Y2_N27
\RD|count[7]~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \RD|count[7]~28_combout\ = ( \RD|count\(7) & ( \SW[0]~input_o\ & ( ((!\SW[2]~input_o\) # ((!\SW[3]~input_o\) # (\RD|Equal0~5_combout\))) # (\RD|Add0~97_sumout\) ) ) ) # ( !\RD|count\(7) & ( \SW[0]~input_o\ & ( (\SW[3]~input_o\ & (((\RD|Add0~97_sumout\ & 
-- \SW[2]~input_o\)) # (\RD|Equal0~5_combout\))) ) ) ) # ( \RD|count\(7) & ( !\SW[0]~input_o\ & ( (!\SW[3]~input_o\) # ((!\RD|Equal0~5_combout\ & ((!\SW[2]~input_o\) # (\RD|Add0~97_sumout\)))) ) ) ) # ( !\RD|count\(7) & ( !\SW[0]~input_o\ & ( 
-- (\RD|Add0~97_sumout\ & (\SW[2]~input_o\ & (\SW[3]~input_o\ & !\RD|Equal0~5_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000000111111011111000000000001000011111111110111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RD|ALT_INV_Add0~97_sumout\,
	datab => \ALT_INV_SW[2]~input_o\,
	datac => \ALT_INV_SW[3]~input_o\,
	datad => \RD|ALT_INV_Equal0~5_combout\,
	datae => \RD|ALT_INV_count\(7),
	dataf => \ALT_INV_SW[0]~input_o\,
	combout => \RD|count[7]~28_combout\);

-- Location: FF_X16_Y2_N29
\RD|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RD|count[7]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RD|count\(7));

-- Location: LABCELL_X17_Y1_N6
\RD|Equal0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \RD|Equal0~4_combout\ = ( !\RD|count\(9) & ( !\RD|count\(11) & ( (!\RD|count\(10) & (!\RD|count\(7) & (!\RD|count\(8) & !\RD|count\(6)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RD|ALT_INV_count\(10),
	datab => \RD|ALT_INV_count\(7),
	datac => \RD|ALT_INV_count\(8),
	datad => \RD|ALT_INV_count\(6),
	datae => \RD|ALT_INV_count\(9),
	dataf => \RD|ALT_INV_count\(11),
	combout => \RD|Equal0~4_combout\);

-- Location: LABCELL_X17_Y1_N12
\RD|Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \RD|Equal0~2_combout\ = ( !\RD|count\(12) & ( !\RD|count\(17) & ( (!\RD|count\(13) & (!\RD|count\(16) & (!\RD|count\(15) & !\RD|count\(14)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RD|ALT_INV_count\(13),
	datab => \RD|ALT_INV_count\(16),
	datac => \RD|ALT_INV_count\(15),
	datad => \RD|ALT_INV_count\(14),
	datae => \RD|ALT_INV_count\(12),
	dataf => \RD|ALT_INV_count\(17),
	combout => \RD|Equal0~2_combout\);

-- Location: LABCELL_X17_Y1_N0
\RD|Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \RD|Equal0~1_combout\ = ( !\RD|count\(23) & ( !\RD|count\(22) & ( (!\RD|count\(20) & (!\RD|count\(19) & (!\RD|count\(18) & !\RD|count\(21)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RD|ALT_INV_count\(20),
	datab => \RD|ALT_INV_count\(19),
	datac => \RD|ALT_INV_count\(18),
	datad => \RD|ALT_INV_count\(21),
	datae => \RD|ALT_INV_count\(23),
	dataf => \RD|ALT_INV_count\(22),
	combout => \RD|Equal0~1_combout\);

-- Location: LABCELL_X17_Y1_N42
\RD|count[2]~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \RD|count[2]~29_combout\ = ( \RD|Equal0~1_combout\ & ( \RD|Equal0~0_combout\ & ( (!\SW[2]~input_o\ & ((!\RD|Equal0~3_combout\) # ((!\RD|Equal0~4_combout\) # (!\RD|Equal0~2_combout\)))) ) ) ) # ( !\RD|Equal0~1_combout\ & ( \RD|Equal0~0_combout\ & ( 
-- !\SW[2]~input_o\ ) ) ) # ( \RD|Equal0~1_combout\ & ( !\RD|Equal0~0_combout\ & ( !\SW[2]~input_o\ ) ) ) # ( !\RD|Equal0~1_combout\ & ( !\RD|Equal0~0_combout\ & ( !\SW[2]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011110000111100001111000011100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RD|ALT_INV_Equal0~3_combout\,
	datab => \RD|ALT_INV_Equal0~4_combout\,
	datac => \ALT_INV_SW[2]~input_o\,
	datad => \RD|ALT_INV_Equal0~2_combout\,
	datae => \RD|ALT_INV_Equal0~1_combout\,
	dataf => \RD|ALT_INV_Equal0~0_combout\,
	combout => \RD|count[2]~29_combout\);

-- Location: LABCELL_X17_Y1_N36
\RD|count[7]~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \RD|count[7]~30_combout\ = ( \RD|Equal0~1_combout\ & ( \RD|Equal0~0_combout\ & ( (\SW[0]~input_o\ & (\RD|Equal0~4_combout\ & (\RD|Equal0~3_combout\ & \RD|Equal0~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[0]~input_o\,
	datab => \RD|ALT_INV_Equal0~4_combout\,
	datac => \RD|ALT_INV_Equal0~3_combout\,
	datad => \RD|ALT_INV_Equal0~2_combout\,
	datae => \RD|ALT_INV_Equal0~1_combout\,
	dataf => \RD|ALT_INV_Equal0~0_combout\,
	combout => \RD|count[7]~30_combout\);

-- Location: MLABCELL_X15_Y2_N24
\RD|Add0~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \RD|Add0~101_sumout\ = SUM(( \RD|count\(8) ) + ( VCC ) + ( \RD|Add0~98\ ))
-- \RD|Add0~102\ = CARRY(( \RD|count\(8) ) + ( VCC ) + ( \RD|Add0~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RD|ALT_INV_count\(8),
	cin => \RD|Add0~98\,
	sumout => \RD|Add0~101_sumout\,
	cout => \RD|Add0~102\);

-- Location: LABCELL_X17_Y1_N18
\RD|count[8]~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \RD|count[8]~31_combout\ = ( \RD|Equal0~1_combout\ & ( \RD|Add0~101_sumout\ & ( (!\RD|Equal0~4_combout\) # ((!\RD|Equal0~0_combout\) # ((!\RD|Equal0~3_combout\) # (!\RD|Equal0~2_combout\))) ) ) ) # ( !\RD|Equal0~1_combout\ & ( \RD|Add0~101_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RD|ALT_INV_Equal0~4_combout\,
	datab => \RD|ALT_INV_Equal0~0_combout\,
	datac => \RD|ALT_INV_Equal0~3_combout\,
	datad => \RD|ALT_INV_Equal0~2_combout\,
	datae => \RD|ALT_INV_Equal0~1_combout\,
	dataf => \RD|ALT_INV_Add0~101_sumout\,
	combout => \RD|count[8]~31_combout\);

-- Location: LABCELL_X16_Y1_N0
\RD|count[8]~32\ : cyclonev_lcell_comb
-- Equation(s):
-- \RD|count[8]~32_combout\ = ( \RD|count\(8) & ( \RD|count[8]~31_combout\ ) ) # ( !\RD|count\(8) & ( \RD|count[8]~31_combout\ & ( (\SW[3]~input_o\ & !\RD|count[2]~29_combout\) ) ) ) # ( \RD|count\(8) & ( !\RD|count[8]~31_combout\ & ( (!\SW[3]~input_o\) # 
-- (((\SW[1]~input_o\ & \RD|count[7]~30_combout\)) # (\RD|count[2]~29_combout\)) ) ) ) # ( !\RD|count\(8) & ( !\RD|count[8]~31_combout\ & ( (\SW[3]~input_o\ & (!\RD|count[2]~29_combout\ & (\SW[1]~input_o\ & \RD|count[7]~30_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000100101110111011111101000100010001001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[3]~input_o\,
	datab => \RD|ALT_INV_count[2]~29_combout\,
	datac => \ALT_INV_SW[1]~input_o\,
	datad => \RD|ALT_INV_count[7]~30_combout\,
	datae => \RD|ALT_INV_count\(8),
	dataf => \RD|ALT_INV_count[8]~31_combout\,
	combout => \RD|count[8]~32_combout\);

-- Location: FF_X16_Y1_N2
\RD|count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RD|count[8]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RD|count\(8));

-- Location: MLABCELL_X15_Y2_N27
\RD|Add0~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \RD|Add0~105_sumout\ = SUM(( \RD|count\(9) ) + ( VCC ) + ( \RD|Add0~102\ ))
-- \RD|Add0~106\ = CARRY(( \RD|count\(9) ) + ( VCC ) + ( \RD|Add0~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \RD|ALT_INV_count\(9),
	cin => \RD|Add0~102\,
	sumout => \RD|Add0~105_sumout\,
	cout => \RD|Add0~106\);

-- Location: LABCELL_X16_Y2_N36
\RD|count[9]~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \RD|count[9]~33_combout\ = ( \RD|count\(9) & ( \RD|Equal0~5_combout\ & ( (!\RD|Add0~105_sumout\) # (!\SW[3]~input_o\) ) ) ) # ( !\RD|count\(9) & ( \RD|Equal0~5_combout\ & ( (!\RD|Add0~105_sumout\ & \SW[3]~input_o\) ) ) ) # ( \RD|count\(9) & ( 
-- !\RD|Equal0~5_combout\ & ( (!\SW[2]~input_o\) # ((!\SW[3]~input_o\) # (\RD|Add0~105_sumout\)) ) ) ) # ( !\RD|count\(9) & ( !\RD|Equal0~5_combout\ & ( (\SW[2]~input_o\ & (\RD|Add0~105_sumout\ & \SW[3]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011111111111100111100000000111100001111111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SW[2]~input_o\,
	datac => \RD|ALT_INV_Add0~105_sumout\,
	datad => \ALT_INV_SW[3]~input_o\,
	datae => \RD|ALT_INV_count\(9),
	dataf => \RD|ALT_INV_Equal0~5_combout\,
	combout => \RD|count[9]~33_combout\);

-- Location: FF_X16_Y2_N38
\RD|count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RD|count[9]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RD|count\(9));

-- Location: MLABCELL_X15_Y1_N0
\RD|Add0~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \RD|Add0~109_sumout\ = SUM(( \RD|count\(10) ) + ( VCC ) + ( \RD|Add0~106\ ))
-- \RD|Add0~110\ = CARRY(( \RD|count\(10) ) + ( VCC ) + ( \RD|Add0~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \RD|ALT_INV_count\(10),
	cin => \RD|Add0~106\,
	sumout => \RD|Add0~109_sumout\,
	cout => \RD|Add0~110\);

-- Location: LABCELL_X18_Y1_N33
\RD|count[10]~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \RD|count[10]~34_combout\ = ( \RD|count\(10) & ( \RD|Add0~109_sumout\ & ( (!\RD|Equal0~5_combout\) # (!\SW[3]~input_o\) ) ) ) # ( !\RD|count\(10) & ( \RD|Add0~109_sumout\ & ( (\SW[2]~input_o\ & (!\RD|Equal0~5_combout\ & \SW[3]~input_o\)) ) ) ) # ( 
-- \RD|count\(10) & ( !\RD|Add0~109_sumout\ & ( (!\SW[2]~input_o\) # ((!\SW[3]~input_o\) # (\RD|Equal0~5_combout\)) ) ) ) # ( !\RD|count\(10) & ( !\RD|Add0~109_sumout\ & ( (\RD|Equal0~5_combout\ & \SW[3]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011111110111111101100000100000001001111110011111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[2]~input_o\,
	datab => \RD|ALT_INV_Equal0~5_combout\,
	datac => \ALT_INV_SW[3]~input_o\,
	datae => \RD|ALT_INV_count\(10),
	dataf => \RD|ALT_INV_Add0~109_sumout\,
	combout => \RD|count[10]~34_combout\);

-- Location: FF_X18_Y1_N35
\RD|count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RD|count[10]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RD|count\(10));

-- Location: MLABCELL_X15_Y1_N3
\RD|Add0~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \RD|Add0~113_sumout\ = SUM(( \RD|count\(11) ) + ( VCC ) + ( \RD|Add0~110\ ))
-- \RD|Add0~114\ = CARRY(( \RD|count\(11) ) + ( VCC ) + ( \RD|Add0~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RD|ALT_INV_count\(11),
	cin => \RD|Add0~110\,
	sumout => \RD|Add0~113_sumout\,
	cout => \RD|Add0~114\);

-- Location: LABCELL_X16_Y1_N51
\RD|count[11]~35\ : cyclonev_lcell_comb
-- Equation(s):
-- \RD|count[11]~35_combout\ = ( \RD|Add0~113_sumout\ & ( (!\SW[3]~input_o\ & (((\RD|count\(11))))) # (\SW[3]~input_o\ & (!\RD|Equal0~5_combout\ & ((\RD|count\(11)) # (\SW[2]~input_o\)))) ) ) # ( !\RD|Add0~113_sumout\ & ( (!\SW[3]~input_o\ & 
-- (((\RD|count\(11))))) # (\SW[3]~input_o\ & (((!\SW[2]~input_o\ & \RD|count\(11))) # (\RD|Equal0~5_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111101111000001011110111100010000111110100001000011111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[3]~input_o\,
	datab => \ALT_INV_SW[2]~input_o\,
	datac => \RD|ALT_INV_Equal0~5_combout\,
	datad => \RD|ALT_INV_count\(11),
	dataf => \RD|ALT_INV_Add0~113_sumout\,
	combout => \RD|count[11]~35_combout\);

-- Location: FF_X16_Y1_N53
\RD|count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RD|count[11]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RD|count\(11));

-- Location: MLABCELL_X15_Y1_N6
\RD|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \RD|Add0~45_sumout\ = SUM(( \RD|count\(12) ) + ( VCC ) + ( \RD|Add0~114\ ))
-- \RD|Add0~46\ = CARRY(( \RD|count\(12) ) + ( VCC ) + ( \RD|Add0~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \RD|ALT_INV_count\(12),
	cin => \RD|Add0~114\,
	sumout => \RD|Add0~45_sumout\,
	cout => \RD|Add0~46\);

-- Location: LABCELL_X17_Y1_N54
\RD|count[12]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \RD|count[12]~15_combout\ = ( \RD|count\(12) & ( \RD|Add0~45_sumout\ & ( (!\RD|Equal0~5_combout\) # ((!\RD|count[2]~2_combout\) # ((!\SW[0]~input_o\ & \SW[1]~input_o\))) ) ) ) # ( !\RD|count\(12) & ( \RD|Add0~45_sumout\ & ( (\RD|count[2]~2_combout\ & 
-- ((!\RD|Equal0~5_combout\) # ((!\SW[0]~input_o\ & \SW[1]~input_o\)))) ) ) ) # ( \RD|count\(12) & ( !\RD|Add0~45_sumout\ & ( (!\RD|count[2]~2_combout\) # ((!\SW[0]~input_o\ & (\RD|Equal0~5_combout\ & \SW[1]~input_o\))) ) ) ) # ( !\RD|count\(12) & ( 
-- !\RD|Add0~45_sumout\ & ( (!\SW[0]~input_o\ & (\RD|Equal0~5_combout\ & (\SW[1]~input_o\ & \RD|count[2]~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000010111111110000001000000000110011101111111111001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[0]~input_o\,
	datab => \RD|ALT_INV_Equal0~5_combout\,
	datac => \ALT_INV_SW[1]~input_o\,
	datad => \RD|ALT_INV_count[2]~2_combout\,
	datae => \RD|ALT_INV_count\(12),
	dataf => \RD|ALT_INV_Add0~45_sumout\,
	combout => \RD|count[12]~15_combout\);

-- Location: FF_X17_Y1_N56
\RD|count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RD|count[12]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RD|count\(12));

-- Location: MLABCELL_X15_Y1_N9
\RD|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \RD|Add0~49_sumout\ = SUM(( \RD|count\(13) ) + ( VCC ) + ( \RD|Add0~46\ ))
-- \RD|Add0~50\ = CARRY(( \RD|count\(13) ) + ( VCC ) + ( \RD|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RD|ALT_INV_count\(13),
	cin => \RD|Add0~46\,
	sumout => \RD|Add0~49_sumout\,
	cout => \RD|Add0~50\);

-- Location: LABCELL_X18_Y1_N3
\RD|count[13]~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \RD|count[13]~16_combout\ = ( \RD|count\(13) & ( \RD|Add0~49_sumout\ & ( (!\SW[3]~input_o\) # ((!\RD|Equal0~5_combout\) # (\RD|count~9_combout\)) ) ) ) # ( !\RD|count\(13) & ( \RD|Add0~49_sumout\ & ( (\SW[3]~input_o\ & ((!\RD|Equal0~5_combout\ & 
-- ((\SW[2]~input_o\))) # (\RD|Equal0~5_combout\ & (\RD|count~9_combout\)))) ) ) ) # ( \RD|count\(13) & ( !\RD|Add0~49_sumout\ & ( (!\SW[3]~input_o\) # ((!\RD|Equal0~5_combout\ & ((!\SW[2]~input_o\))) # (\RD|Equal0~5_combout\ & (\RD|count~9_combout\))) ) ) ) 
-- # ( !\RD|count\(13) & ( !\RD|Add0~49_sumout\ & ( (\SW[3]~input_o\ & (\RD|Equal0~5_combout\ & \RD|count~9_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001111011111010101100000001010001011110111111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[3]~input_o\,
	datab => \RD|ALT_INV_Equal0~5_combout\,
	datac => \RD|ALT_INV_count~9_combout\,
	datad => \ALT_INV_SW[2]~input_o\,
	datae => \RD|ALT_INV_count\(13),
	dataf => \RD|ALT_INV_Add0~49_sumout\,
	combout => \RD|count[13]~16_combout\);

-- Location: FF_X18_Y1_N5
\RD|count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RD|count[13]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RD|count\(13));

-- Location: MLABCELL_X15_Y1_N12
\RD|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \RD|Add0~53_sumout\ = SUM(( \RD|count\(14) ) + ( VCC ) + ( \RD|Add0~50\ ))
-- \RD|Add0~54\ = CARRY(( \RD|count\(14) ) + ( VCC ) + ( \RD|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \RD|ALT_INV_count\(14),
	cin => \RD|Add0~50\,
	sumout => \RD|Add0~53_sumout\,
	cout => \RD|Add0~54\);

-- Location: LABCELL_X16_Y1_N42
\RD|count[14]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \RD|count[14]~17_combout\ = ( \RD|count\(14) & ( \RD|Add0~53_sumout\ & ( (!\SW[3]~input_o\) # ((!\RD|count~11_combout\) # (!\RD|Equal0~5_combout\)) ) ) ) # ( !\RD|count\(14) & ( \RD|Add0~53_sumout\ & ( (\SW[3]~input_o\ & ((!\RD|Equal0~5_combout\ & 
-- (\SW[2]~input_o\)) # (\RD|Equal0~5_combout\ & ((!\RD|count~11_combout\))))) ) ) ) # ( \RD|count\(14) & ( !\RD|Add0~53_sumout\ & ( (!\SW[3]~input_o\) # ((!\RD|Equal0~5_combout\ & (!\SW[2]~input_o\)) # (\RD|Equal0~5_combout\ & ((!\RD|count~11_combout\)))) ) 
-- ) ) # ( !\RD|count\(14) & ( !\RD|Add0~53_sumout\ & ( (\SW[3]~input_o\ & (!\RD|count~11_combout\ & \RD|Equal0~5_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010000111011101111101000010001010100001111111111111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[3]~input_o\,
	datab => \ALT_INV_SW[2]~input_o\,
	datac => \RD|ALT_INV_count~11_combout\,
	datad => \RD|ALT_INV_Equal0~5_combout\,
	datae => \RD|ALT_INV_count\(14),
	dataf => \RD|ALT_INV_Add0~53_sumout\,
	combout => \RD|count[14]~17_combout\);

-- Location: FF_X16_Y1_N44
\RD|count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RD|count[14]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RD|count\(14));

-- Location: MLABCELL_X15_Y1_N15
\RD|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \RD|Add0~57_sumout\ = SUM(( \RD|count\(15) ) + ( VCC ) + ( \RD|Add0~54\ ))
-- \RD|Add0~58\ = CARRY(( \RD|count\(15) ) + ( VCC ) + ( \RD|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RD|ALT_INV_count\(15),
	cin => \RD|Add0~54\,
	sumout => \RD|Add0~57_sumout\,
	cout => \RD|Add0~58\);

-- Location: LABCELL_X16_Y1_N45
\RD|count[15]~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \RD|count[15]~18_combout\ = ( \RD|count\(15) & ( \RD|Add0~57_sumout\ & ( (!\SW[3]~input_o\) # ((!\RD|Equal0~5_combout\) # (!\RD|count~11_combout\)) ) ) ) # ( !\RD|count\(15) & ( \RD|Add0~57_sumout\ & ( (\SW[3]~input_o\ & ((!\RD|Equal0~5_combout\ & 
-- (\SW[2]~input_o\)) # (\RD|Equal0~5_combout\ & ((!\RD|count~11_combout\))))) ) ) ) # ( \RD|count\(15) & ( !\RD|Add0~57_sumout\ & ( (!\SW[3]~input_o\) # ((!\RD|Equal0~5_combout\ & (!\SW[2]~input_o\)) # (\RD|Equal0~5_combout\ & ((!\RD|count~11_combout\)))) ) 
-- ) ) # ( !\RD|count\(15) & ( !\RD|Add0~57_sumout\ & ( (\SW[3]~input_o\ & (\RD|Equal0~5_combout\ & !\RD|count~11_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000000111011111110101000010101000100001111111111111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[3]~input_o\,
	datab => \ALT_INV_SW[2]~input_o\,
	datac => \RD|ALT_INV_Equal0~5_combout\,
	datad => \RD|ALT_INV_count~11_combout\,
	datae => \RD|ALT_INV_count\(15),
	dataf => \RD|ALT_INV_Add0~57_sumout\,
	combout => \RD|count[15]~18_combout\);

-- Location: FF_X16_Y1_N47
\RD|count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RD|count[15]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RD|count\(15));

-- Location: MLABCELL_X15_Y1_N18
\RD|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \RD|Add0~61_sumout\ = SUM(( \RD|count\(16) ) + ( VCC ) + ( \RD|Add0~58\ ))
-- \RD|Add0~62\ = CARRY(( \RD|count\(16) ) + ( VCC ) + ( \RD|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RD|ALT_INV_count\(16),
	cin => \RD|Add0~58\,
	sumout => \RD|Add0~61_sumout\,
	cout => \RD|Add0~62\);

-- Location: LABCELL_X16_Y1_N27
\RD|count[16]~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \RD|count[16]~19_combout\ = ( \RD|count\(16) & ( \RD|Add0~61_sumout\ & ( ((!\RD|Equal0~5_combout\) # (!\SW[3]~input_o\)) # (\SW[0]~input_o\) ) ) ) # ( !\RD|count\(16) & ( \RD|Add0~61_sumout\ & ( (\SW[3]~input_o\ & ((!\RD|Equal0~5_combout\ & 
-- ((\SW[2]~input_o\))) # (\RD|Equal0~5_combout\ & (\SW[0]~input_o\)))) ) ) ) # ( \RD|count\(16) & ( !\RD|Add0~61_sumout\ & ( (!\SW[3]~input_o\) # ((!\RD|Equal0~5_combout\ & ((!\SW[2]~input_o\))) # (\RD|Equal0~5_combout\ & (\SW[0]~input_o\))) ) ) ) # ( 
-- !\RD|count\(16) & ( !\RD|Add0~61_sumout\ & ( (\SW[0]~input_o\ & (\RD|Equal0~5_combout\ & \SW[3]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101111111111100010100000000001101011111111111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[0]~input_o\,
	datab => \ALT_INV_SW[2]~input_o\,
	datac => \RD|ALT_INV_Equal0~5_combout\,
	datad => \ALT_INV_SW[3]~input_o\,
	datae => \RD|ALT_INV_count\(16),
	dataf => \RD|ALT_INV_Add0~61_sumout\,
	combout => \RD|count[16]~19_combout\);

-- Location: FF_X16_Y1_N29
\RD|count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RD|count[16]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RD|count\(16));

-- Location: MLABCELL_X15_Y1_N21
\RD|Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \RD|Add0~65_sumout\ = SUM(( \RD|count\(17) ) + ( VCC ) + ( \RD|Add0~62\ ))
-- \RD|Add0~66\ = CARRY(( \RD|count\(17) ) + ( VCC ) + ( \RD|Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RD|ALT_INV_count\(17),
	cin => \RD|Add0~62\,
	sumout => \RD|Add0~65_sumout\,
	cout => \RD|Add0~66\);

-- Location: LABCELL_X16_Y1_N12
\RD|count[17]~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \RD|count[17]~20_combout\ = ( \RD|count\(17) & ( \RD|Add0~65_sumout\ & ( (!\SW[3]~input_o\) # ((!\RD|Equal0~5_combout\) # (\SW[1]~input_o\)) ) ) ) # ( !\RD|count\(17) & ( \RD|Add0~65_sumout\ & ( (\SW[3]~input_o\ & ((!\RD|Equal0~5_combout\ & 
-- ((\SW[2]~input_o\))) # (\RD|Equal0~5_combout\ & (\SW[1]~input_o\)))) ) ) ) # ( \RD|count\(17) & ( !\RD|Add0~65_sumout\ & ( (!\SW[3]~input_o\) # ((!\RD|Equal0~5_combout\ & ((!\SW[2]~input_o\))) # (\RD|Equal0~5_combout\ & (\SW[1]~input_o\))) ) ) ) # ( 
-- !\RD|count\(17) & ( !\RD|Add0~65_sumout\ & ( (\SW[3]~input_o\ & (\RD|Equal0~5_combout\ & \SW[1]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001111011111010101100000001010001011110111111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[3]~input_o\,
	datab => \RD|ALT_INV_Equal0~5_combout\,
	datac => \ALT_INV_SW[1]~input_o\,
	datad => \ALT_INV_SW[2]~input_o\,
	datae => \RD|ALT_INV_count\(17),
	dataf => \RD|ALT_INV_Add0~65_sumout\,
	combout => \RD|count[17]~20_combout\);

-- Location: FF_X16_Y1_N14
\RD|count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RD|count[17]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RD|count\(17));

-- Location: MLABCELL_X15_Y1_N24
\RD|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \RD|Add0~21_sumout\ = SUM(( \RD|count\(18) ) + ( VCC ) + ( \RD|Add0~66\ ))
-- \RD|Add0~22\ = CARRY(( \RD|count\(18) ) + ( VCC ) + ( \RD|Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RD|ALT_INV_count\(18),
	cin => \RD|Add0~66\,
	sumout => \RD|Add0~21_sumout\,
	cout => \RD|Add0~22\);

-- Location: LABCELL_X16_Y1_N39
\RD|count[18]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \RD|count[18]~7_combout\ = ( \RD|Add0~21_sumout\ & ( ((!\RD|count[2]~2_combout\ & ((\RD|count\(18)))) # (\RD|count[2]~2_combout\ & (!\RD|Equal0~5_combout\))) # (\RD|count[18]~3_combout\) ) ) # ( !\RD|Add0~21_sumout\ & ( ((!\RD|count[2]~2_combout\ & 
-- \RD|count\(18))) # (\RD|count[18]~3_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111001111000011111100111100101111111011110010111111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RD|ALT_INV_Equal0~5_combout\,
	datab => \RD|ALT_INV_count[2]~2_combout\,
	datac => \RD|ALT_INV_count[18]~3_combout\,
	datad => \RD|ALT_INV_count\(18),
	dataf => \RD|ALT_INV_Add0~21_sumout\,
	combout => \RD|count[18]~7_combout\);

-- Location: FF_X16_Y1_N41
\RD|count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RD|count[18]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RD|count\(18));

-- Location: MLABCELL_X15_Y1_N27
\RD|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \RD|Add0~25_sumout\ = SUM(( \RD|count\(19) ) + ( VCC ) + ( \RD|Add0~22\ ))
-- \RD|Add0~26\ = CARRY(( \RD|count\(19) ) + ( VCC ) + ( \RD|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \RD|ALT_INV_count\(19),
	cin => \RD|Add0~22\,
	sumout => \RD|Add0~25_sumout\,
	cout => \RD|Add0~26\);

-- Location: LABCELL_X16_Y1_N15
\RD|count[19]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \RD|count[19]~8_combout\ = ( \RD|count\(19) & ( \RD|Add0~25_sumout\ & ( (!\SW[3]~input_o\) # ((!\RD|Equal0~5_combout\) # (\SW[1]~input_o\)) ) ) ) # ( !\RD|count\(19) & ( \RD|Add0~25_sumout\ & ( (\SW[3]~input_o\ & ((!\RD|Equal0~5_combout\ & 
-- (\SW[2]~input_o\)) # (\RD|Equal0~5_combout\ & ((\SW[1]~input_o\))))) ) ) ) # ( \RD|count\(19) & ( !\RD|Add0~25_sumout\ & ( (!\SW[3]~input_o\) # ((!\RD|Equal0~5_combout\ & (!\SW[2]~input_o\)) # (\RD|Equal0~5_combout\ & ((\SW[1]~input_o\)))) ) ) ) # ( 
-- !\RD|count\(19) & ( !\RD|Add0~25_sumout\ & ( (\SW[3]~input_o\ & (\RD|Equal0~5_combout\ & \SW[1]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010001111010101111101100000100000101011110111011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[3]~input_o\,
	datab => \RD|ALT_INV_Equal0~5_combout\,
	datac => \ALT_INV_SW[2]~input_o\,
	datad => \ALT_INV_SW[1]~input_o\,
	datae => \RD|ALT_INV_count\(19),
	dataf => \RD|ALT_INV_Add0~25_sumout\,
	combout => \RD|count[19]~8_combout\);

-- Location: FF_X16_Y1_N17
\RD|count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RD|count[19]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RD|count\(19));

-- Location: MLABCELL_X15_Y1_N30
\RD|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \RD|Add0~29_sumout\ = SUM(( \RD|count\(20) ) + ( VCC ) + ( \RD|Add0~26\ ))
-- \RD|Add0~30\ = CARRY(( \RD|count\(20) ) + ( VCC ) + ( \RD|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RD|ALT_INV_count\(20),
	cin => \RD|Add0~26\,
	sumout => \RD|Add0~29_sumout\,
	cout => \RD|Add0~30\);

-- Location: LABCELL_X16_Y1_N6
\RD|count[20]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \RD|count[20]~10_combout\ = ( \RD|Add0~29_sumout\ & ( (!\RD|count[2]~2_combout\ & (((\RD|count\(20))))) # (\RD|count[2]~2_combout\ & ((!\RD|Equal0~5_combout\) # ((\RD|count~9_combout\)))) ) ) # ( !\RD|Add0~29_sumout\ & ( (!\RD|count[2]~2_combout\ & 
-- (((\RD|count\(20))))) # (\RD|count[2]~2_combout\ & (\RD|Equal0~5_combout\ & (\RD|count~9_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111001101000000011100110100100011111011110010001111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RD|ALT_INV_Equal0~5_combout\,
	datab => \RD|ALT_INV_count[2]~2_combout\,
	datac => \RD|ALT_INV_count~9_combout\,
	datad => \RD|ALT_INV_count\(20),
	dataf => \RD|ALT_INV_Add0~29_sumout\,
	combout => \RD|count[20]~10_combout\);

-- Location: FF_X16_Y1_N8
\RD|count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RD|count[20]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RD|count\(20));

-- Location: MLABCELL_X15_Y1_N33
\RD|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \RD|Add0~33_sumout\ = SUM(( \RD|count\(21) ) + ( VCC ) + ( \RD|Add0~30\ ))
-- \RD|Add0~34\ = CARRY(( \RD|count\(21) ) + ( VCC ) + ( \RD|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RD|ALT_INV_count\(21),
	cin => \RD|Add0~30\,
	sumout => \RD|Add0~33_sumout\,
	cout => \RD|Add0~34\);

-- Location: LABCELL_X16_Y1_N36
\RD|count[21]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \RD|count[21]~12_combout\ = ( \RD|Add0~33_sumout\ & ( (!\RD|count[2]~2_combout\ & (((\RD|count\(21))))) # (\RD|count[2]~2_combout\ & ((!\RD|Equal0~5_combout\) # ((!\RD|count~11_combout\)))) ) ) # ( !\RD|Add0~33_sumout\ & ( (!\RD|count[2]~2_combout\ & 
-- (((\RD|count\(21))))) # (\RD|count[2]~2_combout\ & (\RD|Equal0~5_combout\ & (!\RD|count~11_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000011011100000100001101110000110010111111100011001011111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RD|ALT_INV_Equal0~5_combout\,
	datab => \RD|ALT_INV_count[2]~2_combout\,
	datac => \RD|ALT_INV_count~11_combout\,
	datad => \RD|ALT_INV_count\(21),
	dataf => \RD|ALT_INV_Add0~33_sumout\,
	combout => \RD|count[21]~12_combout\);

-- Location: FF_X16_Y1_N38
\RD|count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RD|count[21]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RD|count\(21));

-- Location: MLABCELL_X15_Y1_N36
\RD|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \RD|Add0~37_sumout\ = SUM(( \RD|count\(22) ) + ( VCC ) + ( \RD|Add0~34\ ))
-- \RD|Add0~38\ = CARRY(( \RD|count\(22) ) + ( VCC ) + ( \RD|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RD|ALT_INV_count\(22),
	cin => \RD|Add0~34\,
	sumout => \RD|Add0~37_sumout\,
	cout => \RD|Add0~38\);

-- Location: LABCELL_X16_Y1_N33
\RD|count[22]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \RD|count[22]~13_combout\ = ( \RD|Add0~37_sumout\ & ( (!\RD|count[2]~2_combout\ & (((\RD|count\(22))))) # (\RD|count[2]~2_combout\ & ((!\RD|count~11_combout\) # ((!\RD|Equal0~5_combout\)))) ) ) # ( !\RD|Add0~37_sumout\ & ( (!\RD|count[2]~2_combout\ & 
-- (((\RD|count\(22))))) # (\RD|count[2]~2_combout\ & (!\RD|count~11_combout\ & (\RD|Equal0~5_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001011001110000000101100111000110010111111100011001011111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RD|ALT_INV_count~11_combout\,
	datab => \RD|ALT_INV_count[2]~2_combout\,
	datac => \RD|ALT_INV_Equal0~5_combout\,
	datad => \RD|ALT_INV_count\(22),
	dataf => \RD|ALT_INV_Add0~37_sumout\,
	combout => \RD|count[22]~13_combout\);

-- Location: FF_X16_Y1_N35
\RD|count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RD|count[22]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RD|count\(22));

-- Location: MLABCELL_X15_Y1_N39
\RD|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \RD|Add0~41_sumout\ = SUM(( \RD|count\(23) ) + ( VCC ) + ( \RD|Add0~38\ ))
-- \RD|Add0~42\ = CARRY(( \RD|count\(23) ) + ( VCC ) + ( \RD|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RD|ALT_INV_count\(23),
	cin => \RD|Add0~38\,
	sumout => \RD|Add0~41_sumout\,
	cout => \RD|Add0~42\);

-- Location: LABCELL_X16_Y1_N30
\RD|count[23]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \RD|count[23]~14_combout\ = ( \RD|Add0~41_sumout\ & ( (!\RD|count[2]~2_combout\ & (((\RD|count\(23))))) # (\RD|count[2]~2_combout\ & ((!\RD|count~11_combout\) # ((!\RD|Equal0~5_combout\)))) ) ) # ( !\RD|Add0~41_sumout\ & ( (!\RD|count[2]~2_combout\ & 
-- (((\RD|count\(23))))) # (\RD|count[2]~2_combout\ & (!\RD|count~11_combout\ & (\RD|Equal0~5_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001011001110000000101100111000110010111111100011001011111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RD|ALT_INV_count~11_combout\,
	datab => \RD|ALT_INV_count[2]~2_combout\,
	datac => \RD|ALT_INV_Equal0~5_combout\,
	datad => \RD|ALT_INV_count\(23),
	dataf => \RD|ALT_INV_Add0~41_sumout\,
	combout => \RD|count[23]~14_combout\);

-- Location: FF_X16_Y1_N32
\RD|count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RD|count[23]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RD|count\(23));

-- Location: MLABCELL_X15_Y1_N42
\RD|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \RD|Add0~1_sumout\ = SUM(( \RD|count\(24) ) + ( VCC ) + ( \RD|Add0~42\ ))
-- \RD|Add0~2\ = CARRY(( \RD|count\(24) ) + ( VCC ) + ( \RD|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RD|ALT_INV_count\(24),
	cin => \RD|Add0~42\,
	sumout => \RD|Add0~1_sumout\,
	cout => \RD|Add0~2\);

-- Location: LABCELL_X16_Y1_N24
\RD|count[24]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \RD|count[24]~0_combout\ = ( \RD|count\(24) & ( \RD|Add0~1_sumout\ & ( ((!\SW[3]~input_o\) # (!\RD|Equal0~5_combout\)) # (\SW[0]~input_o\) ) ) ) # ( !\RD|count\(24) & ( \RD|Add0~1_sumout\ & ( (\SW[3]~input_o\ & ((!\RD|Equal0~5_combout\ & 
-- ((\SW[2]~input_o\))) # (\RD|Equal0~5_combout\ & (\SW[0]~input_o\)))) ) ) ) # ( \RD|count\(24) & ( !\RD|Add0~1_sumout\ & ( (!\SW[3]~input_o\) # ((!\RD|Equal0~5_combout\ & ((!\SW[2]~input_o\))) # (\RD|Equal0~5_combout\ & (\SW[0]~input_o\))) ) ) ) # ( 
-- !\RD|count\(24) & ( !\RD|Add0~1_sumout\ & ( (\SW[0]~input_o\ & (\SW[3]~input_o\ & \RD|Equal0~5_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101111111001111010100000011000001011111111111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[0]~input_o\,
	datab => \ALT_INV_SW[2]~input_o\,
	datac => \ALT_INV_SW[3]~input_o\,
	datad => \RD|ALT_INV_Equal0~5_combout\,
	datae => \RD|ALT_INV_count\(24),
	dataf => \RD|ALT_INV_Add0~1_sumout\,
	combout => \RD|count[24]~0_combout\);

-- Location: FF_X16_Y1_N26
\RD|count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RD|count[24]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RD|count\(24));

-- Location: MLABCELL_X15_Y1_N45
\RD|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \RD|Add0~5_sumout\ = SUM(( \RD|count\(25) ) + ( VCC ) + ( \RD|Add0~2\ ))
-- \RD|Add0~6\ = CARRY(( \RD|count\(25) ) + ( VCC ) + ( \RD|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RD|ALT_INV_count\(25),
	cin => \RD|Add0~2\,
	sumout => \RD|Add0~5_sumout\,
	cout => \RD|Add0~6\);

-- Location: LABCELL_X16_Y1_N54
\RD|count[25]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \RD|count[25]~1_combout\ = ( \RD|count\(25) & ( \RD|Add0~5_sumout\ & ( (!\SW[3]~input_o\) # ((!\RD|Equal0~5_combout\) # (\SW[1]~input_o\)) ) ) ) # ( !\RD|count\(25) & ( \RD|Add0~5_sumout\ & ( (\SW[3]~input_o\ & ((!\RD|Equal0~5_combout\ & 
-- ((\SW[2]~input_o\))) # (\RD|Equal0~5_combout\ & (\SW[1]~input_o\)))) ) ) ) # ( \RD|count\(25) & ( !\RD|Add0~5_sumout\ & ( (!\SW[3]~input_o\) # ((!\RD|Equal0~5_combout\ & ((!\SW[2]~input_o\))) # (\RD|Equal0~5_combout\ & (\SW[1]~input_o\))) ) ) ) # ( 
-- !\RD|count\(25) & ( !\RD|Add0~5_sumout\ & ( (\SW[3]~input_o\ & (\RD|Equal0~5_combout\ & \SW[1]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001111011111010101100000001010001011110111111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[3]~input_o\,
	datab => \RD|ALT_INV_Equal0~5_combout\,
	datac => \ALT_INV_SW[1]~input_o\,
	datad => \ALT_INV_SW[2]~input_o\,
	datae => \RD|ALT_INV_count\(25),
	dataf => \RD|ALT_INV_Add0~5_sumout\,
	combout => \RD|count[25]~1_combout\);

-- Location: FF_X16_Y1_N56
\RD|count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RD|count[25]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RD|count\(25));

-- Location: MLABCELL_X15_Y1_N48
\RD|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \RD|Add0~9_sumout\ = SUM(( \RD|count\(26) ) + ( VCC ) + ( \RD|Add0~6\ ))
-- \RD|Add0~10\ = CARRY(( \RD|count\(26) ) + ( VCC ) + ( \RD|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RD|ALT_INV_count\(26),
	cin => \RD|Add0~6\,
	sumout => \RD|Add0~9_sumout\,
	cout => \RD|Add0~10\);

-- Location: LABCELL_X17_Y1_N27
\RD|count[26]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \RD|count[26]~4_combout\ = ( \RD|Add0~9_sumout\ & ( ((!\RD|count[2]~2_combout\ & ((\RD|count\(26)))) # (\RD|count[2]~2_combout\ & (!\RD|Equal0~5_combout\))) # (\RD|count[18]~3_combout\) ) ) # ( !\RD|Add0~9_sumout\ & ( ((!\RD|count[2]~2_combout\ & 
-- \RD|count\(26))) # (\RD|count[18]~3_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111001111000011111100111100101111111011110010111111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RD|ALT_INV_Equal0~5_combout\,
	datab => \RD|ALT_INV_count[2]~2_combout\,
	datac => \RD|ALT_INV_count[18]~3_combout\,
	datad => \RD|ALT_INV_count\(26),
	dataf => \RD|ALT_INV_Add0~9_sumout\,
	combout => \RD|count[26]~4_combout\);

-- Location: FF_X17_Y1_N29
\RD|count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RD|count[26]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RD|count\(26));

-- Location: MLABCELL_X15_Y1_N51
\RD|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \RD|Add0~13_sumout\ = SUM(( \RD|count\(27) ) + ( VCC ) + ( \RD|Add0~10\ ))
-- \RD|Add0~14\ = CARRY(( \RD|count\(27) ) + ( VCC ) + ( \RD|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \RD|ALT_INV_count\(27),
	cin => \RD|Add0~10\,
	sumout => \RD|Add0~13_sumout\,
	cout => \RD|Add0~14\);

-- Location: LABCELL_X16_Y1_N18
\RD|count[27]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \RD|count[27]~5_combout\ = ( \RD|count\(27) & ( \RD|Add0~13_sumout\ & ( (!\RD|Equal0~5_combout\) # ((!\RD|count[2]~2_combout\) # ((\SW[0]~input_o\ & \SW[1]~input_o\))) ) ) ) # ( !\RD|count\(27) & ( \RD|Add0~13_sumout\ & ( (\RD|count[2]~2_combout\ & 
-- ((!\RD|Equal0~5_combout\) # ((\SW[0]~input_o\ & \SW[1]~input_o\)))) ) ) ) # ( \RD|count\(27) & ( !\RD|Add0~13_sumout\ & ( (!\RD|count[2]~2_combout\) # ((\SW[0]~input_o\ & (\RD|Equal0~5_combout\ & \SW[1]~input_o\))) ) ) ) # ( !\RD|count\(27) & ( 
-- !\RD|Add0~13_sumout\ & ( (\SW[0]~input_o\ & (\RD|Equal0~5_combout\ & (\SW[1]~input_o\ & \RD|count[2]~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001111111110000000100000000110011011111111111001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[0]~input_o\,
	datab => \RD|ALT_INV_Equal0~5_combout\,
	datac => \ALT_INV_SW[1]~input_o\,
	datad => \RD|ALT_INV_count[2]~2_combout\,
	datae => \RD|ALT_INV_count\(27),
	dataf => \RD|ALT_INV_Add0~13_sumout\,
	combout => \RD|count[27]~5_combout\);

-- Location: FF_X16_Y1_N20
\RD|count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RD|count[27]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RD|count\(27));

-- Location: MLABCELL_X15_Y1_N54
\RD|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \RD|Add0~17_sumout\ = SUM(( \RD|count\(28) ) + ( VCC ) + ( \RD|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \RD|ALT_INV_count\(28),
	cin => \RD|Add0~14\,
	sumout => \RD|Add0~17_sumout\);

-- Location: LABCELL_X16_Y1_N48
\RD|count[28]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \RD|count[28]~6_combout\ = ( \RD|Add0~17_sumout\ & ( (!\SW[3]~input_o\ & (((\RD|count\(28))))) # (\SW[3]~input_o\ & (!\RD|Equal0~5_combout\ & ((\RD|count\(28)) # (\SW[2]~input_o\)))) ) ) # ( !\RD|Add0~17_sumout\ & ( (!\SW[3]~input_o\ & 
-- (((\RD|count\(28))))) # (\SW[3]~input_o\ & (((!\SW[2]~input_o\ & \RD|count\(28))) # (\RD|Equal0~5_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111101111000001011110111100010000111110100001000011111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[3]~input_o\,
	datab => \ALT_INV_SW[2]~input_o\,
	datac => \RD|ALT_INV_Equal0~5_combout\,
	datad => \RD|ALT_INV_count\(28),
	dataf => \RD|ALT_INV_Add0~17_sumout\,
	combout => \RD|count[28]~6_combout\);

-- Location: FF_X16_Y1_N50
\RD|count[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RD|count[28]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RD|count\(28));

-- Location: LABCELL_X17_Y1_N30
\RD|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \RD|Equal0~0_combout\ = ( !\RD|count\(25) & ( (!\RD|count\(27) & (!\RD|count\(24) & (!\RD|count\(28) & !\RD|count\(26)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RD|ALT_INV_count\(27),
	datab => \RD|ALT_INV_count\(24),
	datac => \RD|ALT_INV_count\(28),
	datad => \RD|ALT_INV_count\(26),
	dataf => \RD|ALT_INV_count\(25),
	combout => \RD|Equal0~0_combout\);

-- Location: LABCELL_X17_Y1_N51
\RD|Equal0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \RD|Equal0~5_combout\ = ( \RD|Equal0~4_combout\ & ( (\RD|Equal0~3_combout\ & (\RD|Equal0~0_combout\ & (\RD|Equal0~2_combout\ & \RD|Equal0~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RD|ALT_INV_Equal0~3_combout\,
	datab => \RD|ALT_INV_Equal0~0_combout\,
	datac => \RD|ALT_INV_Equal0~2_combout\,
	datad => \RD|ALT_INV_Equal0~1_combout\,
	dataf => \RD|ALT_INV_Equal0~4_combout\,
	combout => \RD|Equal0~5_combout\);

-- Location: LABCELL_X16_Y2_N9
\RD|load1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \RD|load1~0_combout\ = ( \RD|load1~q\ & ( \RD|Equal0~5_combout\ & ( \SW[3]~input_o\ ) ) ) # ( !\RD|load1~q\ & ( \RD|Equal0~5_combout\ & ( \SW[3]~input_o\ ) ) ) # ( \RD|load1~q\ & ( !\RD|Equal0~5_combout\ & ( (!\SW[2]~input_o\ & \SW[3]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011000000110000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SW[2]~input_o\,
	datac => \ALT_INV_SW[3]~input_o\,
	datae => \RD|ALT_INV_load1~q\,
	dataf => \RD|ALT_INV_Equal0~5_combout\,
	combout => \RD|load1~0_combout\);

-- Location: FF_X16_Y2_N11
\RD|load1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \RD|load1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RD|load1~q\);

-- Location: MLABCELL_X72_Y4_N3
\DC|load~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \DC|load~2_combout\ = ( \DC|load\(0) & ( (\SW[3]~input_o\ & !\RD|load1~q\) ) ) # ( !\DC|load\(0) & ( (\SW[3]~input_o\ & \RD|load1~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101010100000101000000000101000001010101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[3]~input_o\,
	datac => \RD|ALT_INV_load1~q\,
	datae => \DC|ALT_INV_load\(0),
	combout => \DC|load~2_combout\);

-- Location: FF_X72_Y4_N5
\DC|load[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DC|load~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DC|load\(0));

-- Location: MLABCELL_X72_Y4_N48
\DC|load~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DC|load~0_combout\ = ( \DC|load\(1) & ( \DC|load\(0) & ( (!\RD|load1~q\ & \SW[3]~input_o\) ) ) ) # ( !\DC|load\(1) & ( \DC|load\(0) & ( (\RD|load1~q\ & \SW[3]~input_o\) ) ) ) # ( \DC|load\(1) & ( !\DC|load\(0) & ( \SW[3]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000011000000110000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RD|ALT_INV_load1~q\,
	datac => \ALT_INV_SW[3]~input_o\,
	datae => \DC|ALT_INV_load\(1),
	dataf => \DC|ALT_INV_load\(0),
	combout => \DC|load~0_combout\);

-- Location: FF_X72_Y4_N50
\DC|load[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DC|load~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DC|load\(1));

-- Location: MLABCELL_X72_Y4_N42
\DC|load~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \DC|load~3_combout\ = ( \DC|load\(2) & ( \DC|load\(1) & ( (\SW[3]~input_o\ & ((!\RD|load1~q\) # (!\DC|load\(0)))) ) ) ) # ( !\DC|load\(2) & ( \DC|load\(1) & ( (\SW[3]~input_o\ & (\RD|load1~q\ & \DC|load\(0))) ) ) ) # ( \DC|load\(2) & ( !\DC|load\(1) & ( 
-- \SW[3]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010101010100000001000000010101010001010100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[3]~input_o\,
	datab => \RD|ALT_INV_load1~q\,
	datac => \DC|ALT_INV_load\(0),
	datae => \DC|ALT_INV_load\(2),
	dataf => \DC|ALT_INV_load\(1),
	combout => \DC|load~3_combout\);

-- Location: FF_X72_Y4_N44
\DC|load[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DC|load~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DC|load\(2));

-- Location: MLABCELL_X72_Y4_N18
\DC|load~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \DC|load~1_combout\ = ( \DC|load\(3) & ( \DC|load\(1) & ( (\SW[3]~input_o\ & ((!\RD|load1~q\) # ((!\DC|load\(0)) # (!\DC|load\(2))))) ) ) ) # ( !\DC|load\(3) & ( \DC|load\(1) & ( (\SW[3]~input_o\ & (\RD|load1~q\ & (\DC|load\(0) & \DC|load\(2)))) ) ) ) # ( 
-- \DC|load\(3) & ( !\DC|load\(1) & ( \SW[3]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010101010100000000000000010101010101010100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[3]~input_o\,
	datab => \RD|ALT_INV_load1~q\,
	datac => \DC|ALT_INV_load\(0),
	datad => \DC|ALT_INV_load\(2),
	datae => \DC|ALT_INV_load\(3),
	dataf => \DC|ALT_INV_load\(1),
	combout => \DC|load~1_combout\);

-- Location: FF_X72_Y4_N20
\DC|load[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DC|load~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DC|load\(3));

-- Location: MLABCELL_X72_Y4_N39
\h0|out0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \h0|out0~0_combout\ = ( \DC|load\(1) & ( (\DC|load\(3) & (\DC|load\(0) & !\DC|load\(2))) ) ) # ( !\DC|load\(1) & ( (!\DC|load\(3) & (!\DC|load\(0) $ (!\DC|load\(2)))) # (\DC|load\(3) & (\DC|load\(0) & \DC|load\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101010100101000010101010010100000101000000000000010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DC|ALT_INV_load\(3),
	datac => \DC|ALT_INV_load\(0),
	datad => \DC|ALT_INV_load\(2),
	dataf => \DC|ALT_INV_load\(1),
	combout => \h0|out0~0_combout\);

-- Location: MLABCELL_X72_Y4_N6
\h0|out1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \h0|out1~0_combout\ = ( \DC|load\(1) & ( (!\DC|load\(0) & ((\DC|load\(2)))) # (\DC|load\(0) & (\DC|load\(3))) ) ) # ( !\DC|load\(1) & ( (\DC|load\(2) & (!\DC|load\(3) $ (!\DC|load\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011000000110000001100000011000011101000111010001110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DC|ALT_INV_load\(3),
	datab => \DC|ALT_INV_load\(0),
	datac => \DC|ALT_INV_load\(2),
	dataf => \DC|ALT_INV_load\(1),
	combout => \h0|out1~0_combout\);

-- Location: MLABCELL_X72_Y4_N27
\h0|out2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \h0|out2~0_combout\ = ( \DC|load\(1) & ( (!\DC|load\(3) & (!\DC|load\(0) & !\DC|load\(2))) # (\DC|load\(3) & ((\DC|load\(2)))) ) ) # ( !\DC|load\(1) & ( (\DC|load\(3) & (!\DC|load\(0) & \DC|load\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010000000000000101000010100000010101011010000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DC|ALT_INV_load\(3),
	datac => \DC|ALT_INV_load\(0),
	datad => \DC|ALT_INV_load\(2),
	dataf => \DC|ALT_INV_load\(1),
	combout => \h0|out2~0_combout\);

-- Location: MLABCELL_X72_Y4_N33
\h0|out3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \h0|out3~0_combout\ = ( \DC|load\(1) & ( (!\DC|load\(0) & (\DC|load\(3) & !\DC|load\(2))) # (\DC|load\(0) & ((\DC|load\(2)))) ) ) # ( !\DC|load\(1) & ( (!\DC|load\(3) & (!\DC|load\(0) $ (!\DC|load\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101010100000000010101010000001010000000011110101000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DC|ALT_INV_load\(3),
	datac => \DC|ALT_INV_load\(0),
	datad => \DC|ALT_INV_load\(2),
	dataf => \DC|ALT_INV_load\(1),
	combout => \h0|out3~0_combout\);

-- Location: MLABCELL_X72_Y4_N12
\h0|out4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \h0|out4~0_combout\ = ( \DC|load\(3) & ( (!\DC|load\(2) & (!\DC|load\(1) & \DC|load\(0))) ) ) # ( !\DC|load\(3) & ( ((\DC|load\(2) & !\DC|load\(1))) # (\DC|load\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000011111111001100001111111100000000110000000000000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \DC|ALT_INV_load\(2),
	datac => \DC|ALT_INV_load\(1),
	datad => \DC|ALT_INV_load\(0),
	dataf => \DC|ALT_INV_load\(3),
	combout => \h0|out4~0_combout\);

-- Location: MLABCELL_X72_Y4_N15
\h0|out5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \h0|out5~0_combout\ = ( \DC|load\(3) & ( (!\DC|load\(1) & (\DC|load\(2) & \DC|load\(0))) ) ) # ( !\DC|load\(3) & ( (!\DC|load\(1) & (!\DC|load\(2) & \DC|load\(0))) # (\DC|load\(1) & ((!\DC|load\(2)) # (\DC|load\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100110101001101010011010100110100000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DC|ALT_INV_load\(1),
	datab => \DC|ALT_INV_load\(2),
	datac => \DC|ALT_INV_load\(0),
	dataf => \DC|ALT_INV_load\(3),
	combout => \h0|out5~0_combout\);

-- Location: MLABCELL_X72_Y4_N54
\h0|out6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \h0|out6~0_combout\ = ( \DC|load\(1) & ( (!\DC|load\(3) & (\DC|load\(0) & \DC|load\(2))) ) ) # ( !\DC|load\(1) & ( (!\DC|load\(3) & ((!\DC|load\(2)))) # (\DC|load\(3) & (!\DC|load\(0) & \DC|load\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010010010100100101001001010010000000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DC|ALT_INV_load\(3),
	datab => \DC|ALT_INV_load\(0),
	datac => \DC|ALT_INV_load\(2),
	dataf => \DC|ALT_INV_load\(1),
	combout => \h0|out6~0_combout\);

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

-- Location: LABCELL_X22_Y27_N3
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


