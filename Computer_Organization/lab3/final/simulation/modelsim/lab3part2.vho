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

-- DATE "06/13/2016 21:23:35"

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

ENTITY 	lab3part2 IS
    PORT (
	SW : IN std_logic_vector(9 DOWNTO 0);
	KEY : IN std_logic_vector(3 DOWNTO 0);
	LEDR : OUT std_logic_vector(9 DOWNTO 0);
	HEX0 : OUT std_logic_vector(6 DOWNTO 0);
	HEX1 : OUT std_logic_vector(6 DOWNTO 0);
	HEX2 : OUT std_logic_vector(6 DOWNTO 0);
	HEX3 : OUT std_logic_vector(6 DOWNTO 0);
	HEX4 : OUT std_logic_vector(6 DOWNTO 0);
	HEX5 : OUT std_logic_vector(6 DOWNTO 0)
	);
END lab3part2;

-- Design Ports Information
-- SW[4]	=>  Location: PIN_AD11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_AD12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_AE11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_AC9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_AD10,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
-- SW[0]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_AF9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_AC12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_AF10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_W15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_AE12,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF lab3part2 IS
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
SIGNAL ww_LEDR : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX4 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX5 : std_logic_vector(6 DOWNTO 0);
SIGNAL \alu|Mult0~8_ACLR_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \alu|Mult0~8_CLK_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \alu|Mult0~8_ENA_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \alu|Mult0~8_AX_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \alu|Mult0~8_AY_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \alu|Mult0~8_RESULTA_bus\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \alu|Mult0~16\ : std_logic;
SIGNAL \alu|Mult0~17\ : std_logic;
SIGNAL \alu|Mult0~18\ : std_logic;
SIGNAL \alu|Mult0~19\ : std_logic;
SIGNAL \alu|Mult0~20\ : std_logic;
SIGNAL \alu|Mult0~21\ : std_logic;
SIGNAL \alu|Mult0~22\ : std_logic;
SIGNAL \alu|Mult0~23\ : std_logic;
SIGNAL \alu|Mult0~24\ : std_logic;
SIGNAL \alu|Mult0~25\ : std_logic;
SIGNAL \alu|Mult0~26\ : std_logic;
SIGNAL \alu|Mult0~27\ : std_logic;
SIGNAL \alu|Mult0~28\ : std_logic;
SIGNAL \alu|Mult0~29\ : std_logic;
SIGNAL \alu|Mult0~30\ : std_logic;
SIGNAL \alu|Mult0~31\ : std_logic;
SIGNAL \alu|Mult0~32\ : std_logic;
SIGNAL \alu|Mult0~33\ : std_logic;
SIGNAL \alu|Mult0~34\ : std_logic;
SIGNAL \alu|Mult0~35\ : std_logic;
SIGNAL \alu|Mult0~36\ : std_logic;
SIGNAL \alu|Mult0~37\ : std_logic;
SIGNAL \alu|Mult0~38\ : std_logic;
SIGNAL \alu|Mult0~39\ : std_logic;
SIGNAL \alu|Mult0~40\ : std_logic;
SIGNAL \alu|Mult0~41\ : std_logic;
SIGNAL \alu|Mult0~42\ : std_logic;
SIGNAL \alu|Mult0~43\ : std_logic;
SIGNAL \alu|Mult0~44\ : std_logic;
SIGNAL \alu|Mult0~45\ : std_logic;
SIGNAL \alu|Mult0~46\ : std_logic;
SIGNAL \alu|Mult0~47\ : std_logic;
SIGNAL \alu|Mult0~48\ : std_logic;
SIGNAL \alu|Mult0~49\ : std_logic;
SIGNAL \alu|Mult0~50\ : std_logic;
SIGNAL \alu|Mult0~51\ : std_logic;
SIGNAL \alu|Mult0~52\ : std_logic;
SIGNAL \alu|Mult0~53\ : std_logic;
SIGNAL \alu|Mult0~54\ : std_logic;
SIGNAL \alu|Mult0~55\ : std_logic;
SIGNAL \alu|Mult0~56\ : std_logic;
SIGNAL \alu|Mult0~57\ : std_logic;
SIGNAL \alu|Mult0~58\ : std_logic;
SIGNAL \alu|Mult0~59\ : std_logic;
SIGNAL \alu|Mult0~60\ : std_logic;
SIGNAL \alu|Mult0~61\ : std_logic;
SIGNAL \alu|Mult0~62\ : std_logic;
SIGNAL \alu|Mult0~63\ : std_logic;
SIGNAL \alu|Mult0~64\ : std_logic;
SIGNAL \alu|Mult0~65\ : std_logic;
SIGNAL \alu|Mult0~66\ : std_logic;
SIGNAL \alu|Mult0~67\ : std_logic;
SIGNAL \alu|Mult0~68\ : std_logic;
SIGNAL \alu|Mult0~69\ : std_logic;
SIGNAL \alu|Mult0~70\ : std_logic;
SIGNAL \alu|Mult0~71\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \KEY[0]~inputCLKENA0_outclk\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \alu|Mux6~2_combout\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \alu|Mux6~3_combout\ : std_logic;
SIGNAL \alu|Mux6~4_combout\ : std_logic;
SIGNAL \alu|Mux6~5_combout\ : std_logic;
SIGNAL \alu|Mux6~7_combout\ : std_logic;
SIGNAL \alu|Mux6~1_combout\ : std_logic;
SIGNAL \alu|Mux5~0_combout\ : std_logic;
SIGNAL \h0|out0~1_combout\ : std_logic;
SIGNAL \alu|Out~0_combout\ : std_logic;
SIGNAL \alu|Mux5~4_combout\ : std_logic;
SIGNAL \alu|Add0~1_sumout\ : std_logic;
SIGNAL \alu|Mux5~2_combout\ : std_logic;
SIGNAL \alu|Mux6~0_combout\ : std_logic;
SIGNAL \rtl~17_combout\ : std_logic;
SIGNAL \alu|Add0~2\ : std_logic;
SIGNAL \alu|Add0~6\ : std_logic;
SIGNAL \alu|Add0~9_sumout\ : std_logic;
SIGNAL \alu|Mux5~3_combout\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \alu|Mult0~10\ : std_logic;
SIGNAL \alu|Mux5~1_combout\ : std_logic;
SIGNAL \br8|r2|out~_Duplicate_1_q\ : std_logic;
SIGNAL \alu|f1|FA3|u0|m~0_combout\ : std_logic;
SIGNAL \alu|Mux4~1_combout\ : std_logic;
SIGNAL \rtl~11_combout\ : std_logic;
SIGNAL \alu|Mux4~2_combout\ : std_logic;
SIGNAL \alu|ShiftLeft0~1_combout\ : std_logic;
SIGNAL \alu|Add0~10\ : std_logic;
SIGNAL \alu|Add0~13_sumout\ : std_logic;
SIGNAL \alu|Mux4~3_combout\ : std_logic;
SIGNAL \alu|Mult0~11\ : std_logic;
SIGNAL \alu|Mux4~0_combout\ : std_logic;
SIGNAL \br8|r3|out~_Duplicate_1_q\ : std_logic;
SIGNAL \alu|Mux6~6_combout\ : std_logic;
SIGNAL \alu|Add0~5_sumout\ : std_logic;
SIGNAL \alu|Mux6~9_combout\ : std_logic;
SIGNAL \alu|Mux6~10_combout\ : std_logic;
SIGNAL \alu|Mult0~9\ : std_logic;
SIGNAL \alu|Mux6~8_combout\ : std_logic;
SIGNAL \br8|r1|out~_Duplicate_1_q\ : std_logic;
SIGNAL \rtl~0_combout\ : std_logic;
SIGNAL \alu|WideAnd0~0_combout\ : std_logic;
SIGNAL \alu|Mux7~2_combout\ : std_logic;
SIGNAL \alu|Mux7~3_combout\ : std_logic;
SIGNAL \alu|ShiftLeft0~0_combout\ : std_logic;
SIGNAL \alu|WideOr0~combout\ : std_logic;
SIGNAL \alu|Mux7~1_combout\ : std_logic;
SIGNAL \alu|Mult0~8_resulta\ : std_logic;
SIGNAL \alu|Mux7~0_combout\ : std_logic;
SIGNAL \br8|r0|out~_Duplicate_1_q\ : std_logic;
SIGNAL \alu|Add0~14\ : std_logic;
SIGNAL \alu|Add0~17_sumout\ : std_logic;
SIGNAL \alu|Mux3~1_combout\ : std_logic;
SIGNAL \alu|Mux3~0_combout\ : std_logic;
SIGNAL \alu|Mux3~3_combout\ : std_logic;
SIGNAL \alu|Mux3~2_combout\ : std_logic;
SIGNAL \alu|Mult0~12\ : std_logic;
SIGNAL \alu|Mux3~4_combout\ : std_logic;
SIGNAL \br8|r4|out~q\ : std_logic;
SIGNAL \alu|Mux2~5_combout\ : std_logic;
SIGNAL \alu|Mux2~0_combout\ : std_logic;
SIGNAL \alu|Mux2~2_combout\ : std_logic;
SIGNAL \alu|Mux2~3_combout\ : std_logic;
SIGNAL \alu|Mux2~4_combout\ : std_logic;
SIGNAL \alu|Mult0~13\ : std_logic;
SIGNAL \alu|Mux2~1_combout\ : std_logic;
SIGNAL \br8|r5|out~q\ : std_logic;
SIGNAL \alu|Mux1~1_combout\ : std_logic;
SIGNAL \alu|Mux1~2_combout\ : std_logic;
SIGNAL \alu|Mux1~3_combout\ : std_logic;
SIGNAL \alu|Mult0~14\ : std_logic;
SIGNAL \alu|Mux1~0_combout\ : std_logic;
SIGNAL \br8|r6|out~q\ : std_logic;
SIGNAL \alu|Mux0~0_combout\ : std_logic;
SIGNAL \alu|Mult0~15\ : std_logic;
SIGNAL \alu|Mux0~1_combout\ : std_logic;
SIGNAL \br8|r7|out~q\ : std_logic;
SIGNAL \h0|out0~0_combout\ : std_logic;
SIGNAL \h0|out1~0_combout\ : std_logic;
SIGNAL \h0|out2~0_combout\ : std_logic;
SIGNAL \h0|out3~0_combout\ : std_logic;
SIGNAL \h0|out4~0_combout\ : std_logic;
SIGNAL \h0|out5~0_combout\ : std_logic;
SIGNAL \h0|out6~0_combout\ : std_logic;
SIGNAL \h4|out0~0_combout\ : std_logic;
SIGNAL \h4|out1~0_combout\ : std_logic;
SIGNAL \h4|out2~0_combout\ : std_logic;
SIGNAL \h4|out3~0_combout\ : std_logic;
SIGNAL \h4|out4~0_combout\ : std_logic;
SIGNAL \h4|out5~0_combout\ : std_logic;
SIGNAL \h4|out6~0_combout\ : std_logic;
SIGNAL \h5|out0~0_combout\ : std_logic;
SIGNAL \h5|out1~0_combout\ : std_logic;
SIGNAL \h5|out2~0_combout\ : std_logic;
SIGNAL \h5|out3~0_combout\ : std_logic;
SIGNAL \h5|out4~0_combout\ : std_logic;
SIGNAL \h5|out5~0_combout\ : std_logic;
SIGNAL \h5|out6~0_combout\ : std_logic;
SIGNAL \ALT_INV_SW[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_KEY[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_KEY[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_KEY[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[0]~input_o\ : std_logic;
SIGNAL \alu|ALT_INV_Mux3~3_combout\ : std_logic;
SIGNAL \alu|ALT_INV_Mux3~2_combout\ : std_logic;
SIGNAL \alu|ALT_INV_Mux1~3_combout\ : std_logic;
SIGNAL \alu|ALT_INV_Mux1~2_combout\ : std_logic;
SIGNAL \alu|ALT_INV_Mux1~1_combout\ : std_logic;
SIGNAL \alu|ALT_INV_Mux4~3_combout\ : std_logic;
SIGNAL \alu|ALT_INV_Mux4~2_combout\ : std_logic;
SIGNAL \alu|ALT_INV_Mux4~1_combout\ : std_logic;
SIGNAL \alu|ALT_INV_Mux5~4_combout\ : std_logic;
SIGNAL \alu|ALT_INV_Mux5~3_combout\ : std_logic;
SIGNAL \alu|ALT_INV_Mux5~2_combout\ : std_logic;
SIGNAL \alu|ALT_INV_Mux6~10_combout\ : std_logic;
SIGNAL \alu|ALT_INV_Mux6~9_combout\ : std_logic;
SIGNAL \alu|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \alu|ALT_INV_Mux2~5_combout\ : std_logic;
SIGNAL \alu|ALT_INV_Mux2~4_combout\ : std_logic;
SIGNAL \alu|ALT_INV_Mux2~3_combout\ : std_logic;
SIGNAL \alu|ALT_INV_Mux2~2_combout\ : std_logic;
SIGNAL \alu|ALT_INV_Mux7~3_combout\ : std_logic;
SIGNAL \alu|ALT_INV_Mux7~2_combout\ : std_logic;
SIGNAL \alu|ALT_INV_Mux7~1_combout\ : std_logic;
SIGNAL \alu|ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \alu|ALT_INV_Mux3~1_combout\ : std_logic;
SIGNAL \alu|ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \ALT_INV_rtl~11_combout\ : std_logic;
SIGNAL \alu|f1|FA3|u0|ALT_INV_m~0_combout\ : std_logic;
SIGNAL \alu|ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \ALT_INV_rtl~17_combout\ : std_logic;
SIGNAL \alu|ALT_INV_Out~0_combout\ : std_logic;
SIGNAL \alu|ALT_INV_Mux6~7_combout\ : std_logic;
SIGNAL \alu|ALT_INV_Mux6~6_combout\ : std_logic;
SIGNAL \alu|ALT_INV_Mux6~5_combout\ : std_logic;
SIGNAL \alu|ALT_INV_Mux6~4_combout\ : std_logic;
SIGNAL \alu|ALT_INV_Mux6~3_combout\ : std_logic;
SIGNAL \alu|ALT_INV_Mux6~2_combout\ : std_logic;
SIGNAL \alu|ALT_INV_Mux6~1_combout\ : std_logic;
SIGNAL \alu|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \alu|ALT_INV_WideOr0~combout\ : std_logic;
SIGNAL \alu|ALT_INV_ShiftLeft0~1_combout\ : std_logic;
SIGNAL \alu|ALT_INV_WideAnd0~0_combout\ : std_logic;
SIGNAL \alu|ALT_INV_ShiftLeft0~0_combout\ : std_logic;
SIGNAL \ALT_INV_rtl~0_combout\ : std_logic;
SIGNAL \h0|ALT_INV_out0~1_combout\ : std_logic;
SIGNAL \br8|r7|ALT_INV_out~q\ : std_logic;
SIGNAL \br8|r6|ALT_INV_out~q\ : std_logic;
SIGNAL \br8|r5|ALT_INV_out~q\ : std_logic;
SIGNAL \br8|r4|ALT_INV_out~q\ : std_logic;
SIGNAL \br8|r3|ALT_INV_out~_Duplicate_1_q\ : std_logic;
SIGNAL \br8|r2|ALT_INV_out~_Duplicate_1_q\ : std_logic;
SIGNAL \br8|r1|ALT_INV_out~_Duplicate_1_q\ : std_logic;
SIGNAL \br8|r0|ALT_INV_out~_Duplicate_1_q\ : std_logic;
SIGNAL \alu|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \alu|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \alu|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \alu|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \alu|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \alu|ALT_INV_Mult0~15\ : std_logic;
SIGNAL \alu|ALT_INV_Mult0~14\ : std_logic;
SIGNAL \alu|ALT_INV_Mult0~13\ : std_logic;
SIGNAL \alu|ALT_INV_Mult0~12\ : std_logic;
SIGNAL \alu|ALT_INV_Mult0~11\ : std_logic;
SIGNAL \alu|ALT_INV_Mult0~10\ : std_logic;
SIGNAL \alu|ALT_INV_Mult0~9\ : std_logic;
SIGNAL \alu|ALT_INV_Mult0~8_resulta\ : std_logic;

BEGIN

ww_SW <= SW;
ww_KEY <= KEY;
LEDR <= ww_LEDR;
HEX0 <= ww_HEX0;
HEX1 <= ww_HEX1;
HEX2 <= ww_HEX2;
HEX3 <= ww_HEX3;
HEX4 <= ww_HEX4;
HEX5 <= ww_HEX5;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\alu|Mult0~8_ACLR_bus\ <= (gnd & NOT \SW[9]~input_o\);

\alu|Mult0~8_CLK_bus\ <= (gnd & gnd & \KEY[0]~inputCLKENA0_outclk\);

\alu|Mult0~8_ENA_bus\ <= (vcc & vcc & vcc);

\alu|Mult0~8_AX_bus\ <= (\SW[3]~input_o\ & \SW[2]~input_o\ & \SW[1]~input_o\ & \SW[0]~input_o\);

\alu|Mult0~8_AY_bus\ <= (\alu|Mux4~0_combout\ & \alu|Mux5~1_combout\ & \alu|Mux6~8_combout\ & \alu|Mux7~0_combout\);

\alu|Mult0~8_resulta\ <= \alu|Mult0~8_RESULTA_bus\(0);
\alu|Mult0~9\ <= \alu|Mult0~8_RESULTA_bus\(1);
\alu|Mult0~10\ <= \alu|Mult0~8_RESULTA_bus\(2);
\alu|Mult0~11\ <= \alu|Mult0~8_RESULTA_bus\(3);
\alu|Mult0~12\ <= \alu|Mult0~8_RESULTA_bus\(4);
\alu|Mult0~13\ <= \alu|Mult0~8_RESULTA_bus\(5);
\alu|Mult0~14\ <= \alu|Mult0~8_RESULTA_bus\(6);
\alu|Mult0~15\ <= \alu|Mult0~8_RESULTA_bus\(7);
\alu|Mult0~16\ <= \alu|Mult0~8_RESULTA_bus\(8);
\alu|Mult0~17\ <= \alu|Mult0~8_RESULTA_bus\(9);
\alu|Mult0~18\ <= \alu|Mult0~8_RESULTA_bus\(10);
\alu|Mult0~19\ <= \alu|Mult0~8_RESULTA_bus\(11);
\alu|Mult0~20\ <= \alu|Mult0~8_RESULTA_bus\(12);
\alu|Mult0~21\ <= \alu|Mult0~8_RESULTA_bus\(13);
\alu|Mult0~22\ <= \alu|Mult0~8_RESULTA_bus\(14);
\alu|Mult0~23\ <= \alu|Mult0~8_RESULTA_bus\(15);
\alu|Mult0~24\ <= \alu|Mult0~8_RESULTA_bus\(16);
\alu|Mult0~25\ <= \alu|Mult0~8_RESULTA_bus\(17);
\alu|Mult0~26\ <= \alu|Mult0~8_RESULTA_bus\(18);
\alu|Mult0~27\ <= \alu|Mult0~8_RESULTA_bus\(19);
\alu|Mult0~28\ <= \alu|Mult0~8_RESULTA_bus\(20);
\alu|Mult0~29\ <= \alu|Mult0~8_RESULTA_bus\(21);
\alu|Mult0~30\ <= \alu|Mult0~8_RESULTA_bus\(22);
\alu|Mult0~31\ <= \alu|Mult0~8_RESULTA_bus\(23);
\alu|Mult0~32\ <= \alu|Mult0~8_RESULTA_bus\(24);
\alu|Mult0~33\ <= \alu|Mult0~8_RESULTA_bus\(25);
\alu|Mult0~34\ <= \alu|Mult0~8_RESULTA_bus\(26);
\alu|Mult0~35\ <= \alu|Mult0~8_RESULTA_bus\(27);
\alu|Mult0~36\ <= \alu|Mult0~8_RESULTA_bus\(28);
\alu|Mult0~37\ <= \alu|Mult0~8_RESULTA_bus\(29);
\alu|Mult0~38\ <= \alu|Mult0~8_RESULTA_bus\(30);
\alu|Mult0~39\ <= \alu|Mult0~8_RESULTA_bus\(31);
\alu|Mult0~40\ <= \alu|Mult0~8_RESULTA_bus\(32);
\alu|Mult0~41\ <= \alu|Mult0~8_RESULTA_bus\(33);
\alu|Mult0~42\ <= \alu|Mult0~8_RESULTA_bus\(34);
\alu|Mult0~43\ <= \alu|Mult0~8_RESULTA_bus\(35);
\alu|Mult0~44\ <= \alu|Mult0~8_RESULTA_bus\(36);
\alu|Mult0~45\ <= \alu|Mult0~8_RESULTA_bus\(37);
\alu|Mult0~46\ <= \alu|Mult0~8_RESULTA_bus\(38);
\alu|Mult0~47\ <= \alu|Mult0~8_RESULTA_bus\(39);
\alu|Mult0~48\ <= \alu|Mult0~8_RESULTA_bus\(40);
\alu|Mult0~49\ <= \alu|Mult0~8_RESULTA_bus\(41);
\alu|Mult0~50\ <= \alu|Mult0~8_RESULTA_bus\(42);
\alu|Mult0~51\ <= \alu|Mult0~8_RESULTA_bus\(43);
\alu|Mult0~52\ <= \alu|Mult0~8_RESULTA_bus\(44);
\alu|Mult0~53\ <= \alu|Mult0~8_RESULTA_bus\(45);
\alu|Mult0~54\ <= \alu|Mult0~8_RESULTA_bus\(46);
\alu|Mult0~55\ <= \alu|Mult0~8_RESULTA_bus\(47);
\alu|Mult0~56\ <= \alu|Mult0~8_RESULTA_bus\(48);
\alu|Mult0~57\ <= \alu|Mult0~8_RESULTA_bus\(49);
\alu|Mult0~58\ <= \alu|Mult0~8_RESULTA_bus\(50);
\alu|Mult0~59\ <= \alu|Mult0~8_RESULTA_bus\(51);
\alu|Mult0~60\ <= \alu|Mult0~8_RESULTA_bus\(52);
\alu|Mult0~61\ <= \alu|Mult0~8_RESULTA_bus\(53);
\alu|Mult0~62\ <= \alu|Mult0~8_RESULTA_bus\(54);
\alu|Mult0~63\ <= \alu|Mult0~8_RESULTA_bus\(55);
\alu|Mult0~64\ <= \alu|Mult0~8_RESULTA_bus\(56);
\alu|Mult0~65\ <= \alu|Mult0~8_RESULTA_bus\(57);
\alu|Mult0~66\ <= \alu|Mult0~8_RESULTA_bus\(58);
\alu|Mult0~67\ <= \alu|Mult0~8_RESULTA_bus\(59);
\alu|Mult0~68\ <= \alu|Mult0~8_RESULTA_bus\(60);
\alu|Mult0~69\ <= \alu|Mult0~8_RESULTA_bus\(61);
\alu|Mult0~70\ <= \alu|Mult0~8_RESULTA_bus\(62);
\alu|Mult0~71\ <= \alu|Mult0~8_RESULTA_bus\(63);
\ALT_INV_SW[9]~input_o\ <= NOT \SW[9]~input_o\;
\ALT_INV_KEY[2]~input_o\ <= NOT \KEY[2]~input_o\;
\ALT_INV_KEY[1]~input_o\ <= NOT \KEY[1]~input_o\;
\ALT_INV_KEY[3]~input_o\ <= NOT \KEY[3]~input_o\;
\ALT_INV_SW[3]~input_o\ <= NOT \SW[3]~input_o\;
\ALT_INV_SW[1]~input_o\ <= NOT \SW[1]~input_o\;
\ALT_INV_SW[2]~input_o\ <= NOT \SW[2]~input_o\;
\ALT_INV_SW[0]~input_o\ <= NOT \SW[0]~input_o\;
\alu|ALT_INV_Mux3~3_combout\ <= NOT \alu|Mux3~3_combout\;
\alu|ALT_INV_Mux3~2_combout\ <= NOT \alu|Mux3~2_combout\;
\alu|ALT_INV_Mux1~3_combout\ <= NOT \alu|Mux1~3_combout\;
\alu|ALT_INV_Mux1~2_combout\ <= NOT \alu|Mux1~2_combout\;
\alu|ALT_INV_Mux1~1_combout\ <= NOT \alu|Mux1~1_combout\;
\alu|ALT_INV_Mux4~3_combout\ <= NOT \alu|Mux4~3_combout\;
\alu|ALT_INV_Mux4~2_combout\ <= NOT \alu|Mux4~2_combout\;
\alu|ALT_INV_Mux4~1_combout\ <= NOT \alu|Mux4~1_combout\;
\alu|ALT_INV_Mux5~4_combout\ <= NOT \alu|Mux5~4_combout\;
\alu|ALT_INV_Mux5~3_combout\ <= NOT \alu|Mux5~3_combout\;
\alu|ALT_INV_Mux5~2_combout\ <= NOT \alu|Mux5~2_combout\;
\alu|ALT_INV_Mux6~10_combout\ <= NOT \alu|Mux6~10_combout\;
\alu|ALT_INV_Mux6~9_combout\ <= NOT \alu|Mux6~9_combout\;
\alu|ALT_INV_Mux0~0_combout\ <= NOT \alu|Mux0~0_combout\;
\alu|ALT_INV_Mux2~5_combout\ <= NOT \alu|Mux2~5_combout\;
\alu|ALT_INV_Mux2~4_combout\ <= NOT \alu|Mux2~4_combout\;
\alu|ALT_INV_Mux2~3_combout\ <= NOT \alu|Mux2~3_combout\;
\alu|ALT_INV_Mux2~2_combout\ <= NOT \alu|Mux2~2_combout\;
\alu|ALT_INV_Mux7~3_combout\ <= NOT \alu|Mux7~3_combout\;
\alu|ALT_INV_Mux7~2_combout\ <= NOT \alu|Mux7~2_combout\;
\alu|ALT_INV_Mux7~1_combout\ <= NOT \alu|Mux7~1_combout\;
\alu|ALT_INV_Mux2~0_combout\ <= NOT \alu|Mux2~0_combout\;
\alu|ALT_INV_Mux3~1_combout\ <= NOT \alu|Mux3~1_combout\;
\alu|ALT_INV_Mux3~0_combout\ <= NOT \alu|Mux3~0_combout\;
\ALT_INV_rtl~11_combout\ <= NOT \rtl~11_combout\;
\alu|f1|FA3|u0|ALT_INV_m~0_combout\ <= NOT \alu|f1|FA3|u0|m~0_combout\;
\alu|ALT_INV_Mux5~0_combout\ <= NOT \alu|Mux5~0_combout\;
\ALT_INV_rtl~17_combout\ <= NOT \rtl~17_combout\;
\alu|ALT_INV_Out~0_combout\ <= NOT \alu|Out~0_combout\;
\alu|ALT_INV_Mux6~7_combout\ <= NOT \alu|Mux6~7_combout\;
\alu|ALT_INV_Mux6~6_combout\ <= NOT \alu|Mux6~6_combout\;
\alu|ALT_INV_Mux6~5_combout\ <= NOT \alu|Mux6~5_combout\;
\alu|ALT_INV_Mux6~4_combout\ <= NOT \alu|Mux6~4_combout\;
\alu|ALT_INV_Mux6~3_combout\ <= NOT \alu|Mux6~3_combout\;
\alu|ALT_INV_Mux6~2_combout\ <= NOT \alu|Mux6~2_combout\;
\alu|ALT_INV_Mux6~1_combout\ <= NOT \alu|Mux6~1_combout\;
\alu|ALT_INV_Mux6~0_combout\ <= NOT \alu|Mux6~0_combout\;
\alu|ALT_INV_WideOr0~combout\ <= NOT \alu|WideOr0~combout\;
\alu|ALT_INV_ShiftLeft0~1_combout\ <= NOT \alu|ShiftLeft0~1_combout\;
\alu|ALT_INV_WideAnd0~0_combout\ <= NOT \alu|WideAnd0~0_combout\;
\alu|ALT_INV_ShiftLeft0~0_combout\ <= NOT \alu|ShiftLeft0~0_combout\;
\ALT_INV_rtl~0_combout\ <= NOT \rtl~0_combout\;
\h0|ALT_INV_out0~1_combout\ <= NOT \h0|out0~1_combout\;
\br8|r7|ALT_INV_out~q\ <= NOT \br8|r7|out~q\;
\br8|r6|ALT_INV_out~q\ <= NOT \br8|r6|out~q\;
\br8|r5|ALT_INV_out~q\ <= NOT \br8|r5|out~q\;
\br8|r4|ALT_INV_out~q\ <= NOT \br8|r4|out~q\;
\br8|r3|ALT_INV_out~_Duplicate_1_q\ <= NOT \br8|r3|out~_Duplicate_1_q\;
\br8|r2|ALT_INV_out~_Duplicate_1_q\ <= NOT \br8|r2|out~_Duplicate_1_q\;
\br8|r1|ALT_INV_out~_Duplicate_1_q\ <= NOT \br8|r1|out~_Duplicate_1_q\;
\br8|r0|ALT_INV_out~_Duplicate_1_q\ <= NOT \br8|r0|out~_Duplicate_1_q\;
\alu|ALT_INV_Add0~17_sumout\ <= NOT \alu|Add0~17_sumout\;
\alu|ALT_INV_Add0~13_sumout\ <= NOT \alu|Add0~13_sumout\;
\alu|ALT_INV_Add0~9_sumout\ <= NOT \alu|Add0~9_sumout\;
\alu|ALT_INV_Add0~5_sumout\ <= NOT \alu|Add0~5_sumout\;
\alu|ALT_INV_Add0~1_sumout\ <= NOT \alu|Add0~1_sumout\;
\alu|ALT_INV_Mult0~15\ <= NOT \alu|Mult0~15\;
\alu|ALT_INV_Mult0~14\ <= NOT \alu|Mult0~14\;
\alu|ALT_INV_Mult0~13\ <= NOT \alu|Mult0~13\;
\alu|ALT_INV_Mult0~12\ <= NOT \alu|Mult0~12\;
\alu|ALT_INV_Mult0~11\ <= NOT \alu|Mult0~11\;
\alu|ALT_INV_Mult0~10\ <= NOT \alu|Mult0~10\;
\alu|ALT_INV_Mult0~9\ <= NOT \alu|Mult0~9\;
\alu|ALT_INV_Mult0~8_resulta\ <= NOT \alu|Mult0~8_resulta\;

-- Location: IOOBUF_X52_Y0_N2
\LEDR[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \br8|r0|out~_Duplicate_1_q\,
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
	i => \br8|r1|out~_Duplicate_1_q\,
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
	i => \br8|r2|out~_Duplicate_1_q\,
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
	i => \br8|r3|out~_Duplicate_1_q\,
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
	i => \br8|r4|out~q\,
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
	i => \br8|r5|out~q\,
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
	i => \br8|r6|out~q\,
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
	i => \br8|r7|out~q\,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => VCC,
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
	i => \h4|out0~0_combout\,
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
	i => \h4|out1~0_combout\,
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
	i => \h4|out2~0_combout\,
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
	i => \h4|out3~0_combout\,
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
	i => \h4|out4~0_combout\,
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
	i => \h4|out5~0_combout\,
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
	i => \h4|out6~0_combout\,
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
	i => \h5|out0~0_combout\,
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
	i => \h5|out1~0_combout\,
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
	i => \h5|out2~0_combout\,
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
	i => \h5|out3~0_combout\,
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
	i => \h5|out4~0_combout\,
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
	i => \h5|out5~0_combout\,
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
	i => \h5|out6~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(6));

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

-- Location: LABCELL_X57_Y4_N30
\alu|Mux6~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|Mux6~2_combout\ = (!\KEY[1]~input_o\ & !\KEY[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110000000000110011000000000011001100000000001100110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_KEY[1]~input_o\,
	datad => \ALT_INV_KEY[3]~input_o\,
	combout => \alu|Mux6~2_combout\);

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

-- Location: LABCELL_X57_Y4_N3
\alu|Mux6~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|Mux6~3_combout\ = (\KEY[2]~input_o\ & (!\SW[3]~input_o\ & !\SW[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010000000000010001000000000001000100000000000100010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[2]~input_o\,
	datab => \ALT_INV_SW[3]~input_o\,
	datad => \ALT_INV_SW[2]~input_o\,
	combout => \alu|Mux6~3_combout\);

-- Location: LABCELL_X57_Y4_N42
\alu|Mux6~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|Mux6~4_combout\ = ( \alu|Mux6~3_combout\ & ( \br8|r1|out~_Duplicate_1_q\ & ( (!\SW[1]~input_o\ & (\alu|Mux6~2_combout\ & ((!\SW[0]~input_o\) # (\br8|r0|out~_Duplicate_1_q\)))) ) ) ) # ( \alu|Mux6~3_combout\ & ( !\br8|r1|out~_Duplicate_1_q\ & ( 
-- (!\SW[1]~input_o\ & (\alu|Mux6~2_combout\ & (\SW[0]~input_o\ & \br8|r0|out~_Duplicate_1_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000001000000000000000000010000000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[1]~input_o\,
	datab => \alu|ALT_INV_Mux6~2_combout\,
	datac => \ALT_INV_SW[0]~input_o\,
	datad => \br8|r0|ALT_INV_out~_Duplicate_1_q\,
	datae => \alu|ALT_INV_Mux6~3_combout\,
	dataf => \br8|r1|ALT_INV_out~_Duplicate_1_q\,
	combout => \alu|Mux6~4_combout\);

-- Location: LABCELL_X55_Y4_N45
\alu|Mux6~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|Mux6~5_combout\ = ( \KEY[3]~input_o\ & ( (\KEY[1]~input_o\ & (!\KEY[2]~input_o\ & (!\SW[1]~input_o\ $ (!\br8|r1|out~_Duplicate_1_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000110000000000000011000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[1]~input_o\,
	datab => \br8|r1|ALT_INV_out~_Duplicate_1_q\,
	datac => \ALT_INV_KEY[1]~input_o\,
	datad => \ALT_INV_KEY[2]~input_o\,
	dataf => \ALT_INV_KEY[3]~input_o\,
	combout => \alu|Mux6~5_combout\);

-- Location: LABCELL_X57_Y4_N33
\alu|Mux6~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|Mux6~7_combout\ = ( !\KEY[2]~input_o\ & ( (!\KEY[3]~input_o\ & (\KEY[1]~input_o\ & (!\SW[3]~input_o\ & !\SW[2]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000000000001000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[3]~input_o\,
	datab => \ALT_INV_KEY[1]~input_o\,
	datac => \ALT_INV_SW[3]~input_o\,
	datad => \ALT_INV_SW[2]~input_o\,
	dataf => \ALT_INV_KEY[2]~input_o\,
	combout => \alu|Mux6~7_combout\);

-- Location: LABCELL_X55_Y4_N9
\alu|Mux6~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|Mux6~1_combout\ = ( \KEY[3]~input_o\ & ( (\KEY[2]~input_o\ & \KEY[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[2]~input_o\,
	datab => \ALT_INV_KEY[1]~input_o\,
	dataf => \ALT_INV_KEY[3]~input_o\,
	combout => \alu|Mux6~1_combout\);

-- Location: LABCELL_X53_Y4_N48
\alu|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|Mux5~0_combout\ = ( \br8|r3|out~_Duplicate_1_q\ & ( (!\SW[1]~input_o\ & ((\SW[0]~input_o\) # (\br8|r2|out~_Duplicate_1_q\))) ) ) # ( !\br8|r3|out~_Duplicate_1_q\ & ( (!\SW[1]~input_o\ & (\br8|r2|out~_Duplicate_1_q\ & !\SW[0]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000000000001000100000000000100010101010100010001010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[1]~input_o\,
	datab => \br8|r2|ALT_INV_out~_Duplicate_1_q\,
	datad => \ALT_INV_SW[0]~input_o\,
	dataf => \br8|r3|ALT_INV_out~_Duplicate_1_q\,
	combout => \alu|Mux5~0_combout\);

-- Location: LABCELL_X57_Y4_N27
\h0|out0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \h0|out0~1_combout\ = (!\SW[3]~input_o\ & !\SW[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_SW[3]~input_o\,
	datad => \ALT_INV_SW[2]~input_o\,
	combout => \h0|out0~1_combout\);

-- Location: LABCELL_X56_Y4_N15
\alu|Out~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|Out~0_combout\ = ( \SW[2]~input_o\ & ( !\br8|r2|out~_Duplicate_1_q\ ) ) # ( !\SW[2]~input_o\ & ( \br8|r2|out~_Duplicate_1_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \br8|r2|ALT_INV_out~_Duplicate_1_q\,
	dataf => \ALT_INV_SW[2]~input_o\,
	combout => \alu|Out~0_combout\);

-- Location: LABCELL_X53_Y4_N42
\alu|Mux5~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|Mux5~4_combout\ = ( \alu|Out~0_combout\ & ( (!\KEY[3]~input_o\ & ((!\KEY[1]~input_o\) # ((\alu|Mux5~0_combout\ & \h0|out0~1_combout\)))) # (\KEY[3]~input_o\ & (\KEY[1]~input_o\)) ) ) # ( !\alu|Out~0_combout\ & ( (!\KEY[3]~input_o\ & 
-- ((!\KEY[1]~input_o\) # ((\alu|Mux5~0_combout\ & \h0|out0~1_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001010100010001000101010011001100110111001100110011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[3]~input_o\,
	datab => \ALT_INV_KEY[1]~input_o\,
	datac => \alu|ALT_INV_Mux5~0_combout\,
	datad => \h0|ALT_INV_out0~1_combout\,
	dataf => \alu|ALT_INV_Out~0_combout\,
	combout => \alu|Mux5~4_combout\);

-- Location: LABCELL_X56_Y4_N30
\alu|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|Add0~1_sumout\ = SUM(( \br8|r0|out~_Duplicate_1_q\ ) + ( \SW[0]~input_o\ ) + ( !VCC ))
-- \alu|Add0~2\ = CARRY(( \br8|r0|out~_Duplicate_1_q\ ) + ( \SW[0]~input_o\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_SW[0]~input_o\,
	datad => \br8|r0|ALT_INV_out~_Duplicate_1_q\,
	cin => GND,
	sumout => \alu|Add0~1_sumout\,
	cout => \alu|Add0~2\);

-- Location: LABCELL_X55_Y4_N12
\alu|Mux5~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|Mux5~2_combout\ = ( \SW[1]~input_o\ & ( \alu|Add0~1_sumout\ & ( (\alu|Mux6~1_combout\ & (!\alu|Out~0_combout\ $ (!\br8|r1|out~_Duplicate_1_q\))) ) ) ) # ( !\SW[1]~input_o\ & ( \alu|Add0~1_sumout\ & ( (\alu|Out~0_combout\ & \alu|Mux6~1_combout\) ) ) ) 
-- # ( \SW[1]~input_o\ & ( !\alu|Add0~1_sumout\ & ( (\alu|Mux6~1_combout\ & (!\alu|Out~0_combout\ $ (((!\br8|r0|out~_Duplicate_1_q\ & !\br8|r1|out~_Duplicate_1_q\))))) ) ) ) # ( !\SW[1]~input_o\ & ( !\alu|Add0~1_sumout\ & ( (\alu|Mux6~1_combout\ & 
-- (!\alu|Out~0_combout\ $ (((!\br8|r0|out~_Duplicate_1_q\) # (!\br8|r1|out~_Duplicate_1_q\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000110000001100000101000000101000001010000010100001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \alu|ALT_INV_Out~0_combout\,
	datab => \br8|r0|ALT_INV_out~_Duplicate_1_q\,
	datac => \alu|ALT_INV_Mux6~1_combout\,
	datad => \br8|r1|ALT_INV_out~_Duplicate_1_q\,
	datae => \ALT_INV_SW[1]~input_o\,
	dataf => \alu|ALT_INV_Add0~1_sumout\,
	combout => \alu|Mux5~2_combout\);

-- Location: LABCELL_X57_Y4_N36
\alu|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|Mux6~0_combout\ = (\KEY[2]~input_o\ & \KEY[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_KEY[2]~input_o\,
	datad => \ALT_INV_KEY[3]~input_o\,
	combout => \alu|Mux6~0_combout\);

-- Location: LABCELL_X55_Y4_N42
\rtl~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \rtl~17_combout\ = ( \SW[0]~input_o\ & ( (!\SW[1]~input_o\ & \br8|r1|out~_Duplicate_1_q\) ) ) # ( !\SW[0]~input_o\ & ( (!\SW[1]~input_o\ & (\br8|r2|out~_Duplicate_1_q\)) # (\SW[1]~input_o\ & ((\br8|r0|out~_Duplicate_1_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001011111000010100101111100100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[1]~input_o\,
	datab => \br8|r1|ALT_INV_out~_Duplicate_1_q\,
	datac => \br8|r2|ALT_INV_out~_Duplicate_1_q\,
	datad => \br8|r0|ALT_INV_out~_Duplicate_1_q\,
	dataf => \ALT_INV_SW[0]~input_o\,
	combout => \rtl~17_combout\);

-- Location: LABCELL_X56_Y4_N33
\alu|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|Add0~5_sumout\ = SUM(( \br8|r1|out~_Duplicate_1_q\ ) + ( \SW[1]~input_o\ ) + ( \alu|Add0~2\ ))
-- \alu|Add0~6\ = CARRY(( \br8|r1|out~_Duplicate_1_q\ ) + ( \SW[1]~input_o\ ) + ( \alu|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_SW[1]~input_o\,
	datad => \br8|r1|ALT_INV_out~_Duplicate_1_q\,
	cin => \alu|Add0~2\,
	sumout => \alu|Add0~5_sumout\,
	cout => \alu|Add0~6\);

-- Location: LABCELL_X56_Y4_N36
\alu|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|Add0~9_sumout\ = SUM(( \br8|r2|out~_Duplicate_1_q\ ) + ( \SW[2]~input_o\ ) + ( \alu|Add0~6\ ))
-- \alu|Add0~10\ = CARRY(( \br8|r2|out~_Duplicate_1_q\ ) + ( \SW[2]~input_o\ ) + ( \alu|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_SW[2]~input_o\,
	datad => \br8|r2|ALT_INV_out~_Duplicate_1_q\,
	cin => \alu|Add0~6\,
	sumout => \alu|Add0~9_sumout\,
	cout => \alu|Add0~10\);

-- Location: LABCELL_X55_Y4_N0
\alu|Mux5~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|Mux5~3_combout\ = ( \alu|Add0~9_sumout\ & ( \KEY[3]~input_o\ & ( \alu|Mux6~0_combout\ ) ) ) # ( \alu|Add0~9_sumout\ & ( !\KEY[3]~input_o\ & ( ((\KEY[2]~input_o\ & (\h0|out0~1_combout\ & \rtl~17_combout\))) # (\alu|Mux6~0_combout\) ) ) ) # ( 
-- !\alu|Add0~9_sumout\ & ( !\KEY[3]~input_o\ & ( (\KEY[2]~input_o\ & (\h0|out0~1_combout\ & \rtl~17_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101001100110011011100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[2]~input_o\,
	datab => \alu|ALT_INV_Mux6~0_combout\,
	datac => \h0|ALT_INV_out0~1_combout\,
	datad => \ALT_INV_rtl~17_combout\,
	datae => \alu|ALT_INV_Add0~9_sumout\,
	dataf => \ALT_INV_KEY[3]~input_o\,
	combout => \alu|Mux5~3_combout\);

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

-- Location: DSP_X54_Y4_N0
\alu|Mult0~8\ : cyclonev_mac
-- pragma translate_off
GENERIC MAP (
	accumulate_clock => "none",
	ax_clock => "none",
	ax_width => 4,
	ay_scan_in_clock => "0",
	ay_scan_in_width => 4,
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
	aclr => \alu|Mult0~8_ACLR_bus\,
	clk => \alu|Mult0~8_CLK_bus\,
	ena => \alu|Mult0~8_ENA_bus\,
	ax => \alu|Mult0~8_AX_bus\,
	ay => \alu|Mult0~8_AY_bus\,
	resulta => \alu|Mult0~8_RESULTA_bus\);

-- Location: LABCELL_X55_Y4_N33
\alu|Mux5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|Mux5~1_combout\ = ( \alu|Mux5~3_combout\ & ( \alu|Mult0~10\ & ( ((!\KEY[1]~input_o\) # ((\alu|Mux5~4_combout\ & !\KEY[2]~input_o\))) # (\alu|Mux5~2_combout\) ) ) ) # ( !\alu|Mux5~3_combout\ & ( \alu|Mult0~10\ & ( ((\alu|Mux5~4_combout\ & 
-- !\KEY[2]~input_o\)) # (\alu|Mux5~2_combout\) ) ) ) # ( \alu|Mux5~3_combout\ & ( !\alu|Mult0~10\ & ( ((!\KEY[1]~input_o\) # ((\alu|Mux5~4_combout\ & !\KEY[2]~input_o\))) # (\alu|Mux5~2_combout\) ) ) ) # ( !\alu|Mux5~3_combout\ & ( !\alu|Mult0~10\ & ( 
-- ((\alu|Mux5~4_combout\ & (\KEY[1]~input_o\ & !\KEY[2]~input_o\))) # (\alu|Mux5~2_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011011100110011111101111111001101110111001100111111011111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \alu|ALT_INV_Mux5~4_combout\,
	datab => \alu|ALT_INV_Mux5~2_combout\,
	datac => \ALT_INV_KEY[1]~input_o\,
	datad => \ALT_INV_KEY[2]~input_o\,
	datae => \alu|ALT_INV_Mux5~3_combout\,
	dataf => \alu|ALT_INV_Mult0~10\,
	combout => \alu|Mux5~1_combout\);

-- Location: FF_X55_Y4_N5
\br8|r2|out~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \alu|Mux5~1_combout\,
	clrn => \SW[9]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \br8|r2|out~_Duplicate_1_q\);

-- Location: LABCELL_X56_Y4_N6
\alu|f1|FA3|u0|m~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|f1|FA3|u0|m~0_combout\ = ( \br8|r0|out~_Duplicate_1_q\ & ( \alu|Add0~1_sumout\ & ( (!\br8|r2|out~_Duplicate_1_q\ & (\SW[1]~input_o\ & (\br8|r1|out~_Duplicate_1_q\ & \SW[2]~input_o\))) # (\br8|r2|out~_Duplicate_1_q\ & (((\SW[1]~input_o\ & 
-- \br8|r1|out~_Duplicate_1_q\)) # (\SW[2]~input_o\))) ) ) ) # ( !\br8|r0|out~_Duplicate_1_q\ & ( \alu|Add0~1_sumout\ & ( (!\br8|r2|out~_Duplicate_1_q\ & (\SW[1]~input_o\ & (\br8|r1|out~_Duplicate_1_q\ & \SW[2]~input_o\))) # (\br8|r2|out~_Duplicate_1_q\ & 
-- (((\SW[1]~input_o\ & \br8|r1|out~_Duplicate_1_q\)) # (\SW[2]~input_o\))) ) ) ) # ( \br8|r0|out~_Duplicate_1_q\ & ( !\alu|Add0~1_sumout\ & ( (!\br8|r2|out~_Duplicate_1_q\ & (\SW[2]~input_o\ & ((\br8|r1|out~_Duplicate_1_q\) # (\SW[1]~input_o\)))) # 
-- (\br8|r2|out~_Duplicate_1_q\ & (((\SW[2]~input_o\) # (\br8|r1|out~_Duplicate_1_q\)) # (\SW[1]~input_o\))) ) ) ) # ( !\br8|r0|out~_Duplicate_1_q\ & ( !\alu|Add0~1_sumout\ & ( (!\br8|r2|out~_Duplicate_1_q\ & (\SW[1]~input_o\ & (\br8|r1|out~_Duplicate_1_q\ & 
-- \SW[2]~input_o\))) # (\br8|r2|out~_Duplicate_1_q\ & (((\SW[1]~input_o\ & \br8|r1|out~_Duplicate_1_q\)) # (\SW[2]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101010111000101010111111100000001010101110000000101010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \br8|r2|ALT_INV_out~_Duplicate_1_q\,
	datab => \ALT_INV_SW[1]~input_o\,
	datac => \br8|r1|ALT_INV_out~_Duplicate_1_q\,
	datad => \ALT_INV_SW[2]~input_o\,
	datae => \br8|r0|ALT_INV_out~_Duplicate_1_q\,
	dataf => \alu|ALT_INV_Add0~1_sumout\,
	combout => \alu|f1|FA3|u0|m~0_combout\);

-- Location: LABCELL_X56_Y4_N3
\alu|Mux4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|Mux4~1_combout\ = ( \alu|f1|FA3|u0|m~0_combout\ & ( (\alu|Mux6~1_combout\ & (!\SW[3]~input_o\ $ (\br8|r3|out~_Duplicate_1_q\))) ) ) # ( !\alu|f1|FA3|u0|m~0_combout\ & ( (\alu|Mux6~1_combout\ & (!\SW[3]~input_o\ $ (!\br8|r3|out~_Duplicate_1_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010101010000000001010101000001010000000001010101000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \alu|ALT_INV_Mux6~1_combout\,
	datac => \ALT_INV_SW[3]~input_o\,
	datad => \br8|r3|ALT_INV_out~_Duplicate_1_q\,
	dataf => \alu|f1|FA3|u0|ALT_INV_m~0_combout\,
	combout => \alu|Mux4~1_combout\);

-- Location: LABCELL_X57_Y4_N48
\rtl~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \rtl~11_combout\ = ( \br8|r3|out~_Duplicate_1_q\ & ( \br8|r1|out~_Duplicate_1_q\ & ( (!\SW[0]~input_o\) # ((!\SW[1]~input_o\ & ((\br8|r2|out~_Duplicate_1_q\))) # (\SW[1]~input_o\ & (\br8|r0|out~_Duplicate_1_q\))) ) ) ) # ( !\br8|r3|out~_Duplicate_1_q\ & ( 
-- \br8|r1|out~_Duplicate_1_q\ & ( (!\SW[1]~input_o\ & (((\SW[0]~input_o\ & \br8|r2|out~_Duplicate_1_q\)))) # (\SW[1]~input_o\ & (((!\SW[0]~input_o\)) # (\br8|r0|out~_Duplicate_1_q\))) ) ) ) # ( \br8|r3|out~_Duplicate_1_q\ & ( !\br8|r1|out~_Duplicate_1_q\ & 
-- ( (!\SW[1]~input_o\ & (((!\SW[0]~input_o\) # (\br8|r2|out~_Duplicate_1_q\)))) # (\SW[1]~input_o\ & (\br8|r0|out~_Duplicate_1_q\ & (\SW[0]~input_o\))) ) ) ) # ( !\br8|r3|out~_Duplicate_1_q\ & ( !\br8|r1|out~_Duplicate_1_q\ & ( (\SW[0]~input_o\ & 
-- ((!\SW[1]~input_o\ & ((\br8|r2|out~_Duplicate_1_q\))) # (\SW[1]~input_o\ & (\br8|r0|out~_Duplicate_1_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100001011101000011010101101010001010110111111000111111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[1]~input_o\,
	datab => \br8|r0|ALT_INV_out~_Duplicate_1_q\,
	datac => \ALT_INV_SW[0]~input_o\,
	datad => \br8|r2|ALT_INV_out~_Duplicate_1_q\,
	datae => \br8|r3|ALT_INV_out~_Duplicate_1_q\,
	dataf => \br8|r1|ALT_INV_out~_Duplicate_1_q\,
	combout => \rtl~11_combout\);

-- Location: LABCELL_X57_Y4_N12
\alu|Mux4~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|Mux4~2_combout\ = ( \br8|r3|out~_Duplicate_1_q\ & ( \rtl~11_combout\ & ( (!\KEY[3]~input_o\ & (!\h0|out0~1_combout\ & (\KEY[2]~input_o\))) # (\KEY[3]~input_o\ & (((!\KEY[2]~input_o\ & \SW[3]~input_o\)))) ) ) ) # ( !\br8|r3|out~_Duplicate_1_q\ & ( 
-- \rtl~11_combout\ & ( (!\KEY[3]~input_o\ & (!\h0|out0~1_combout\ & (\KEY[2]~input_o\))) # (\KEY[3]~input_o\ & (((!\KEY[2]~input_o\ & !\SW[3]~input_o\)))) ) ) ) # ( \br8|r3|out~_Duplicate_1_q\ & ( !\rtl~11_combout\ & ( (!\KEY[3]~input_o\ & 
-- (\KEY[2]~input_o\)) # (\KEY[3]~input_o\ & (!\KEY[2]~input_o\ & \SW[3]~input_o\)) ) ) ) # ( !\br8|r3|out~_Duplicate_1_q\ & ( !\rtl~11_combout\ & ( (!\KEY[3]~input_o\ & (\KEY[2]~input_o\)) # (\KEY[3]~input_o\ & (!\KEY[2]~input_o\ & !\SW[3]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110000001100000011000011110000111000000010000000100000111000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \h0|ALT_INV_out0~1_combout\,
	datab => \ALT_INV_KEY[3]~input_o\,
	datac => \ALT_INV_KEY[2]~input_o\,
	datad => \ALT_INV_SW[3]~input_o\,
	datae => \br8|r3|ALT_INV_out~_Duplicate_1_q\,
	dataf => \ALT_INV_rtl~11_combout\,
	combout => \alu|Mux4~2_combout\);

-- Location: LABCELL_X57_Y4_N18
\alu|ShiftLeft0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|ShiftLeft0~1_combout\ = ( !\SW[2]~input_o\ & ( (!\SW[1]~input_o\ & (!\SW[3]~input_o\ & !\SW[0]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000000000000000000010000000100000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[1]~input_o\,
	datab => \ALT_INV_SW[3]~input_o\,
	datac => \ALT_INV_SW[0]~input_o\,
	datae => \ALT_INV_SW[2]~input_o\,
	combout => \alu|ShiftLeft0~1_combout\);

-- Location: LABCELL_X56_Y4_N39
\alu|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|Add0~13_sumout\ = SUM(( \br8|r3|out~_Duplicate_1_q\ ) + ( \SW[3]~input_o\ ) + ( \alu|Add0~10\ ))
-- \alu|Add0~14\ = CARRY(( \br8|r3|out~_Duplicate_1_q\ ) + ( \SW[3]~input_o\ ) + ( \alu|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_SW[3]~input_o\,
	datad => \br8|r3|ALT_INV_out~_Duplicate_1_q\,
	cin => \alu|Add0~10\,
	sumout => \alu|Add0~13_sumout\,
	cout => \alu|Add0~14\);

-- Location: LABCELL_X57_Y4_N54
\alu|Mux4~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|Mux4~3_combout\ = ( \br8|r3|out~_Duplicate_1_q\ & ( \alu|Add0~13_sumout\ & ( (!\KEY[2]~input_o\ & ((!\KEY[1]~input_o\ & ((!\KEY[3]~input_o\))) # (\KEY[1]~input_o\ & ((\KEY[3]~input_o\) # (\alu|ShiftLeft0~1_combout\))))) # (\KEY[2]~input_o\ & 
-- (!\KEY[1]~input_o\)) ) ) ) # ( !\br8|r3|out~_Duplicate_1_q\ & ( \alu|Add0~13_sumout\ & ( !\KEY[1]~input_o\ $ (((!\KEY[2]~input_o\ & \KEY[3]~input_o\))) ) ) ) # ( \br8|r3|out~_Duplicate_1_q\ & ( !\alu|Add0~13_sumout\ & ( (!\KEY[1]~input_o\ & 
-- (((!\KEY[3]~input_o\)))) # (\KEY[1]~input_o\ & (!\KEY[2]~input_o\ & ((\KEY[3]~input_o\) # (\alu|ShiftLeft0~1_combout\)))) ) ) ) # ( !\br8|r3|out~_Duplicate_1_q\ & ( !\alu|Add0~13_sumout\ & ( (!\KEY[1]~input_o\ & ((!\KEY[3]~input_o\))) # (\KEY[1]~input_o\ 
-- & (!\KEY[2]~input_o\ & \KEY[3]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110000100010110011100010001011001100011001101100111001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[2]~input_o\,
	datab => \ALT_INV_KEY[1]~input_o\,
	datac => \alu|ALT_INV_ShiftLeft0~1_combout\,
	datad => \ALT_INV_KEY[3]~input_o\,
	datae => \br8|r3|ALT_INV_out~_Duplicate_1_q\,
	dataf => \alu|ALT_INV_Add0~13_sumout\,
	combout => \alu|Mux4~3_combout\);

-- Location: LABCELL_X55_Y4_N54
\alu|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|Mux4~0_combout\ = ( \alu|Mux4~3_combout\ & ( \alu|Mult0~11\ & ( (!\alu|Mux4~2_combout\) # (\alu|Mux4~1_combout\) ) ) ) # ( !\alu|Mux4~3_combout\ & ( \alu|Mult0~11\ & ( \alu|Mux4~1_combout\ ) ) ) # ( \alu|Mux4~3_combout\ & ( !\alu|Mult0~11\ & ( 
-- ((!\alu|Mux4~2_combout\ & ((\KEY[1]~input_o\) # (\KEY[2]~input_o\)))) # (\alu|Mux4~1_combout\) ) ) ) # ( !\alu|Mux4~3_combout\ & ( !\alu|Mult0~11\ & ( \alu|Mux4~1_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111011111110000111100001111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[2]~input_o\,
	datab => \ALT_INV_KEY[1]~input_o\,
	datac => \alu|ALT_INV_Mux4~1_combout\,
	datad => \alu|ALT_INV_Mux4~2_combout\,
	datae => \alu|ALT_INV_Mux4~3_combout\,
	dataf => \alu|ALT_INV_Mult0~11\,
	combout => \alu|Mux4~0_combout\);

-- Location: FF_X55_Y4_N14
\br8|r3|out~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \alu|Mux4~0_combout\,
	clrn => \SW[9]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \br8|r3|out~_Duplicate_1_q\);

-- Location: LABCELL_X57_Y4_N24
\alu|Mux6~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|Mux6~6_combout\ = ( \br8|r2|out~_Duplicate_1_q\ & ( (!\SW[1]~input_o\ & (((\SW[0]~input_o\)) # (\br8|r1|out~_Duplicate_1_q\))) # (\SW[1]~input_o\ & (((!\SW[0]~input_o\ & \br8|r3|out~_Duplicate_1_q\)))) ) ) # ( !\br8|r2|out~_Duplicate_1_q\ & ( 
-- (!\SW[0]~input_o\ & ((!\SW[1]~input_o\ & (\br8|r1|out~_Duplicate_1_q\)) # (\SW[1]~input_o\ & ((\br8|r3|out~_Duplicate_1_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001110000010000000111000001001100011111000100110001111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \br8|r1|ALT_INV_out~_Duplicate_1_q\,
	datab => \ALT_INV_SW[1]~input_o\,
	datac => \ALT_INV_SW[0]~input_o\,
	datad => \br8|r3|ALT_INV_out~_Duplicate_1_q\,
	dataf => \br8|r2|ALT_INV_out~_Duplicate_1_q\,
	combout => \alu|Mux6~6_combout\);

-- Location: LABCELL_X56_Y4_N0
\alu|Mux6~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|Mux6~9_combout\ = ( \alu|Add0~1_sumout\ & ( (\alu|Mux6~1_combout\ & (!\SW[1]~input_o\ $ (!\br8|r1|out~_Duplicate_1_q\))) ) ) # ( !\alu|Add0~1_sumout\ & ( (\alu|Mux6~1_combout\ & (!\SW[1]~input_o\ $ (!\br8|r0|out~_Duplicate_1_q\ $ 
-- (\br8|r1|out~_Duplicate_1_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010001000001000101000100000100010001010001000001000101000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \alu|ALT_INV_Mux6~1_combout\,
	datab => \ALT_INV_SW[1]~input_o\,
	datac => \br8|r0|ALT_INV_out~_Duplicate_1_q\,
	datad => \br8|r1|ALT_INV_out~_Duplicate_1_q\,
	dataf => \alu|ALT_INV_Add0~1_sumout\,
	combout => \alu|Mux6~9_combout\);

-- Location: LABCELL_X57_Y4_N6
\alu|Mux6~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|Mux6~10_combout\ = ( \alu|Add0~5_sumout\ & ( !\alu|Mux6~9_combout\ & ( (!\alu|Mux6~7_combout\ & (((!\alu|Mux6~0_combout\)) # (\KEY[1]~input_o\))) # (\alu|Mux6~7_combout\ & (!\alu|Mux6~6_combout\ & ((!\alu|Mux6~0_combout\) # (\KEY[1]~input_o\)))) ) ) 
-- ) # ( !\alu|Add0~5_sumout\ & ( !\alu|Mux6~9_combout\ & ( (!\alu|Mux6~7_combout\) # (!\alu|Mux6~6_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101011111010111110100011001000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \alu|ALT_INV_Mux6~7_combout\,
	datab => \ALT_INV_KEY[1]~input_o\,
	datac => \alu|ALT_INV_Mux6~6_combout\,
	datad => \alu|ALT_INV_Mux6~0_combout\,
	datae => \alu|ALT_INV_Add0~5_sumout\,
	dataf => \alu|ALT_INV_Mux6~9_combout\,
	combout => \alu|Mux6~10_combout\);

-- Location: LABCELL_X55_Y4_N24
\alu|Mux6~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|Mux6~8_combout\ = ( \alu|Mux6~10_combout\ & ( \alu|Mult0~9\ & ( (((\alu|Mux6~2_combout\ & !\KEY[2]~input_o\)) # (\alu|Mux6~5_combout\)) # (\alu|Mux6~4_combout\) ) ) ) # ( !\alu|Mux6~10_combout\ & ( \alu|Mult0~9\ ) ) # ( \alu|Mux6~10_combout\ & ( 
-- !\alu|Mult0~9\ & ( (\alu|Mux6~5_combout\) # (\alu|Mux6~4_combout\) ) ) ) # ( !\alu|Mux6~10_combout\ & ( !\alu|Mult0~9\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111010101011111111111111111111111110111010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \alu|ALT_INV_Mux6~4_combout\,
	datab => \alu|ALT_INV_Mux6~2_combout\,
	datac => \ALT_INV_KEY[2]~input_o\,
	datad => \alu|ALT_INV_Mux6~5_combout\,
	datae => \alu|ALT_INV_Mux6~10_combout\,
	dataf => \alu|ALT_INV_Mult0~9\,
	combout => \alu|Mux6~8_combout\);

-- Location: FF_X55_Y4_N50
\br8|r1|out~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \alu|Mux6~8_combout\,
	clrn => \SW[9]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \br8|r1|out~_Duplicate_1_q\);

-- Location: LABCELL_X55_Y4_N51
\rtl~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \rtl~0_combout\ = ( \SW[1]~input_o\ & ( \br8|r0|out~_Duplicate_1_q\ & ( (!\SW[0]~input_o\ & ((\br8|r2|out~_Duplicate_1_q\))) # (\SW[0]~input_o\ & (\br8|r3|out~_Duplicate_1_q\)) ) ) ) # ( !\SW[1]~input_o\ & ( \br8|r0|out~_Duplicate_1_q\ & ( 
-- (!\SW[0]~input_o\) # (\br8|r1|out~_Duplicate_1_q\) ) ) ) # ( \SW[1]~input_o\ & ( !\br8|r0|out~_Duplicate_1_q\ & ( (!\SW[0]~input_o\ & ((\br8|r2|out~_Duplicate_1_q\))) # (\SW[0]~input_o\ & (\br8|r3|out~_Duplicate_1_q\)) ) ) ) # ( !\SW[1]~input_o\ & ( 
-- !\br8|r0|out~_Duplicate_1_q\ & ( (\SW[0]~input_o\ & \br8|r1|out~_Duplicate_1_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000001011010111110111011101110110000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[0]~input_o\,
	datab => \br8|r1|ALT_INV_out~_Duplicate_1_q\,
	datac => \br8|r3|ALT_INV_out~_Duplicate_1_q\,
	datad => \br8|r2|ALT_INV_out~_Duplicate_1_q\,
	datae => \ALT_INV_SW[1]~input_o\,
	dataf => \br8|r0|ALT_INV_out~_Duplicate_1_q\,
	combout => \rtl~0_combout\);

-- Location: LABCELL_X55_Y4_N39
\alu|WideAnd0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|WideAnd0~0_combout\ = ( \br8|r1|out~_Duplicate_1_q\ & ( (\br8|r0|out~_Duplicate_1_q\ & \br8|r2|out~_Duplicate_1_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000001100110000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \br8|r0|ALT_INV_out~_Duplicate_1_q\,
	datad => \br8|r2|ALT_INV_out~_Duplicate_1_q\,
	dataf => \br8|r1|ALT_INV_out~_Duplicate_1_q\,
	combout => \alu|WideAnd0~0_combout\);

-- Location: LABCELL_X56_Y4_N18
\alu|Mux7~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|Mux7~2_combout\ = ( \br8|r3|out~_Duplicate_1_q\ & ( \alu|WideAnd0~0_combout\ & ( (\SW[2]~input_o\ & (\SW[3]~input_o\ & (\SW[0]~input_o\ & \SW[1]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[2]~input_o\,
	datab => \ALT_INV_SW[3]~input_o\,
	datac => \ALT_INV_SW[0]~input_o\,
	datad => \ALT_INV_SW[1]~input_o\,
	datae => \br8|r3|ALT_INV_out~_Duplicate_1_q\,
	dataf => \alu|ALT_INV_WideAnd0~0_combout\,
	combout => \alu|Mux7~2_combout\);

-- Location: LABCELL_X55_Y4_N6
\alu|Mux7~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|Mux7~3_combout\ = ( \alu|Mux7~2_combout\ & ( (!\KEY[2]~input_o\ & ((!\KEY[1]~input_o\) # ((\rtl~0_combout\ & \h0|out0~1_combout\)))) # (\KEY[2]~input_o\ & (\KEY[1]~input_o\)) ) ) # ( !\alu|Mux7~2_combout\ & ( (!\KEY[2]~input_o\ & ((!\KEY[1]~input_o\) 
-- # ((\rtl~0_combout\ & \h0|out0~1_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001010100010001000101010011001100110111001100110011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[2]~input_o\,
	datab => \ALT_INV_KEY[1]~input_o\,
	datac => \ALT_INV_rtl~0_combout\,
	datad => \h0|ALT_INV_out0~1_combout\,
	dataf => \alu|ALT_INV_Mux7~2_combout\,
	combout => \alu|Mux7~3_combout\);

-- Location: MLABCELL_X59_Y4_N51
\alu|ShiftLeft0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|ShiftLeft0~0_combout\ = ( \br8|r0|out~_Duplicate_1_q\ & ( (!\SW[1]~input_o\ & (!\SW[3]~input_o\ & (!\SW[0]~input_o\ & !\SW[2]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[1]~input_o\,
	datab => \ALT_INV_SW[3]~input_o\,
	datac => \ALT_INV_SW[0]~input_o\,
	datad => \ALT_INV_SW[2]~input_o\,
	dataf => \br8|r0|ALT_INV_out~_Duplicate_1_q\,
	combout => \alu|ShiftLeft0~0_combout\);

-- Location: LABCELL_X57_Y4_N39
\alu|WideOr0\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|WideOr0~combout\ = ( !\br8|r1|out~_Duplicate_1_q\ & ( (\alu|ShiftLeft0~1_combout\ & (!\br8|r0|out~_Duplicate_1_q\ & (!\br8|r2|out~_Duplicate_1_q\ & !\br8|r3|out~_Duplicate_1_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000010000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \alu|ALT_INV_ShiftLeft0~1_combout\,
	datab => \br8|r0|ALT_INV_out~_Duplicate_1_q\,
	datac => \br8|r2|ALT_INV_out~_Duplicate_1_q\,
	datad => \br8|r3|ALT_INV_out~_Duplicate_1_q\,
	dataf => \br8|r1|ALT_INV_out~_Duplicate_1_q\,
	combout => \alu|WideOr0~combout\);

-- Location: LABCELL_X55_Y4_N36
\alu|Mux7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|Mux7~1_combout\ = ( \alu|Add0~1_sumout\ & ( ((!\alu|WideOr0~combout\) # (\KEY[2]~input_o\)) # (\KEY[1]~input_o\) ) ) # ( !\alu|Add0~1_sumout\ & ( (!\KEY[1]~input_o\ & (!\alu|WideOr0~combout\ & !\KEY[2]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000000101000000000000011110101111111111111010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[1]~input_o\,
	datac => \alu|ALT_INV_WideOr0~combout\,
	datad => \ALT_INV_KEY[2]~input_o\,
	dataf => \alu|ALT_INV_Add0~1_sumout\,
	combout => \alu|Mux7~1_combout\);

-- Location: LABCELL_X55_Y4_N21
\alu|Mux7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|Mux7~0_combout\ = ( \alu|Mux7~1_combout\ & ( \alu|Mult0~8_resulta\ & ( (((!\KEY[1]~input_o\ & \alu|ShiftLeft0~0_combout\)) # (\alu|Mux7~3_combout\)) # (\KEY[3]~input_o\) ) ) ) # ( !\alu|Mux7~1_combout\ & ( \alu|Mult0~8_resulta\ & ( (!\KEY[3]~input_o\ 
-- & (((!\KEY[1]~input_o\ & \alu|ShiftLeft0~0_combout\)) # (\alu|Mux7~3_combout\))) ) ) ) # ( \alu|Mux7~1_combout\ & ( !\alu|Mult0~8_resulta\ & ( ((!\KEY[1]~input_o\ & (!\alu|Mux7~3_combout\ & \alu|ShiftLeft0~0_combout\)) # (\KEY[1]~input_o\ & 
-- (\alu|Mux7~3_combout\))) # (\KEY[3]~input_o\) ) ) ) # ( !\alu|Mux7~1_combout\ & ( !\alu|Mult0~8_resulta\ & ( (!\KEY[3]~input_o\ & ((!\KEY[1]~input_o\ & (!\alu|Mux7~3_combout\ & \alu|ShiftLeft0~0_combout\)) # (\KEY[1]~input_o\ & (\alu|Mux7~3_combout\)))) ) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010000100001101111011011100001100100011000011111110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[1]~input_o\,
	datab => \ALT_INV_KEY[3]~input_o\,
	datac => \alu|ALT_INV_Mux7~3_combout\,
	datad => \alu|ALT_INV_ShiftLeft0~0_combout\,
	datae => \alu|ALT_INV_Mux7~1_combout\,
	dataf => \alu|ALT_INV_Mult0~8_resulta\,
	combout => \alu|Mux7~0_combout\);

-- Location: FF_X55_Y4_N11
\br8|r0|out~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \alu|Mux7~0_combout\,
	clrn => \SW[9]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \br8|r0|out~_Duplicate_1_q\);

-- Location: LABCELL_X56_Y4_N42
\alu|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|Add0~17_sumout\ = SUM(( GND ) + ( GND ) + ( \alu|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \alu|Add0~14\,
	sumout => \alu|Add0~17_sumout\);

-- Location: LABCELL_X56_Y4_N27
\alu|Mux3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|Mux3~1_combout\ = ( \SW[0]~input_o\ & ( (!\SW[1]~input_o\ & (!\SW[2]~input_o\ & \br8|r3|out~_Duplicate_1_q\)) ) ) # ( !\SW[0]~input_o\ & ( (!\SW[1]~input_o\ & (\SW[2]~input_o\ & \br8|r0|out~_Duplicate_1_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001000000000100010000000000010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[1]~input_o\,
	datab => \ALT_INV_SW[2]~input_o\,
	datac => \br8|r0|ALT_INV_out~_Duplicate_1_q\,
	datad => \br8|r3|ALT_INV_out~_Duplicate_1_q\,
	dataf => \ALT_INV_SW[0]~input_o\,
	combout => \alu|Mux3~1_combout\);

-- Location: LABCELL_X56_Y4_N24
\alu|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|Mux3~0_combout\ = ( \br8|r1|out~_Duplicate_1_q\ & ( (\SW[1]~input_o\ & (!\SW[2]~input_o\ & ((\br8|r2|out~_Duplicate_1_q\) # (\SW[0]~input_o\)))) ) ) # ( !\br8|r1|out~_Duplicate_1_q\ & ( (\SW[1]~input_o\ & (!\SW[2]~input_o\ & (!\SW[0]~input_o\ & 
-- \br8|r2|out~_Duplicate_1_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000000000000000100000000000100010001000000010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[1]~input_o\,
	datab => \ALT_INV_SW[2]~input_o\,
	datac => \ALT_INV_SW[0]~input_o\,
	datad => \br8|r2|ALT_INV_out~_Duplicate_1_q\,
	dataf => \br8|r1|ALT_INV_out~_Duplicate_1_q\,
	combout => \alu|Mux3~0_combout\);

-- Location: LABCELL_X56_Y4_N54
\alu|Mux3~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|Mux3~3_combout\ = ( \alu|Mux3~1_combout\ & ( \alu|Mux3~0_combout\ & ( (!\KEY[3]~input_o\ & (!\SW[3]~input_o\)) # (\KEY[3]~input_o\ & (((\br8|r0|out~_Duplicate_1_q\) # (\SW[0]~input_o\)))) ) ) ) # ( !\alu|Mux3~1_combout\ & ( \alu|Mux3~0_combout\ & ( 
-- (!\KEY[3]~input_o\ & (!\SW[3]~input_o\)) # (\KEY[3]~input_o\ & (((\br8|r0|out~_Duplicate_1_q\) # (\SW[0]~input_o\)))) ) ) ) # ( \alu|Mux3~1_combout\ & ( !\alu|Mux3~0_combout\ & ( (!\KEY[3]~input_o\ & (!\SW[3]~input_o\)) # (\KEY[3]~input_o\ & 
-- (((\br8|r0|out~_Duplicate_1_q\) # (\SW[0]~input_o\)))) ) ) ) # ( !\alu|Mux3~1_combout\ & ( !\alu|Mux3~0_combout\ & ( (\KEY[3]~input_o\ & ((\br8|r0|out~_Duplicate_1_q\) # (\SW[0]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010101010101100011011101110110001101110111011000110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[3]~input_o\,
	datab => \ALT_INV_SW[3]~input_o\,
	datac => \ALT_INV_SW[0]~input_o\,
	datad => \br8|r0|ALT_INV_out~_Duplicate_1_q\,
	datae => \alu|ALT_INV_Mux3~1_combout\,
	dataf => \alu|ALT_INV_Mux3~0_combout\,
	combout => \alu|Mux3~3_combout\);

-- Location: LABCELL_X56_Y4_N12
\alu|Mux3~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|Mux3~2_combout\ = ( \alu|f1|FA3|u0|m~0_combout\ & ( (\alu|Mux6~1_combout\ & ((\SW[3]~input_o\) # (\br8|r3|out~_Duplicate_1_q\))) ) ) # ( !\alu|f1|FA3|u0|m~0_combout\ & ( (\br8|r3|out~_Duplicate_1_q\ & (\SW[3]~input_o\ & \alu|Mux6~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000111000001110000011100000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \br8|r3|ALT_INV_out~_Duplicate_1_q\,
	datab => \ALT_INV_SW[3]~input_o\,
	datac => \alu|ALT_INV_Mux6~1_combout\,
	dataf => \alu|f1|FA3|u0|ALT_INV_m~0_combout\,
	combout => \alu|Mux3~2_combout\);

-- Location: LABCELL_X53_Y4_N6
\alu|Mux3~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|Mux3~4_combout\ = ( !\KEY[2]~input_o\ & ( ((!\KEY[3]~input_o\ & (!\KEY[1]~input_o\ & (\alu|Mult0~12\))) # (\KEY[3]~input_o\ & (\KEY[1]~input_o\ & ((\alu|Mux3~3_combout\))))) # (\alu|Mux3~2_combout\) ) ) # ( \KEY[2]~input_o\ & ( ((!\KEY[1]~input_o\ & 
-- ((!\KEY[3]~input_o\ & ((\alu|Mux3~3_combout\))) # (\KEY[3]~input_o\ & (\alu|Add0~17_sumout\))))) # (\alu|Mux3~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000100000011001000001001000110011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[3]~input_o\,
	datab => \ALT_INV_KEY[1]~input_o\,
	datac => \alu|ALT_INV_Add0~17_sumout\,
	datad => \alu|ALT_INV_Mux3~3_combout\,
	datae => \ALT_INV_KEY[2]~input_o\,
	dataf => \alu|ALT_INV_Mux3~2_combout\,
	datag => \alu|ALT_INV_Mult0~12\,
	combout => \alu|Mux3~4_combout\);

-- Location: FF_X53_Y4_N8
\br8|r4|out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \alu|Mux3~4_combout\,
	clrn => \SW[9]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \br8|r4|out~q\);

-- Location: LABCELL_X53_Y4_N51
\alu|Mux2~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|Mux2~5_combout\ = ( \KEY[1]~input_o\ & ( (\br8|r1|out~_Duplicate_1_q\) # (\SW[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[1]~input_o\,
	datad => \br8|r1|ALT_INV_out~_Duplicate_1_q\,
	dataf => \ALT_INV_KEY[1]~input_o\,
	combout => \alu|Mux2~5_combout\);

-- Location: LABCELL_X57_Y4_N0
\alu|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|Mux2~0_combout\ = (\KEY[2]~input_o\ & !\SW[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[2]~input_o\,
	datab => \ALT_INV_SW[3]~input_o\,
	combout => \alu|Mux2~0_combout\);

-- Location: LABCELL_X56_Y4_N48
\alu|Mux2~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|Mux2~2_combout\ = ( \br8|r0|out~_Duplicate_1_q\ & ( \SW[0]~input_o\ & ( (!\SW[1]~input_o\ & ((\SW[2]~input_o\))) # (\SW[1]~input_o\ & (\br8|r2|out~_Duplicate_1_q\ & !\SW[2]~input_o\)) ) ) ) # ( !\br8|r0|out~_Duplicate_1_q\ & ( \SW[0]~input_o\ & ( 
-- (\br8|r2|out~_Duplicate_1_q\ & (\SW[1]~input_o\ & !\SW[2]~input_o\)) ) ) ) # ( \br8|r0|out~_Duplicate_1_q\ & ( !\SW[0]~input_o\ & ( (!\SW[1]~input_o\ & ((\SW[2]~input_o\))) # (\SW[1]~input_o\ & (\br8|r3|out~_Duplicate_1_q\ & !\SW[2]~input_o\)) ) ) ) # ( 
-- !\br8|r0|out~_Duplicate_1_q\ & ( !\SW[0]~input_o\ & ( (!\SW[1]~input_o\ & ((\SW[2]~input_o\))) # (\SW[1]~input_o\ & (\br8|r3|out~_Duplicate_1_q\ & !\SW[2]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111001100000000111100110000010001000000000001000111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \br8|r2|ALT_INV_out~_Duplicate_1_q\,
	datab => \ALT_INV_SW[1]~input_o\,
	datac => \br8|r3|ALT_INV_out~_Duplicate_1_q\,
	datad => \ALT_INV_SW[2]~input_o\,
	datae => \br8|r0|ALT_INV_out~_Duplicate_1_q\,
	dataf => \ALT_INV_SW[0]~input_o\,
	combout => \alu|Mux2~2_combout\);

-- Location: LABCELL_X53_Y4_N30
\alu|Mux2~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|Mux2~3_combout\ = ( \alu|Mux2~0_combout\ & ( \alu|Mux2~2_combout\ & ( ((\SW[1]~input_o\) # (\SW[0]~input_o\)) # (\br8|r1|out~_Duplicate_1_q\) ) ) ) # ( !\alu|Mux2~0_combout\ & ( \alu|Mux2~2_combout\ & ( (\KEY[1]~input_o\ & ((\SW[1]~input_o\) # 
-- (\br8|r1|out~_Duplicate_1_q\))) ) ) ) # ( \alu|Mux2~0_combout\ & ( !\alu|Mux2~2_combout\ & ( (\KEY[1]~input_o\ & ((\SW[1]~input_o\) # (\br8|r1|out~_Duplicate_1_q\))) ) ) ) # ( !\alu|Mux2~0_combout\ & ( !\alu|Mux2~2_combout\ & ( (\KEY[1]~input_o\ & 
-- ((\SW[1]~input_o\) # (\br8|r1|out~_Duplicate_1_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001011111000000000101111100000000010111110111111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \br8|r1|ALT_INV_out~_Duplicate_1_q\,
	datab => \ALT_INV_SW[0]~input_o\,
	datac => \ALT_INV_SW[1]~input_o\,
	datad => \ALT_INV_KEY[1]~input_o\,
	datae => \alu|ALT_INV_Mux2~0_combout\,
	dataf => \alu|ALT_INV_Mux2~2_combout\,
	combout => \alu|Mux2~3_combout\);

-- Location: LABCELL_X53_Y4_N15
\alu|Mux2~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|Mux2~4_combout\ = ( \alu|Mux2~2_combout\ & ( (!\KEY[2]~input_o\ & (((\alu|Mux6~2_combout\ & \alu|Mux2~0_combout\)) # (\KEY[3]~input_o\))) # (\KEY[2]~input_o\ & (((\alu|Mux6~2_combout\ & \alu|Mux2~0_combout\)))) ) ) # ( !\alu|Mux2~2_combout\ & ( 
-- (!\KEY[2]~input_o\ & \KEY[3]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001011110010001000101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[2]~input_o\,
	datab => \ALT_INV_KEY[3]~input_o\,
	datac => \alu|ALT_INV_Mux6~2_combout\,
	datad => \alu|ALT_INV_Mux2~0_combout\,
	dataf => \alu|ALT_INV_Mux2~2_combout\,
	combout => \alu|Mux2~4_combout\);

-- Location: LABCELL_X53_Y4_N0
\alu|Mux2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|Mux2~1_combout\ = ( \KEY[2]~input_o\ & ( \alu|Mult0~13\ & ( (\alu|Mux2~4_combout\ & ((!\alu|Mux6~2_combout\ & (\alu|Mux2~5_combout\)) # (\alu|Mux6~2_combout\ & ((\alu|Mux2~3_combout\))))) ) ) ) # ( !\KEY[2]~input_o\ & ( \alu|Mult0~13\ & ( 
-- ((\alu|Mux2~5_combout\ & \alu|Mux2~4_combout\)) # (\alu|Mux6~2_combout\) ) ) ) # ( \KEY[2]~input_o\ & ( !\alu|Mult0~13\ & ( (\alu|Mux2~4_combout\ & ((!\alu|Mux6~2_combout\ & (\alu|Mux2~5_combout\)) # (\alu|Mux6~2_combout\ & ((\alu|Mux2~3_combout\))))) ) ) 
-- ) # ( !\KEY[2]~input_o\ & ( !\alu|Mult0~13\ & ( (\alu|Mux2~4_combout\ & ((!\alu|Mux6~2_combout\ & (\alu|Mux2~5_combout\)) # (\alu|Mux6~2_combout\ & ((\alu|Mux2~3_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010011000000000101001100001111010111110000000001010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \alu|ALT_INV_Mux2~5_combout\,
	datab => \alu|ALT_INV_Mux2~3_combout\,
	datac => \alu|ALT_INV_Mux6~2_combout\,
	datad => \alu|ALT_INV_Mux2~4_combout\,
	datae => \ALT_INV_KEY[2]~input_o\,
	dataf => \alu|ALT_INV_Mult0~13\,
	combout => \alu|Mux2~1_combout\);

-- Location: FF_X53_Y4_N2
\br8|r5|out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \alu|Mux2~1_combout\,
	clrn => \SW[9]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \br8|r5|out~q\);

-- Location: LABCELL_X53_Y4_N36
\alu|Mux1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|Mux1~1_combout\ = ( \SW[1]~input_o\ & ( \alu|Mux6~2_combout\ & ( (\alu|Mux2~0_combout\ & ((!\SW[2]~input_o\ & (\SW[0]~input_o\)) # (\SW[2]~input_o\ & ((\rtl~17_combout\))))) ) ) ) # ( !\SW[1]~input_o\ & ( \alu|Mux6~2_combout\ & ( 
-- (\alu|Mux2~0_combout\ & (\SW[2]~input_o\ & \rtl~17_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001010001000000010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \alu|ALT_INV_Mux2~0_combout\,
	datab => \ALT_INV_SW[0]~input_o\,
	datac => \ALT_INV_SW[2]~input_o\,
	datad => \ALT_INV_rtl~17_combout\,
	datae => \ALT_INV_SW[1]~input_o\,
	dataf => \alu|ALT_INV_Mux6~2_combout\,
	combout => \alu|Mux1~1_combout\);

-- Location: LABCELL_X53_Y4_N18
\alu|Mux1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|Mux1~2_combout\ = ( \alu|Mux1~1_combout\ & ( \br8|r2|out~_Duplicate_1_q\ & ( ((!\KEY[2]~input_o\ & (\KEY[3]~input_o\ & \KEY[1]~input_o\))) # (\SW[2]~input_o\) ) ) ) # ( !\alu|Mux1~1_combout\ & ( \br8|r2|out~_Duplicate_1_q\ & ( (!\KEY[2]~input_o\ & 
-- (\KEY[3]~input_o\ & \KEY[1]~input_o\)) ) ) ) # ( \alu|Mux1~1_combout\ & ( !\br8|r2|out~_Duplicate_1_q\ & ( \SW[2]~input_o\ ) ) ) # ( !\alu|Mux1~1_combout\ & ( !\br8|r2|out~_Duplicate_1_q\ & ( (!\KEY[2]~input_o\ & (\KEY[3]~input_o\ & (\SW[2]~input_o\ & 
-- \KEY[1]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000010000011110000111100000000001000100000111100101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[2]~input_o\,
	datab => \ALT_INV_KEY[3]~input_o\,
	datac => \ALT_INV_SW[2]~input_o\,
	datad => \ALT_INV_KEY[1]~input_o\,
	datae => \alu|ALT_INV_Mux1~1_combout\,
	dataf => \br8|r2|ALT_INV_out~_Duplicate_1_q\,
	combout => \alu|Mux1~2_combout\);

-- Location: LABCELL_X53_Y4_N45
\alu|Mux1~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|Mux1~3_combout\ = (!\KEY[1]~input_o\ & !\KEY[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110000000000110011000000000011001100000000001100110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_KEY[1]~input_o\,
	datad => \ALT_INV_KEY[2]~input_o\,
	combout => \alu|Mux1~3_combout\);

-- Location: LABCELL_X53_Y4_N54
\alu|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|Mux1~0_combout\ = ( \alu|Mux1~3_combout\ & ( \alu|Mult0~14\ & ( ((!\KEY[3]~input_o\) # ((\br8|r3|out~_Duplicate_1_q\ & \alu|Mux1~1_combout\))) # (\alu|Mux1~2_combout\) ) ) ) # ( !\alu|Mux1~3_combout\ & ( \alu|Mult0~14\ & ( 
-- (!\br8|r3|out~_Duplicate_1_q\ & (\alu|Mux1~2_combout\)) # (\br8|r3|out~_Duplicate_1_q\ & (((\alu|Mux1~2_combout\ & \KEY[3]~input_o\)) # (\alu|Mux1~1_combout\))) ) ) ) # ( \alu|Mux1~3_combout\ & ( !\alu|Mult0~14\ & ( (!\br8|r3|out~_Duplicate_1_q\ & 
-- (\alu|Mux1~2_combout\)) # (\br8|r3|out~_Duplicate_1_q\ & (((\alu|Mux1~2_combout\ & \KEY[3]~input_o\)) # (\alu|Mux1~1_combout\))) ) ) ) # ( !\alu|Mux1~3_combout\ & ( !\alu|Mult0~14\ & ( (!\br8|r3|out~_Duplicate_1_q\ & (\alu|Mux1~2_combout\)) # 
-- (\br8|r3|out~_Duplicate_1_q\ & (((\alu|Mux1~2_combout\ & \KEY[3]~input_o\)) # (\alu|Mux1~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100011101010111010001110101011101000111010101111111111101010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \alu|ALT_INV_Mux1~2_combout\,
	datab => \br8|r3|ALT_INV_out~_Duplicate_1_q\,
	datac => \alu|ALT_INV_Mux1~1_combout\,
	datad => \ALT_INV_KEY[3]~input_o\,
	datae => \alu|ALT_INV_Mux1~3_combout\,
	dataf => \alu|ALT_INV_Mult0~14\,
	combout => \alu|Mux1~0_combout\);

-- Location: FF_X53_Y4_N56
\br8|r6|out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \alu|Mux1~0_combout\,
	clrn => \SW[9]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \br8|r6|out~q\);

-- Location: LABCELL_X53_Y4_N12
\alu|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|Mux0~0_combout\ = ( \br8|r3|out~_Duplicate_1_q\ & ( (\KEY[3]~input_o\ & \KEY[1]~input_o\) ) ) # ( !\br8|r3|out~_Duplicate_1_q\ & ( (\KEY[3]~input_o\ & (\KEY[1]~input_o\ & \SW[3]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000000000001100000011000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_KEY[3]~input_o\,
	datac => \ALT_INV_KEY[1]~input_o\,
	datad => \ALT_INV_SW[3]~input_o\,
	dataf => \br8|r3|ALT_INV_out~_Duplicate_1_q\,
	combout => \alu|Mux0~0_combout\);

-- Location: LABCELL_X53_Y4_N24
\alu|Mux0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu|Mux0~1_combout\ = ( !\KEY[2]~input_o\ & ( ((((\alu|Mult0~15\ & \alu|Mux6~2_combout\)) # (\alu|Mux0~0_combout\))) ) ) # ( \KEY[2]~input_o\ & ( (\SW[2]~input_o\ & (!\SW[3]~input_o\ & (\rtl~11_combout\ & ((\alu|Mux6~2_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000011111111000000000000000000001111111111110000010000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[2]~input_o\,
	datab => \ALT_INV_SW[3]~input_o\,
	datac => \ALT_INV_rtl~11_combout\,
	datad => \alu|ALT_INV_Mux0~0_combout\,
	datae => \ALT_INV_KEY[2]~input_o\,
	dataf => \alu|ALT_INV_Mux6~2_combout\,
	datag => \alu|ALT_INV_Mult0~15\,
	combout => \alu|Mux0~1_combout\);

-- Location: FF_X53_Y4_N26
\br8|r7|out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \alu|Mux0~1_combout\,
	clrn => \SW[9]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \br8|r7|out~q\);

-- Location: MLABCELL_X59_Y4_N12
\h0|out0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \h0|out0~0_combout\ = ( \SW[0]~input_o\ & ( (!\SW[3]~input_o\ & (!\SW[1]~input_o\ & !\SW[2]~input_o\)) # (\SW[3]~input_o\ & (!\SW[1]~input_o\ $ (!\SW[2]~input_o\))) ) ) # ( !\SW[0]~input_o\ & ( (!\SW[3]~input_o\ & (!\SW[1]~input_o\ & \SW[2]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011000000000000001100000011000011001100001100001100110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SW[3]~input_o\,
	datac => \ALT_INV_SW[1]~input_o\,
	datad => \ALT_INV_SW[2]~input_o\,
	dataf => \ALT_INV_SW[0]~input_o\,
	combout => \h0|out0~0_combout\);

-- Location: MLABCELL_X59_Y4_N21
\h0|out1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \h0|out1~0_combout\ = ( \SW[1]~input_o\ & ( \SW[0]~input_o\ & ( \SW[3]~input_o\ ) ) ) # ( !\SW[1]~input_o\ & ( \SW[0]~input_o\ & ( (\SW[2]~input_o\ & !\SW[3]~input_o\) ) ) ) # ( \SW[1]~input_o\ & ( !\SW[0]~input_o\ & ( \SW[2]~input_o\ ) ) ) # ( 
-- !\SW[1]~input_o\ & ( !\SW[0]~input_o\ & ( (\SW[2]~input_o\ & \SW[3]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101010101010101010101010000010100000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[2]~input_o\,
	datac => \ALT_INV_SW[3]~input_o\,
	datae => \ALT_INV_SW[1]~input_o\,
	dataf => \ALT_INV_SW[0]~input_o\,
	combout => \h0|out1~0_combout\);

-- Location: MLABCELL_X59_Y4_N36
\h0|out2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \h0|out2~0_combout\ = ( \SW[2]~input_o\ & ( (\SW[3]~input_o\ & ((!\SW[0]~input_o\) # (\SW[1]~input_o\))) ) ) # ( !\SW[2]~input_o\ & ( (\SW[1]~input_o\ & (!\SW[3]~input_o\ & !\SW[0]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001000000001100010011000101000000010000000011000100110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[1]~input_o\,
	datab => \ALT_INV_SW[3]~input_o\,
	datac => \ALT_INV_SW[0]~input_o\,
	datae => \ALT_INV_SW[2]~input_o\,
	combout => \h0|out2~0_combout\);

-- Location: MLABCELL_X59_Y4_N9
\h0|out3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \h0|out3~0_combout\ = ( \SW[1]~input_o\ & ( \SW[0]~input_o\ & ( \SW[2]~input_o\ ) ) ) # ( !\SW[1]~input_o\ & ( \SW[0]~input_o\ & ( (!\SW[2]~input_o\ & !\SW[3]~input_o\) ) ) ) # ( \SW[1]~input_o\ & ( !\SW[0]~input_o\ & ( (!\SW[2]~input_o\ & 
-- \SW[3]~input_o\) ) ) ) # ( !\SW[1]~input_o\ & ( !\SW[0]~input_o\ & ( (\SW[2]~input_o\ & !\SW[3]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000000010100000101010100000101000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[2]~input_o\,
	datac => \ALT_INV_SW[3]~input_o\,
	datae => \ALT_INV_SW[1]~input_o\,
	dataf => \ALT_INV_SW[0]~input_o\,
	combout => \h0|out3~0_combout\);

-- Location: MLABCELL_X59_Y4_N24
\h0|out4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \h0|out4~0_combout\ = ( \SW[2]~input_o\ & ( (!\SW[3]~input_o\ & ((!\SW[1]~input_o\) # (\SW[0]~input_o\))) ) ) # ( !\SW[2]~input_o\ & ( (\SW[0]~input_o\ & ((!\SW[1]~input_o\) # (!\SW[3]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111000001110100011001000110000001110000011101000110010001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[1]~input_o\,
	datab => \ALT_INV_SW[3]~input_o\,
	datac => \ALT_INV_SW[0]~input_o\,
	datae => \ALT_INV_SW[2]~input_o\,
	combout => \h0|out4~0_combout\);

-- Location: MLABCELL_X59_Y4_N33
\h0|out5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \h0|out5~0_combout\ = ( \SW[1]~input_o\ & ( \SW[0]~input_o\ & ( !\SW[3]~input_o\ ) ) ) # ( !\SW[1]~input_o\ & ( \SW[0]~input_o\ & ( !\SW[2]~input_o\ $ (\SW[3]~input_o\) ) ) ) # ( \SW[1]~input_o\ & ( !\SW[0]~input_o\ & ( (!\SW[2]~input_o\ & 
-- !\SW[3]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101000001010000010100101101001011111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[2]~input_o\,
	datac => \ALT_INV_SW[3]~input_o\,
	datae => \ALT_INV_SW[1]~input_o\,
	dataf => \ALT_INV_SW[0]~input_o\,
	combout => \h0|out5~0_combout\);

-- Location: MLABCELL_X59_Y4_N48
\h0|out6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \h0|out6~0_combout\ = ( \SW[0]~input_o\ & ( (!\SW[3]~input_o\ & (!\SW[1]~input_o\ $ (\SW[2]~input_o\))) ) ) # ( !\SW[0]~input_o\ & ( (!\SW[1]~input_o\ & (!\SW[3]~input_o\ $ (\SW[2]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000110000110000000011000011000000000011001100000000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SW[3]~input_o\,
	datac => \ALT_INV_SW[1]~input_o\,
	datad => \ALT_INV_SW[2]~input_o\,
	dataf => \ALT_INV_SW[0]~input_o\,
	combout => \h0|out6~0_combout\);

-- Location: MLABCELL_X59_Y4_N57
\h4|out0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \h4|out0~0_combout\ = ( \br8|r1|out~_Duplicate_1_q\ & ( (\br8|r3|out~_Duplicate_1_q\ & (\br8|r0|out~_Duplicate_1_q\ & !\br8|r2|out~_Duplicate_1_q\)) ) ) # ( !\br8|r1|out~_Duplicate_1_q\ & ( (!\br8|r3|out~_Duplicate_1_q\ & (!\br8|r0|out~_Duplicate_1_q\ $ 
-- (!\br8|r2|out~_Duplicate_1_q\))) # (\br8|r3|out~_Duplicate_1_q\ & (\br8|r0|out~_Duplicate_1_q\ & \br8|r2|out~_Duplicate_1_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101010100101000010101010010100000101000000000000010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \br8|r3|ALT_INV_out~_Duplicate_1_q\,
	datac => \br8|r0|ALT_INV_out~_Duplicate_1_q\,
	datad => \br8|r2|ALT_INV_out~_Duplicate_1_q\,
	dataf => \br8|r1|ALT_INV_out~_Duplicate_1_q\,
	combout => \h4|out0~0_combout\);

-- Location: MLABCELL_X59_Y4_N0
\h4|out1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \h4|out1~0_combout\ = ( \br8|r1|out~_Duplicate_1_q\ & ( (!\br8|r0|out~_Duplicate_1_q\ & ((\br8|r2|out~_Duplicate_1_q\))) # (\br8|r0|out~_Duplicate_1_q\ & (\br8|r3|out~_Duplicate_1_q\)) ) ) # ( !\br8|r1|out~_Duplicate_1_q\ & ( (\br8|r2|out~_Duplicate_1_q\ 
-- & (!\br8|r0|out~_Duplicate_1_q\ $ (!\br8|r3|out~_Duplicate_1_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000111100000000000011110000000011110011110000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \br8|r0|ALT_INV_out~_Duplicate_1_q\,
	datac => \br8|r3|ALT_INV_out~_Duplicate_1_q\,
	datad => \br8|r2|ALT_INV_out~_Duplicate_1_q\,
	dataf => \br8|r1|ALT_INV_out~_Duplicate_1_q\,
	combout => \h4|out1~0_combout\);

-- Location: MLABCELL_X59_Y4_N3
\h4|out2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \h4|out2~0_combout\ = ( \br8|r1|out~_Duplicate_1_q\ & ( (!\br8|r3|out~_Duplicate_1_q\ & (!\br8|r0|out~_Duplicate_1_q\ & !\br8|r2|out~_Duplicate_1_q\)) # (\br8|r3|out~_Duplicate_1_q\ & ((\br8|r2|out~_Duplicate_1_q\))) ) ) # ( !\br8|r1|out~_Duplicate_1_q\ & 
-- ( (\br8|r3|out~_Duplicate_1_q\ & (!\br8|r0|out~_Duplicate_1_q\ & \br8|r2|out~_Duplicate_1_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010000000000000101000010100000010101011010000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \br8|r3|ALT_INV_out~_Duplicate_1_q\,
	datac => \br8|r0|ALT_INV_out~_Duplicate_1_q\,
	datad => \br8|r2|ALT_INV_out~_Duplicate_1_q\,
	dataf => \br8|r1|ALT_INV_out~_Duplicate_1_q\,
	combout => \h4|out2~0_combout\);

-- Location: MLABCELL_X59_Y4_N54
\h4|out3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \h4|out3~0_combout\ = ( \br8|r1|out~_Duplicate_1_q\ & ( (!\br8|r0|out~_Duplicate_1_q\ & (\br8|r3|out~_Duplicate_1_q\ & !\br8|r2|out~_Duplicate_1_q\)) # (\br8|r0|out~_Duplicate_1_q\ & ((\br8|r2|out~_Duplicate_1_q\))) ) ) # ( !\br8|r1|out~_Duplicate_1_q\ & 
-- ( (!\br8|r3|out~_Duplicate_1_q\ & (!\br8|r0|out~_Duplicate_1_q\ $ (!\br8|r2|out~_Duplicate_1_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010100000101000001010000010100001000011010000110100001101000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \br8|r3|ALT_INV_out~_Duplicate_1_q\,
	datab => \br8|r0|ALT_INV_out~_Duplicate_1_q\,
	datac => \br8|r2|ALT_INV_out~_Duplicate_1_q\,
	dataf => \br8|r1|ALT_INV_out~_Duplicate_1_q\,
	combout => \h4|out3~0_combout\);

-- Location: MLABCELL_X59_Y4_N15
\h4|out4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \h4|out4~0_combout\ = ( \br8|r1|out~_Duplicate_1_q\ & ( (!\br8|r3|out~_Duplicate_1_q\ & \br8|r0|out~_Duplicate_1_q\) ) ) # ( !\br8|r1|out~_Duplicate_1_q\ & ( (!\br8|r2|out~_Duplicate_1_q\ & ((\br8|r0|out~_Duplicate_1_q\))) # (\br8|r2|out~_Duplicate_1_q\ & 
-- (!\br8|r3|out~_Duplicate_1_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111110101010000011111010101000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \br8|r3|ALT_INV_out~_Duplicate_1_q\,
	datac => \br8|r0|ALT_INV_out~_Duplicate_1_q\,
	datad => \br8|r2|ALT_INV_out~_Duplicate_1_q\,
	dataf => \br8|r1|ALT_INV_out~_Duplicate_1_q\,
	combout => \h4|out4~0_combout\);

-- Location: MLABCELL_X59_Y4_N42
\h4|out5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \h4|out5~0_combout\ = ( \br8|r1|out~_Duplicate_1_q\ & ( (!\br8|r3|out~_Duplicate_1_q\ & ((!\br8|r2|out~_Duplicate_1_q\) # (\br8|r0|out~_Duplicate_1_q\))) ) ) # ( !\br8|r1|out~_Duplicate_1_q\ & ( (\br8|r0|out~_Duplicate_1_q\ & (!\br8|r3|out~_Duplicate_1_q\ 
-- $ (\br8|r2|out~_Duplicate_1_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000100100001001000010010000110100010101000101010001010100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \br8|r3|ALT_INV_out~_Duplicate_1_q\,
	datab => \br8|r0|ALT_INV_out~_Duplicate_1_q\,
	datac => \br8|r2|ALT_INV_out~_Duplicate_1_q\,
	dataf => \br8|r1|ALT_INV_out~_Duplicate_1_q\,
	combout => \h4|out5~0_combout\);

-- Location: MLABCELL_X59_Y4_N45
\h4|out6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \h4|out6~0_combout\ = ( \br8|r1|out~_Duplicate_1_q\ & ( (!\br8|r3|out~_Duplicate_1_q\ & (\br8|r0|out~_Duplicate_1_q\ & \br8|r2|out~_Duplicate_1_q\)) ) ) # ( !\br8|r1|out~_Duplicate_1_q\ & ( (!\br8|r3|out~_Duplicate_1_q\ & ((!\br8|r2|out~_Duplicate_1_q\))) 
-- # (\br8|r3|out~_Duplicate_1_q\ & (!\br8|r0|out~_Duplicate_1_q\ & \br8|r2|out~_Duplicate_1_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101001010000101010100101000000000000000010100000000000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \br8|r3|ALT_INV_out~_Duplicate_1_q\,
	datac => \br8|r0|ALT_INV_out~_Duplicate_1_q\,
	datad => \br8|r2|ALT_INV_out~_Duplicate_1_q\,
	dataf => \br8|r1|ALT_INV_out~_Duplicate_1_q\,
	combout => \h4|out6~0_combout\);

-- Location: LABCELL_X88_Y9_N15
\h5|out0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \h5|out0~0_combout\ = ( \br8|r5|out~q\ & ( \br8|r4|out~q\ & ( (!\br8|r6|out~q\ & \br8|r7|out~q\) ) ) ) # ( !\br8|r5|out~q\ & ( \br8|r4|out~q\ & ( !\br8|r6|out~q\ $ (\br8|r7|out~q\) ) ) ) # ( !\br8|r5|out~q\ & ( !\br8|r4|out~q\ & ( (\br8|r6|out~q\ & 
-- !\br8|r7|out~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000000000000000000010100101101001010000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \br8|r6|ALT_INV_out~q\,
	datac => \br8|r7|ALT_INV_out~q\,
	datae => \br8|r5|ALT_INV_out~q\,
	dataf => \br8|r4|ALT_INV_out~q\,
	combout => \h5|out0~0_combout\);

-- Location: LABCELL_X88_Y9_N30
\h5|out1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \h5|out1~0_combout\ = ( \br8|r5|out~q\ & ( \br8|r4|out~q\ & ( \br8|r7|out~q\ ) ) ) # ( !\br8|r5|out~q\ & ( \br8|r4|out~q\ & ( (!\br8|r7|out~q\ & \br8|r6|out~q\) ) ) ) # ( \br8|r5|out~q\ & ( !\br8|r4|out~q\ & ( \br8|r6|out~q\ ) ) ) # ( !\br8|r5|out~q\ & ( 
-- !\br8|r4|out~q\ & ( (\br8|r7|out~q\ & \br8|r6|out~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000011110000111100001100000011000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \br8|r7|ALT_INV_out~q\,
	datac => \br8|r6|ALT_INV_out~q\,
	datae => \br8|r5|ALT_INV_out~q\,
	dataf => \br8|r4|ALT_INV_out~q\,
	combout => \h5|out1~0_combout\);

-- Location: LABCELL_X88_Y9_N36
\h5|out2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \h5|out2~0_combout\ = ( \br8|r5|out~q\ & ( \br8|r4|out~q\ & ( (\br8|r7|out~q\ & \br8|r6|out~q\) ) ) ) # ( \br8|r5|out~q\ & ( !\br8|r4|out~q\ & ( !\br8|r7|out~q\ $ (\br8|r6|out~q\) ) ) ) # ( !\br8|r5|out~q\ & ( !\br8|r4|out~q\ & ( (\br8|r7|out~q\ & 
-- \br8|r6|out~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011110000111100001100000000000000000000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \br8|r7|ALT_INV_out~q\,
	datac => \br8|r6|ALT_INV_out~q\,
	datae => \br8|r5|ALT_INV_out~q\,
	dataf => \br8|r4|ALT_INV_out~q\,
	combout => \h5|out2~0_combout\);

-- Location: LABCELL_X88_Y9_N9
\h5|out3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \h5|out3~0_combout\ = ( \br8|r5|out~q\ & ( \br8|r4|out~q\ & ( \br8|r6|out~q\ ) ) ) # ( !\br8|r5|out~q\ & ( \br8|r4|out~q\ & ( (!\br8|r6|out~q\ & !\br8|r7|out~q\) ) ) ) # ( \br8|r5|out~q\ & ( !\br8|r4|out~q\ & ( (!\br8|r6|out~q\ & \br8|r7|out~q\) ) ) ) # ( 
-- !\br8|r5|out~q\ & ( !\br8|r4|out~q\ & ( (\br8|r6|out~q\ & !\br8|r7|out~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000000010100000101010100000101000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \br8|r6|ALT_INV_out~q\,
	datac => \br8|r7|ALT_INV_out~q\,
	datae => \br8|r5|ALT_INV_out~q\,
	dataf => \br8|r4|ALT_INV_out~q\,
	combout => \h5|out3~0_combout\);

-- Location: LABCELL_X88_Y9_N0
\h5|out4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \h5|out4~0_combout\ = ( \br8|r5|out~q\ & ( \br8|r4|out~q\ & ( !\br8|r7|out~q\ ) ) ) # ( !\br8|r5|out~q\ & ( \br8|r4|out~q\ & ( (!\br8|r7|out~q\) # (!\br8|r6|out~q\) ) ) ) # ( !\br8|r5|out~q\ & ( !\br8|r4|out~q\ & ( (!\br8|r7|out~q\ & \br8|r6|out~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000000000000000011111100111111001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \br8|r7|ALT_INV_out~q\,
	datac => \br8|r6|ALT_INV_out~q\,
	datae => \br8|r5|ALT_INV_out~q\,
	dataf => \br8|r4|ALT_INV_out~q\,
	combout => \h5|out4~0_combout\);

-- Location: LABCELL_X88_Y9_N45
\h5|out5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \h5|out5~0_combout\ = ( \br8|r5|out~q\ & ( \br8|r4|out~q\ & ( !\br8|r7|out~q\ ) ) ) # ( !\br8|r5|out~q\ & ( \br8|r4|out~q\ & ( !\br8|r6|out~q\ $ (\br8|r7|out~q\) ) ) ) # ( \br8|r5|out~q\ & ( !\br8|r4|out~q\ & ( (!\br8|r6|out~q\ & !\br8|r7|out~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101000001010000010100101101001011111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \br8|r6|ALT_INV_out~q\,
	datac => \br8|r7|ALT_INV_out~q\,
	datae => \br8|r5|ALT_INV_out~q\,
	dataf => \br8|r4|ALT_INV_out~q\,
	combout => \h5|out5~0_combout\);

-- Location: LABCELL_X88_Y9_N24
\h5|out6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \h5|out6~0_combout\ = ( \br8|r5|out~q\ & ( \br8|r4|out~q\ & ( (!\br8|r7|out~q\ & \br8|r6|out~q\) ) ) ) # ( !\br8|r5|out~q\ & ( \br8|r4|out~q\ & ( (!\br8|r7|out~q\ & !\br8|r6|out~q\) ) ) ) # ( !\br8|r5|out~q\ & ( !\br8|r4|out~q\ & ( !\br8|r7|out~q\ $ 
-- (\br8|r6|out~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100001111000011000000000000000011000000110000000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \br8|r7|ALT_INV_out~q\,
	datac => \br8|r6|ALT_INV_out~q\,
	datae => \br8|r5|ALT_INV_out~q\,
	dataf => \br8|r4|ALT_INV_out~q\,
	combout => \h5|out6~0_combout\);

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

-- Location: LABCELL_X53_Y16_N0
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


