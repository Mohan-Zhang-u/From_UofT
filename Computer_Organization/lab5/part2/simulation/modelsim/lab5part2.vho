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

-- DATE "07/04/2016 18:34:33"

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

ENTITY 	lab5part2 IS
    PORT (
	SW : IN std_logic_vector(9 DOWNTO 0);
	KEY : IN std_logic_vector(3 DOWNTO 0);
	CLOCK_50 : IN std_logic;
	LEDR : OUT std_logic_vector(9 DOWNTO 0);
	HEX0 : OUT std_logic_vector(6 DOWNTO 0);
	HEX1 : OUT std_logic_vector(6 DOWNTO 0)
	);
END lab5part2;

-- Design Ports Information
-- SW[8]	=>  Location: PIN_AD10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_AE12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_W15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[0]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[1]	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[2]	=>  Location: PIN_V17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[3]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[4]	=>  Location: PIN_W17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[5]	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[6]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[7]	=>  Location: PIN_W20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[8]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[9]	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
-- CLOCK_50	=>  Location: PIN_AF14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_AC12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_AF9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_AF10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_AD11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_AD12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_AE11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_AC9,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF lab5part2 IS
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
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_LEDR : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL \u0|D0|Mult0~8_ACLR_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \u0|D0|Mult0~8_CLK_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \u0|D0|Mult0~8_ENA_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \u0|D0|Mult0~8_AX_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \u0|D0|Mult0~8_AY_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \u0|D0|Mult0~8_RESULTA_bus\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \u0|D0|Mult0~16\ : std_logic;
SIGNAL \u0|D0|Mult0~17\ : std_logic;
SIGNAL \u0|D0|Mult0~18\ : std_logic;
SIGNAL \u0|D0|Mult0~19\ : std_logic;
SIGNAL \u0|D0|Mult0~20\ : std_logic;
SIGNAL \u0|D0|Mult0~21\ : std_logic;
SIGNAL \u0|D0|Mult0~22\ : std_logic;
SIGNAL \u0|D0|Mult0~23\ : std_logic;
SIGNAL \u0|D0|Mult0~24\ : std_logic;
SIGNAL \u0|D0|Mult0~25\ : std_logic;
SIGNAL \u0|D0|Mult0~26\ : std_logic;
SIGNAL \u0|D0|Mult0~27\ : std_logic;
SIGNAL \u0|D0|Mult0~28\ : std_logic;
SIGNAL \u0|D0|Mult0~29\ : std_logic;
SIGNAL \u0|D0|Mult0~30\ : std_logic;
SIGNAL \u0|D0|Mult0~31\ : std_logic;
SIGNAL \u0|D0|Mult0~32\ : std_logic;
SIGNAL \u0|D0|Mult0~33\ : std_logic;
SIGNAL \u0|D0|Mult0~34\ : std_logic;
SIGNAL \u0|D0|Mult0~35\ : std_logic;
SIGNAL \u0|D0|Mult0~36\ : std_logic;
SIGNAL \u0|D0|Mult0~37\ : std_logic;
SIGNAL \u0|D0|Mult0~38\ : std_logic;
SIGNAL \u0|D0|Mult0~39\ : std_logic;
SIGNAL \u0|D0|Mult0~40\ : std_logic;
SIGNAL \u0|D0|Mult0~41\ : std_logic;
SIGNAL \u0|D0|Mult0~42\ : std_logic;
SIGNAL \u0|D0|Mult0~43\ : std_logic;
SIGNAL \u0|D0|Mult0~44\ : std_logic;
SIGNAL \u0|D0|Mult0~45\ : std_logic;
SIGNAL \u0|D0|Mult0~46\ : std_logic;
SIGNAL \u0|D0|Mult0~47\ : std_logic;
SIGNAL \u0|D0|Mult0~48\ : std_logic;
SIGNAL \u0|D0|Mult0~49\ : std_logic;
SIGNAL \u0|D0|Mult0~50\ : std_logic;
SIGNAL \u0|D0|Mult0~51\ : std_logic;
SIGNAL \u0|D0|Mult0~52\ : std_logic;
SIGNAL \u0|D0|Mult0~53\ : std_logic;
SIGNAL \u0|D0|Mult0~54\ : std_logic;
SIGNAL \u0|D0|Mult0~55\ : std_logic;
SIGNAL \u0|D0|Mult0~56\ : std_logic;
SIGNAL \u0|D0|Mult0~57\ : std_logic;
SIGNAL \u0|D0|Mult0~58\ : std_logic;
SIGNAL \u0|D0|Mult0~59\ : std_logic;
SIGNAL \u0|D0|Mult0~60\ : std_logic;
SIGNAL \u0|D0|Mult0~61\ : std_logic;
SIGNAL \u0|D0|Mult0~62\ : std_logic;
SIGNAL \u0|D0|Mult0~63\ : std_logic;
SIGNAL \u0|D0|Mult0~64\ : std_logic;
SIGNAL \u0|D0|Mult0~65\ : std_logic;
SIGNAL \u0|D0|Mult0~66\ : std_logic;
SIGNAL \u0|D0|Mult0~67\ : std_logic;
SIGNAL \u0|D0|Mult0~68\ : std_logic;
SIGNAL \u0|D0|Mult0~69\ : std_logic;
SIGNAL \u0|D0|Mult0~70\ : std_logic;
SIGNAL \u0|D0|Mult0~71\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputCLKENA0_outclk\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \u0|C0|current_state~23_combout\ : std_logic;
SIGNAL \u0|C0|current_state.S_CYCLE_1~q\ : std_logic;
SIGNAL \u0|C0|current_state~21_combout\ : std_logic;
SIGNAL \u0|C0|current_state.S_CYCLE_2~q\ : std_logic;
SIGNAL \u0|C0|current_state~22_combout\ : std_logic;
SIGNAL \u0|C0|current_state.S_CYCLE_3~q\ : std_logic;
SIGNAL \u0|C0|current_state~25_combout\ : std_logic;
SIGNAL \u0|C0|current_state.S_LOAD_A~q\ : std_logic;
SIGNAL \u0|C0|current_state~29_combout\ : std_logic;
SIGNAL \u0|C0|current_state.S_LOAD_A_WAIT~q\ : std_logic;
SIGNAL \u0|C0|current_state~26_combout\ : std_logic;
SIGNAL \u0|C0|current_state.S_LOAD_B~q\ : std_logic;
SIGNAL \u0|C0|current_state~30_combout\ : std_logic;
SIGNAL \u0|C0|current_state.S_LOAD_B_WAIT~q\ : std_logic;
SIGNAL \u0|C0|current_state~27_combout\ : std_logic;
SIGNAL \u0|C0|current_state.S_LOAD_C~q\ : std_logic;
SIGNAL \u0|C0|current_state~31_combout\ : std_logic;
SIGNAL \u0|C0|current_state.S_LOAD_C_WAIT~q\ : std_logic;
SIGNAL \u0|C0|current_state~28_combout\ : std_logic;
SIGNAL \u0|C0|current_state.S_LOAD_X~q\ : std_logic;
SIGNAL \u0|C0|current_state~24_combout\ : std_logic;
SIGNAL \u0|C0|current_state.S_LOAD_X_WAIT~q\ : std_logic;
SIGNAL \u0|C0|current_state~20_combout\ : std_logic;
SIGNAL \u0|C0|current_state.S_CYCLE_0~q\ : std_logic;
SIGNAL \u0|D0|a[7]~0_combout\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \u0|D0|a[7]~2_combout\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \u0|D0|x[3]~0_combout\ : std_logic;
SIGNAL \u0|D0|b[0]~8_combout\ : std_logic;
SIGNAL \u0|D0|a[1]~_Duplicate_1_q\ : std_logic;
SIGNAL \u0|D0|c[6]~0_combout\ : std_logic;
SIGNAL \u0|D0|a[7]~1_combout\ : std_logic;
SIGNAL \u0|C0|WideOr10~combout\ : std_logic;
SIGNAL \u0|D0|Mux14~0_combout\ : std_logic;
SIGNAL \u0|D0|Mux15~0_combout\ : std_logic;
SIGNAL \u0|D0|Add0~2\ : std_logic;
SIGNAL \u0|D0|Add0~5_sumout\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \u0|D0|a[2]~_Duplicate_1_q\ : std_logic;
SIGNAL \u0|D0|Mux13~0_combout\ : std_logic;
SIGNAL \u0|D0|Add0~6\ : std_logic;
SIGNAL \u0|D0|Add0~9_sumout\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \u0|D0|a[3]~_Duplicate_1_q\ : std_logic;
SIGNAL \u0|D0|Mux12~0_combout\ : std_logic;
SIGNAL \u0|D0|Add0~10\ : std_logic;
SIGNAL \u0|D0|Add0~13_sumout\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \u0|D0|a[4]~_Duplicate_1_q\ : std_logic;
SIGNAL \u0|D0|Mux11~0_combout\ : std_logic;
SIGNAL \u0|D0|Add0~14\ : std_logic;
SIGNAL \u0|D0|Add0~17_sumout\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \u0|D0|a[5]~_Duplicate_1_q\ : std_logic;
SIGNAL \u0|D0|Mux10~0_combout\ : std_logic;
SIGNAL \u0|D0|Add0~18\ : std_logic;
SIGNAL \u0|D0|Add0~21_sumout\ : std_logic;
SIGNAL \u0|D0|a[6]~_Duplicate_1_q\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \u0|D0|Mux9~0_combout\ : std_logic;
SIGNAL \u0|D0|Add0~22\ : std_logic;
SIGNAL \u0|D0|Add0~25_sumout\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \u0|D0|a[7]~_Duplicate_1_q\ : std_logic;
SIGNAL \u0|D0|Mux8~0_combout\ : std_logic;
SIGNAL \u0|D0|Add0~26\ : std_logic;
SIGNAL \u0|D0|Add0~29_sumout\ : std_logic;
SIGNAL \u0|D0|Mult0~15\ : std_logic;
SIGNAL \u0|D0|b~7_combout\ : std_logic;
SIGNAL \u0|D0|a[7]~SCLR_LUT_combout\ : std_logic;
SIGNAL \u0|D0|Mult0~14\ : std_logic;
SIGNAL \u0|D0|b~6_combout\ : std_logic;
SIGNAL \u0|D0|a[6]~SCLR_LUT_combout\ : std_logic;
SIGNAL \u0|D0|Mult0~13\ : std_logic;
SIGNAL \u0|D0|b~5_combout\ : std_logic;
SIGNAL \u0|D0|a[5]~SCLR_LUT_combout\ : std_logic;
SIGNAL \u0|D0|Mult0~12\ : std_logic;
SIGNAL \u0|D0|b~4_combout\ : std_logic;
SIGNAL \u0|D0|a[4]~SCLR_LUT_combout\ : std_logic;
SIGNAL \u0|D0|Mult0~11\ : std_logic;
SIGNAL \u0|D0|b~3_combout\ : std_logic;
SIGNAL \u0|D0|a[3]~SCLR_LUT_combout\ : std_logic;
SIGNAL \u0|D0|Mult0~10\ : std_logic;
SIGNAL \u0|D0|b~2_combout\ : std_logic;
SIGNAL \u0|D0|a[2]~SCLR_LUT_combout\ : std_logic;
SIGNAL \u0|D0|Mult0~9\ : std_logic;
SIGNAL \u0|D0|b~1_combout\ : std_logic;
SIGNAL \u0|D0|a[1]~SCLR_LUT_combout\ : std_logic;
SIGNAL \u0|D0|Mult0~8_resulta\ : std_logic;
SIGNAL \u0|D0|b~0_combout\ : std_logic;
SIGNAL \u0|D0|a[0]~SCLR_LUT_combout\ : std_logic;
SIGNAL \u0|D0|a[0]~_Duplicate_1_q\ : std_logic;
SIGNAL \u0|D0|Add0~1_sumout\ : std_logic;
SIGNAL \u0|D0|alu_out[0]~0_combout\ : std_logic;
SIGNAL \u0|D0|data_result[4]~0_combout\ : std_logic;
SIGNAL \u0|D0|alu_out[1]~1_combout\ : std_logic;
SIGNAL \u0|D0|alu_out[2]~2_combout\ : std_logic;
SIGNAL \u0|D0|alu_out[3]~3_combout\ : std_logic;
SIGNAL \u0|D0|alu_out[4]~4_combout\ : std_logic;
SIGNAL \u0|D0|alu_out[5]~5_combout\ : std_logic;
SIGNAL \u0|D0|alu_out[6]~6_combout\ : std_logic;
SIGNAL \u0|D0|alu_out[7]~7_combout\ : std_logic;
SIGNAL \H0|WideOr6~0_combout\ : std_logic;
SIGNAL \H0|WideOr5~0_combout\ : std_logic;
SIGNAL \H0|WideOr4~0_combout\ : std_logic;
SIGNAL \H0|WideOr3~0_combout\ : std_logic;
SIGNAL \H0|WideOr2~0_combout\ : std_logic;
SIGNAL \H0|WideOr1~0_combout\ : std_logic;
SIGNAL \H0|WideOr0~0_combout\ : std_logic;
SIGNAL \H1|WideOr6~0_combout\ : std_logic;
SIGNAL \H1|WideOr5~0_combout\ : std_logic;
SIGNAL \H1|WideOr4~0_combout\ : std_logic;
SIGNAL \H1|WideOr3~0_combout\ : std_logic;
SIGNAL \H1|WideOr2~0_combout\ : std_logic;
SIGNAL \H1|WideOr1~0_combout\ : std_logic;
SIGNAL \H1|WideOr0~0_combout\ : std_logic;
SIGNAL \u0|D0|data_result\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \u0|D0|b\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \u0|D0|c\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \u0|D0|x\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_SW[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_KEY[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_KEY[0]~input_o\ : std_logic;
SIGNAL \u0|C0|ALT_INV_current_state.S_LOAD_C_WAIT~q\ : std_logic;
SIGNAL \u0|C0|ALT_INV_current_state.S_LOAD_B_WAIT~q\ : std_logic;
SIGNAL \u0|C0|ALT_INV_current_state.S_LOAD_A_WAIT~q\ : std_logic;
SIGNAL \u0|C0|ALT_INV_current_state.S_LOAD_X~q\ : std_logic;
SIGNAL \u0|C0|ALT_INV_current_state.S_LOAD_C~q\ : std_logic;
SIGNAL \u0|C0|ALT_INV_current_state.S_LOAD_B~q\ : std_logic;
SIGNAL \u0|D0|ALT_INV_b~7_combout\ : std_logic;
SIGNAL \u0|D0|ALT_INV_b~6_combout\ : std_logic;
SIGNAL \u0|D0|ALT_INV_b~5_combout\ : std_logic;
SIGNAL \u0|D0|ALT_INV_b~4_combout\ : std_logic;
SIGNAL \u0|D0|ALT_INV_b~3_combout\ : std_logic;
SIGNAL \u0|D0|ALT_INV_b~2_combout\ : std_logic;
SIGNAL \u0|D0|ALT_INV_b~1_combout\ : std_logic;
SIGNAL \u0|C0|ALT_INV_current_state.S_LOAD_A~q\ : std_logic;
SIGNAL \u0|D0|ALT_INV_b~0_combout\ : std_logic;
SIGNAL \u0|C0|ALT_INV_current_state.S_LOAD_X_WAIT~q\ : std_logic;
SIGNAL \u0|D0|ALT_INV_Mux8~0_combout\ : std_logic;
SIGNAL \u0|D0|ALT_INV_Mux9~0_combout\ : std_logic;
SIGNAL \u0|D0|ALT_INV_Mux10~0_combout\ : std_logic;
SIGNAL \u0|D0|ALT_INV_Mux11~0_combout\ : std_logic;
SIGNAL \u0|D0|ALT_INV_Mux12~0_combout\ : std_logic;
SIGNAL \u0|D0|ALT_INV_Mux13~0_combout\ : std_logic;
SIGNAL \u0|D0|ALT_INV_Mux14~0_combout\ : std_logic;
SIGNAL \u0|D0|ALT_INV_Mux15~0_combout\ : std_logic;
SIGNAL \u0|C0|ALT_INV_WideOr10~combout\ : std_logic;
SIGNAL \u0|D0|ALT_INV_a[7]~1_combout\ : std_logic;
SIGNAL \u0|C0|ALT_INV_current_state.S_CYCLE_1~q\ : std_logic;
SIGNAL \u0|C0|ALT_INV_current_state.S_CYCLE_3~q\ : std_logic;
SIGNAL \u0|D0|ALT_INV_a[7]~0_combout\ : std_logic;
SIGNAL \u0|C0|ALT_INV_current_state.S_CYCLE_2~q\ : std_logic;
SIGNAL \u0|C0|ALT_INV_current_state.S_CYCLE_0~q\ : std_logic;
SIGNAL \H1|ALT_INV_WideOr0~0_combout\ : std_logic;
SIGNAL \H0|ALT_INV_WideOr0~0_combout\ : std_logic;
SIGNAL \u0|D0|ALT_INV_x\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \u0|D0|ALT_INV_c\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \u0|D0|ALT_INV_b\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \u0|D0|ALT_INV_a[7]~_Duplicate_1_q\ : std_logic;
SIGNAL \u0|D0|ALT_INV_a[6]~_Duplicate_1_q\ : std_logic;
SIGNAL \u0|D0|ALT_INV_a[5]~_Duplicate_1_q\ : std_logic;
SIGNAL \u0|D0|ALT_INV_a[4]~_Duplicate_1_q\ : std_logic;
SIGNAL \u0|D0|ALT_INV_a[3]~_Duplicate_1_q\ : std_logic;
SIGNAL \u0|D0|ALT_INV_a[2]~_Duplicate_1_q\ : std_logic;
SIGNAL \u0|D0|ALT_INV_a[1]~_Duplicate_1_q\ : std_logic;
SIGNAL \u0|D0|ALT_INV_a[0]~_Duplicate_1_q\ : std_logic;
SIGNAL \u0|D0|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \u0|D0|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \u0|D0|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \u0|D0|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \u0|D0|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \u0|D0|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \u0|D0|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \u0|D0|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \u0|D0|ALT_INV_Mult0~15\ : std_logic;
SIGNAL \u0|D0|ALT_INV_Mult0~14\ : std_logic;
SIGNAL \u0|D0|ALT_INV_Mult0~13\ : std_logic;
SIGNAL \u0|D0|ALT_INV_Mult0~12\ : std_logic;
SIGNAL \u0|D0|ALT_INV_Mult0~11\ : std_logic;
SIGNAL \u0|D0|ALT_INV_Mult0~10\ : std_logic;
SIGNAL \u0|D0|ALT_INV_Mult0~9\ : std_logic;
SIGNAL \u0|D0|ALT_INV_Mult0~8_resulta\ : std_logic;
SIGNAL \u0|D0|ALT_INV_data_result\ : std_logic_vector(7 DOWNTO 0);

BEGIN

ww_SW <= SW;
ww_KEY <= KEY;
ww_CLOCK_50 <= CLOCK_50;
LEDR <= ww_LEDR;
HEX0 <= ww_HEX0;
HEX1 <= ww_HEX1;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\u0|D0|Mult0~8_ACLR_bus\ <= (gnd & gnd);

\u0|D0|Mult0~8_CLK_bus\ <= (gnd & gnd & \CLOCK_50~inputCLKENA0_outclk\);

\u0|D0|Mult0~8_ENA_bus\ <= (vcc & vcc & \u0|D0|a[7]~2_combout\);

\u0|D0|Mult0~8_AX_bus\ <= (\u0|D0|a[7]~SCLR_LUT_combout\ & \u0|D0|a[6]~SCLR_LUT_combout\ & \u0|D0|a[5]~SCLR_LUT_combout\ & \u0|D0|a[4]~SCLR_LUT_combout\ & \u0|D0|a[3]~SCLR_LUT_combout\ & \u0|D0|a[2]~SCLR_LUT_combout\ & \u0|D0|a[1]~SCLR_LUT_combout\ & 
\u0|D0|a[0]~SCLR_LUT_combout\);

\u0|D0|Mult0~8_AY_bus\ <= (\u0|D0|Mux8~0_combout\ & \u0|D0|Mux9~0_combout\ & \u0|D0|Mux10~0_combout\ & \u0|D0|Mux11~0_combout\ & \u0|D0|Mux12~0_combout\ & \u0|D0|Mux13~0_combout\ & \u0|D0|Mux14~0_combout\ & \u0|D0|Mux15~0_combout\);

\u0|D0|Mult0~8_resulta\ <= \u0|D0|Mult0~8_RESULTA_bus\(0);
\u0|D0|Mult0~9\ <= \u0|D0|Mult0~8_RESULTA_bus\(1);
\u0|D0|Mult0~10\ <= \u0|D0|Mult0~8_RESULTA_bus\(2);
\u0|D0|Mult0~11\ <= \u0|D0|Mult0~8_RESULTA_bus\(3);
\u0|D0|Mult0~12\ <= \u0|D0|Mult0~8_RESULTA_bus\(4);
\u0|D0|Mult0~13\ <= \u0|D0|Mult0~8_RESULTA_bus\(5);
\u0|D0|Mult0~14\ <= \u0|D0|Mult0~8_RESULTA_bus\(6);
\u0|D0|Mult0~15\ <= \u0|D0|Mult0~8_RESULTA_bus\(7);
\u0|D0|Mult0~16\ <= \u0|D0|Mult0~8_RESULTA_bus\(8);
\u0|D0|Mult0~17\ <= \u0|D0|Mult0~8_RESULTA_bus\(9);
\u0|D0|Mult0~18\ <= \u0|D0|Mult0~8_RESULTA_bus\(10);
\u0|D0|Mult0~19\ <= \u0|D0|Mult0~8_RESULTA_bus\(11);
\u0|D0|Mult0~20\ <= \u0|D0|Mult0~8_RESULTA_bus\(12);
\u0|D0|Mult0~21\ <= \u0|D0|Mult0~8_RESULTA_bus\(13);
\u0|D0|Mult0~22\ <= \u0|D0|Mult0~8_RESULTA_bus\(14);
\u0|D0|Mult0~23\ <= \u0|D0|Mult0~8_RESULTA_bus\(15);
\u0|D0|Mult0~24\ <= \u0|D0|Mult0~8_RESULTA_bus\(16);
\u0|D0|Mult0~25\ <= \u0|D0|Mult0~8_RESULTA_bus\(17);
\u0|D0|Mult0~26\ <= \u0|D0|Mult0~8_RESULTA_bus\(18);
\u0|D0|Mult0~27\ <= \u0|D0|Mult0~8_RESULTA_bus\(19);
\u0|D0|Mult0~28\ <= \u0|D0|Mult0~8_RESULTA_bus\(20);
\u0|D0|Mult0~29\ <= \u0|D0|Mult0~8_RESULTA_bus\(21);
\u0|D0|Mult0~30\ <= \u0|D0|Mult0~8_RESULTA_bus\(22);
\u0|D0|Mult0~31\ <= \u0|D0|Mult0~8_RESULTA_bus\(23);
\u0|D0|Mult0~32\ <= \u0|D0|Mult0~8_RESULTA_bus\(24);
\u0|D0|Mult0~33\ <= \u0|D0|Mult0~8_RESULTA_bus\(25);
\u0|D0|Mult0~34\ <= \u0|D0|Mult0~8_RESULTA_bus\(26);
\u0|D0|Mult0~35\ <= \u0|D0|Mult0~8_RESULTA_bus\(27);
\u0|D0|Mult0~36\ <= \u0|D0|Mult0~8_RESULTA_bus\(28);
\u0|D0|Mult0~37\ <= \u0|D0|Mult0~8_RESULTA_bus\(29);
\u0|D0|Mult0~38\ <= \u0|D0|Mult0~8_RESULTA_bus\(30);
\u0|D0|Mult0~39\ <= \u0|D0|Mult0~8_RESULTA_bus\(31);
\u0|D0|Mult0~40\ <= \u0|D0|Mult0~8_RESULTA_bus\(32);
\u0|D0|Mult0~41\ <= \u0|D0|Mult0~8_RESULTA_bus\(33);
\u0|D0|Mult0~42\ <= \u0|D0|Mult0~8_RESULTA_bus\(34);
\u0|D0|Mult0~43\ <= \u0|D0|Mult0~8_RESULTA_bus\(35);
\u0|D0|Mult0~44\ <= \u0|D0|Mult0~8_RESULTA_bus\(36);
\u0|D0|Mult0~45\ <= \u0|D0|Mult0~8_RESULTA_bus\(37);
\u0|D0|Mult0~46\ <= \u0|D0|Mult0~8_RESULTA_bus\(38);
\u0|D0|Mult0~47\ <= \u0|D0|Mult0~8_RESULTA_bus\(39);
\u0|D0|Mult0~48\ <= \u0|D0|Mult0~8_RESULTA_bus\(40);
\u0|D0|Mult0~49\ <= \u0|D0|Mult0~8_RESULTA_bus\(41);
\u0|D0|Mult0~50\ <= \u0|D0|Mult0~8_RESULTA_bus\(42);
\u0|D0|Mult0~51\ <= \u0|D0|Mult0~8_RESULTA_bus\(43);
\u0|D0|Mult0~52\ <= \u0|D0|Mult0~8_RESULTA_bus\(44);
\u0|D0|Mult0~53\ <= \u0|D0|Mult0~8_RESULTA_bus\(45);
\u0|D0|Mult0~54\ <= \u0|D0|Mult0~8_RESULTA_bus\(46);
\u0|D0|Mult0~55\ <= \u0|D0|Mult0~8_RESULTA_bus\(47);
\u0|D0|Mult0~56\ <= \u0|D0|Mult0~8_RESULTA_bus\(48);
\u0|D0|Mult0~57\ <= \u0|D0|Mult0~8_RESULTA_bus\(49);
\u0|D0|Mult0~58\ <= \u0|D0|Mult0~8_RESULTA_bus\(50);
\u0|D0|Mult0~59\ <= \u0|D0|Mult0~8_RESULTA_bus\(51);
\u0|D0|Mult0~60\ <= \u0|D0|Mult0~8_RESULTA_bus\(52);
\u0|D0|Mult0~61\ <= \u0|D0|Mult0~8_RESULTA_bus\(53);
\u0|D0|Mult0~62\ <= \u0|D0|Mult0~8_RESULTA_bus\(54);
\u0|D0|Mult0~63\ <= \u0|D0|Mult0~8_RESULTA_bus\(55);
\u0|D0|Mult0~64\ <= \u0|D0|Mult0~8_RESULTA_bus\(56);
\u0|D0|Mult0~65\ <= \u0|D0|Mult0~8_RESULTA_bus\(57);
\u0|D0|Mult0~66\ <= \u0|D0|Mult0~8_RESULTA_bus\(58);
\u0|D0|Mult0~67\ <= \u0|D0|Mult0~8_RESULTA_bus\(59);
\u0|D0|Mult0~68\ <= \u0|D0|Mult0~8_RESULTA_bus\(60);
\u0|D0|Mult0~69\ <= \u0|D0|Mult0~8_RESULTA_bus\(61);
\u0|D0|Mult0~70\ <= \u0|D0|Mult0~8_RESULTA_bus\(62);
\u0|D0|Mult0~71\ <= \u0|D0|Mult0~8_RESULTA_bus\(63);
\ALT_INV_SW[7]~input_o\ <= NOT \SW[7]~input_o\;
\ALT_INV_SW[6]~input_o\ <= NOT \SW[6]~input_o\;
\ALT_INV_SW[5]~input_o\ <= NOT \SW[5]~input_o\;
\ALT_INV_SW[4]~input_o\ <= NOT \SW[4]~input_o\;
\ALT_INV_SW[3]~input_o\ <= NOT \SW[3]~input_o\;
\ALT_INV_SW[2]~input_o\ <= NOT \SW[2]~input_o\;
\ALT_INV_SW[1]~input_o\ <= NOT \SW[1]~input_o\;
\ALT_INV_SW[0]~input_o\ <= NOT \SW[0]~input_o\;
\ALT_INV_KEY[1]~input_o\ <= NOT \KEY[1]~input_o\;
\ALT_INV_KEY[0]~input_o\ <= NOT \KEY[0]~input_o\;
\u0|C0|ALT_INV_current_state.S_LOAD_C_WAIT~q\ <= NOT \u0|C0|current_state.S_LOAD_C_WAIT~q\;
\u0|C0|ALT_INV_current_state.S_LOAD_B_WAIT~q\ <= NOT \u0|C0|current_state.S_LOAD_B_WAIT~q\;
\u0|C0|ALT_INV_current_state.S_LOAD_A_WAIT~q\ <= NOT \u0|C0|current_state.S_LOAD_A_WAIT~q\;
\u0|C0|ALT_INV_current_state.S_LOAD_X~q\ <= NOT \u0|C0|current_state.S_LOAD_X~q\;
\u0|C0|ALT_INV_current_state.S_LOAD_C~q\ <= NOT \u0|C0|current_state.S_LOAD_C~q\;
\u0|C0|ALT_INV_current_state.S_LOAD_B~q\ <= NOT \u0|C0|current_state.S_LOAD_B~q\;
\u0|D0|ALT_INV_b~7_combout\ <= NOT \u0|D0|b~7_combout\;
\u0|D0|ALT_INV_b~6_combout\ <= NOT \u0|D0|b~6_combout\;
\u0|D0|ALT_INV_b~5_combout\ <= NOT \u0|D0|b~5_combout\;
\u0|D0|ALT_INV_b~4_combout\ <= NOT \u0|D0|b~4_combout\;
\u0|D0|ALT_INV_b~3_combout\ <= NOT \u0|D0|b~3_combout\;
\u0|D0|ALT_INV_b~2_combout\ <= NOT \u0|D0|b~2_combout\;
\u0|D0|ALT_INV_b~1_combout\ <= NOT \u0|D0|b~1_combout\;
\u0|C0|ALT_INV_current_state.S_LOAD_A~q\ <= NOT \u0|C0|current_state.S_LOAD_A~q\;
\u0|D0|ALT_INV_b~0_combout\ <= NOT \u0|D0|b~0_combout\;
\u0|C0|ALT_INV_current_state.S_LOAD_X_WAIT~q\ <= NOT \u0|C0|current_state.S_LOAD_X_WAIT~q\;
\u0|D0|ALT_INV_Mux8~0_combout\ <= NOT \u0|D0|Mux8~0_combout\;
\u0|D0|ALT_INV_Mux9~0_combout\ <= NOT \u0|D0|Mux9~0_combout\;
\u0|D0|ALT_INV_Mux10~0_combout\ <= NOT \u0|D0|Mux10~0_combout\;
\u0|D0|ALT_INV_Mux11~0_combout\ <= NOT \u0|D0|Mux11~0_combout\;
\u0|D0|ALT_INV_Mux12~0_combout\ <= NOT \u0|D0|Mux12~0_combout\;
\u0|D0|ALT_INV_Mux13~0_combout\ <= NOT \u0|D0|Mux13~0_combout\;
\u0|D0|ALT_INV_Mux14~0_combout\ <= NOT \u0|D0|Mux14~0_combout\;
\u0|D0|ALT_INV_Mux15~0_combout\ <= NOT \u0|D0|Mux15~0_combout\;
\u0|C0|ALT_INV_WideOr10~combout\ <= NOT \u0|C0|WideOr10~combout\;
\u0|D0|ALT_INV_a[7]~1_combout\ <= NOT \u0|D0|a[7]~1_combout\;
\u0|C0|ALT_INV_current_state.S_CYCLE_1~q\ <= NOT \u0|C0|current_state.S_CYCLE_1~q\;
\u0|C0|ALT_INV_current_state.S_CYCLE_3~q\ <= NOT \u0|C0|current_state.S_CYCLE_3~q\;
\u0|D0|ALT_INV_a[7]~0_combout\ <= NOT \u0|D0|a[7]~0_combout\;
\u0|C0|ALT_INV_current_state.S_CYCLE_2~q\ <= NOT \u0|C0|current_state.S_CYCLE_2~q\;
\u0|C0|ALT_INV_current_state.S_CYCLE_0~q\ <= NOT \u0|C0|current_state.S_CYCLE_0~q\;
\H1|ALT_INV_WideOr0~0_combout\ <= NOT \H1|WideOr0~0_combout\;
\H0|ALT_INV_WideOr0~0_combout\ <= NOT \H0|WideOr0~0_combout\;
\u0|D0|ALT_INV_x\(7) <= NOT \u0|D0|x\(7);
\u0|D0|ALT_INV_c\(7) <= NOT \u0|D0|c\(7);
\u0|D0|ALT_INV_b\(7) <= NOT \u0|D0|b\(7);
\u0|D0|ALT_INV_x\(6) <= NOT \u0|D0|x\(6);
\u0|D0|ALT_INV_c\(6) <= NOT \u0|D0|c\(6);
\u0|D0|ALT_INV_b\(6) <= NOT \u0|D0|b\(6);
\u0|D0|ALT_INV_x\(5) <= NOT \u0|D0|x\(5);
\u0|D0|ALT_INV_c\(5) <= NOT \u0|D0|c\(5);
\u0|D0|ALT_INV_b\(5) <= NOT \u0|D0|b\(5);
\u0|D0|ALT_INV_x\(4) <= NOT \u0|D0|x\(4);
\u0|D0|ALT_INV_c\(4) <= NOT \u0|D0|c\(4);
\u0|D0|ALT_INV_b\(4) <= NOT \u0|D0|b\(4);
\u0|D0|ALT_INV_x\(3) <= NOT \u0|D0|x\(3);
\u0|D0|ALT_INV_c\(3) <= NOT \u0|D0|c\(3);
\u0|D0|ALT_INV_b\(3) <= NOT \u0|D0|b\(3);
\u0|D0|ALT_INV_x\(2) <= NOT \u0|D0|x\(2);
\u0|D0|ALT_INV_c\(2) <= NOT \u0|D0|c\(2);
\u0|D0|ALT_INV_b\(2) <= NOT \u0|D0|b\(2);
\u0|D0|ALT_INV_x\(1) <= NOT \u0|D0|x\(1);
\u0|D0|ALT_INV_c\(1) <= NOT \u0|D0|c\(1);
\u0|D0|ALT_INV_b\(1) <= NOT \u0|D0|b\(1);
\u0|D0|ALT_INV_x\(0) <= NOT \u0|D0|x\(0);
\u0|D0|ALT_INV_c\(0) <= NOT \u0|D0|c\(0);
\u0|D0|ALT_INV_b\(0) <= NOT \u0|D0|b\(0);
\u0|D0|ALT_INV_a[7]~_Duplicate_1_q\ <= NOT \u0|D0|a[7]~_Duplicate_1_q\;
\u0|D0|ALT_INV_a[6]~_Duplicate_1_q\ <= NOT \u0|D0|a[6]~_Duplicate_1_q\;
\u0|D0|ALT_INV_a[5]~_Duplicate_1_q\ <= NOT \u0|D0|a[5]~_Duplicate_1_q\;
\u0|D0|ALT_INV_a[4]~_Duplicate_1_q\ <= NOT \u0|D0|a[4]~_Duplicate_1_q\;
\u0|D0|ALT_INV_a[3]~_Duplicate_1_q\ <= NOT \u0|D0|a[3]~_Duplicate_1_q\;
\u0|D0|ALT_INV_a[2]~_Duplicate_1_q\ <= NOT \u0|D0|a[2]~_Duplicate_1_q\;
\u0|D0|ALT_INV_a[1]~_Duplicate_1_q\ <= NOT \u0|D0|a[1]~_Duplicate_1_q\;
\u0|D0|ALT_INV_a[0]~_Duplicate_1_q\ <= NOT \u0|D0|a[0]~_Duplicate_1_q\;
\u0|D0|ALT_INV_Add0~29_sumout\ <= NOT \u0|D0|Add0~29_sumout\;
\u0|D0|ALT_INV_Add0~25_sumout\ <= NOT \u0|D0|Add0~25_sumout\;
\u0|D0|ALT_INV_Add0~21_sumout\ <= NOT \u0|D0|Add0~21_sumout\;
\u0|D0|ALT_INV_Add0~17_sumout\ <= NOT \u0|D0|Add0~17_sumout\;
\u0|D0|ALT_INV_Add0~13_sumout\ <= NOT \u0|D0|Add0~13_sumout\;
\u0|D0|ALT_INV_Add0~9_sumout\ <= NOT \u0|D0|Add0~9_sumout\;
\u0|D0|ALT_INV_Add0~5_sumout\ <= NOT \u0|D0|Add0~5_sumout\;
\u0|D0|ALT_INV_Add0~1_sumout\ <= NOT \u0|D0|Add0~1_sumout\;
\u0|D0|ALT_INV_Mult0~15\ <= NOT \u0|D0|Mult0~15\;
\u0|D0|ALT_INV_Mult0~14\ <= NOT \u0|D0|Mult0~14\;
\u0|D0|ALT_INV_Mult0~13\ <= NOT \u0|D0|Mult0~13\;
\u0|D0|ALT_INV_Mult0~12\ <= NOT \u0|D0|Mult0~12\;
\u0|D0|ALT_INV_Mult0~11\ <= NOT \u0|D0|Mult0~11\;
\u0|D0|ALT_INV_Mult0~10\ <= NOT \u0|D0|Mult0~10\;
\u0|D0|ALT_INV_Mult0~9\ <= NOT \u0|D0|Mult0~9\;
\u0|D0|ALT_INV_Mult0~8_resulta\ <= NOT \u0|D0|Mult0~8_resulta\;
\u0|D0|ALT_INV_data_result\(7) <= NOT \u0|D0|data_result\(7);
\u0|D0|ALT_INV_data_result\(6) <= NOT \u0|D0|data_result\(6);
\u0|D0|ALT_INV_data_result\(5) <= NOT \u0|D0|data_result\(5);
\u0|D0|ALT_INV_data_result\(4) <= NOT \u0|D0|data_result\(4);
\u0|D0|ALT_INV_data_result\(3) <= NOT \u0|D0|data_result\(3);
\u0|D0|ALT_INV_data_result\(2) <= NOT \u0|D0|data_result\(2);
\u0|D0|ALT_INV_data_result\(1) <= NOT \u0|D0|data_result\(1);
\u0|D0|ALT_INV_data_result\(0) <= NOT \u0|D0|data_result\(0);

-- Location: IOOBUF_X52_Y0_N2
\LEDR[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u0|D0|data_result\(0),
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
	i => \u0|D0|data_result\(1),
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
	i => \u0|D0|data_result\(2),
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
	i => \u0|D0|data_result\(3),
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
	i => \u0|D0|data_result\(4),
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
	i => \u0|D0|data_result\(5),
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
	i => \u0|D0|data_result\(6),
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
	i => \u0|D0|data_result\(7),
	devoe => ww_devoe,
	o => ww_LEDR(7));

-- Location: IOOBUF_X89_Y8_N5
\LEDR[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(8));

-- Location: IOOBUF_X89_Y6_N22
\LEDR[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(9));

-- Location: IOOBUF_X89_Y8_N39
\HEX0[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \H0|WideOr6~0_combout\,
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
	i => \H0|WideOr5~0_combout\,
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
	i => \H0|WideOr4~0_combout\,
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
	i => \H0|WideOr3~0_combout\,
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
	i => \H0|WideOr2~0_combout\,
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
	i => \H0|WideOr1~0_combout\,
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
	i => \H0|ALT_INV_WideOr0~0_combout\,
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
	i => \H1|WideOr6~0_combout\,
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
	i => \H1|WideOr5~0_combout\,
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
	i => \H1|WideOr4~0_combout\,
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
	i => \H1|WideOr3~0_combout\,
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
	i => \H1|WideOr2~0_combout\,
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
	i => \H1|WideOr1~0_combout\,
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
	i => \H1|ALT_INV_WideOr0~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(6));

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

-- Location: LABCELL_X30_Y2_N30
\u0|C0|current_state~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|C0|current_state~23_combout\ = ( \u0|C0|current_state.S_CYCLE_0~q\ & ( \KEY[0]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[0]~input_o\,
	dataf => \u0|C0|ALT_INV_current_state.S_CYCLE_0~q\,
	combout => \u0|C0|current_state~23_combout\);

-- Location: FF_X30_Y2_N32
\u0|C0|current_state.S_CYCLE_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \u0|C0|current_state~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|C0|current_state.S_CYCLE_1~q\);

-- Location: LABCELL_X33_Y2_N57
\u0|C0|current_state~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|C0|current_state~21_combout\ = ( \u0|C0|current_state.S_CYCLE_1~q\ & ( \KEY[0]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[0]~input_o\,
	dataf => \u0|C0|ALT_INV_current_state.S_CYCLE_1~q\,
	combout => \u0|C0|current_state~21_combout\);

-- Location: FF_X30_Y2_N26
\u0|C0|current_state.S_CYCLE_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \u0|C0|current_state~21_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|C0|current_state.S_CYCLE_2~q\);

-- Location: LABCELL_X30_Y2_N33
\u0|C0|current_state~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|C0|current_state~22_combout\ = ( \u0|C0|current_state.S_CYCLE_2~q\ & ( \KEY[0]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[0]~input_o\,
	dataf => \u0|C0|ALT_INV_current_state.S_CYCLE_2~q\,
	combout => \u0|C0|current_state~22_combout\);

-- Location: FF_X30_Y2_N35
\u0|C0|current_state.S_CYCLE_3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \u0|C0|current_state~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|C0|current_state.S_CYCLE_3~q\);

-- Location: LABCELL_X31_Y3_N42
\u0|C0|current_state~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|C0|current_state~25_combout\ = ( \u0|C0|current_state.S_LOAD_A~q\ & ( !\u0|C0|current_state.S_CYCLE_3~q\ & ( \KEY[0]~input_o\ ) ) ) # ( !\u0|C0|current_state.S_LOAD_A~q\ & ( !\u0|C0|current_state.S_CYCLE_3~q\ & ( (!\KEY[1]~input_o\ & \KEY[0]~input_o\) 
-- ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[1]~input_o\,
	datac => \ALT_INV_KEY[0]~input_o\,
	datae => \u0|C0|ALT_INV_current_state.S_LOAD_A~q\,
	dataf => \u0|C0|ALT_INV_current_state.S_CYCLE_3~q\,
	combout => \u0|C0|current_state~25_combout\);

-- Location: FF_X31_Y3_N44
\u0|C0|current_state.S_LOAD_A\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \u0|C0|current_state~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|C0|current_state.S_LOAD_A~q\);

-- Location: LABCELL_X31_Y3_N15
\u0|C0|current_state~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|C0|current_state~29_combout\ = (\KEY[0]~input_o\ & (!\KEY[1]~input_o\ & ((!\u0|C0|current_state.S_LOAD_A~q\) # (\u0|C0|current_state.S_LOAD_A_WAIT~q\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001000100010000000100010001000000010001000100000001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[0]~input_o\,
	datab => \ALT_INV_KEY[1]~input_o\,
	datac => \u0|C0|ALT_INV_current_state.S_LOAD_A~q\,
	datad => \u0|C0|ALT_INV_current_state.S_LOAD_A_WAIT~q\,
	combout => \u0|C0|current_state~29_combout\);

-- Location: FF_X31_Y3_N16
\u0|C0|current_state.S_LOAD_A_WAIT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \u0|C0|current_state~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|C0|current_state.S_LOAD_A_WAIT~q\);

-- Location: LABCELL_X31_Y3_N12
\u0|C0|current_state~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|C0|current_state~26_combout\ = ( \u0|C0|current_state.S_LOAD_A_WAIT~q\ & ( (\KEY[0]~input_o\ & \KEY[1]~input_o\) ) ) # ( !\u0|C0|current_state.S_LOAD_A_WAIT~q\ & ( (\KEY[0]~input_o\ & (\KEY[1]~input_o\ & \u0|C0|current_state.S_LOAD_B~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010001000000000001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[0]~input_o\,
	datab => \ALT_INV_KEY[1]~input_o\,
	datad => \u0|C0|ALT_INV_current_state.S_LOAD_B~q\,
	dataf => \u0|C0|ALT_INV_current_state.S_LOAD_A_WAIT~q\,
	combout => \u0|C0|current_state~26_combout\);

-- Location: FF_X31_Y3_N14
\u0|C0|current_state.S_LOAD_B\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \u0|C0|current_state~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|C0|current_state.S_LOAD_B~q\);

-- Location: LABCELL_X31_Y3_N57
\u0|C0|current_state~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|C0|current_state~30_combout\ = (\KEY[0]~input_o\ & (!\KEY[1]~input_o\ & ((\u0|C0|current_state.S_LOAD_B_WAIT~q\) # (\u0|C0|current_state.S_LOAD_B~q\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010001000100000001000100010000000100010001000000010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[0]~input_o\,
	datab => \ALT_INV_KEY[1]~input_o\,
	datac => \u0|C0|ALT_INV_current_state.S_LOAD_B~q\,
	datad => \u0|C0|ALT_INV_current_state.S_LOAD_B_WAIT~q\,
	combout => \u0|C0|current_state~30_combout\);

-- Location: FF_X31_Y3_N58
\u0|C0|current_state.S_LOAD_B_WAIT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \u0|C0|current_state~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|C0|current_state.S_LOAD_B_WAIT~q\);

-- Location: LABCELL_X31_Y3_N54
\u0|C0|current_state~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|C0|current_state~27_combout\ = ( \u0|C0|current_state.S_LOAD_B_WAIT~q\ & ( (\KEY[0]~input_o\ & \KEY[1]~input_o\) ) ) # ( !\u0|C0|current_state.S_LOAD_B_WAIT~q\ & ( (\KEY[0]~input_o\ & (\KEY[1]~input_o\ & \u0|C0|current_state.S_LOAD_C~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010100000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[0]~input_o\,
	datac => \ALT_INV_KEY[1]~input_o\,
	datad => \u0|C0|ALT_INV_current_state.S_LOAD_C~q\,
	dataf => \u0|C0|ALT_INV_current_state.S_LOAD_B_WAIT~q\,
	combout => \u0|C0|current_state~27_combout\);

-- Location: FF_X31_Y3_N56
\u0|C0|current_state.S_LOAD_C\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \u0|C0|current_state~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|C0|current_state.S_LOAD_C~q\);

-- Location: LABCELL_X31_Y3_N21
\u0|C0|current_state~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|C0|current_state~31_combout\ = ( \u0|C0|current_state.S_LOAD_C~q\ & ( (\KEY[0]~input_o\ & !\KEY[1]~input_o\) ) ) # ( !\u0|C0|current_state.S_LOAD_C~q\ & ( (\KEY[0]~input_o\ & (!\KEY[1]~input_o\ & \u0|C0|current_state.S_LOAD_C_WAIT~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000100000000000100010001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[0]~input_o\,
	datab => \ALT_INV_KEY[1]~input_o\,
	datad => \u0|C0|ALT_INV_current_state.S_LOAD_C_WAIT~q\,
	dataf => \u0|C0|ALT_INV_current_state.S_LOAD_C~q\,
	combout => \u0|C0|current_state~31_combout\);

-- Location: FF_X31_Y3_N22
\u0|C0|current_state.S_LOAD_C_WAIT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \u0|C0|current_state~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|C0|current_state.S_LOAD_C_WAIT~q\);

-- Location: LABCELL_X31_Y3_N18
\u0|C0|current_state~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|C0|current_state~28_combout\ = ( \u0|C0|current_state.S_LOAD_C_WAIT~q\ & ( (\KEY[0]~input_o\ & \KEY[1]~input_o\) ) ) # ( !\u0|C0|current_state.S_LOAD_C_WAIT~q\ & ( (\KEY[0]~input_o\ & (\KEY[1]~input_o\ & \u0|C0|current_state.S_LOAD_X~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010100000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[0]~input_o\,
	datac => \ALT_INV_KEY[1]~input_o\,
	datad => \u0|C0|ALT_INV_current_state.S_LOAD_X~q\,
	dataf => \u0|C0|ALT_INV_current_state.S_LOAD_C_WAIT~q\,
	combout => \u0|C0|current_state~28_combout\);

-- Location: FF_X31_Y3_N20
\u0|C0|current_state.S_LOAD_X\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \u0|C0|current_state~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|C0|current_state.S_LOAD_X~q\);

-- Location: LABCELL_X31_Y3_N24
\u0|C0|current_state~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|C0|current_state~24_combout\ = (\KEY[0]~input_o\ & (!\KEY[1]~input_o\ & ((\u0|C0|current_state.S_LOAD_X_WAIT~q\) # (\u0|C0|current_state.S_LOAD_X~q\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010001000100000001000100010000000100010001000000010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[0]~input_o\,
	datab => \ALT_INV_KEY[1]~input_o\,
	datac => \u0|C0|ALT_INV_current_state.S_LOAD_X~q\,
	datad => \u0|C0|ALT_INV_current_state.S_LOAD_X_WAIT~q\,
	combout => \u0|C0|current_state~24_combout\);

-- Location: FF_X31_Y3_N26
\u0|C0|current_state.S_LOAD_X_WAIT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \u0|C0|current_state~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|C0|current_state.S_LOAD_X_WAIT~q\);

-- Location: LABCELL_X31_Y3_N27
\u0|C0|current_state~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|C0|current_state~20_combout\ = ( \u0|C0|current_state.S_LOAD_X_WAIT~q\ & ( (\KEY[0]~input_o\ & \KEY[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[0]~input_o\,
	datab => \ALT_INV_KEY[1]~input_o\,
	dataf => \u0|C0|ALT_INV_current_state.S_LOAD_X_WAIT~q\,
	combout => \u0|C0|current_state~20_combout\);

-- Location: FF_X30_Y2_N29
\u0|C0|current_state.S_CYCLE_0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \u0|C0|current_state~20_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|C0|current_state.S_CYCLE_0~q\);

-- Location: LABCELL_X31_Y2_N24
\u0|D0|a[7]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|D0|a[7]~0_combout\ = ( !\u0|C0|current_state.S_CYCLE_2~q\ & ( !\u0|C0|current_state.S_CYCLE_0~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u0|C0|ALT_INV_current_state.S_CYCLE_0~q\,
	dataf => \u0|C0|ALT_INV_current_state.S_CYCLE_2~q\,
	combout => \u0|D0|a[7]~0_combout\);

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

-- Location: LABCELL_X31_Y2_N45
\u0|D0|a[7]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|D0|a[7]~2_combout\ = ( \u0|C0|current_state.S_CYCLE_2~q\ ) # ( !\u0|C0|current_state.S_CYCLE_2~q\ & ( ((!\KEY[0]~input_o\) # ((!\u0|C0|current_state.S_LOAD_A~q\) # (\u0|C0|current_state.S_CYCLE_1~q\))) # (\u0|C0|current_state.S_CYCLE_0~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110111111111111111011111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|C0|ALT_INV_current_state.S_CYCLE_0~q\,
	datab => \ALT_INV_KEY[0]~input_o\,
	datac => \u0|C0|ALT_INV_current_state.S_LOAD_A~q\,
	datad => \u0|C0|ALT_INV_current_state.S_CYCLE_1~q\,
	dataf => \u0|C0|ALT_INV_current_state.S_CYCLE_2~q\,
	combout => \u0|D0|a[7]~2_combout\);

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

-- Location: LABCELL_X31_Y3_N48
\u0|D0|x[3]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|D0|x[3]~0_combout\ = ( \KEY[0]~input_o\ & ( \u0|C0|current_state.S_LOAD_X~q\ ) ) # ( !\KEY[0]~input_o\ & ( \u0|C0|current_state.S_LOAD_X~q\ ) ) # ( !\KEY[0]~input_o\ & ( !\u0|C0|current_state.S_LOAD_X~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_KEY[0]~input_o\,
	dataf => \u0|C0|ALT_INV_current_state.S_LOAD_X~q\,
	combout => \u0|D0|x[3]~0_combout\);

-- Location: FF_X31_Y2_N56
\u0|D0|x[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \SW[1]~input_o\,
	sclr => \ALT_INV_KEY[0]~input_o\,
	sload => VCC,
	ena => \u0|D0|x[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|D0|x\(1));

-- Location: LABCELL_X33_Y2_N3
\u0|D0|b[0]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|D0|b[0]~8_combout\ = ( \u0|C0|current_state.S_LOAD_B~q\ ) # ( !\u0|C0|current_state.S_LOAD_B~q\ & ( !\KEY[0]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[0]~input_o\,
	dataf => \u0|C0|ALT_INV_current_state.S_LOAD_B~q\,
	combout => \u0|D0|b[0]~8_combout\);

-- Location: FF_X31_Y2_N43
\u0|D0|b[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \u0|D0|b~1_combout\,
	sclr => \ALT_INV_KEY[0]~input_o\,
	sload => VCC,
	ena => \u0|D0|b[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|D0|b\(1));

-- Location: FF_X31_Y2_N8
\u0|D0|a[1]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \u0|D0|a[1]~SCLR_LUT_combout\,
	sload => VCC,
	ena => \u0|D0|a[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|D0|a[1]~_Duplicate_1_q\);

-- Location: LABCELL_X31_Y3_N36
\u0|D0|c[6]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|D0|c[6]~0_combout\ = ( \KEY[0]~input_o\ & ( \u0|C0|current_state.S_LOAD_C~q\ ) ) # ( !\KEY[0]~input_o\ & ( \u0|C0|current_state.S_LOAD_C~q\ ) ) # ( !\KEY[0]~input_o\ & ( !\u0|C0|current_state.S_LOAD_C~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_KEY[0]~input_o\,
	dataf => \u0|C0|ALT_INV_current_state.S_LOAD_C~q\,
	combout => \u0|D0|c[6]~0_combout\);

-- Location: FF_X30_Y2_N46
\u0|D0|c[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \SW[1]~input_o\,
	sclr => \ALT_INV_KEY[0]~input_o\,
	sload => VCC,
	ena => \u0|D0|c[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|D0|c\(1));

-- Location: LABCELL_X30_Y2_N27
\u0|D0|a[7]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|D0|a[7]~1_combout\ = ( !\u0|C0|current_state.S_CYCLE_2~q\ & ( (!\u0|C0|current_state.S_CYCLE_1~q\ & !\u0|C0|current_state.S_CYCLE_0~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u0|C0|ALT_INV_current_state.S_CYCLE_1~q\,
	datad => \u0|C0|ALT_INV_current_state.S_CYCLE_0~q\,
	dataf => \u0|C0|ALT_INV_current_state.S_CYCLE_2~q\,
	combout => \u0|D0|a[7]~1_combout\);

-- Location: LABCELL_X30_Y2_N24
\u0|C0|WideOr10\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|C0|WideOr10~combout\ = ( !\u0|C0|current_state.S_CYCLE_0~q\ & ( (!\u0|C0|current_state.S_CYCLE_3~q\ & !\u0|C0|current_state.S_CYCLE_2~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u0|C0|ALT_INV_current_state.S_CYCLE_3~q\,
	datad => \u0|C0|ALT_INV_current_state.S_CYCLE_2~q\,
	dataf => \u0|C0|ALT_INV_current_state.S_CYCLE_0~q\,
	combout => \u0|C0|WideOr10~combout\);

-- Location: LABCELL_X31_Y2_N39
\u0|D0|Mux14~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|D0|Mux14~0_combout\ = ( \u0|D0|a[7]~1_combout\ & ( \u0|C0|WideOr10~combout\ & ( \u0|D0|a[1]~_Duplicate_1_q\ ) ) ) # ( !\u0|D0|a[7]~1_combout\ & ( \u0|C0|WideOr10~combout\ & ( \u0|D0|b\(1) ) ) ) # ( \u0|D0|a[7]~1_combout\ & ( !\u0|C0|WideOr10~combout\ 
-- & ( \u0|D0|c\(1) ) ) ) # ( !\u0|D0|a[7]~1_combout\ & ( !\u0|C0|WideOr10~combout\ & ( \u0|D0|x\(1) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000001111111100110011001100110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|D0|ALT_INV_x\(1),
	datab => \u0|D0|ALT_INV_b\(1),
	datac => \u0|D0|ALT_INV_a[1]~_Duplicate_1_q\,
	datad => \u0|D0|ALT_INV_c\(1),
	datae => \u0|D0|ALT_INV_a[7]~1_combout\,
	dataf => \u0|C0|ALT_INV_WideOr10~combout\,
	combout => \u0|D0|Mux14~0_combout\);

-- Location: FF_X30_Y2_N56
\u0|D0|x[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \SW[0]~input_o\,
	sclr => \ALT_INV_KEY[0]~input_o\,
	sload => VCC,
	ena => \u0|D0|x[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|D0|x\(0));

-- Location: FF_X30_Y2_N49
\u0|D0|c[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \SW[0]~input_o\,
	sclr => \ALT_INV_KEY[0]~input_o\,
	sload => VCC,
	ena => \u0|D0|c[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|D0|c\(0));

-- Location: FF_X31_Y2_N47
\u0|D0|b[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \u0|D0|b~0_combout\,
	sclr => \ALT_INV_KEY[0]~input_o\,
	sload => VCC,
	ena => \u0|D0|b[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|D0|b\(0));

-- Location: LABCELL_X30_Y2_N39
\u0|D0|Mux15~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|D0|Mux15~0_combout\ = ( \u0|D0|a[7]~1_combout\ & ( \u0|C0|WideOr10~combout\ & ( \u0|D0|a[0]~_Duplicate_1_q\ ) ) ) # ( !\u0|D0|a[7]~1_combout\ & ( \u0|C0|WideOr10~combout\ & ( \u0|D0|b\(0) ) ) ) # ( \u0|D0|a[7]~1_combout\ & ( !\u0|C0|WideOr10~combout\ 
-- & ( \u0|D0|c\(0) ) ) ) # ( !\u0|D0|a[7]~1_combout\ & ( !\u0|C0|WideOr10~combout\ & ( \u0|D0|x\(0) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100000000111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|D0|ALT_INV_x\(0),
	datab => \u0|D0|ALT_INV_c\(0),
	datac => \u0|D0|ALT_INV_a[0]~_Duplicate_1_q\,
	datad => \u0|D0|ALT_INV_b\(0),
	datae => \u0|D0|ALT_INV_a[7]~1_combout\,
	dataf => \u0|C0|ALT_INV_WideOr10~combout\,
	combout => \u0|D0|Mux15~0_combout\);

-- Location: LABCELL_X30_Y2_N0
\u0|D0|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|D0|Add0~1_sumout\ = SUM(( \u0|D0|Mux15~0_combout\ ) + ( \u0|D0|a[0]~_Duplicate_1_q\ ) + ( !VCC ))
-- \u0|D0|Add0~2\ = CARRY(( \u0|D0|Mux15~0_combout\ ) + ( \u0|D0|a[0]~_Duplicate_1_q\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u0|D0|ALT_INV_a[0]~_Duplicate_1_q\,
	datac => \u0|D0|ALT_INV_Mux15~0_combout\,
	cin => GND,
	sumout => \u0|D0|Add0~1_sumout\,
	cout => \u0|D0|Add0~2\);

-- Location: LABCELL_X30_Y2_N3
\u0|D0|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|D0|Add0~5_sumout\ = SUM(( \u0|D0|Mux14~0_combout\ ) + ( \u0|D0|a[1]~_Duplicate_1_q\ ) + ( \u0|D0|Add0~2\ ))
-- \u0|D0|Add0~6\ = CARRY(( \u0|D0|Mux14~0_combout\ ) + ( \u0|D0|a[1]~_Duplicate_1_q\ ) + ( \u0|D0|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|D0|ALT_INV_Mux14~0_combout\,
	datac => \u0|D0|ALT_INV_a[1]~_Duplicate_1_q\,
	cin => \u0|D0|Add0~2\,
	sumout => \u0|D0|Add0~5_sumout\,
	cout => \u0|D0|Add0~6\);

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

-- Location: FF_X30_Y2_N20
\u0|D0|x[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \SW[2]~input_o\,
	sclr => \ALT_INV_KEY[0]~input_o\,
	sload => VCC,
	ena => \u0|D0|x[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|D0|x\(2));

-- Location: FF_X33_Y2_N8
\u0|D0|a[2]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \u0|D0|a[2]~SCLR_LUT_combout\,
	sload => VCC,
	ena => \u0|D0|a[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|D0|a[2]~_Duplicate_1_q\);

-- Location: FF_X30_Y2_N38
\u0|D0|c[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \SW[2]~input_o\,
	sclr => \ALT_INV_KEY[0]~input_o\,
	sload => VCC,
	ena => \u0|D0|c[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|D0|c\(2));

-- Location: FF_X33_Y2_N53
\u0|D0|b[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \u0|D0|b~2_combout\,
	sclr => \ALT_INV_KEY[0]~input_o\,
	sload => VCC,
	ena => \u0|D0|b[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|D0|b\(2));

-- Location: LABCELL_X30_Y2_N54
\u0|D0|Mux13~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|D0|Mux13~0_combout\ = ( \u0|D0|a[7]~1_combout\ & ( \u0|C0|WideOr10~combout\ & ( \u0|D0|a[2]~_Duplicate_1_q\ ) ) ) # ( !\u0|D0|a[7]~1_combout\ & ( \u0|C0|WideOr10~combout\ & ( \u0|D0|b\(2) ) ) ) # ( \u0|D0|a[7]~1_combout\ & ( !\u0|C0|WideOr10~combout\ 
-- & ( \u0|D0|c\(2) ) ) ) # ( !\u0|D0|a[7]~1_combout\ & ( !\u0|C0|WideOr10~combout\ & ( \u0|D0|x\(2) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000011110000111100000000111111110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|D0|ALT_INV_x\(2),
	datab => \u0|D0|ALT_INV_a[2]~_Duplicate_1_q\,
	datac => \u0|D0|ALT_INV_c\(2),
	datad => \u0|D0|ALT_INV_b\(2),
	datae => \u0|D0|ALT_INV_a[7]~1_combout\,
	dataf => \u0|C0|ALT_INV_WideOr10~combout\,
	combout => \u0|D0|Mux13~0_combout\);

-- Location: LABCELL_X30_Y2_N6
\u0|D0|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|D0|Add0~9_sumout\ = SUM(( \u0|D0|a[2]~_Duplicate_1_q\ ) + ( \u0|D0|Mux13~0_combout\ ) + ( \u0|D0|Add0~6\ ))
-- \u0|D0|Add0~10\ = CARRY(( \u0|D0|a[2]~_Duplicate_1_q\ ) + ( \u0|D0|Mux13~0_combout\ ) + ( \u0|D0|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u0|D0|ALT_INV_Mux13~0_combout\,
	datad => \u0|D0|ALT_INV_a[2]~_Duplicate_1_q\,
	cin => \u0|D0|Add0~6\,
	sumout => \u0|D0|Add0~9_sumout\,
	cout => \u0|D0|Add0~10\);

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

-- Location: FF_X33_Y2_N5
\u0|D0|a[3]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \u0|D0|a[3]~SCLR_LUT_combout\,
	sload => VCC,
	ena => \u0|D0|a[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|D0|a[3]~_Duplicate_1_q\);

-- Location: FF_X30_Y2_N44
\u0|D0|c[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \SW[3]~input_o\,
	sclr => \ALT_INV_KEY[0]~input_o\,
	sload => VCC,
	ena => \u0|D0|c[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|D0|c\(3));

-- Location: FF_X30_Y2_N14
\u0|D0|x[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \SW[3]~input_o\,
	sclr => \ALT_INV_KEY[0]~input_o\,
	sload => VCC,
	ena => \u0|D0|x[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|D0|x\(3));

-- Location: FF_X33_Y2_N13
\u0|D0|b[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \u0|D0|b~3_combout\,
	sclr => \ALT_INV_KEY[0]~input_o\,
	sload => VCC,
	ena => \u0|D0|b[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|D0|b\(3));

-- Location: LABCELL_X30_Y2_N51
\u0|D0|Mux12~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|D0|Mux12~0_combout\ = ( \u0|D0|a[7]~1_combout\ & ( \u0|C0|WideOr10~combout\ & ( \u0|D0|a[3]~_Duplicate_1_q\ ) ) ) # ( !\u0|D0|a[7]~1_combout\ & ( \u0|C0|WideOr10~combout\ & ( \u0|D0|b\(3) ) ) ) # ( \u0|D0|a[7]~1_combout\ & ( !\u0|C0|WideOr10~combout\ 
-- & ( \u0|D0|c\(3) ) ) ) # ( !\u0|D0|a[7]~1_combout\ & ( !\u0|C0|WideOr10~combout\ & ( \u0|D0|x\(3) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111001100110011001100000000111111110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|D0|ALT_INV_a[3]~_Duplicate_1_q\,
	datab => \u0|D0|ALT_INV_c\(3),
	datac => \u0|D0|ALT_INV_x\(3),
	datad => \u0|D0|ALT_INV_b\(3),
	datae => \u0|D0|ALT_INV_a[7]~1_combout\,
	dataf => \u0|C0|ALT_INV_WideOr10~combout\,
	combout => \u0|D0|Mux12~0_combout\);

-- Location: LABCELL_X30_Y2_N9
\u0|D0|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|D0|Add0~13_sumout\ = SUM(( \u0|D0|a[3]~_Duplicate_1_q\ ) + ( \u0|D0|Mux12~0_combout\ ) + ( \u0|D0|Add0~10\ ))
-- \u0|D0|Add0~14\ = CARRY(( \u0|D0|a[3]~_Duplicate_1_q\ ) + ( \u0|D0|Mux12~0_combout\ ) + ( \u0|D0|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|D0|ALT_INV_Mux12~0_combout\,
	datad => \u0|D0|ALT_INV_a[3]~_Duplicate_1_q\,
	cin => \u0|D0|Add0~10\,
	sumout => \u0|D0|Add0~13_sumout\,
	cout => \u0|D0|Add0~14\);

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

-- Location: FF_X33_Y2_N59
\u0|D0|a[4]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \u0|D0|a[4]~SCLR_LUT_combout\,
	sload => VCC,
	ena => \u0|D0|a[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|D0|a[4]~_Duplicate_1_q\);

-- Location: FF_X30_Y2_N2
\u0|D0|c[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \SW[4]~input_o\,
	sclr => \ALT_INV_KEY[0]~input_o\,
	sload => VCC,
	ena => \u0|D0|c[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|D0|c\(4));

-- Location: FF_X30_Y2_N59
\u0|D0|x[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \SW[4]~input_o\,
	sclr => \ALT_INV_KEY[0]~input_o\,
	sload => VCC,
	ena => \u0|D0|x[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|D0|x\(4));

-- Location: FF_X33_Y2_N17
\u0|D0|b[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \u0|D0|b~4_combout\,
	sclr => \ALT_INV_KEY[0]~input_o\,
	sload => VCC,
	ena => \u0|D0|b[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|D0|b\(4));

-- Location: LABCELL_X30_Y2_N45
\u0|D0|Mux11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|D0|Mux11~0_combout\ = ( \u0|D0|a[7]~1_combout\ & ( \u0|C0|WideOr10~combout\ & ( \u0|D0|a[4]~_Duplicate_1_q\ ) ) ) # ( !\u0|D0|a[7]~1_combout\ & ( \u0|C0|WideOr10~combout\ & ( \u0|D0|b\(4) ) ) ) # ( \u0|D0|a[7]~1_combout\ & ( !\u0|C0|WideOr10~combout\ 
-- & ( \u0|D0|c\(4) ) ) ) # ( !\u0|D0|a[7]~1_combout\ & ( !\u0|C0|WideOr10~combout\ & ( \u0|D0|x\(4) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011010101010101010100000000111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|D0|ALT_INV_c\(4),
	datab => \u0|D0|ALT_INV_x\(4),
	datac => \u0|D0|ALT_INV_a[4]~_Duplicate_1_q\,
	datad => \u0|D0|ALT_INV_b\(4),
	datae => \u0|D0|ALT_INV_a[7]~1_combout\,
	dataf => \u0|C0|ALT_INV_WideOr10~combout\,
	combout => \u0|D0|Mux11~0_combout\);

-- Location: LABCELL_X30_Y2_N12
\u0|D0|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|D0|Add0~17_sumout\ = SUM(( \u0|D0|Mux11~0_combout\ ) + ( \u0|D0|a[4]~_Duplicate_1_q\ ) + ( \u0|D0|Add0~14\ ))
-- \u0|D0|Add0~18\ = CARRY(( \u0|D0|Mux11~0_combout\ ) + ( \u0|D0|a[4]~_Duplicate_1_q\ ) + ( \u0|D0|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u0|D0|ALT_INV_a[4]~_Duplicate_1_q\,
	datad => \u0|D0|ALT_INV_Mux11~0_combout\,
	cin => \u0|D0|Add0~14\,
	sumout => \u0|D0|Add0~17_sumout\,
	cout => \u0|D0|Add0~18\);

-- Location: FF_X31_Y2_N4
\u0|D0|b[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \u0|D0|b~5_combout\,
	sclr => \ALT_INV_KEY[0]~input_o\,
	ena => \u0|D0|b[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|D0|b\(5));

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

-- Location: FF_X31_Y2_N32
\u0|D0|x[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \SW[5]~input_o\,
	sclr => \ALT_INV_KEY[0]~input_o\,
	sload => VCC,
	ena => \u0|D0|x[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|D0|x\(5));

-- Location: FF_X31_Y2_N14
\u0|D0|a[5]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \u0|D0|a[5]~SCLR_LUT_combout\,
	sload => VCC,
	ena => \u0|D0|a[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|D0|a[5]~_Duplicate_1_q\);

-- Location: FF_X30_Y2_N41
\u0|D0|c[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \SW[5]~input_o\,
	sclr => \ALT_INV_KEY[0]~input_o\,
	sload => VCC,
	ena => \u0|D0|c[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|D0|c\(5));

-- Location: LABCELL_X31_Y2_N33
\u0|D0|Mux10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|D0|Mux10~0_combout\ = ( \u0|D0|a[7]~1_combout\ & ( \u0|C0|WideOr10~combout\ & ( \u0|D0|a[5]~_Duplicate_1_q\ ) ) ) # ( !\u0|D0|a[7]~1_combout\ & ( \u0|C0|WideOr10~combout\ & ( \u0|D0|b\(5) ) ) ) # ( \u0|D0|a[7]~1_combout\ & ( !\u0|C0|WideOr10~combout\ 
-- & ( \u0|D0|c\(5) ) ) ) # ( !\u0|D0|a[7]~1_combout\ & ( !\u0|C0|WideOr10~combout\ & ( \u0|D0|x\(5) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000000001111111101010101010101010000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|D0|ALT_INV_b\(5),
	datab => \u0|D0|ALT_INV_x\(5),
	datac => \u0|D0|ALT_INV_a[5]~_Duplicate_1_q\,
	datad => \u0|D0|ALT_INV_c\(5),
	datae => \u0|D0|ALT_INV_a[7]~1_combout\,
	dataf => \u0|C0|ALT_INV_WideOr10~combout\,
	combout => \u0|D0|Mux10~0_combout\);

-- Location: LABCELL_X30_Y2_N15
\u0|D0|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|D0|Add0~21_sumout\ = SUM(( \u0|D0|a[5]~_Duplicate_1_q\ ) + ( \u0|D0|Mux10~0_combout\ ) + ( \u0|D0|Add0~18\ ))
-- \u0|D0|Add0~22\ = CARRY(( \u0|D0|a[5]~_Duplicate_1_q\ ) + ( \u0|D0|Mux10~0_combout\ ) + ( \u0|D0|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|D0|ALT_INV_Mux10~0_combout\,
	datad => \u0|D0|ALT_INV_a[5]~_Duplicate_1_q\,
	cin => \u0|D0|Add0~18\,
	sumout => \u0|D0|Add0~21_sumout\,
	cout => \u0|D0|Add0~22\);

-- Location: FF_X31_Y2_N17
\u0|D0|a[6]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \u0|D0|a[6]~SCLR_LUT_combout\,
	ena => \u0|D0|a[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|D0|a[6]~_Duplicate_1_q\);

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

-- Location: FF_X30_Y2_N52
\u0|D0|c[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \SW[6]~input_o\,
	sclr => \ALT_INV_KEY[0]~input_o\,
	sload => VCC,
	ena => \u0|D0|c[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|D0|c\(6));

-- Location: FF_X31_Y2_N49
\u0|D0|x[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \SW[6]~input_o\,
	sclr => \ALT_INV_KEY[0]~input_o\,
	sload => VCC,
	ena => \u0|D0|x[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|D0|x\(6));

-- Location: FF_X31_Y2_N26
\u0|D0|b[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \u0|D0|b~6_combout\,
	sclr => \ALT_INV_KEY[0]~input_o\,
	sload => VCC,
	ena => \u0|D0|b[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|D0|b\(6));

-- Location: LABCELL_X31_Y2_N51
\u0|D0|Mux9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|D0|Mux9~0_combout\ = ( \u0|D0|a[7]~1_combout\ & ( \u0|C0|WideOr10~combout\ & ( \u0|D0|a[6]~_Duplicate_1_q\ ) ) ) # ( !\u0|D0|a[7]~1_combout\ & ( \u0|C0|WideOr10~combout\ & ( \u0|D0|b\(6) ) ) ) # ( \u0|D0|a[7]~1_combout\ & ( !\u0|C0|WideOr10~combout\ & 
-- ( \u0|D0|c\(6) ) ) ) # ( !\u0|D0|a[7]~1_combout\ & ( !\u0|C0|WideOr10~combout\ & ( \u0|D0|x\(6) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011010101010101010100000000111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|D0|ALT_INV_c\(6),
	datab => \u0|D0|ALT_INV_x\(6),
	datac => \u0|D0|ALT_INV_a[6]~_Duplicate_1_q\,
	datad => \u0|D0|ALT_INV_b\(6),
	datae => \u0|D0|ALT_INV_a[7]~1_combout\,
	dataf => \u0|C0|ALT_INV_WideOr10~combout\,
	combout => \u0|D0|Mux9~0_combout\);

-- Location: LABCELL_X30_Y2_N18
\u0|D0|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|D0|Add0~25_sumout\ = SUM(( \u0|D0|Mux9~0_combout\ ) + ( \u0|D0|a[6]~_Duplicate_1_q\ ) + ( \u0|D0|Add0~22\ ))
-- \u0|D0|Add0~26\ = CARRY(( \u0|D0|Mux9~0_combout\ ) + ( \u0|D0|a[6]~_Duplicate_1_q\ ) + ( \u0|D0|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|D0|ALT_INV_a[6]~_Duplicate_1_q\,
	datac => \u0|D0|ALT_INV_Mux9~0_combout\,
	cin => \u0|D0|Add0~22\,
	sumout => \u0|D0|Add0~25_sumout\,
	cout => \u0|D0|Add0~26\);

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

-- Location: FF_X31_Y2_N11
\u0|D0|a[7]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \u0|D0|a[7]~SCLR_LUT_combout\,
	ena => \u0|D0|a[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|D0|a[7]~_Duplicate_1_q\);

-- Location: FF_X31_Y2_N2
\u0|D0|b[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \u0|D0|b~7_combout\,
	sclr => \ALT_INV_KEY[0]~input_o\,
	sload => VCC,
	ena => \u0|D0|b[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|D0|b\(7));

-- Location: FF_X30_Y2_N4
\u0|D0|c[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \SW[7]~input_o\,
	sclr => \ALT_INV_KEY[0]~input_o\,
	sload => VCC,
	ena => \u0|D0|c[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|D0|c\(7));

-- Location: FF_X31_Y2_N20
\u0|D0|x[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \SW[7]~input_o\,
	sclr => \ALT_INV_KEY[0]~input_o\,
	sload => VCC,
	ena => \u0|D0|x[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|D0|x\(7));

-- Location: LABCELL_X31_Y2_N21
\u0|D0|Mux8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|D0|Mux8~0_combout\ = ( \u0|D0|a[7]~1_combout\ & ( \u0|C0|WideOr10~combout\ & ( \u0|D0|a[7]~_Duplicate_1_q\ ) ) ) # ( !\u0|D0|a[7]~1_combout\ & ( \u0|C0|WideOr10~combout\ & ( \u0|D0|b\(7) ) ) ) # ( \u0|D0|a[7]~1_combout\ & ( !\u0|C0|WideOr10~combout\ & 
-- ( \u0|D0|c\(7) ) ) ) # ( !\u0|D0|a[7]~1_combout\ & ( !\u0|C0|WideOr10~combout\ & ( \u0|D0|x\(7) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000011110000111101010101010101010011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|D0|ALT_INV_b\(7),
	datab => \u0|D0|ALT_INV_a[7]~_Duplicate_1_q\,
	datac => \u0|D0|ALT_INV_c\(7),
	datad => \u0|D0|ALT_INV_x\(7),
	datae => \u0|D0|ALT_INV_a[7]~1_combout\,
	dataf => \u0|C0|ALT_INV_WideOr10~combout\,
	combout => \u0|D0|Mux8~0_combout\);

-- Location: LABCELL_X30_Y2_N21
\u0|D0|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|D0|Add0~29_sumout\ = SUM(( \u0|D0|Mux8~0_combout\ ) + ( \u0|D0|a[7]~_Duplicate_1_q\ ) + ( \u0|D0|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u0|D0|ALT_INV_a[7]~_Duplicate_1_q\,
	datad => \u0|D0|ALT_INV_Mux8~0_combout\,
	cin => \u0|D0|Add0~26\,
	sumout => \u0|D0|Add0~29_sumout\);

-- Location: DSP_X32_Y2_N0
\u0|D0|Mult0~8\ : cyclonev_mac
-- pragma translate_off
GENERIC MAP (
	accumulate_clock => "none",
	ax_clock => "0",
	ax_width => 8,
	ay_scan_in_clock => "none",
	ay_scan_in_width => 8,
	ay_use_scan_in => "false",
	az_clock => "none",
	bx_clock => "none",
	by_clock => "none",
	by_use_scan_in => "false",
	bz_clock => "none",
	coef_a_0 => 0,
	coef_a_1 => 0,
	coef_a_2 => 0,
	coef_a_3 => 0,
	coef_a_4 => 0,
	coef_a_5 => 0,
	coef_a_6 => 0,
	coef_a_7 => 0,
	coef_b_0 => 0,
	coef_b_1 => 0,
	coef_b_2 => 0,
	coef_b_3 => 0,
	coef_b_4 => 0,
	coef_b_5 => 0,
	coef_b_6 => 0,
	coef_b_7 => 0,
	coef_sel_a_clock => "none",
	coef_sel_b_clock => "none",
	delay_scan_out_ay => "false",
	delay_scan_out_by => "false",
	enable_double_accum => "false",
	load_const_clock => "none",
	load_const_value => 0,
	mode_sub_location => 0,
	negate_clock => "none",
	operand_source_max => "input",
	operand_source_may => "input",
	operand_source_mbx => "input",
	operand_source_mby => "input",
	operation_mode => "m9x9",
	output_clock => "none",
	preadder_subtract_a => "false",
	preadder_subtract_b => "false",
	result_a_width => 64,
	signed_max => "false",
	signed_may => "false",
	signed_mbx => "false",
	signed_mby => "false",
	sub_clock => "none",
	use_chainadder => "false")
-- pragma translate_on
PORT MAP (
	sub => GND,
	negate => GND,
	aclr => \u0|D0|Mult0~8_ACLR_bus\,
	clk => \u0|D0|Mult0~8_CLK_bus\,
	ena => \u0|D0|Mult0~8_ENA_bus\,
	ax => \u0|D0|Mult0~8_AX_bus\,
	ay => \u0|D0|Mult0~8_AY_bus\,
	resulta => \u0|D0|Mult0~8_RESULTA_bus\);

-- Location: LABCELL_X31_Y2_N57
\u0|D0|b~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|D0|b~7_combout\ = ( \u0|D0|Mult0~15\ & ( (!\u0|D0|a[7]~0_combout\) # ((!\u0|C0|current_state.S_CYCLE_1~q\ & (\SW[7]~input_o\)) # (\u0|C0|current_state.S_CYCLE_1~q\ & ((\u0|D0|Add0~29_sumout\)))) ) ) # ( !\u0|D0|Mult0~15\ & ( (\u0|D0|a[7]~0_combout\ & 
-- ((!\u0|C0|current_state.S_CYCLE_1~q\ & (\SW[7]~input_o\)) # (\u0|C0|current_state.S_CYCLE_1~q\ & ((\u0|D0|Add0~29_sumout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000111000000100000011111110010111101111111001011110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|C0|ALT_INV_current_state.S_CYCLE_1~q\,
	datab => \ALT_INV_SW[7]~input_o\,
	datac => \u0|D0|ALT_INV_a[7]~0_combout\,
	datad => \u0|D0|ALT_INV_Add0~29_sumout\,
	dataf => \u0|D0|ALT_INV_Mult0~15\,
	combout => \u0|D0|b~7_combout\);

-- Location: LABCELL_X31_Y2_N9
\u0|D0|a[7]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|D0|a[7]~SCLR_LUT_combout\ = (\KEY[0]~input_o\ & \u0|D0|b~7_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_KEY[0]~input_o\,
	datad => \u0|D0|ALT_INV_b~7_combout\,
	combout => \u0|D0|a[7]~SCLR_LUT_combout\);

-- Location: LABCELL_X31_Y2_N27
\u0|D0|b~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|D0|b~6_combout\ = ( \u0|D0|Mult0~14\ & ( (!\u0|D0|a[7]~0_combout\) # ((!\u0|C0|current_state.S_CYCLE_1~q\ & ((\SW[6]~input_o\))) # (\u0|C0|current_state.S_CYCLE_1~q\ & (\u0|D0|Add0~25_sumout\))) ) ) # ( !\u0|D0|Mult0~14\ & ( (\u0|D0|a[7]~0_combout\ & 
-- ((!\u0|C0|current_state.S_CYCLE_1~q\ & ((\SW[6]~input_o\))) # (\u0|C0|current_state.S_CYCLE_1~q\ & (\u0|D0|Add0~25_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100110001000000010011000111001101111111011100110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|D0|ALT_INV_Add0~25_sumout\,
	datab => \u0|D0|ALT_INV_a[7]~0_combout\,
	datac => \u0|C0|ALT_INV_current_state.S_CYCLE_1~q\,
	datad => \ALT_INV_SW[6]~input_o\,
	dataf => \u0|D0|ALT_INV_Mult0~14\,
	combout => \u0|D0|b~6_combout\);

-- Location: LABCELL_X31_Y2_N15
\u0|D0|a[6]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|D0|a[6]~SCLR_LUT_combout\ = (\KEY[0]~input_o\ & \u0|D0|b~6_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_KEY[0]~input_o\,
	datad => \u0|D0|ALT_INV_b~6_combout\,
	combout => \u0|D0|a[6]~SCLR_LUT_combout\);

-- Location: LABCELL_X31_Y2_N3
\u0|D0|b~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|D0|b~5_combout\ = ( \u0|D0|Mult0~13\ & ( (!\u0|D0|a[7]~0_combout\) # ((!\u0|C0|current_state.S_CYCLE_1~q\ & ((\SW[5]~input_o\))) # (\u0|C0|current_state.S_CYCLE_1~q\ & (\u0|D0|Add0~21_sumout\))) ) ) # ( !\u0|D0|Mult0~13\ & ( (\u0|D0|a[7]~0_combout\ & 
-- ((!\u0|C0|current_state.S_CYCLE_1~q\ & ((\SW[5]~input_o\))) # (\u0|C0|current_state.S_CYCLE_1~q\ & (\u0|D0|Add0~21_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100001101000000010000110111110001111111011111000111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|D0|ALT_INV_Add0~21_sumout\,
	datab => \u0|C0|ALT_INV_current_state.S_CYCLE_1~q\,
	datac => \u0|D0|ALT_INV_a[7]~0_combout\,
	datad => \ALT_INV_SW[5]~input_o\,
	dataf => \u0|D0|ALT_INV_Mult0~13\,
	combout => \u0|D0|b~5_combout\);

-- Location: LABCELL_X31_Y2_N42
\u0|D0|a[5]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|D0|a[5]~SCLR_LUT_combout\ = (\KEY[0]~input_o\ & \u0|D0|b~5_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100000011000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_KEY[0]~input_o\,
	datac => \u0|D0|ALT_INV_b~5_combout\,
	combout => \u0|D0|a[5]~SCLR_LUT_combout\);

-- Location: LABCELL_X33_Y2_N9
\u0|D0|b~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|D0|b~4_combout\ = ( \u0|D0|Add0~17_sumout\ & ( \u0|D0|Mult0~12\ & ( ((!\u0|D0|a[7]~0_combout\) # (\u0|C0|current_state.S_CYCLE_1~q\)) # (\SW[4]~input_o\) ) ) ) # ( !\u0|D0|Add0~17_sumout\ & ( \u0|D0|Mult0~12\ & ( (!\u0|D0|a[7]~0_combout\) # 
-- ((\SW[4]~input_o\ & !\u0|C0|current_state.S_CYCLE_1~q\)) ) ) ) # ( \u0|D0|Add0~17_sumout\ & ( !\u0|D0|Mult0~12\ & ( (\u0|D0|a[7]~0_combout\ & ((\u0|C0|current_state.S_CYCLE_1~q\) # (\SW[4]~input_o\))) ) ) ) # ( !\u0|D0|Add0~17_sumout\ & ( 
-- !\u0|D0|Mult0~12\ & ( (\SW[4]~input_o\ & (!\u0|C0|current_state.S_CYCLE_1~q\ & \u0|D0|a[7]~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010000000000000101111111111111010100001111111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[4]~input_o\,
	datac => \u0|C0|ALT_INV_current_state.S_CYCLE_1~q\,
	datad => \u0|D0|ALT_INV_a[7]~0_combout\,
	datae => \u0|D0|ALT_INV_Add0~17_sumout\,
	dataf => \u0|D0|ALT_INV_Mult0~12\,
	combout => \u0|D0|b~4_combout\);

-- Location: LABCELL_X33_Y2_N54
\u0|D0|a[4]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|D0|a[4]~SCLR_LUT_combout\ = ( \u0|D0|b~4_combout\ & ( \KEY[0]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[0]~input_o\,
	dataf => \u0|D0|ALT_INV_b~4_combout\,
	combout => \u0|D0|a[4]~SCLR_LUT_combout\);

-- Location: LABCELL_X33_Y2_N33
\u0|D0|b~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|D0|b~3_combout\ = ( \u0|D0|Mult0~11\ & ( (!\u0|D0|a[7]~0_combout\) # ((!\u0|C0|current_state.S_CYCLE_1~q\ & (\SW[3]~input_o\)) # (\u0|C0|current_state.S_CYCLE_1~q\ & ((\u0|D0|Add0~13_sumout\)))) ) ) # ( !\u0|D0|Mult0~11\ & ( (\u0|D0|a[7]~0_combout\ & 
-- ((!\u0|C0|current_state.S_CYCLE_1~q\ & (\SW[3]~input_o\)) # (\u0|C0|current_state.S_CYCLE_1~q\ & ((\u0|D0|Add0~13_sumout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000010101000001000001010110101110101111111010111010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|D0|ALT_INV_a[7]~0_combout\,
	datab => \u0|C0|ALT_INV_current_state.S_CYCLE_1~q\,
	datac => \ALT_INV_SW[3]~input_o\,
	datad => \u0|D0|ALT_INV_Add0~13_sumout\,
	dataf => \u0|D0|ALT_INV_Mult0~11\,
	combout => \u0|D0|b~3_combout\);

-- Location: LABCELL_X33_Y2_N0
\u0|D0|a[3]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|D0|a[3]~SCLR_LUT_combout\ = ( \u0|D0|b~3_combout\ & ( \KEY[0]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[0]~input_o\,
	dataf => \u0|D0|ALT_INV_b~3_combout\,
	combout => \u0|D0|a[3]~SCLR_LUT_combout\);

-- Location: LABCELL_X33_Y2_N48
\u0|D0|b~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|D0|b~2_combout\ = ( \u0|D0|Mult0~10\ & ( (!\u0|D0|a[7]~0_combout\) # ((!\u0|C0|current_state.S_CYCLE_1~q\ & (\SW[2]~input_o\)) # (\u0|C0|current_state.S_CYCLE_1~q\ & ((\u0|D0|Add0~9_sumout\)))) ) ) # ( !\u0|D0|Mult0~10\ & ( (\u0|D0|a[7]~0_combout\ & 
-- ((!\u0|C0|current_state.S_CYCLE_1~q\ & (\SW[2]~input_o\)) # (\u0|C0|current_state.S_CYCLE_1~q\ & ((\u0|D0|Add0~9_sumout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000111111101001111011100000100000001111111010011110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[2]~input_o\,
	datab => \u0|C0|ALT_INV_current_state.S_CYCLE_1~q\,
	datac => \u0|D0|ALT_INV_a[7]~0_combout\,
	datad => \u0|D0|ALT_INV_Add0~9_sumout\,
	datae => \u0|D0|ALT_INV_Mult0~10\,
	combout => \u0|D0|b~2_combout\);

-- Location: LABCELL_X33_Y2_N27
\u0|D0|a[2]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|D0|a[2]~SCLR_LUT_combout\ = ( \u0|D0|b~2_combout\ & ( \KEY[0]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_KEY[0]~input_o\,
	dataf => \u0|D0|ALT_INV_b~2_combout\,
	combout => \u0|D0|a[2]~SCLR_LUT_combout\);

-- Location: LABCELL_X31_Y2_N12
\u0|D0|b~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|D0|b~1_combout\ = ( \u0|D0|Mult0~9\ & ( (!\u0|D0|a[7]~0_combout\) # ((!\u0|C0|current_state.S_CYCLE_1~q\ & ((\SW[1]~input_o\))) # (\u0|C0|current_state.S_CYCLE_1~q\ & (\u0|D0|Add0~5_sumout\))) ) ) # ( !\u0|D0|Mult0~9\ & ( (\u0|D0|a[7]~0_combout\ & 
-- ((!\u0|C0|current_state.S_CYCLE_1~q\ & ((\SW[1]~input_o\))) # (\u0|C0|current_state.S_CYCLE_1~q\ & (\u0|D0|Add0~5_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100110001000000010011000111001101111111011100110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|D0|ALT_INV_Add0~5_sumout\,
	datab => \u0|D0|ALT_INV_a[7]~0_combout\,
	datac => \u0|C0|ALT_INV_current_state.S_CYCLE_1~q\,
	datad => \ALT_INV_SW[1]~input_o\,
	dataf => \u0|D0|ALT_INV_Mult0~9\,
	combout => \u0|D0|b~1_combout\);

-- Location: LABCELL_X31_Y2_N54
\u0|D0|a[1]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|D0|a[1]~SCLR_LUT_combout\ = ( \u0|D0|b~1_combout\ & ( \KEY[0]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_KEY[0]~input_o\,
	dataf => \u0|D0|ALT_INV_b~1_combout\,
	combout => \u0|D0|a[1]~SCLR_LUT_combout\);

-- Location: LABCELL_X31_Y2_N6
\u0|D0|b~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|D0|b~0_combout\ = ( \u0|D0|Mult0~8_resulta\ & ( (!\u0|D0|a[7]~0_combout\) # ((!\u0|C0|current_state.S_CYCLE_1~q\ & ((\SW[0]~input_o\))) # (\u0|C0|current_state.S_CYCLE_1~q\ & (\u0|D0|Add0~1_sumout\))) ) ) # ( !\u0|D0|Mult0~8_resulta\ & ( 
-- (\u0|D0|a[7]~0_combout\ & ((!\u0|C0|current_state.S_CYCLE_1~q\ & ((\SW[0]~input_o\))) # (\u0|C0|current_state.S_CYCLE_1~q\ & (\u0|D0|Add0~1_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100010001000000110001000111001111110111011100111111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|D0|ALT_INV_Add0~1_sumout\,
	datab => \u0|D0|ALT_INV_a[7]~0_combout\,
	datac => \ALT_INV_SW[0]~input_o\,
	datad => \u0|C0|ALT_INV_current_state.S_CYCLE_1~q\,
	dataf => \u0|D0|ALT_INV_Mult0~8_resulta\,
	combout => \u0|D0|b~0_combout\);

-- Location: LABCELL_X31_Y2_N0
\u0|D0|a[0]~SCLR_LUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|D0|a[0]~SCLR_LUT_combout\ = ( \u0|D0|b~0_combout\ & ( \KEY[0]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_KEY[0]~input_o\,
	dataf => \u0|D0|ALT_INV_b~0_combout\,
	combout => \u0|D0|a[0]~SCLR_LUT_combout\);

-- Location: FF_X31_Y2_N38
\u0|D0|a[0]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \u0|D0|a[0]~SCLR_LUT_combout\,
	sload => VCC,
	ena => \u0|D0|a[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|D0|a[0]~_Duplicate_1_q\);

-- Location: LABCELL_X33_Y2_N18
\u0|D0|alu_out[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|D0|alu_out[0]~0_combout\ = ( \u0|D0|Mult0~8_resulta\ & ( (!\u0|D0|a[7]~0_combout\) # (\u0|D0|Add0~1_sumout\) ) ) # ( !\u0|D0|Mult0~8_resulta\ & ( (\u0|D0|a[7]~0_combout\ & \u0|D0|Add0~1_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010110101111101011111010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|D0|ALT_INV_a[7]~0_combout\,
	datac => \u0|D0|ALT_INV_Add0~1_sumout\,
	dataf => \u0|D0|ALT_INV_Mult0~8_resulta\,
	combout => \u0|D0|alu_out[0]~0_combout\);

-- Location: LABCELL_X33_Y2_N15
\u0|D0|data_result[4]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|D0|data_result[4]~0_combout\ = ( \u0|C0|current_state.S_CYCLE_3~q\ ) # ( !\u0|C0|current_state.S_CYCLE_3~q\ & ( !\KEY[0]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010111111111111111110101010101010101111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[0]~input_o\,
	datae => \u0|C0|ALT_INV_current_state.S_CYCLE_3~q\,
	combout => \u0|D0|data_result[4]~0_combout\);

-- Location: FF_X33_Y2_N20
\u0|D0|data_result[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \u0|D0|alu_out[0]~0_combout\,
	sclr => \ALT_INV_KEY[0]~input_o\,
	ena => \u0|D0|data_result[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|D0|data_result\(0));

-- Location: LABCELL_X33_Y2_N45
\u0|D0|alu_out[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|D0|alu_out[1]~1_combout\ = (!\u0|D0|a[7]~0_combout\ & ((\u0|D0|Mult0~9\))) # (\u0|D0|a[7]~0_combout\ & (\u0|D0|Add0~5_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110101111000001011010111100000101101011110000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|D0|ALT_INV_a[7]~0_combout\,
	datac => \u0|D0|ALT_INV_Add0~5_sumout\,
	datad => \u0|D0|ALT_INV_Mult0~9\,
	combout => \u0|D0|alu_out[1]~1_combout\);

-- Location: FF_X33_Y2_N47
\u0|D0|data_result[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \u0|D0|alu_out[1]~1_combout\,
	sclr => \ALT_INV_KEY[0]~input_o\,
	ena => \u0|D0|data_result[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|D0|data_result\(1));

-- Location: LABCELL_X33_Y2_N30
\u0|D0|alu_out[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|D0|alu_out[2]~2_combout\ = (!\u0|D0|a[7]~0_combout\ & ((\u0|D0|Mult0~10\))) # (\u0|D0|a[7]~0_combout\ & (\u0|D0|Add0~9_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110101111000001011010111100000101101011110000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|D0|ALT_INV_a[7]~0_combout\,
	datac => \u0|D0|ALT_INV_Add0~9_sumout\,
	datad => \u0|D0|ALT_INV_Mult0~10\,
	combout => \u0|D0|alu_out[2]~2_combout\);

-- Location: FF_X33_Y2_N32
\u0|D0|data_result[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \u0|D0|alu_out[2]~2_combout\,
	sclr => \ALT_INV_KEY[0]~input_o\,
	ena => \u0|D0|data_result[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|D0|data_result\(2));

-- Location: LABCELL_X33_Y2_N24
\u0|D0|alu_out[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|D0|alu_out[3]~3_combout\ = ( \u0|D0|Mult0~11\ & ( (!\u0|D0|a[7]~0_combout\) # (\u0|D0|Add0~13_sumout\) ) ) # ( !\u0|D0|Mult0~11\ & ( (\u0|D0|a[7]~0_combout\ & \u0|D0|Add0~13_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010110101111101011111010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|D0|ALT_INV_a[7]~0_combout\,
	datac => \u0|D0|ALT_INV_Add0~13_sumout\,
	dataf => \u0|D0|ALT_INV_Mult0~11\,
	combout => \u0|D0|alu_out[3]~3_combout\);

-- Location: FF_X33_Y2_N26
\u0|D0|data_result[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \u0|D0|alu_out[3]~3_combout\,
	sclr => \ALT_INV_KEY[0]~input_o\,
	ena => \u0|D0|data_result[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|D0|data_result\(3));

-- Location: LABCELL_X33_Y2_N39
\u0|D0|alu_out[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|D0|alu_out[4]~4_combout\ = ( \u0|D0|Mult0~12\ & ( (!\u0|D0|a[7]~0_combout\) # (\u0|D0|Add0~17_sumout\) ) ) # ( !\u0|D0|Mult0~12\ & ( (\u0|D0|a[7]~0_combout\ & \u0|D0|Add0~17_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010110101010111111111010101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|D0|ALT_INV_a[7]~0_combout\,
	datad => \u0|D0|ALT_INV_Add0~17_sumout\,
	dataf => \u0|D0|ALT_INV_Mult0~12\,
	combout => \u0|D0|alu_out[4]~4_combout\);

-- Location: FF_X33_Y2_N41
\u0|D0|data_result[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \u0|D0|alu_out[4]~4_combout\,
	sclr => \ALT_INV_KEY[0]~input_o\,
	ena => \u0|D0|data_result[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|D0|data_result\(4));

-- Location: LABCELL_X33_Y2_N21
\u0|D0|alu_out[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|D0|alu_out[5]~5_combout\ = ( \u0|D0|Mult0~13\ & ( (!\u0|D0|a[7]~0_combout\) # (\u0|D0|Add0~21_sumout\) ) ) # ( !\u0|D0|Mult0~13\ & ( (\u0|D0|a[7]~0_combout\ & \u0|D0|Add0~21_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010110101010111111111010101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|D0|ALT_INV_a[7]~0_combout\,
	datad => \u0|D0|ALT_INV_Add0~21_sumout\,
	dataf => \u0|D0|ALT_INV_Mult0~13\,
	combout => \u0|D0|alu_out[5]~5_combout\);

-- Location: FF_X33_Y2_N23
\u0|D0|data_result[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \u0|D0|alu_out[5]~5_combout\,
	sclr => \ALT_INV_KEY[0]~input_o\,
	ena => \u0|D0|data_result[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|D0|data_result\(5));

-- Location: LABCELL_X33_Y2_N42
\u0|D0|alu_out[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|D0|alu_out[6]~6_combout\ = ( \u0|D0|Add0~25_sumout\ & ( (\u0|D0|Mult0~14\) # (\u0|D0|a[7]~0_combout\) ) ) # ( !\u0|D0|Add0~25_sumout\ & ( (!\u0|D0|a[7]~0_combout\ & \u0|D0|Mult0~14\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|D0|ALT_INV_a[7]~0_combout\,
	datad => \u0|D0|ALT_INV_Mult0~14\,
	dataf => \u0|D0|ALT_INV_Add0~25_sumout\,
	combout => \u0|D0|alu_out[6]~6_combout\);

-- Location: FF_X33_Y2_N44
\u0|D0|data_result[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \u0|D0|alu_out[6]~6_combout\,
	sclr => \ALT_INV_KEY[0]~input_o\,
	ena => \u0|D0|data_result[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|D0|data_result\(6));

-- Location: LABCELL_X33_Y2_N36
\u0|D0|alu_out[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|D0|alu_out[7]~7_combout\ = ( \u0|D0|Mult0~15\ & ( (!\u0|D0|a[7]~0_combout\) # (\u0|D0|Add0~29_sumout\) ) ) # ( !\u0|D0|Mult0~15\ & ( (\u0|D0|a[7]~0_combout\ & \u0|D0|Add0~29_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010110101010111111111010101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|D0|ALT_INV_a[7]~0_combout\,
	datad => \u0|D0|ALT_INV_Add0~29_sumout\,
	dataf => \u0|D0|ALT_INV_Mult0~15\,
	combout => \u0|D0|alu_out[7]~7_combout\);

-- Location: FF_X33_Y2_N38
\u0|D0|data_result[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \u0|D0|alu_out[7]~7_combout\,
	sclr => \ALT_INV_KEY[0]~input_o\,
	ena => \u0|D0|data_result[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|D0|data_result\(7));

-- Location: LABCELL_X88_Y4_N24
\H0|WideOr6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \H0|WideOr6~0_combout\ = ( \u0|D0|data_result\(1) & ( (!\u0|D0|data_result\(2) & (\u0|D0|data_result\(0) & \u0|D0|data_result\(3))) ) ) # ( !\u0|D0|data_result\(1) & ( (!\u0|D0|data_result\(2) & (\u0|D0|data_result\(0) & !\u0|D0|data_result\(3))) # 
-- (\u0|D0|data_result\(2) & (!\u0|D0|data_result\(0) $ (\u0|D0|data_result\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110000000011001111000000001100000000000011000000000000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u0|D0|ALT_INV_data_result\(2),
	datac => \u0|D0|ALT_INV_data_result\(0),
	datad => \u0|D0|ALT_INV_data_result\(3),
	dataf => \u0|D0|ALT_INV_data_result\(1),
	combout => \H0|WideOr6~0_combout\);

-- Location: LABCELL_X88_Y4_N9
\H0|WideOr5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \H0|WideOr5~0_combout\ = ( \u0|D0|data_result\(0) & ( (!\u0|D0|data_result\(1) & (\u0|D0|data_result\(2) & !\u0|D0|data_result\(3))) # (\u0|D0|data_result\(1) & ((\u0|D0|data_result\(3)))) ) ) # ( !\u0|D0|data_result\(0) & ( (\u0|D0|data_result\(2) & 
-- ((\u0|D0|data_result\(3)) # (\u0|D0|data_result\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001100010011001001010010010100010011000100110010010100100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|D0|ALT_INV_data_result\(1),
	datab => \u0|D0|ALT_INV_data_result\(2),
	datac => \u0|D0|ALT_INV_data_result\(3),
	datae => \u0|D0|ALT_INV_data_result\(0),
	combout => \H0|WideOr5~0_combout\);

-- Location: LABCELL_X88_Y4_N12
\H0|WideOr4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \H0|WideOr4~0_combout\ = ( \u0|D0|data_result\(1) & ( (!\u0|D0|data_result\(2) & (!\u0|D0|data_result\(0) & !\u0|D0|data_result\(3))) # (\u0|D0|data_result\(2) & ((\u0|D0|data_result\(3)))) ) ) # ( !\u0|D0|data_result\(1) & ( (\u0|D0|data_result\(2) & 
-- (!\u0|D0|data_result\(0) & \u0|D0|data_result\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110000000000000011000011000000001100111100000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u0|D0|ALT_INV_data_result\(2),
	datac => \u0|D0|ALT_INV_data_result\(0),
	datad => \u0|D0|ALT_INV_data_result\(3),
	dataf => \u0|D0|ALT_INV_data_result\(1),
	combout => \H0|WideOr4~0_combout\);

-- Location: LABCELL_X88_Y4_N45
\H0|WideOr3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \H0|WideOr3~0_combout\ = ( \u0|D0|data_result\(0) & ( !\u0|D0|data_result\(1) $ (\u0|D0|data_result\(2)) ) ) # ( !\u0|D0|data_result\(0) & ( (!\u0|D0|data_result\(1) & (\u0|D0|data_result\(2) & !\u0|D0|data_result\(3))) # (\u0|D0|data_result\(1) & 
-- (!\u0|D0|data_result\(2) & \u0|D0|data_result\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010010000100100100110011001100100100100001001001001100110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|D0|ALT_INV_data_result\(1),
	datab => \u0|D0|ALT_INV_data_result\(2),
	datac => \u0|D0|ALT_INV_data_result\(3),
	datae => \u0|D0|ALT_INV_data_result\(0),
	combout => \H0|WideOr3~0_combout\);

-- Location: LABCELL_X88_Y4_N36
\H0|WideOr2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \H0|WideOr2~0_combout\ = ( \u0|D0|data_result\(1) & ( (\u0|D0|data_result\(0) & !\u0|D0|data_result\(3)) ) ) # ( !\u0|D0|data_result\(1) & ( (!\u0|D0|data_result\(2) & (\u0|D0|data_result\(0))) # (\u0|D0|data_result\(2) & ((!\u0|D0|data_result\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100001100001111110000110000001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u0|D0|ALT_INV_data_result\(2),
	datac => \u0|D0|ALT_INV_data_result\(0),
	datad => \u0|D0|ALT_INV_data_result\(3),
	dataf => \u0|D0|ALT_INV_data_result\(1),
	combout => \H0|WideOr2~0_combout\);

-- Location: LABCELL_X88_Y4_N33
\H0|WideOr1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \H0|WideOr1~0_combout\ = ( \u0|D0|data_result\(0) & ( !\u0|D0|data_result\(3) $ (((!\u0|D0|data_result\(1) & \u0|D0|data_result\(2)))) ) ) # ( !\u0|D0|data_result\(0) & ( (\u0|D0|data_result\(1) & (!\u0|D0|data_result\(2) & !\u0|D0|data_result\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001000000110100101101001001000000010000001101001011010010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|D0|ALT_INV_data_result\(1),
	datab => \u0|D0|ALT_INV_data_result\(2),
	datac => \u0|D0|ALT_INV_data_result\(3),
	datae => \u0|D0|ALT_INV_data_result\(0),
	combout => \H0|WideOr1~0_combout\);

-- Location: LABCELL_X88_Y4_N0
\H0|WideOr0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \H0|WideOr0~0_combout\ = ( \u0|D0|data_result\(1) & ( (!\u0|D0|data_result\(2)) # ((!\u0|D0|data_result\(0)) # (\u0|D0|data_result\(3))) ) ) # ( !\u0|D0|data_result\(1) & ( (!\u0|D0|data_result\(2) & ((\u0|D0|data_result\(3)))) # (\u0|D0|data_result\(2) & 
-- ((!\u0|D0|data_result\(3)) # (\u0|D0|data_result\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001111001111001100111100111111111100111111111111110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u0|D0|ALT_INV_data_result\(2),
	datac => \u0|D0|ALT_INV_data_result\(0),
	datad => \u0|D0|ALT_INV_data_result\(3),
	dataf => \u0|D0|ALT_INV_data_result\(1),
	combout => \H0|WideOr0~0_combout\);

-- Location: LABCELL_X88_Y8_N51
\H1|WideOr6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \H1|WideOr6~0_combout\ = ( \u0|D0|data_result\(5) & ( \u0|D0|data_result\(7) & ( (!\u0|D0|data_result\(6) & \u0|D0|data_result\(4)) ) ) ) # ( !\u0|D0|data_result\(5) & ( \u0|D0|data_result\(7) & ( (\u0|D0|data_result\(6) & \u0|D0|data_result\(4)) ) ) ) # 
-- ( !\u0|D0|data_result\(5) & ( !\u0|D0|data_result\(7) & ( !\u0|D0|data_result\(6) $ (!\u0|D0|data_result\(4)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010110101010000000000000000000000000010101010000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|D0|ALT_INV_data_result\(6),
	datad => \u0|D0|ALT_INV_data_result\(4),
	datae => \u0|D0|ALT_INV_data_result\(5),
	dataf => \u0|D0|ALT_INV_data_result\(7),
	combout => \H1|WideOr6~0_combout\);

-- Location: LABCELL_X88_Y8_N6
\H1|WideOr5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \H1|WideOr5~0_combout\ = ( \u0|D0|data_result\(5) & ( \u0|D0|data_result\(4) & ( \u0|D0|data_result\(7) ) ) ) # ( !\u0|D0|data_result\(5) & ( \u0|D0|data_result\(4) & ( (!\u0|D0|data_result\(7) & \u0|D0|data_result\(6)) ) ) ) # ( \u0|D0|data_result\(5) & 
-- ( !\u0|D0|data_result\(4) & ( \u0|D0|data_result\(6) ) ) ) # ( !\u0|D0|data_result\(5) & ( !\u0|D0|data_result\(4) & ( (\u0|D0|data_result\(7) & \u0|D0|data_result\(6)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000011110000111100001100000011000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u0|D0|ALT_INV_data_result\(7),
	datac => \u0|D0|ALT_INV_data_result\(6),
	datae => \u0|D0|ALT_INV_data_result\(5),
	dataf => \u0|D0|ALT_INV_data_result\(4),
	combout => \H1|WideOr5~0_combout\);

-- Location: LABCELL_X88_Y8_N15
\H1|WideOr4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \H1|WideOr4~0_combout\ = ( \u0|D0|data_result\(5) & ( \u0|D0|data_result\(7) & ( \u0|D0|data_result\(6) ) ) ) # ( !\u0|D0|data_result\(5) & ( \u0|D0|data_result\(7) & ( (\u0|D0|data_result\(6) & !\u0|D0|data_result\(4)) ) ) ) # ( \u0|D0|data_result\(5) & 
-- ( !\u0|D0|data_result\(7) & ( (!\u0|D0|data_result\(6) & !\u0|D0|data_result\(4)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010100000000001010101000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|D0|ALT_INV_data_result\(6),
	datad => \u0|D0|ALT_INV_data_result\(4),
	datae => \u0|D0|ALT_INV_data_result\(5),
	dataf => \u0|D0|ALT_INV_data_result\(7),
	combout => \H1|WideOr4~0_combout\);

-- Location: LABCELL_X88_Y8_N42
\H1|WideOr3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \H1|WideOr3~0_combout\ = ( \u0|D0|data_result\(5) & ( \u0|D0|data_result\(4) & ( \u0|D0|data_result\(6) ) ) ) # ( !\u0|D0|data_result\(5) & ( \u0|D0|data_result\(4) & ( !\u0|D0|data_result\(6) ) ) ) # ( \u0|D0|data_result\(5) & ( !\u0|D0|data_result\(4) & 
-- ( (\u0|D0|data_result\(7) & !\u0|D0|data_result\(6)) ) ) ) # ( !\u0|D0|data_result\(5) & ( !\u0|D0|data_result\(4) & ( (!\u0|D0|data_result\(7) & \u0|D0|data_result\(6)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100001100000011000011110000111100000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u0|D0|ALT_INV_data_result\(7),
	datac => \u0|D0|ALT_INV_data_result\(6),
	datae => \u0|D0|ALT_INV_data_result\(5),
	dataf => \u0|D0|ALT_INV_data_result\(4),
	combout => \H1|WideOr3~0_combout\);

-- Location: LABCELL_X88_Y8_N39
\H1|WideOr2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \H1|WideOr2~0_combout\ = ( !\u0|D0|data_result\(5) & ( \u0|D0|data_result\(7) & ( (!\u0|D0|data_result\(6) & \u0|D0|data_result\(4)) ) ) ) # ( \u0|D0|data_result\(5) & ( !\u0|D0|data_result\(7) & ( \u0|D0|data_result\(4) ) ) ) # ( !\u0|D0|data_result\(5) 
-- & ( !\u0|D0|data_result\(7) & ( (\u0|D0|data_result\(4)) # (\u0|D0|data_result\(6)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010111111111000000001111111100000000101010100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|D0|ALT_INV_data_result\(6),
	datad => \u0|D0|ALT_INV_data_result\(4),
	datae => \u0|D0|ALT_INV_data_result\(5),
	dataf => \u0|D0|ALT_INV_data_result\(7),
	combout => \H1|WideOr2~0_combout\);

-- Location: LABCELL_X88_Y8_N30
\H1|WideOr1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \H1|WideOr1~0_combout\ = ( \u0|D0|data_result\(5) & ( \u0|D0|data_result\(4) & ( !\u0|D0|data_result\(7) ) ) ) # ( !\u0|D0|data_result\(5) & ( \u0|D0|data_result\(4) & ( !\u0|D0|data_result\(7) $ (\u0|D0|data_result\(6)) ) ) ) # ( \u0|D0|data_result\(5) & 
-- ( !\u0|D0|data_result\(4) & ( (!\u0|D0|data_result\(7) & !\u0|D0|data_result\(6)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110000001100000011000011110000111100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u0|D0|ALT_INV_data_result\(7),
	datac => \u0|D0|ALT_INV_data_result\(6),
	datae => \u0|D0|ALT_INV_data_result\(5),
	dataf => \u0|D0|ALT_INV_data_result\(4),
	combout => \H1|WideOr1~0_combout\);

-- Location: LABCELL_X88_Y8_N0
\H1|WideOr0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \H1|WideOr0~0_combout\ = ( \u0|D0|data_result\(5) & ( \u0|D0|data_result\(4) & ( (!\u0|D0|data_result\(6)) # (\u0|D0|data_result\(7)) ) ) ) # ( !\u0|D0|data_result\(5) & ( \u0|D0|data_result\(4) & ( (\u0|D0|data_result\(6)) # (\u0|D0|data_result\(7)) ) ) 
-- ) # ( \u0|D0|data_result\(5) & ( !\u0|D0|data_result\(4) ) ) # ( !\u0|D0|data_result\(5) & ( !\u0|D0|data_result\(4) & ( !\u0|D0|data_result\(7) $ (!\u0|D0|data_result\(6)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110000111100111111111111111100111111001111111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u0|D0|ALT_INV_data_result\(7),
	datac => \u0|D0|ALT_INV_data_result\(6),
	datae => \u0|D0|ALT_INV_data_result\(5),
	dataf => \u0|D0|ALT_INV_data_result\(4),
	combout => \H1|WideOr0~0_combout\);

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

-- Location: LABCELL_X29_Y27_N0
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


