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

-- DATE "06/06/2016 18:22:56"

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

ENTITY 	lab2part3 IS
    PORT (
	SW : IN std_logic_vector(7 DOWNTO 0);
	KEY : IN std_logic_vector(2 DOWNTO 0);
	HEX0 : OUT std_logic_vector(6 DOWNTO 0);
	HEX1 : OUT std_logic_vector(6 DOWNTO 0);
	HEX2 : OUT std_logic_vector(6 DOWNTO 0);
	HEX3 : OUT std_logic_vector(6 DOWNTO 0);
	HEX4 : OUT std_logic_vector(6 DOWNTO 0);
	HEX5 : OUT std_logic_vector(6 DOWNTO 0);
	LEDR : OUT std_logic_vector(7 DOWNTO 0)
	);
END lab2part3;

-- Design Ports Information
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
-- HEX2[0]	=>  Location: PIN_AB23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[1]	=>  Location: PIN_AE29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[2]	=>  Location: PIN_AD29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[3]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[4]	=>  Location: PIN_AD30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[5]	=>  Location: PIN_AC29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[6]	=>  Location: PIN_AC30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[0]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[1]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[2]	=>  Location: PIN_AD25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[3]	=>  Location: PIN_AC25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[4]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[5]	=>  Location: PIN_AB25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[6]	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
-- LEDR[0]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[1]	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[2]	=>  Location: PIN_V17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[3]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[4]	=>  Location: PIN_W17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[5]	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[6]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[7]	=>  Location: PIN_W20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_AC12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_AF10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_AF9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_AD12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_AC9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_AD11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_AE11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_W15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF lab2part3 IS
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
SIGNAL ww_KEY : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX4 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX5 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(7 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \hex0|h0~0_combout\ : std_logic;
SIGNAL \hex0|h1~0_combout\ : std_logic;
SIGNAL \hex0|h2~0_combout\ : std_logic;
SIGNAL \hex0|h3~0_combout\ : std_logic;
SIGNAL \hex0|h4~0_combout\ : std_logic;
SIGNAL \hex0|h5~0_combout\ : std_logic;
SIGNAL \hex0|h6~0_combout\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \hex2|h0~0_combout\ : std_logic;
SIGNAL \hex2|h1~0_combout\ : std_logic;
SIGNAL \hex2|h2~0_combout\ : std_logic;
SIGNAL \hex2|h3~0_combout\ : std_logic;
SIGNAL \hex2|h4~0_combout\ : std_logic;
SIGNAL \hex2|h5~0_combout\ : std_logic;
SIGNAL \hex2|h6~0_combout\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \all|fbfa1|fa2|cout~0_combout\ : std_logic;
SIGNAL \all|Add0~2\ : std_logic;
SIGNAL \all|Add0~10\ : std_logic;
SIGNAL \all|Add0~6\ : std_logic;
SIGNAL \all|Add0~13_sumout\ : std_logic;
SIGNAL \all|Mux4~0_combout\ : std_logic;
SIGNAL \all|fbfa1|fa0|cout~0_combout\ : std_logic;
SIGNAL \all|Add0~9_sumout\ : std_logic;
SIGNAL \all|Mux6~0_combout\ : std_logic;
SIGNAL \all|fbfa1|fa1|cout~0_combout\ : std_logic;
SIGNAL \all|Add0~5_sumout\ : std_logic;
SIGNAL \all|Mux5~1_combout\ : std_logic;
SIGNAL \all|WideOr0~0_combout\ : std_logic;
SIGNAL \hex2|h2~1_combout\ : std_logic;
SIGNAL \all|Add0~1_sumout\ : std_logic;
SIGNAL \all|Mux7~2_combout\ : std_logic;
SIGNAL \all|Mux7~0_combout\ : std_logic;
SIGNAL \all|Mux7~1_combout\ : std_logic;
SIGNAL \all|Mux7~3_combout\ : std_logic;
SIGNAL \hex4|h0~0_combout\ : std_logic;
SIGNAL \hex4|h1~0_combout\ : std_logic;
SIGNAL \hex4|h2~0_combout\ : std_logic;
SIGNAL \hex4|h3~0_combout\ : std_logic;
SIGNAL \hex4|h4~0_combout\ : std_logic;
SIGNAL \hex4|h5~0_combout\ : std_logic;
SIGNAL \hex4|h6~0_combout\ : std_logic;
SIGNAL \all|Mux5~0_combout\ : std_logic;
SIGNAL \all|Add0~14\ : std_logic;
SIGNAL \all|Add0~17_sumout\ : std_logic;
SIGNAL \all|Mux3~1_combout\ : std_logic;
SIGNAL \all|Mux3~2_combout\ : std_logic;
SIGNAL \all|Mux3~0_combout\ : std_logic;
SIGNAL \all|Mux3~3_combout\ : std_logic;
SIGNAL \all|Mux0~2_combout\ : std_logic;
SIGNAL \all|Mux2~0_combout\ : std_logic;
SIGNAL \all|Mux0~1_combout\ : std_logic;
SIGNAL \all|Mux1~1_combout\ : std_logic;
SIGNAL \hex5|h0~1_combout\ : std_logic;
SIGNAL \all|Mux0~0_combout\ : std_logic;
SIGNAL \hex5|h0~0_combout\ : std_logic;
SIGNAL \all|Mux1~0_combout\ : std_logic;
SIGNAL \hex5|h0~2_combout\ : std_logic;
SIGNAL \all|Mux3~4_combout\ : std_logic;
SIGNAL \all|Mux2~1_combout\ : std_logic;
SIGNAL \hex5|h1~0_combout\ : std_logic;
SIGNAL \hex5|h0~3_combout\ : std_logic;
SIGNAL \hex5|h5~0_combout\ : std_logic;
SIGNAL \hex5|h2~0_combout\ : std_logic;
SIGNAL \hex5|h3~combout\ : std_logic;
SIGNAL \hex5|h4~0_combout\ : std_logic;
SIGNAL \hex5|h5~1_combout\ : std_logic;
SIGNAL \hex5|h5~2_combout\ : std_logic;
SIGNAL \hex5|h6~combout\ : std_logic;
SIGNAL \ALT_INV_KEY[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_KEY[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_KEY[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[1]~input_o\ : std_logic;
SIGNAL \hex5|ALT_INV_h5~1_combout\ : std_logic;
SIGNAL \hex5|ALT_INV_h5~0_combout\ : std_logic;
SIGNAL \hex5|ALT_INV_h0~3_combout\ : std_logic;
SIGNAL \all|ALT_INV_Mux2~1_combout\ : std_logic;
SIGNAL \all|ALT_INV_Mux3~4_combout\ : std_logic;
SIGNAL \hex5|ALT_INV_h0~1_combout\ : std_logic;
SIGNAL \all|ALT_INV_Mux0~2_combout\ : std_logic;
SIGNAL \all|ALT_INV_Mux0~1_combout\ : std_logic;
SIGNAL \all|ALT_INV_Mux1~1_combout\ : std_logic;
SIGNAL \hex5|ALT_INV_h0~0_combout\ : std_logic;
SIGNAL \all|ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \all|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \all|ALT_INV_Mux3~3_combout\ : std_logic;
SIGNAL \all|ALT_INV_Mux3~2_combout\ : std_logic;
SIGNAL \all|ALT_INV_Mux3~1_combout\ : std_logic;
SIGNAL \all|ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \all|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \all|fbfa1|fa2|ALT_INV_cout~0_combout\ : std_logic;
SIGNAL \all|fbfa1|fa0|ALT_INV_cout~0_combout\ : std_logic;
SIGNAL \all|fbfa1|fa1|ALT_INV_cout~0_combout\ : std_logic;
SIGNAL \all|ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \all|ALT_INV_Mux7~3_combout\ : std_logic;
SIGNAL \all|ALT_INV_Mux7~2_combout\ : std_logic;
SIGNAL \all|ALT_INV_WideOr0~0_combout\ : std_logic;
SIGNAL \hex2|ALT_INV_h2~1_combout\ : std_logic;
SIGNAL \all|ALT_INV_Mux7~1_combout\ : std_logic;
SIGNAL \all|ALT_INV_Mux7~0_combout\ : std_logic;
SIGNAL \all|ALT_INV_Mux5~1_combout\ : std_logic;
SIGNAL \all|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \all|ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \all|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \all|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \all|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \all|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \all|ALT_INV_Add0~1_sumout\ : std_logic;

BEGIN

ww_SW <= SW;
ww_KEY <= KEY;
HEX0 <= ww_HEX0;
HEX1 <= ww_HEX1;
HEX2 <= ww_HEX2;
HEX3 <= ww_HEX3;
HEX4 <= ww_HEX4;
HEX5 <= ww_HEX5;
LEDR <= ww_LEDR;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_KEY[0]~input_o\ <= NOT \KEY[0]~input_o\;
\ALT_INV_KEY[1]~input_o\ <= NOT \KEY[1]~input_o\;
\ALT_INV_KEY[2]~input_o\ <= NOT \KEY[2]~input_o\;
\ALT_INV_SW[6]~input_o\ <= NOT \SW[6]~input_o\;
\ALT_INV_SW[4]~input_o\ <= NOT \SW[4]~input_o\;
\ALT_INV_SW[7]~input_o\ <= NOT \SW[7]~input_o\;
\ALT_INV_SW[5]~input_o\ <= NOT \SW[5]~input_o\;
\ALT_INV_SW[2]~input_o\ <= NOT \SW[2]~input_o\;
\ALT_INV_SW[0]~input_o\ <= NOT \SW[0]~input_o\;
\ALT_INV_SW[3]~input_o\ <= NOT \SW[3]~input_o\;
\ALT_INV_SW[1]~input_o\ <= NOT \SW[1]~input_o\;
\hex5|ALT_INV_h5~1_combout\ <= NOT \hex5|h5~1_combout\;
\hex5|ALT_INV_h5~0_combout\ <= NOT \hex5|h5~0_combout\;
\hex5|ALT_INV_h0~3_combout\ <= NOT \hex5|h0~3_combout\;
\all|ALT_INV_Mux2~1_combout\ <= NOT \all|Mux2~1_combout\;
\all|ALT_INV_Mux3~4_combout\ <= NOT \all|Mux3~4_combout\;
\hex5|ALT_INV_h0~1_combout\ <= NOT \hex5|h0~1_combout\;
\all|ALT_INV_Mux0~2_combout\ <= NOT \all|Mux0~2_combout\;
\all|ALT_INV_Mux0~1_combout\ <= NOT \all|Mux0~1_combout\;
\all|ALT_INV_Mux1~1_combout\ <= NOT \all|Mux1~1_combout\;
\hex5|ALT_INV_h0~0_combout\ <= NOT \hex5|h0~0_combout\;
\all|ALT_INV_Mux2~0_combout\ <= NOT \all|Mux2~0_combout\;
\all|ALT_INV_Mux0~0_combout\ <= NOT \all|Mux0~0_combout\;
\all|ALT_INV_Mux3~3_combout\ <= NOT \all|Mux3~3_combout\;
\all|ALT_INV_Mux3~2_combout\ <= NOT \all|Mux3~2_combout\;
\all|ALT_INV_Mux3~1_combout\ <= NOT \all|Mux3~1_combout\;
\all|ALT_INV_Mux3~0_combout\ <= NOT \all|Mux3~0_combout\;
\all|ALT_INV_Mux1~0_combout\ <= NOT \all|Mux1~0_combout\;
\all|fbfa1|fa2|ALT_INV_cout~0_combout\ <= NOT \all|fbfa1|fa2|cout~0_combout\;
\all|fbfa1|fa0|ALT_INV_cout~0_combout\ <= NOT \all|fbfa1|fa0|cout~0_combout\;
\all|fbfa1|fa1|ALT_INV_cout~0_combout\ <= NOT \all|fbfa1|fa1|cout~0_combout\;
\all|ALT_INV_Mux5~0_combout\ <= NOT \all|Mux5~0_combout\;
\all|ALT_INV_Mux7~3_combout\ <= NOT \all|Mux7~3_combout\;
\all|ALT_INV_Mux7~2_combout\ <= NOT \all|Mux7~2_combout\;
\all|ALT_INV_WideOr0~0_combout\ <= NOT \all|WideOr0~0_combout\;
\hex2|ALT_INV_h2~1_combout\ <= NOT \hex2|h2~1_combout\;
\all|ALT_INV_Mux7~1_combout\ <= NOT \all|Mux7~1_combout\;
\all|ALT_INV_Mux7~0_combout\ <= NOT \all|Mux7~0_combout\;
\all|ALT_INV_Mux5~1_combout\ <= NOT \all|Mux5~1_combout\;
\all|ALT_INV_Mux6~0_combout\ <= NOT \all|Mux6~0_combout\;
\all|ALT_INV_Mux4~0_combout\ <= NOT \all|Mux4~0_combout\;
\all|ALT_INV_Add0~17_sumout\ <= NOT \all|Add0~17_sumout\;
\all|ALT_INV_Add0~13_sumout\ <= NOT \all|Add0~13_sumout\;
\all|ALT_INV_Add0~9_sumout\ <= NOT \all|Add0~9_sumout\;
\all|ALT_INV_Add0~5_sumout\ <= NOT \all|Add0~5_sumout\;
\all|ALT_INV_Add0~1_sumout\ <= NOT \all|Add0~1_sumout\;

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
	i => \hex0|h6~0_combout\,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX1(6));

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
	i => \hex2|h6~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(6));

-- Location: IOOBUF_X89_Y16_N5
\HEX3[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX3(0));

-- Location: IOOBUF_X89_Y16_N22
\HEX3[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX3(1));

-- Location: IOOBUF_X89_Y4_N45
\HEX3[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX3(2));

-- Location: IOOBUF_X89_Y4_N62
\HEX3[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX3(3));

-- Location: IOOBUF_X89_Y21_N39
\HEX3[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX3(4));

-- Location: IOOBUF_X89_Y11_N62
\HEX3[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX3(5));

-- Location: IOOBUF_X89_Y9_N5
\HEX3[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX3(6));

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
	i => \hex4|h6~0_combout\,
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
	i => \hex5|h0~2_combout\,
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
	i => \hex5|h1~0_combout\,
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
	i => \hex5|h2~0_combout\,
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
	i => \hex5|h3~combout\,
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
	i => \hex5|h4~0_combout\,
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
	i => \hex5|h5~2_combout\,
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
	i => \hex5|h6~combout\,
	devoe => ww_devoe,
	o => ww_HEX5(6));

-- Location: IOOBUF_X52_Y0_N2
\LEDR[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \all|Mux7~3_combout\,
	devoe => ww_devoe,
	o => ww_LEDR(0));

-- Location: IOOBUF_X52_Y0_N19
\LEDR[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \all|Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_LEDR(1));

-- Location: IOOBUF_X60_Y0_N2
\LEDR[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \all|Mux5~1_combout\,
	devoe => ww_devoe,
	o => ww_LEDR(2));

-- Location: IOOBUF_X80_Y0_N2
\LEDR[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \all|Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_LEDR(3));

-- Location: IOOBUF_X60_Y0_N19
\LEDR[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \all|Mux3~4_combout\,
	devoe => ww_devoe,
	o => ww_LEDR(4));

-- Location: IOOBUF_X80_Y0_N19
\LEDR[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \all|Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_LEDR(5));

-- Location: IOOBUF_X84_Y0_N2
\LEDR[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \all|Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_LEDR(6));

-- Location: IOOBUF_X89_Y6_N5
\LEDR[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \all|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_LEDR(7));

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

-- Location: LABCELL_X88_Y4_N0
\hex0|h0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \hex0|h0~0_combout\ = ( \SW[3]~input_o\ & ( \SW[1]~input_o\ & ( (\SW[0]~input_o\ & !\SW[2]~input_o\) ) ) ) # ( \SW[3]~input_o\ & ( !\SW[1]~input_o\ & ( (\SW[0]~input_o\ & \SW[2]~input_o\) ) ) ) # ( !\SW[3]~input_o\ & ( !\SW[1]~input_o\ & ( 
-- !\SW[0]~input_o\ $ (!\SW[2]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101001011010000001010000010100000000000000000101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[0]~input_o\,
	datac => \ALT_INV_SW[2]~input_o\,
	datae => \ALT_INV_SW[3]~input_o\,
	dataf => \ALT_INV_SW[1]~input_o\,
	combout => \hex0|h0~0_combout\);

-- Location: LABCELL_X88_Y4_N39
\hex0|h1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \hex0|h1~0_combout\ = ( \SW[3]~input_o\ & ( \SW[1]~input_o\ & ( (\SW[0]~input_o\) # (\SW[2]~input_o\) ) ) ) # ( !\SW[3]~input_o\ & ( \SW[1]~input_o\ & ( (\SW[2]~input_o\ & !\SW[0]~input_o\) ) ) ) # ( \SW[3]~input_o\ & ( !\SW[1]~input_o\ & ( 
-- (\SW[2]~input_o\ & !\SW[0]~input_o\) ) ) ) # ( !\SW[3]~input_o\ & ( !\SW[1]~input_o\ & ( (\SW[2]~input_o\ & \SW[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101010101010000000001010101000000000101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[2]~input_o\,
	datad => \ALT_INV_SW[0]~input_o\,
	datae => \ALT_INV_SW[3]~input_o\,
	dataf => \ALT_INV_SW[1]~input_o\,
	combout => \hex0|h1~0_combout\);

-- Location: LABCELL_X88_Y4_N12
\hex0|h2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \hex0|h2~0_combout\ = ( \SW[3]~input_o\ & ( \SW[1]~input_o\ & ( \SW[2]~input_o\ ) ) ) # ( !\SW[3]~input_o\ & ( \SW[1]~input_o\ & ( (!\SW[0]~input_o\ & !\SW[2]~input_o\) ) ) ) # ( \SW[3]~input_o\ & ( !\SW[1]~input_o\ & ( (!\SW[0]~input_o\ & 
-- \SW[2]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000010100000101010100000101000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[0]~input_o\,
	datac => \ALT_INV_SW[2]~input_o\,
	datae => \ALT_INV_SW[3]~input_o\,
	dataf => \ALT_INV_SW[1]~input_o\,
	combout => \hex0|h2~0_combout\);

-- Location: LABCELL_X88_Y4_N21
\hex0|h3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \hex0|h3~0_combout\ = ( \SW[3]~input_o\ & ( \SW[1]~input_o\ & ( !\SW[2]~input_o\ $ (\SW[0]~input_o\) ) ) ) # ( !\SW[3]~input_o\ & ( \SW[1]~input_o\ & ( (\SW[2]~input_o\ & \SW[0]~input_o\) ) ) ) # ( !\SW[3]~input_o\ & ( !\SW[1]~input_o\ & ( 
-- !\SW[2]~input_o\ $ (!\SW[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010110101010000000000000000000000000010101011010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[2]~input_o\,
	datad => \ALT_INV_SW[0]~input_o\,
	datae => \ALT_INV_SW[3]~input_o\,
	dataf => \ALT_INV_SW[1]~input_o\,
	combout => \hex0|h3~0_combout\);

-- Location: LABCELL_X88_Y4_N54
\hex0|h4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \hex0|h4~0_combout\ = ( !\SW[3]~input_o\ & ( \SW[1]~input_o\ & ( \SW[0]~input_o\ ) ) ) # ( \SW[3]~input_o\ & ( !\SW[1]~input_o\ & ( (\SW[0]~input_o\ & !\SW[2]~input_o\) ) ) ) # ( !\SW[3]~input_o\ & ( !\SW[1]~input_o\ & ( (\SW[2]~input_o\) # 
-- (\SW[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111101011111010100000101000001010101010101010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[0]~input_o\,
	datac => \ALT_INV_SW[2]~input_o\,
	datae => \ALT_INV_SW[3]~input_o\,
	dataf => \ALT_INV_SW[1]~input_o\,
	combout => \hex0|h4~0_combout\);

-- Location: LABCELL_X88_Y4_N33
\hex0|h5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \hex0|h5~0_combout\ = ( !\SW[3]~input_o\ & ( \SW[1]~input_o\ & ( (!\SW[2]~input_o\) # (\SW[0]~input_o\) ) ) ) # ( \SW[3]~input_o\ & ( !\SW[1]~input_o\ & ( (\SW[2]~input_o\ & \SW[0]~input_o\) ) ) ) # ( !\SW[3]~input_o\ & ( !\SW[1]~input_o\ & ( 
-- (!\SW[2]~input_o\ & \SW[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000000101010110101010111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[2]~input_o\,
	datad => \ALT_INV_SW[0]~input_o\,
	datae => \ALT_INV_SW[3]~input_o\,
	dataf => \ALT_INV_SW[1]~input_o\,
	combout => \hex0|h5~0_combout\);

-- Location: LABCELL_X88_Y4_N6
\hex0|h6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \hex0|h6~0_combout\ = ( !\SW[3]~input_o\ & ( \SW[1]~input_o\ & ( (\SW[0]~input_o\ & \SW[2]~input_o\) ) ) ) # ( \SW[3]~input_o\ & ( !\SW[1]~input_o\ & ( (!\SW[0]~input_o\ & \SW[2]~input_o\) ) ) ) # ( !\SW[3]~input_o\ & ( !\SW[1]~input_o\ & ( 
-- !\SW[2]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000000010100000101000000101000001010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[0]~input_o\,
	datac => \ALT_INV_SW[2]~input_o\,
	datae => \ALT_INV_SW[3]~input_o\,
	dataf => \ALT_INV_SW[1]~input_o\,
	combout => \hex0|h6~0_combout\);

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

-- Location: LABCELL_X88_Y3_N0
\hex2|h0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \hex2|h0~0_combout\ = ( \SW[5]~input_o\ & ( (\SW[4]~input_o\ & (!\SW[6]~input_o\ & \SW[7]~input_o\)) ) ) # ( !\SW[5]~input_o\ & ( (!\SW[4]~input_o\ & (\SW[6]~input_o\ & !\SW[7]~input_o\)) # (\SW[4]~input_o\ & (!\SW[6]~input_o\ $ (\SW[7]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110000000011001111000000001100000000001100000000000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SW[4]~input_o\,
	datac => \ALT_INV_SW[6]~input_o\,
	datad => \ALT_INV_SW[7]~input_o\,
	dataf => \ALT_INV_SW[5]~input_o\,
	combout => \hex2|h0~0_combout\);

-- Location: LABCELL_X88_Y3_N3
\hex2|h1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \hex2|h1~0_combout\ = ( \SW[5]~input_o\ & ( (!\SW[4]~input_o\ & (\SW[6]~input_o\)) # (\SW[4]~input_o\ & ((\SW[7]~input_o\))) ) ) # ( !\SW[5]~input_o\ & ( (\SW[6]~input_o\ & (!\SW[4]~input_o\ $ (!\SW[7]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000101000100000100010100010001000100011101110100010001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[6]~input_o\,
	datab => \ALT_INV_SW[4]~input_o\,
	datad => \ALT_INV_SW[7]~input_o\,
	dataf => \ALT_INV_SW[5]~input_o\,
	combout => \hex2|h1~0_combout\);

-- Location: LABCELL_X85_Y3_N39
\hex2|h2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \hex2|h2~0_combout\ = ( \SW[5]~input_o\ & ( (!\SW[7]~input_o\ & (!\SW[4]~input_o\ & !\SW[6]~input_o\)) # (\SW[7]~input_o\ & ((\SW[6]~input_o\))) ) ) # ( !\SW[5]~input_o\ & ( (\SW[7]~input_o\ & (!\SW[4]~input_o\ & \SW[6]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010000000000000101000010100000010101011010000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[7]~input_o\,
	datac => \ALT_INV_SW[4]~input_o\,
	datad => \ALT_INV_SW[6]~input_o\,
	dataf => \ALT_INV_SW[5]~input_o\,
	combout => \hex2|h2~0_combout\);

-- Location: LABCELL_X88_Y3_N39
\hex2|h3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \hex2|h3~0_combout\ = ( \SW[5]~input_o\ & ( (!\SW[4]~input_o\ & (\SW[7]~input_o\ & !\SW[6]~input_o\)) # (\SW[4]~input_o\ & ((\SW[6]~input_o\))) ) ) # ( !\SW[5]~input_o\ & ( (!\SW[7]~input_o\ & (!\SW[4]~input_o\ $ (!\SW[6]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101010100000000010101010000001010000000011110101000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[7]~input_o\,
	datac => \ALT_INV_SW[4]~input_o\,
	datad => \ALT_INV_SW[6]~input_o\,
	dataf => \ALT_INV_SW[5]~input_o\,
	combout => \hex2|h3~0_combout\);

-- Location: LABCELL_X88_Y3_N12
\hex2|h4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \hex2|h4~0_combout\ = ( \SW[5]~input_o\ & ( (\SW[4]~input_o\ & !\SW[7]~input_o\) ) ) # ( !\SW[5]~input_o\ & ( (!\SW[6]~input_o\ & (\SW[4]~input_o\)) # (\SW[6]~input_o\ & ((!\SW[7]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100110000001111110011000000110011000000000011001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SW[4]~input_o\,
	datac => \ALT_INV_SW[6]~input_o\,
	datad => \ALT_INV_SW[7]~input_o\,
	dataf => \ALT_INV_SW[5]~input_o\,
	combout => \hex2|h4~0_combout\);

-- Location: LABCELL_X88_Y3_N15
\hex2|h5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \hex2|h5~0_combout\ = ( \SW[5]~input_o\ & ( (!\SW[7]~input_o\ & ((!\SW[6]~input_o\) # (\SW[4]~input_o\))) ) ) # ( !\SW[5]~input_o\ & ( (\SW[4]~input_o\ & (!\SW[6]~input_o\ $ (\SW[7]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000010001001000100001000110111011000000001011101100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[6]~input_o\,
	datab => \ALT_INV_SW[4]~input_o\,
	datad => \ALT_INV_SW[7]~input_o\,
	dataf => \ALT_INV_SW[5]~input_o\,
	combout => \hex2|h5~0_combout\);

-- Location: LABCELL_X88_Y3_N18
\hex2|h6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \hex2|h6~0_combout\ = ( \SW[5]~input_o\ & ( (\SW[6]~input_o\ & (\SW[4]~input_o\ & !\SW[7]~input_o\)) ) ) # ( !\SW[5]~input_o\ & ( (!\SW[6]~input_o\ & ((!\SW[7]~input_o\))) # (\SW[6]~input_o\ & (!\SW[4]~input_o\ & \SW[7]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010010010100100101001001010010000010000000100000001000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[6]~input_o\,
	datab => \ALT_INV_SW[4]~input_o\,
	datac => \ALT_INV_SW[7]~input_o\,
	dataf => \ALT_INV_SW[5]~input_o\,
	combout => \hex2|h6~0_combout\);

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

-- Location: LABCELL_X85_Y3_N18
\all|fbfa1|fa2|cout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \all|fbfa1|fa2|cout~0_combout\ = ( \SW[4]~input_o\ & ( \SW[5]~input_o\ & ( (!\SW[2]~input_o\ & (\SW[6]~input_o\ & ((\SW[0]~input_o\) # (\SW[1]~input_o\)))) # (\SW[2]~input_o\ & (((\SW[6]~input_o\) # (\SW[0]~input_o\)) # (\SW[1]~input_o\))) ) ) ) # ( 
-- !\SW[4]~input_o\ & ( \SW[5]~input_o\ & ( (!\SW[1]~input_o\ & (\SW[2]~input_o\ & \SW[6]~input_o\)) # (\SW[1]~input_o\ & ((\SW[6]~input_o\) # (\SW[2]~input_o\))) ) ) ) # ( \SW[4]~input_o\ & ( !\SW[5]~input_o\ & ( (!\SW[2]~input_o\ & (\SW[1]~input_o\ & 
-- (\SW[0]~input_o\ & \SW[6]~input_o\))) # (\SW[2]~input_o\ & (((\SW[1]~input_o\ & \SW[0]~input_o\)) # (\SW[6]~input_o\))) ) ) ) # ( !\SW[4]~input_o\ & ( !\SW[5]~input_o\ & ( (\SW[2]~input_o\ & \SW[6]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000010011011100010001011101110001001101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[1]~input_o\,
	datab => \ALT_INV_SW[2]~input_o\,
	datac => \ALT_INV_SW[0]~input_o\,
	datad => \ALT_INV_SW[6]~input_o\,
	datae => \ALT_INV_SW[4]~input_o\,
	dataf => \ALT_INV_SW[5]~input_o\,
	combout => \all|fbfa1|fa2|cout~0_combout\);

-- Location: LABCELL_X85_Y3_N0
\all|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \all|Add0~1_sumout\ = SUM(( \SW[4]~input_o\ ) + ( \SW[0]~input_o\ ) + ( !VCC ))
-- \all|Add0~2\ = CARRY(( \SW[4]~input_o\ ) + ( \SW[0]~input_o\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_SW[0]~input_o\,
	datad => \ALT_INV_SW[4]~input_o\,
	cin => GND,
	sumout => \all|Add0~1_sumout\,
	cout => \all|Add0~2\);

-- Location: LABCELL_X85_Y3_N3
\all|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \all|Add0~9_sumout\ = SUM(( \SW[5]~input_o\ ) + ( \SW[1]~input_o\ ) + ( \all|Add0~2\ ))
-- \all|Add0~10\ = CARRY(( \SW[5]~input_o\ ) + ( \SW[1]~input_o\ ) + ( \all|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[5]~input_o\,
	dataf => \ALT_INV_SW[1]~input_o\,
	cin => \all|Add0~2\,
	sumout => \all|Add0~9_sumout\,
	cout => \all|Add0~10\);

-- Location: LABCELL_X85_Y3_N6
\all|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \all|Add0~5_sumout\ = SUM(( \SW[6]~input_o\ ) + ( \SW[2]~input_o\ ) + ( \all|Add0~10\ ))
-- \all|Add0~6\ = CARRY(( \SW[6]~input_o\ ) + ( \SW[2]~input_o\ ) + ( \all|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SW[6]~input_o\,
	dataf => \ALT_INV_SW[2]~input_o\,
	cin => \all|Add0~10\,
	sumout => \all|Add0~5_sumout\,
	cout => \all|Add0~6\);

-- Location: LABCELL_X85_Y3_N9
\all|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \all|Add0~13_sumout\ = SUM(( \SW[7]~input_o\ ) + ( \SW[3]~input_o\ ) + ( \all|Add0~6\ ))
-- \all|Add0~14\ = CARRY(( \SW[7]~input_o\ ) + ( \SW[3]~input_o\ ) + ( \all|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[7]~input_o\,
	datac => \ALT_INV_SW[3]~input_o\,
	cin => \all|Add0~6\,
	sumout => \all|Add0~13_sumout\,
	cout => \all|Add0~14\);

-- Location: LABCELL_X85_Y3_N48
\all|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \all|Mux4~0_combout\ = ( !\KEY[0]~input_o\ & ( (\KEY[1]~input_o\ & ((!\KEY[2]~input_o\ & (\SW[3]~input_o\)) # (\KEY[2]~input_o\ & (((\all|Add0~13_sumout\)))))) ) ) # ( \KEY[0]~input_o\ & ( (\KEY[2]~input_o\ & (!\SW[3]~input_o\ $ (!\SW[7]~input_o\ $ 
-- (((\KEY[1]~input_o\ & \all|fbfa1|fa2|cout~0_combout\)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0001000100000101000000000011110000010001000001010000000001101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[1]~input_o\,
	datab => \ALT_INV_SW[3]~input_o\,
	datac => \ALT_INV_SW[7]~input_o\,
	datad => \ALT_INV_KEY[2]~input_o\,
	datae => \ALT_INV_KEY[0]~input_o\,
	dataf => \all|fbfa1|fa2|ALT_INV_cout~0_combout\,
	datag => \all|ALT_INV_Add0~13_sumout\,
	combout => \all|Mux4~0_combout\);

-- Location: LABCELL_X88_Y4_N42
\all|fbfa1|fa0|cout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \all|fbfa1|fa0|cout~0_combout\ = ( \SW[0]~input_o\ & ( \SW[4]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SW[4]~input_o\,
	dataf => \ALT_INV_SW[0]~input_o\,
	combout => \all|fbfa1|fa0|cout~0_combout\);

-- Location: LABCELL_X85_Y3_N54
\all|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \all|Mux6~0_combout\ = ( !\KEY[0]~input_o\ & ( (\KEY[1]~input_o\ & ((!\KEY[2]~input_o\ & (((\SW[1]~input_o\)))) # (\KEY[2]~input_o\ & (\all|Add0~9_sumout\)))) ) ) # ( \KEY[0]~input_o\ & ( (\KEY[2]~input_o\ & (!\SW[5]~input_o\ $ (!\SW[1]~input_o\ $ 
-- (((\KEY[1]~input_o\ & \all|fbfa1|fa0|cout~0_combout\)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000100000001000000110001001001000101010001010011000000100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[1]~input_o\,
	datab => \ALT_INV_KEY[2]~input_o\,
	datac => \ALT_INV_SW[5]~input_o\,
	datad => \all|fbfa1|fa0|ALT_INV_cout~0_combout\,
	datae => \ALT_INV_KEY[0]~input_o\,
	dataf => \ALT_INV_SW[1]~input_o\,
	datag => \all|ALT_INV_Add0~9_sumout\,
	combout => \all|Mux6~0_combout\);

-- Location: LABCELL_X85_Y3_N45
\all|fbfa1|fa1|cout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \all|fbfa1|fa1|cout~0_combout\ = ( \SW[5]~input_o\ & ( ((\SW[4]~input_o\ & \SW[0]~input_o\)) # (\SW[1]~input_o\) ) ) # ( !\SW[5]~input_o\ & ( (\SW[1]~input_o\ & (\SW[4]~input_o\ & \SW[0]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010101010101010111110101010101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[1]~input_o\,
	datac => \ALT_INV_SW[4]~input_o\,
	datad => \ALT_INV_SW[0]~input_o\,
	dataf => \ALT_INV_SW[5]~input_o\,
	combout => \all|fbfa1|fa1|cout~0_combout\);

-- Location: LABCELL_X85_Y3_N30
\all|Mux5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \all|Mux5~1_combout\ = ( !\KEY[0]~input_o\ & ( (\KEY[1]~input_o\ & (((!\KEY[2]~input_o\ & ((\SW[2]~input_o\))) # (\KEY[2]~input_o\ & (\all|Add0~5_sumout\))))) ) ) # ( \KEY[0]~input_o\ & ( (\KEY[2]~input_o\ & (!\SW[6]~input_o\ $ (!\SW[2]~input_o\ $ 
-- (((\KEY[1]~input_o\ & \all|fbfa1|fa1|cout~0_combout\)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000000101000000000001111001010101000001010000000011100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[1]~input_o\,
	datab => \all|fbfa1|fa1|ALT_INV_cout~0_combout\,
	datac => \ALT_INV_SW[6]~input_o\,
	datad => \ALT_INV_KEY[2]~input_o\,
	datae => \ALT_INV_KEY[0]~input_o\,
	dataf => \ALT_INV_SW[2]~input_o\,
	datag => \all|ALT_INV_Add0~5_sumout\,
	combout => \all|Mux5~1_combout\);

-- Location: LABCELL_X85_Y3_N42
\all|WideOr0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \all|WideOr0~0_combout\ = ( !\SW[2]~input_o\ & ( (!\SW[1]~input_o\ & (!\SW[3]~input_o\ & (!\SW[5]~input_o\ & !\SW[0]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[1]~input_o\,
	datab => \ALT_INV_SW[3]~input_o\,
	datac => \ALT_INV_SW[5]~input_o\,
	datad => \ALT_INV_SW[0]~input_o\,
	dataf => \ALT_INV_SW[2]~input_o\,
	combout => \all|WideOr0~0_combout\);

-- Location: LABCELL_X88_Y3_N54
\hex2|h2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \hex2|h2~1_combout\ = ( !\SW[6]~input_o\ & ( (!\SW[4]~input_o\ & !\SW[7]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011000000110000001100000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SW[4]~input_o\,
	datac => \ALT_INV_SW[7]~input_o\,
	dataf => \ALT_INV_SW[6]~input_o\,
	combout => \hex2|h2~1_combout\);

-- Location: LABCELL_X88_Y3_N30
\all|Mux7~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \all|Mux7~2_combout\ = ( \hex2|h2~1_combout\ & ( \all|Add0~1_sumout\ & ( (\KEY[2]~input_o\ & (((!\all|WideOr0~0_combout\) # (\KEY[0]~input_o\)) # (\KEY[1]~input_o\))) ) ) ) # ( !\hex2|h2~1_combout\ & ( \all|Add0~1_sumout\ & ( \KEY[2]~input_o\ ) ) ) # ( 
-- \hex2|h2~1_combout\ & ( !\all|Add0~1_sumout\ & ( (\KEY[2]~input_o\ & (!\KEY[1]~input_o\ & (!\KEY[0]~input_o\ & !\all|WideOr0~0_combout\))) ) ) ) # ( !\hex2|h2~1_combout\ & ( !\all|Add0~1_sumout\ & ( (\KEY[2]~input_o\ & (!\KEY[1]~input_o\ & 
-- !\KEY[0]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001000000010000000000000001010101010101010101010100010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[2]~input_o\,
	datab => \ALT_INV_KEY[1]~input_o\,
	datac => \ALT_INV_KEY[0]~input_o\,
	datad => \all|ALT_INV_WideOr0~0_combout\,
	datae => \hex2|ALT_INV_h2~1_combout\,
	dataf => \all|ALT_INV_Add0~1_sumout\,
	combout => \all|Mux7~2_combout\);

-- Location: LABCELL_X88_Y3_N57
\all|Mux7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \all|Mux7~0_combout\ = ( \SW[5]~input_o\ & ( (\SW[3]~input_o\ & (\SW[2]~input_o\ & \SW[1]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001010000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[3]~input_o\,
	datac => \ALT_INV_SW[2]~input_o\,
	datad => \ALT_INV_SW[1]~input_o\,
	dataf => \ALT_INV_SW[5]~input_o\,
	combout => \all|Mux7~0_combout\);

-- Location: LABCELL_X88_Y3_N21
\all|Mux7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \all|Mux7~1_combout\ = ( \KEY[0]~input_o\ & ( (!\SW[6]~input_o\) # ((!\SW[4]~input_o\) # ((!\all|Mux7~0_combout\) # (!\SW[7]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111101111111111111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[6]~input_o\,
	datab => \ALT_INV_SW[4]~input_o\,
	datac => \all|ALT_INV_Mux7~0_combout\,
	datad => \ALT_INV_SW[7]~input_o\,
	dataf => \ALT_INV_KEY[0]~input_o\,
	combout => \all|Mux7~1_combout\);

-- Location: LABCELL_X88_Y3_N9
\all|Mux7~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \all|Mux7~3_combout\ = ( \all|Mux7~1_combout\ & ( \all|Mux7~2_combout\ ) ) # ( !\all|Mux7~1_combout\ & ( ((!\KEY[2]~input_o\ & (\KEY[1]~input_o\ & \SW[0]~input_o\))) # (\all|Mux7~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100101111000011110010111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[2]~input_o\,
	datab => \ALT_INV_KEY[1]~input_o\,
	datac => \all|ALT_INV_Mux7~2_combout\,
	datad => \ALT_INV_SW[0]~input_o\,
	dataf => \all|ALT_INV_Mux7~1_combout\,
	combout => \all|Mux7~3_combout\);

-- Location: LABCELL_X88_Y12_N0
\hex4|h0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \hex4|h0~0_combout\ = ( \all|Mux5~1_combout\ & ( \all|Mux7~3_combout\ & ( (\all|Mux4~0_combout\ & !\all|Mux6~0_combout\) ) ) ) # ( !\all|Mux5~1_combout\ & ( \all|Mux7~3_combout\ & ( !\all|Mux4~0_combout\ $ (\all|Mux6~0_combout\) ) ) ) # ( 
-- \all|Mux5~1_combout\ & ( !\all|Mux7~3_combout\ & ( (!\all|Mux4~0_combout\ & !\all|Mux6~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011000000000011001100001100110011001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \all|ALT_INV_Mux4~0_combout\,
	datad => \all|ALT_INV_Mux6~0_combout\,
	datae => \all|ALT_INV_Mux5~1_combout\,
	dataf => \all|ALT_INV_Mux7~3_combout\,
	combout => \hex4|h0~0_combout\);

-- Location: LABCELL_X88_Y12_N6
\hex4|h1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \hex4|h1~0_combout\ = ( \all|Mux5~1_combout\ & ( \all|Mux7~3_combout\ & ( !\all|Mux4~0_combout\ $ (\all|Mux6~0_combout\) ) ) ) # ( !\all|Mux5~1_combout\ & ( \all|Mux7~3_combout\ & ( (\all|Mux4~0_combout\ & \all|Mux6~0_combout\) ) ) ) # ( 
-- \all|Mux5~1_combout\ & ( !\all|Mux7~3_combout\ & ( (\all|Mux6~0_combout\) # (\all|Mux4~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100111111111100000000001100111100110000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \all|ALT_INV_Mux4~0_combout\,
	datad => \all|ALT_INV_Mux6~0_combout\,
	datae => \all|ALT_INV_Mux5~1_combout\,
	dataf => \all|ALT_INV_Mux7~3_combout\,
	combout => \hex4|h1~0_combout\);

-- Location: LABCELL_X88_Y12_N15
\hex4|h2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \hex4|h2~0_combout\ = ( \all|Mux5~1_combout\ & ( \all|Mux7~3_combout\ & ( (\all|Mux6~0_combout\ & \all|Mux4~0_combout\) ) ) ) # ( \all|Mux5~1_combout\ & ( !\all|Mux7~3_combout\ & ( \all|Mux4~0_combout\ ) ) ) # ( !\all|Mux5~1_combout\ & ( 
-- !\all|Mux7~3_combout\ & ( (\all|Mux6~0_combout\ & !\all|Mux4~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000000011110000111100000000000000000000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \all|ALT_INV_Mux6~0_combout\,
	datac => \all|ALT_INV_Mux4~0_combout\,
	datae => \all|ALT_INV_Mux5~1_combout\,
	dataf => \all|ALT_INV_Mux7~3_combout\,
	combout => \hex4|h2~0_combout\);

-- Location: LABCELL_X88_Y12_N51
\hex4|h3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \hex4|h3~0_combout\ = ( \all|Mux5~1_combout\ & ( \all|Mux7~3_combout\ & ( \all|Mux6~0_combout\ ) ) ) # ( !\all|Mux5~1_combout\ & ( \all|Mux7~3_combout\ & ( (!\all|Mux6~0_combout\ & !\all|Mux4~0_combout\) ) ) ) # ( \all|Mux5~1_combout\ & ( 
-- !\all|Mux7~3_combout\ & ( (!\all|Mux6~0_combout\ & !\all|Mux4~0_combout\) ) ) ) # ( !\all|Mux5~1_combout\ & ( !\all|Mux7~3_combout\ & ( (\all|Mux6~0_combout\ & \all|Mux4~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011110000001100000011000000110000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \all|ALT_INV_Mux6~0_combout\,
	datac => \all|ALT_INV_Mux4~0_combout\,
	datae => \all|ALT_INV_Mux5~1_combout\,
	dataf => \all|ALT_INV_Mux7~3_combout\,
	combout => \hex4|h3~0_combout\);

-- Location: LABCELL_X88_Y12_N54
\hex4|h4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \hex4|h4~0_combout\ = ( \all|Mux5~1_combout\ & ( \all|Mux7~3_combout\ & ( !\all|Mux4~0_combout\ ) ) ) # ( !\all|Mux5~1_combout\ & ( \all|Mux7~3_combout\ & ( (!\all|Mux4~0_combout\) # (!\all|Mux6~0_combout\) ) ) ) # ( \all|Mux5~1_combout\ & ( 
-- !\all|Mux7~3_combout\ & ( (!\all|Mux4~0_combout\ & !\all|Mux6~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011000000000011111111110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \all|ALT_INV_Mux4~0_combout\,
	datad => \all|ALT_INV_Mux6~0_combout\,
	datae => \all|ALT_INV_Mux5~1_combout\,
	dataf => \all|ALT_INV_Mux7~3_combout\,
	combout => \hex4|h4~0_combout\);

-- Location: LABCELL_X88_Y12_N33
\hex4|h5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \hex4|h5~0_combout\ = ( \all|Mux5~1_combout\ & ( \all|Mux7~3_combout\ & ( !\all|Mux6~0_combout\ $ (!\all|Mux4~0_combout\) ) ) ) # ( !\all|Mux5~1_combout\ & ( \all|Mux7~3_combout\ & ( !\all|Mux4~0_combout\ ) ) ) # ( !\all|Mux5~1_combout\ & ( 
-- !\all|Mux7~3_combout\ & ( (\all|Mux6~0_combout\ & !\all|Mux4~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000000000000000000011110000111100000011110000111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \all|ALT_INV_Mux6~0_combout\,
	datac => \all|ALT_INV_Mux4~0_combout\,
	datae => \all|ALT_INV_Mux5~1_combout\,
	dataf => \all|ALT_INV_Mux7~3_combout\,
	combout => \hex4|h5~0_combout\);

-- Location: LABCELL_X88_Y12_N36
\hex4|h6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \hex4|h6~0_combout\ = ( \all|Mux5~1_combout\ & ( \all|Mux7~3_combout\ & ( (!\all|Mux4~0_combout\ & \all|Mux6~0_combout\) ) ) ) # ( !\all|Mux5~1_combout\ & ( \all|Mux7~3_combout\ & ( (!\all|Mux4~0_combout\ & !\all|Mux6~0_combout\) ) ) ) # ( 
-- \all|Mux5~1_combout\ & ( !\all|Mux7~3_combout\ & ( (\all|Mux4~0_combout\ & !\all|Mux6~0_combout\) ) ) ) # ( !\all|Mux5~1_combout\ & ( !\all|Mux7~3_combout\ & ( (!\all|Mux4~0_combout\ & !\all|Mux6~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110000000000001100110000000011001100000000000000000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \all|ALT_INV_Mux4~0_combout\,
	datad => \all|ALT_INV_Mux6~0_combout\,
	datae => \all|ALT_INV_Mux5~1_combout\,
	dataf => \all|ALT_INV_Mux7~3_combout\,
	combout => \hex4|h6~0_combout\);

-- Location: LABCELL_X88_Y3_N36
\all|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \all|Mux5~0_combout\ = ( \KEY[2]~input_o\ & ( (\KEY[1]~input_o\ & !\KEY[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110000001100000011000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_KEY[1]~input_o\,
	datac => \ALT_INV_KEY[0]~input_o\,
	dataf => \ALT_INV_KEY[2]~input_o\,
	combout => \all|Mux5~0_combout\);

-- Location: LABCELL_X85_Y3_N12
\all|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \all|Add0~17_sumout\ = SUM(( GND ) + ( GND ) + ( \all|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \all|Add0~14\,
	sumout => \all|Add0~17_sumout\);

-- Location: LABCELL_X88_Y3_N6
\all|Mux3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \all|Mux3~1_combout\ = ( \KEY[0]~input_o\ & ( (\KEY[2]~input_o\ & (\KEY[1]~input_o\ & (\SW[3]~input_o\ & \SW[7]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[2]~input_o\,
	datab => \ALT_INV_KEY[1]~input_o\,
	datac => \ALT_INV_SW[3]~input_o\,
	datad => \ALT_INV_SW[7]~input_o\,
	dataf => \ALT_INV_KEY[0]~input_o\,
	combout => \all|Mux3~1_combout\);

-- Location: LABCELL_X88_Y3_N48
\all|Mux3~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \all|Mux3~2_combout\ = ( \KEY[2]~input_o\ & ( (\KEY[0]~input_o\ & (!\KEY[1]~input_o\ & ((\SW[4]~input_o\) # (\SW[0]~input_o\)))) ) ) # ( !\KEY[2]~input_o\ & ( (!\KEY[0]~input_o\ & (\KEY[1]~input_o\ & \SW[4]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100010000000000010001000000100010001000000010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[0]~input_o\,
	datab => \ALT_INV_KEY[1]~input_o\,
	datac => \ALT_INV_SW[0]~input_o\,
	datad => \ALT_INV_SW[4]~input_o\,
	dataf => \ALT_INV_KEY[2]~input_o\,
	combout => \all|Mux3~2_combout\);

-- Location: LABCELL_X88_Y3_N51
\all|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \all|Mux3~0_combout\ = ( \KEY[2]~input_o\ & ( (\KEY[0]~input_o\ & (\KEY[1]~input_o\ & ((\SW[7]~input_o\) # (\SW[3]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000001000100010000000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[0]~input_o\,
	datab => \ALT_INV_KEY[1]~input_o\,
	datac => \ALT_INV_SW[3]~input_o\,
	datad => \ALT_INV_SW[7]~input_o\,
	dataf => \ALT_INV_KEY[2]~input_o\,
	combout => \all|Mux3~0_combout\);

-- Location: MLABCELL_X87_Y3_N0
\all|Mux3~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \all|Mux3~3_combout\ = ( !\all|Mux3~2_combout\ & ( \all|Mux3~0_combout\ & ( (!\all|Mux3~1_combout\ & !\all|fbfa1|fa2|cout~0_combout\) ) ) ) # ( !\all|Mux3~2_combout\ & ( !\all|Mux3~0_combout\ & ( !\all|Mux3~1_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100000000000000000011000000110000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \all|ALT_INV_Mux3~1_combout\,
	datac => \all|fbfa1|fa2|ALT_INV_cout~0_combout\,
	datae => \all|ALT_INV_Mux3~2_combout\,
	dataf => \all|ALT_INV_Mux3~0_combout\,
	combout => \all|Mux3~3_combout\);

-- Location: LABCELL_X85_Y3_N36
\all|Mux0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \all|Mux0~2_combout\ = ( \SW[3]~input_o\ & ( (!\SW[7]~input_o\ & !\KEY[2]~input_o\) ) ) # ( !\SW[3]~input_o\ & ( !\SW[7]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010000000001010101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[7]~input_o\,
	datad => \ALT_INV_KEY[2]~input_o\,
	dataf => \ALT_INV_SW[3]~input_o\,
	combout => \all|Mux0~2_combout\);

-- Location: LABCELL_X85_Y3_N24
\all|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \all|Mux2~0_combout\ = ( \SW[1]~input_o\ & ( (!\KEY[1]~input_o\ & (\KEY[2]~input_o\ & ((\KEY[0]~input_o\)))) # (\KEY[1]~input_o\ & (!\KEY[2]~input_o\ & (\SW[5]~input_o\ & !\KEY[0]~input_o\))) ) ) # ( !\SW[1]~input_o\ & ( (\SW[5]~input_o\ & 
-- ((!\KEY[1]~input_o\ & (\KEY[2]~input_o\ & \KEY[0]~input_o\)) # (\KEY[1]~input_o\ & (!\KEY[2]~input_o\ & !\KEY[0]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000010000001000000001000000100001000100000010000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[1]~input_o\,
	datab => \ALT_INV_KEY[2]~input_o\,
	datac => \ALT_INV_SW[5]~input_o\,
	datad => \ALT_INV_KEY[0]~input_o\,
	dataf => \ALT_INV_SW[1]~input_o\,
	combout => \all|Mux2~0_combout\);

-- Location: LABCELL_X85_Y3_N27
\all|Mux0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \all|Mux0~1_combout\ = (!\KEY[1]~input_o\ & (\KEY[2]~input_o\ & \KEY[0]~input_o\)) # (\KEY[1]~input_o\ & (!\KEY[2]~input_o\ & !\KEY[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100001001000010010000100100001001000010010000100100001001000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[1]~input_o\,
	datab => \ALT_INV_KEY[2]~input_o\,
	datac => \ALT_INV_KEY[0]~input_o\,
	combout => \all|Mux0~1_combout\);

-- Location: LABCELL_X88_Y3_N27
\all|Mux1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \all|Mux1~1_combout\ = ( \KEY[2]~input_o\ & ( (!\SW[6]~input_o\ & !\SW[2]~input_o\) ) ) # ( !\KEY[2]~input_o\ & ( !\SW[6]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010100000101000001010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[6]~input_o\,
	datac => \ALT_INV_SW[2]~input_o\,
	dataf => \ALT_INV_KEY[2]~input_o\,
	combout => \all|Mux1~1_combout\);

-- Location: MLABCELL_X87_Y3_N9
\hex5|h0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \hex5|h0~1_combout\ = (!\all|Mux0~2_combout\ & (\all|Mux0~1_combout\ & (!\all|Mux2~0_combout\ $ (\all|Mux1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000000010000010000000001000001000000000100000100000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \all|ALT_INV_Mux0~2_combout\,
	datab => \all|ALT_INV_Mux2~0_combout\,
	datac => \all|ALT_INV_Mux0~1_combout\,
	datad => \all|ALT_INV_Mux1~1_combout\,
	combout => \hex5|h0~1_combout\);

-- Location: LABCELL_X88_Y3_N42
\all|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \all|Mux0~0_combout\ = ( \SW[3]~input_o\ & ( (!\KEY[0]~input_o\ & ((!\KEY[1]~input_o\) # ((!\SW[7]~input_o\) # (\KEY[2]~input_o\)))) # (\KEY[0]~input_o\ & (((!\KEY[2]~input_o\)) # (\KEY[1]~input_o\))) ) ) # ( !\SW[3]~input_o\ & ( (!\SW[7]~input_o\) # 
-- ((!\KEY[0]~input_o\ & ((!\KEY[1]~input_o\) # (\KEY[2]~input_o\))) # (\KEY[0]~input_o\ & ((!\KEY[2]~input_o\) # (\KEY[1]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110111111011111111011111101111111101101110111111110110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[0]~input_o\,
	datab => \ALT_INV_KEY[1]~input_o\,
	datac => \ALT_INV_SW[7]~input_o\,
	datad => \ALT_INV_KEY[2]~input_o\,
	dataf => \ALT_INV_SW[3]~input_o\,
	combout => \all|Mux0~0_combout\);

-- Location: MLABCELL_X87_Y3_N6
\hex5|h0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \hex5|h0~0_combout\ = (!\all|Mux2~0_combout\ & \all|Mux0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110000000000110011000000000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \all|ALT_INV_Mux2~0_combout\,
	datad => \all|ALT_INV_Mux0~0_combout\,
	combout => \hex5|h0~0_combout\);

-- Location: LABCELL_X88_Y3_N45
\all|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \all|Mux1~0_combout\ = ( \KEY[2]~input_o\ & ( (\KEY[0]~input_o\ & (!\KEY[1]~input_o\ & ((\SW[6]~input_o\) # (\SW[2]~input_o\)))) ) ) # ( !\KEY[2]~input_o\ & ( (!\KEY[0]~input_o\ & (\KEY[1]~input_o\ & \SW[6]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100010000000000010001000000100010001000000010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[0]~input_o\,
	datab => \ALT_INV_KEY[1]~input_o\,
	datac => \ALT_INV_SW[2]~input_o\,
	datad => \ALT_INV_SW[6]~input_o\,
	dataf => \ALT_INV_KEY[2]~input_o\,
	combout => \all|Mux1~0_combout\);

-- Location: MLABCELL_X87_Y3_N42
\hex5|h0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \hex5|h0~2_combout\ = ( \hex5|h0~0_combout\ & ( \all|Mux1~0_combout\ & ( ((\all|Mux3~3_combout\ & ((!\all|Mux5~0_combout\) # (!\all|Add0~17_sumout\)))) # (\hex5|h0~1_combout\) ) ) ) # ( !\hex5|h0~0_combout\ & ( \all|Mux1~0_combout\ & ( 
-- (\hex5|h0~1_combout\ & ((!\all|Mux3~3_combout\) # ((\all|Mux5~0_combout\ & \all|Add0~17_sumout\)))) ) ) ) # ( \hex5|h0~0_combout\ & ( !\all|Mux1~0_combout\ & ( (!\all|Mux3~3_combout\) # ((\all|Mux5~0_combout\ & \all|Add0~17_sumout\)) ) ) ) # ( 
-- !\hex5|h0~0_combout\ & ( !\all|Mux1~0_combout\ & ( (\hex5|h0~1_combout\ & ((!\all|Mux3~3_combout\) # ((\all|Mux5~0_combout\ & \all|Add0~17_sumout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110001111100011111000100000000111100010000111011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \all|ALT_INV_Mux5~0_combout\,
	datab => \all|ALT_INV_Add0~17_sumout\,
	datac => \all|ALT_INV_Mux3~3_combout\,
	datad => \hex5|ALT_INV_h0~1_combout\,
	datae => \hex5|ALT_INV_h0~0_combout\,
	dataf => \all|ALT_INV_Mux1~0_combout\,
	combout => \hex5|h0~2_combout\);

-- Location: MLABCELL_X87_Y3_N18
\all|Mux3~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \all|Mux3~4_combout\ = ( \all|Mux3~2_combout\ & ( \all|Mux3~0_combout\ ) ) # ( !\all|Mux3~2_combout\ & ( \all|Mux3~0_combout\ & ( (((\all|Mux5~0_combout\ & \all|Add0~17_sumout\)) # (\all|Mux3~1_combout\)) # (\all|fbfa1|fa2|cout~0_combout\) ) ) ) # ( 
-- \all|Mux3~2_combout\ & ( !\all|Mux3~0_combout\ ) ) # ( !\all|Mux3~2_combout\ & ( !\all|Mux3~0_combout\ & ( ((\all|Mux5~0_combout\ & \all|Add0~17_sumout\)) # (\all|Mux3~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000111111111111111111111111100011111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \all|ALT_INV_Mux5~0_combout\,
	datab => \all|ALT_INV_Add0~17_sumout\,
	datac => \all|fbfa1|fa2|ALT_INV_cout~0_combout\,
	datad => \all|ALT_INV_Mux3~1_combout\,
	datae => \all|ALT_INV_Mux3~2_combout\,
	dataf => \all|ALT_INV_Mux3~0_combout\,
	combout => \all|Mux3~4_combout\);

-- Location: LABCELL_X88_Y3_N24
\all|Mux2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \all|Mux2~1_combout\ = ( \KEY[2]~input_o\ & ( (!\SW[5]~input_o\ & !\SW[1]~input_o\) ) ) # ( !\KEY[2]~input_o\ & ( !\SW[5]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_SW[5]~input_o\,
	datad => \ALT_INV_SW[1]~input_o\,
	dataf => \ALT_INV_KEY[2]~input_o\,
	combout => \all|Mux2~1_combout\);

-- Location: MLABCELL_X87_Y3_N27
\hex5|h1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \hex5|h1~0_combout\ = ( \all|Mux0~2_combout\ & ( (\all|Mux0~1_combout\ & (!\all|Mux1~1_combout\ & (!\all|Mux3~4_combout\ $ (\all|Mux2~1_combout\)))) ) ) # ( !\all|Mux0~2_combout\ & ( (\all|Mux0~1_combout\ & ((!\all|Mux3~4_combout\ & 
-- ((!\all|Mux1~1_combout\))) # (\all|Mux3~4_combout\ & (!\all|Mux2~1_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001000010000001100100001000000100001000000000010000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \all|ALT_INV_Mux3~4_combout\,
	datab => \all|ALT_INV_Mux0~1_combout\,
	datac => \all|ALT_INV_Mux2~1_combout\,
	datad => \all|ALT_INV_Mux1~1_combout\,
	dataf => \all|ALT_INV_Mux0~2_combout\,
	combout => \hex5|h1~0_combout\);

-- Location: MLABCELL_X87_Y3_N33
\hex5|h0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \hex5|h0~3_combout\ = ( \all|Mux1~0_combout\ & ( !\all|Mux0~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \all|ALT_INV_Mux0~2_combout\,
	dataf => \all|ALT_INV_Mux1~0_combout\,
	combout => \hex5|h0~3_combout\);

-- Location: MLABCELL_X87_Y3_N36
\hex5|h5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \hex5|h5~0_combout\ = ( \all|Mux0~2_combout\ & ( (\all|Mux2~0_combout\ & ((!\all|Mux0~1_combout\) # (\all|Mux1~1_combout\))) ) ) # ( !\all|Mux0~2_combout\ & ( (!\all|Mux0~1_combout\ & \all|Mux2~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110000000000110111010000000011011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \all|ALT_INV_Mux1~1_combout\,
	datab => \all|ALT_INV_Mux0~1_combout\,
	datad => \all|ALT_INV_Mux2~0_combout\,
	dataf => \all|ALT_INV_Mux0~2_combout\,
	combout => \hex5|h5~0_combout\);

-- Location: MLABCELL_X87_Y3_N12
\hex5|h2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \hex5|h2~0_combout\ = ( \all|Mux5~0_combout\ & ( \hex5|h5~0_combout\ & ( (!\all|Mux3~3_combout\ & (\all|Mux2~0_combout\ & (\hex5|h0~3_combout\))) # (\all|Mux3~3_combout\ & ((!\all|Add0~17_sumout\) # ((\all|Mux2~0_combout\ & \hex5|h0~3_combout\)))) ) ) ) # 
-- ( !\all|Mux5~0_combout\ & ( \hex5|h5~0_combout\ & ( ((\all|Mux2~0_combout\ & \hex5|h0~3_combout\)) # (\all|Mux3~3_combout\) ) ) ) # ( \all|Mux5~0_combout\ & ( !\hex5|h5~0_combout\ & ( (\hex5|h0~3_combout\ & (((\all|Mux3~3_combout\ & 
-- !\all|Add0~17_sumout\)) # (\all|Mux2~0_combout\))) ) ) ) # ( !\all|Mux5~0_combout\ & ( !\hex5|h5~0_combout\ & ( (\hex5|h0~3_combout\ & ((\all|Mux2~0_combout\) # (\all|Mux3~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011100000111000001110000001101010111010101110101011100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \all|ALT_INV_Mux3~3_combout\,
	datab => \all|ALT_INV_Mux2~0_combout\,
	datac => \hex5|ALT_INV_h0~3_combout\,
	datad => \all|ALT_INV_Add0~17_sumout\,
	datae => \all|ALT_INV_Mux5~0_combout\,
	dataf => \hex5|ALT_INV_h5~0_combout\,
	combout => \hex5|h2~0_combout\);

-- Location: MLABCELL_X87_Y3_N51
\hex5|h3\ : cyclonev_lcell_comb
-- Equation(s):
-- \hex5|h3~combout\ = ( \all|Mux1~1_combout\ & ( \all|Mux2~1_combout\ & ( (\all|Mux3~4_combout\ & ((!\all|Mux0~1_combout\) # (\all|Mux0~2_combout\))) ) ) ) # ( !\all|Mux1~1_combout\ & ( \all|Mux2~1_combout\ & ( (!\all|Mux0~1_combout\ & 
-- ((\all|Mux3~4_combout\))) # (\all|Mux0~1_combout\ & (\all|Mux0~2_combout\ & !\all|Mux3~4_combout\)) ) ) ) # ( \all|Mux1~1_combout\ & ( !\all|Mux2~1_combout\ & ( (!\all|Mux0~1_combout\ & ((\all|Mux3~4_combout\))) # (\all|Mux0~1_combout\ & 
-- (!\all|Mux0~2_combout\ & !\all|Mux3~4_combout\)) ) ) ) # ( !\all|Mux1~1_combout\ & ( !\all|Mux2~1_combout\ & ( \all|Mux3~4_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000010101111000000000101111100000000000011110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \all|ALT_INV_Mux0~2_combout\,
	datac => \all|ALT_INV_Mux0~1_combout\,
	datad => \all|ALT_INV_Mux3~4_combout\,
	datae => \all|ALT_INV_Mux1~1_combout\,
	dataf => \all|ALT_INV_Mux2~1_combout\,
	combout => \hex5|h3~combout\);

-- Location: MLABCELL_X87_Y3_N54
\hex5|h4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \hex5|h4~0_combout\ = ( \all|Mux2~0_combout\ & ( \all|Mux1~0_combout\ & ( (\all|Mux0~0_combout\ & ((!\all|Mux3~3_combout\) # ((\all|Mux5~0_combout\ & \all|Add0~17_sumout\)))) ) ) ) # ( !\all|Mux2~0_combout\ & ( \all|Mux1~0_combout\ & ( 
-- \all|Mux0~0_combout\ ) ) ) # ( \all|Mux2~0_combout\ & ( !\all|Mux1~0_combout\ & ( (\all|Mux0~0_combout\ & ((!\all|Mux3~3_combout\) # ((\all|Mux5~0_combout\ & \all|Add0~17_sumout\)))) ) ) ) # ( !\all|Mux2~0_combout\ & ( !\all|Mux1~0_combout\ & ( 
-- (!\all|Mux3~3_combout\) # ((\all|Mux5~0_combout\ & \all|Add0~17_sumout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000111110001000000001111000100000000111111110000000011110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \all|ALT_INV_Mux5~0_combout\,
	datab => \all|ALT_INV_Add0~17_sumout\,
	datac => \all|ALT_INV_Mux3~3_combout\,
	datad => \all|ALT_INV_Mux0~0_combout\,
	datae => \all|ALT_INV_Mux2~0_combout\,
	dataf => \all|ALT_INV_Mux1~0_combout\,
	combout => \hex5|h4~0_combout\);

-- Location: MLABCELL_X87_Y3_N39
\hex5|h5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \hex5|h5~1_combout\ = ( \all|Mux0~2_combout\ & ( (!\all|Mux1~1_combout\ & (\all|Mux0~1_combout\ & !\all|Mux2~0_combout\)) ) ) # ( !\all|Mux0~2_combout\ & ( (\all|Mux0~1_combout\ & ((\all|Mux2~0_combout\) # (\all|Mux1~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100001111000001010000111100001010000000000000101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \all|ALT_INV_Mux1~1_combout\,
	datac => \all|ALT_INV_Mux0~1_combout\,
	datad => \all|ALT_INV_Mux2~0_combout\,
	dataf => \all|ALT_INV_Mux0~2_combout\,
	combout => \hex5|h5~1_combout\);

-- Location: MLABCELL_X87_Y3_N30
\hex5|h5~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \hex5|h5~2_combout\ = ( \hex5|h5~0_combout\ ) # ( !\hex5|h5~0_combout\ & ( (!\hex5|h5~1_combout\ & ((!\all|Mux3~3_combout\) # ((\all|Add0~17_sumout\ & \all|Mux5~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011000100110000001100010011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \all|ALT_INV_Add0~17_sumout\,
	datab => \hex5|ALT_INV_h5~1_combout\,
	datac => \all|ALT_INV_Mux3~3_combout\,
	datad => \all|ALT_INV_Mux5~0_combout\,
	dataf => \hex5|ALT_INV_h5~0_combout\,
	combout => \hex5|h5~2_combout\);

-- Location: MLABCELL_X87_Y3_N24
\hex5|h6\ : cyclonev_lcell_comb
-- Equation(s):
-- \hex5|h6~combout\ = ( \all|Mux0~2_combout\ & ( (!\all|Mux0~1_combout\) # ((!\all|Mux1~1_combout\ & (\all|Mux3~4_combout\ & !\all|Mux2~1_combout\)) # (\all|Mux1~1_combout\ & ((\all|Mux2~1_combout\)))) ) ) # ( !\all|Mux0~2_combout\ & ( 
-- (!\all|Mux0~1_combout\) # ((!\all|Mux3~4_combout\ & (!\all|Mux1~1_combout\ & \all|Mux2~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011101100110011001110110011011100110011111101110011001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \all|ALT_INV_Mux3~4_combout\,
	datab => \all|ALT_INV_Mux0~1_combout\,
	datac => \all|ALT_INV_Mux1~1_combout\,
	datad => \all|ALT_INV_Mux2~1_combout\,
	dataf => \all|ALT_INV_Mux0~2_combout\,
	combout => \hex5|h6~combout\);

-- Location: LABCELL_X70_Y7_N0
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


