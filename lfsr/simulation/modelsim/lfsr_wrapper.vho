-- Copyright (C) 1991-2014 Altera Corporation. All rights reserved.
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
-- VERSION "Version 14.1.0 Build 186 12/03/2014 SJ Web Edition"

-- DATE "05/06/2022 11:30:39"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	lfsr_wrapper IS
    PORT (
	CLOCK_50 : IN std_logic;
	SW : IN std_logic_vector(4 DOWNTO 0);
	KEY_neg_1 : IN std_logic;
	KEY : IN std_logic_vector(0 DOWNTO 0);
	HEX3 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX2 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX1 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX0 : BUFFER std_logic_vector(6 DOWNTO 0)
	);
END lfsr_wrapper;

-- Design Ports Information
-- SW[1]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[-1]	=>  Location: PIN_AF5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[0]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[1]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[2]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[3]	=>  Location: PIN_AA21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[4]	=>  Location: PIN_AD24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[5]	=>  Location: PIN_AF23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[6]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[0]	=>  Location: PIN_AA25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[1]	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[2]	=>  Location: PIN_Y25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[3]	=>  Location: PIN_W26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[4]	=>  Location: PIN_Y26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[5]	=>  Location: PIN_W27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[6]	=>  Location: PIN_W28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[0]	=>  Location: PIN_M24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[1]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[2]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[3]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[4]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[5]	=>  Location: PIN_U23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[6]	=>  Location: PIN_U24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[0]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[1]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[2]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[3]	=>  Location: PIN_L26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[4]	=>  Location: PIN_L25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[5]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[6]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF lfsr_wrapper IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_SW : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_KEY_neg_1 : std_logic;
SIGNAL ww_KEY : std_logic_vector(0 DOWNTO 0);
SIGNAL ww_HEX3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \KEY[-1]~input_o\ : std_logic;
SIGNAL \HEX3[0]~output_o\ : std_logic;
SIGNAL \HEX3[1]~output_o\ : std_logic;
SIGNAL \HEX3[2]~output_o\ : std_logic;
SIGNAL \HEX3[3]~output_o\ : std_logic;
SIGNAL \HEX3[4]~output_o\ : std_logic;
SIGNAL \HEX3[5]~output_o\ : std_logic;
SIGNAL \HEX3[6]~output_o\ : std_logic;
SIGNAL \HEX2[0]~output_o\ : std_logic;
SIGNAL \HEX2[1]~output_o\ : std_logic;
SIGNAL \HEX2[2]~output_o\ : std_logic;
SIGNAL \HEX2[3]~output_o\ : std_logic;
SIGNAL \HEX2[4]~output_o\ : std_logic;
SIGNAL \HEX2[5]~output_o\ : std_logic;
SIGNAL \HEX2[6]~output_o\ : std_logic;
SIGNAL \HEX1[0]~output_o\ : std_logic;
SIGNAL \HEX1[1]~output_o\ : std_logic;
SIGNAL \HEX1[2]~output_o\ : std_logic;
SIGNAL \HEX1[3]~output_o\ : std_logic;
SIGNAL \HEX1[4]~output_o\ : std_logic;
SIGNAL \HEX1[5]~output_o\ : std_logic;
SIGNAL \HEX1[6]~output_o\ : std_logic;
SIGNAL \HEX0[0]~output_o\ : std_logic;
SIGNAL \HEX0[1]~output_o\ : std_logic;
SIGNAL \HEX0[2]~output_o\ : std_logic;
SIGNAL \HEX0[3]~output_o\ : std_logic;
SIGNAL \HEX0[4]~output_o\ : std_logic;
SIGNAL \HEX0[5]~output_o\ : std_logic;
SIGNAL \HEX0[6]~output_o\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \lf|y[0]~0_combout\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \lf|path~0_combout\ : std_logic;
SIGNAL \lf|y[2]~feeder_combout\ : std_logic;
SIGNAL \lf|y[1]~feeder_combout\ : std_logic;
SIGNAL \lf|character[1]~feeder_combout\ : std_logic;
SIGNAL \lf|character[3]~feeder_combout\ : std_logic;
SIGNAL \lf|character[2]~feeder_combout\ : std_logic;
SIGNAL \lf|character[0]~feeder_combout\ : std_logic;
SIGNAL \lf|WideOr4~0_combout\ : std_logic;
SIGNAL \lf|WideOr0~0_combout\ : std_logic;
SIGNAL \lf|WideOr1~0_combout\ : std_logic;
SIGNAL \lf|WideOr3~0_combout\ : std_logic;
SIGNAL \lf|WideOr2~0_combout\ : std_logic;
SIGNAL \lf|sevenseg1|WideOr6~1_combout\ : std_logic;
SIGNAL \lf|sevenseg1|WideOr6~0_combout\ : std_logic;
SIGNAL \lf|sevenseg1|WideOr6~2_combout\ : std_logic;
SIGNAL \lf|sevenseg1|WideOr5~0_combout\ : std_logic;
SIGNAL \lf|sevenseg1|WideOr5~1_combout\ : std_logic;
SIGNAL \lf|sevenseg1|WideOr5~2_combout\ : std_logic;
SIGNAL \lf|sevenseg1|WideOr4~0_combout\ : std_logic;
SIGNAL \lf|sevenseg1|WideOr4~1_combout\ : std_logic;
SIGNAL \lf|sevenseg1|WideOr4~2_combout\ : std_logic;
SIGNAL \lf|sevenseg1|WideOr3~1_combout\ : std_logic;
SIGNAL \lf|sevenseg1|WideOr3~0_combout\ : std_logic;
SIGNAL \lf|sevenseg1|WideOr3~2_combout\ : std_logic;
SIGNAL \lf|sevenseg1|WideOr2~0_combout\ : std_logic;
SIGNAL \lf|sevenseg1|WideOr2~1_combout\ : std_logic;
SIGNAL \lf|sevenseg1|WideOr1~0_combout\ : std_logic;
SIGNAL \lf|sevenseg1|WideOr1~1_combout\ : std_logic;
SIGNAL \lf|sevenseg1|WideOr1~2_combout\ : std_logic;
SIGNAL \lf|sevenseg1|WideOr0~0_combout\ : std_logic;
SIGNAL \lf|sevenseg1|WideOr0~1_combout\ : std_logic;
SIGNAL \lf|WideOr7~0_combout\ : std_logic;
SIGNAL \lf|WideOr5~0_combout\ : std_logic;
SIGNAL \lf|WideOr6~0_combout\ : std_logic;
SIGNAL \lf|Decoder0~0_combout\ : std_logic;
SIGNAL \lf|sevenseg2|WideOr6~1_combout\ : std_logic;
SIGNAL \lf|WideOr8~0_combout\ : std_logic;
SIGNAL \lf|sevenseg2|WideOr6~0_combout\ : std_logic;
SIGNAL \lf|sevenseg2|WideOr6~2_combout\ : std_logic;
SIGNAL \lf|sevenseg2|WideOr5~0_combout\ : std_logic;
SIGNAL \lf|sevenseg2|WideOr5~1_combout\ : std_logic;
SIGNAL \lf|sevenseg2|WideOr5~2_combout\ : std_logic;
SIGNAL \lf|sevenseg2|WideOr4~1_combout\ : std_logic;
SIGNAL \lf|sevenseg2|WideOr4~0_combout\ : std_logic;
SIGNAL \lf|sevenseg2|WideOr4~2_combout\ : std_logic;
SIGNAL \lf|sevenseg2|WideOr3~0_combout\ : std_logic;
SIGNAL \lf|sevenseg2|WideOr3~1_combout\ : std_logic;
SIGNAL \lf|sevenseg2|WideOr3~2_combout\ : std_logic;
SIGNAL \lf|sevenseg2|WideOr2~0_combout\ : std_logic;
SIGNAL \lf|sevenseg2|WideOr2~1_combout\ : std_logic;
SIGNAL \lf|sevenseg2|WideOr1~0_combout\ : std_logic;
SIGNAL \lf|sevenseg2|WideOr1~1_combout\ : std_logic;
SIGNAL \lf|sevenseg2|WideOr1~2_combout\ : std_logic;
SIGNAL \lf|sevenseg2|WideOr0~0_combout\ : std_logic;
SIGNAL \lf|sevenseg2|WideOr0~1_combout\ : std_logic;
SIGNAL \lf|WideOr11~0_combout\ : std_logic;
SIGNAL \lf|WideOr9~0_combout\ : std_logic;
SIGNAL \lf|WideOr10~0_combout\ : std_logic;
SIGNAL \lf|WideOr12~0_combout\ : std_logic;
SIGNAL \lf|sevenseg3|WideOr6~0_combout\ : std_logic;
SIGNAL \lf|WideOr13~0_combout\ : std_logic;
SIGNAL \lf|sevenseg3|WideOr6~1_combout\ : std_logic;
SIGNAL \lf|sevenseg3|WideOr6~2_combout\ : std_logic;
SIGNAL \lf|sevenseg3|WideOr5~1_combout\ : std_logic;
SIGNAL \lf|sevenseg3|WideOr5~0_combout\ : std_logic;
SIGNAL \lf|sevenseg3|WideOr5~2_combout\ : std_logic;
SIGNAL \lf|sevenseg3|WideOr4~1_combout\ : std_logic;
SIGNAL \lf|sevenseg3|WideOr4~0_combout\ : std_logic;
SIGNAL \lf|sevenseg3|WideOr4~2_combout\ : std_logic;
SIGNAL \lf|sevenseg3|WideOr3~0_combout\ : std_logic;
SIGNAL \lf|sevenseg3|WideOr3~1_combout\ : std_logic;
SIGNAL \lf|sevenseg3|WideOr3~2_combout\ : std_logic;
SIGNAL \lf|sevenseg3|WideOr2~0_combout\ : std_logic;
SIGNAL \lf|sevenseg3|WideOr2~1_combout\ : std_logic;
SIGNAL \lf|sevenseg3|WideOr1~0_combout\ : std_logic;
SIGNAL \lf|sevenseg3|WideOr1~1_combout\ : std_logic;
SIGNAL \lf|sevenseg3|WideOr1~2_combout\ : std_logic;
SIGNAL \lf|sevenseg3|WideOr0~0_combout\ : std_logic;
SIGNAL \lf|sevenseg3|WideOr0~1_combout\ : std_logic;
SIGNAL \lf|WideOr18~0_combout\ : std_logic;
SIGNAL \lf|WideOr16~0_combout\ : std_logic;
SIGNAL \lf|WideOr14~0_combout\ : std_logic;
SIGNAL \lf|WideOr17~0_combout\ : std_logic;
SIGNAL \lf|WideOr15~0_combout\ : std_logic;
SIGNAL \lf|sevenseg4|WideOr6~1_combout\ : std_logic;
SIGNAL \lf|sevenseg4|WideOr6~0_combout\ : std_logic;
SIGNAL \lf|sevenseg4|WideOr6~2_combout\ : std_logic;
SIGNAL \lf|sevenseg4|WideOr5~1_combout\ : std_logic;
SIGNAL \lf|sevenseg4|WideOr5~0_combout\ : std_logic;
SIGNAL \lf|sevenseg4|WideOr5~2_combout\ : std_logic;
SIGNAL \lf|sevenseg4|WideOr4~1_combout\ : std_logic;
SIGNAL \lf|sevenseg4|WideOr4~0_combout\ : std_logic;
SIGNAL \lf|sevenseg4|WideOr4~2_combout\ : std_logic;
SIGNAL \lf|sevenseg4|WideOr3~0_combout\ : std_logic;
SIGNAL \lf|sevenseg4|WideOr3~1_combout\ : std_logic;
SIGNAL \lf|sevenseg4|WideOr3~2_combout\ : std_logic;
SIGNAL \lf|sevenseg4|WideOr2~0_combout\ : std_logic;
SIGNAL \lf|sevenseg4|WideOr2~1_combout\ : std_logic;
SIGNAL \lf|sevenseg4|WideOr1~1_combout\ : std_logic;
SIGNAL \lf|sevenseg4|WideOr1~0_combout\ : std_logic;
SIGNAL \lf|sevenseg4|WideOr1~2_combout\ : std_logic;
SIGNAL \lf|sevenseg4|WideOr0~0_combout\ : std_logic;
SIGNAL \lf|sevenseg4|WideOr0~1_combout\ : std_logic;
SIGNAL \lf|first\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \lf|second\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \lf|third\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \lf|fourth\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \lf|character\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \lf|y\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_SW[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_KEY[0]~input_o\ : std_logic;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_SW <= SW;
ww_KEY_neg_1 <= KEY_neg_1;
ww_KEY <= KEY;
HEX3 <= ww_HEX3;
HEX2 <= ww_HEX2;
HEX1 <= ww_HEX1;
HEX0 <= ww_HEX0;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);
\ALT_INV_SW[0]~input_o\ <= NOT \SW[0]~input_o\;
\ALT_INV_KEY[0]~input_o\ <= NOT \KEY[0]~input_o\;

-- Location: IOOBUF_X115_Y25_N16
\HEX3[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \lf|sevenseg1|WideOr6~2_combout\,
	devoe => ww_devoe,
	o => \HEX3[0]~output_o\);

-- Location: IOOBUF_X115_Y29_N2
\HEX3[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \lf|sevenseg1|WideOr5~2_combout\,
	devoe => ww_devoe,
	o => \HEX3[1]~output_o\);

-- Location: IOOBUF_X100_Y0_N2
\HEX3[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \lf|sevenseg1|WideOr4~2_combout\,
	devoe => ww_devoe,
	o => \HEX3[2]~output_o\);

-- Location: IOOBUF_X111_Y0_N2
\HEX3[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \lf|sevenseg1|WideOr3~2_combout\,
	devoe => ww_devoe,
	o => \HEX3[3]~output_o\);

-- Location: IOOBUF_X105_Y0_N23
\HEX3[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \lf|sevenseg1|WideOr2~1_combout\,
	devoe => ww_devoe,
	o => \HEX3[4]~output_o\);

-- Location: IOOBUF_X105_Y0_N9
\HEX3[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \lf|sevenseg1|WideOr1~2_combout\,
	devoe => ww_devoe,
	o => \HEX3[5]~output_o\);

-- Location: IOOBUF_X105_Y0_N2
\HEX3[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \lf|sevenseg1|WideOr0~1_combout\,
	devoe => ww_devoe,
	o => \HEX3[6]~output_o\);

-- Location: IOOBUF_X115_Y17_N9
\HEX2[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \lf|sevenseg2|WideOr6~2_combout\,
	devoe => ww_devoe,
	o => \HEX2[0]~output_o\);

-- Location: IOOBUF_X115_Y16_N2
\HEX2[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \lf|sevenseg2|WideOr5~2_combout\,
	devoe => ww_devoe,
	o => \HEX2[1]~output_o\);

-- Location: IOOBUF_X115_Y19_N9
\HEX2[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \lf|sevenseg2|WideOr4~2_combout\,
	devoe => ww_devoe,
	o => \HEX2[2]~output_o\);

-- Location: IOOBUF_X115_Y19_N2
\HEX2[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \lf|sevenseg2|WideOr3~2_combout\,
	devoe => ww_devoe,
	o => \HEX2[3]~output_o\);

-- Location: IOOBUF_X115_Y18_N2
\HEX2[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \lf|sevenseg2|WideOr2~1_combout\,
	devoe => ww_devoe,
	o => \HEX2[4]~output_o\);

-- Location: IOOBUF_X115_Y20_N2
\HEX2[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \lf|sevenseg2|WideOr1~2_combout\,
	devoe => ww_devoe,
	o => \HEX2[5]~output_o\);

-- Location: IOOBUF_X115_Y21_N16
\HEX2[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \lf|sevenseg2|WideOr0~1_combout\,
	devoe => ww_devoe,
	o => \HEX2[6]~output_o\);

-- Location: IOOBUF_X115_Y41_N2
\HEX1[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \lf|sevenseg3|WideOr6~2_combout\,
	devoe => ww_devoe,
	o => \HEX1[0]~output_o\);

-- Location: IOOBUF_X115_Y30_N9
\HEX1[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \lf|sevenseg3|WideOr5~2_combout\,
	devoe => ww_devoe,
	o => \HEX1[1]~output_o\);

-- Location: IOOBUF_X115_Y25_N23
\HEX1[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \lf|sevenseg3|WideOr4~2_combout\,
	devoe => ww_devoe,
	o => \HEX1[2]~output_o\);

-- Location: IOOBUF_X115_Y30_N2
\HEX1[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \lf|sevenseg3|WideOr3~2_combout\,
	devoe => ww_devoe,
	o => \HEX1[3]~output_o\);

-- Location: IOOBUF_X115_Y20_N9
\HEX1[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \lf|sevenseg3|WideOr2~1_combout\,
	devoe => ww_devoe,
	o => \HEX1[4]~output_o\);

-- Location: IOOBUF_X115_Y22_N2
\HEX1[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \lf|sevenseg3|WideOr1~2_combout\,
	devoe => ww_devoe,
	o => \HEX1[5]~output_o\);

-- Location: IOOBUF_X115_Y28_N9
\HEX1[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \lf|sevenseg3|WideOr0~1_combout\,
	devoe => ww_devoe,
	o => \HEX1[6]~output_o\);

-- Location: IOOBUF_X69_Y73_N23
\HEX0[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \lf|sevenseg4|WideOr6~2_combout\,
	devoe => ww_devoe,
	o => \HEX0[0]~output_o\);

-- Location: IOOBUF_X107_Y73_N23
\HEX0[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \lf|sevenseg4|WideOr5~2_combout\,
	devoe => ww_devoe,
	o => \HEX0[1]~output_o\);

-- Location: IOOBUF_X67_Y73_N23
\HEX0[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \lf|sevenseg4|WideOr4~2_combout\,
	devoe => ww_devoe,
	o => \HEX0[2]~output_o\);

-- Location: IOOBUF_X115_Y50_N2
\HEX0[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \lf|sevenseg4|WideOr3~2_combout\,
	devoe => ww_devoe,
	o => \HEX0[3]~output_o\);

-- Location: IOOBUF_X115_Y54_N16
\HEX0[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \lf|sevenseg4|WideOr2~1_combout\,
	devoe => ww_devoe,
	o => \HEX0[4]~output_o\);

-- Location: IOOBUF_X115_Y67_N16
\HEX0[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \lf|sevenseg4|WideOr1~2_combout\,
	devoe => ww_devoe,
	o => \HEX0[5]~output_o\);

-- Location: IOOBUF_X115_Y69_N2
\HEX0[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \lf|sevenseg4|WideOr0~1_combout\,
	devoe => ww_devoe,
	o => \HEX0[6]~output_o\);

-- Location: IOIBUF_X115_Y40_N8
\KEY[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

-- Location: IOIBUF_X0_Y36_N15
\CLOCK_50~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: CLKCTRL_G4
\CLOCK_50~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK_50~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLOCK_50~inputclkctrl_outclk\);

-- Location: LCCOMB_X113_Y37_N28
\lf|y[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lf|y[0]~0_combout\ = !\lf|y\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lf|y\(1),
	combout => \lf|y[0]~0_combout\);

-- Location: IOIBUF_X115_Y17_N1
\SW[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: FF_X113_Y37_N29
\lf|y[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \lf|y[0]~0_combout\,
	clrn => \ALT_INV_SW[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lf|y\(0));

-- Location: LCCOMB_X113_Y37_N10
\lf|path~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lf|path~0_combout\ = \lf|y\(0) $ (!\lf|y\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lf|y\(0),
	datad => \lf|y\(1),
	combout => \lf|path~0_combout\);

-- Location: FF_X113_Y37_N11
\lf|y[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \lf|path~0_combout\,
	clrn => \ALT_INV_SW[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lf|y\(3));

-- Location: LCCOMB_X113_Y37_N0
\lf|y[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \lf|y[2]~feeder_combout\ = \lf|y\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lf|y\(3),
	combout => \lf|y[2]~feeder_combout\);

-- Location: FF_X113_Y37_N1
\lf|y[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \lf|y[2]~feeder_combout\,
	clrn => \ALT_INV_SW[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lf|y\(2));

-- Location: LCCOMB_X113_Y37_N6
\lf|y[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \lf|y[1]~feeder_combout\ = \lf|y\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lf|y\(2),
	combout => \lf|y[1]~feeder_combout\);

-- Location: FF_X113_Y37_N7
\lf|y[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \lf|y[1]~feeder_combout\,
	clrn => \ALT_INV_SW[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lf|y\(1));

-- Location: LCCOMB_X113_Y37_N14
\lf|character[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \lf|character[1]~feeder_combout\ = \lf|y\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lf|y\(1),
	combout => \lf|character[1]~feeder_combout\);

-- Location: FF_X113_Y37_N15
\lf|character[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~input_o\,
	d => \lf|character[1]~feeder_combout\,
	clrn => \ALT_INV_SW[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lf|character\(1));

-- Location: LCCOMB_X113_Y37_N30
\lf|character[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \lf|character[3]~feeder_combout\ = \lf|y\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lf|y\(3),
	combout => \lf|character[3]~feeder_combout\);

-- Location: FF_X113_Y37_N31
\lf|character[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~input_o\,
	d => \lf|character[3]~feeder_combout\,
	clrn => \ALT_INV_SW[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lf|character\(3));

-- Location: LCCOMB_X113_Y37_N16
\lf|character[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \lf|character[2]~feeder_combout\ = \lf|y\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lf|y\(2),
	combout => \lf|character[2]~feeder_combout\);

-- Location: FF_X113_Y37_N17
\lf|character[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~input_o\,
	d => \lf|character[2]~feeder_combout\,
	clrn => \ALT_INV_SW[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lf|character\(2));

-- Location: LCCOMB_X113_Y37_N8
\lf|character[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \lf|character[0]~feeder_combout\ = \lf|y\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \lf|y\(0),
	combout => \lf|character[0]~feeder_combout\);

-- Location: FF_X113_Y37_N9
\lf|character[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~input_o\,
	d => \lf|character[0]~feeder_combout\,
	clrn => \ALT_INV_SW[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lf|character\(0));

-- Location: LCCOMB_X114_Y37_N6
\lf|WideOr4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lf|WideOr4~0_combout\ = (\lf|character\(1) & ((\lf|character\(0)) # ((\lf|character\(3) & \lf|character\(2))))) # (!\lf|character\(1) & (((!\lf|character\(3) & \lf|character\(2))) # (!\lf|character\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101011010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lf|character\(1),
	datab => \lf|character\(3),
	datac => \lf|character\(2),
	datad => \lf|character\(0),
	combout => \lf|WideOr4~0_combout\);

-- Location: FF_X114_Y37_N7
\lf|first[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~input_o\,
	d => \lf|WideOr4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lf|first\(0));

-- Location: LCCOMB_X114_Y37_N28
\lf|WideOr0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lf|WideOr0~0_combout\ = (!\lf|character\(2) & ((\lf|character\(1) & (!\lf|character\(3) & !\lf|character\(0))) # (!\lf|character\(1) & ((\lf|character\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lf|character\(1),
	datab => \lf|character\(3),
	datac => \lf|character\(2),
	datad => \lf|character\(0),
	combout => \lf|WideOr0~0_combout\);

-- Location: FF_X114_Y37_N29
\lf|first[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~input_o\,
	d => \lf|WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lf|first\(4));

-- Location: LCCOMB_X114_Y37_N12
\lf|WideOr1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lf|WideOr1~0_combout\ = (!\lf|character\(1) & ((\lf|character\(3) & ((!\lf|character\(2)))) # (!\lf|character\(3) & (!\lf|character\(0) & \lf|character\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lf|character\(0),
	datab => \lf|character\(3),
	datac => \lf|character\(2),
	datad => \lf|character\(1),
	combout => \lf|WideOr1~0_combout\);

-- Location: FF_X114_Y37_N13
\lf|first[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~input_o\,
	d => \lf|WideOr1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lf|first\(3));

-- Location: LCCOMB_X114_Y37_N26
\lf|WideOr3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lf|WideOr3~0_combout\ = (\lf|character\(1) & (\lf|character\(3) & (!\lf|character\(0) & !\lf|character\(2)))) # (!\lf|character\(1) & ((\lf|character\(3)) # ((\lf|character\(0)) # (!\lf|character\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lf|character\(1),
	datab => \lf|character\(3),
	datac => \lf|character\(0),
	datad => \lf|character\(2),
	combout => \lf|WideOr3~0_combout\);

-- Location: FF_X114_Y37_N27
\lf|first[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~input_o\,
	d => \lf|WideOr3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lf|first\(1));

-- Location: LCCOMB_X113_Y37_N4
\lf|WideOr2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lf|WideOr2~0_combout\ = (\lf|character\(3) & (!\lf|character\(0) & (!\lf|character\(1) & \lf|character\(2)))) # (!\lf|character\(3) & ((\lf|character\(0) & ((!\lf|character\(2)))) # (!\lf|character\(0) & (\lf|character\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lf|character\(3),
	datab => \lf|character\(0),
	datac => \lf|character\(1),
	datad => \lf|character\(2),
	combout => \lf|WideOr2~0_combout\);

-- Location: FF_X113_Y37_N5
\lf|first[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~input_o\,
	d => \lf|WideOr2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lf|first\(2));

-- Location: LCCOMB_X113_Y36_N26
\lf|sevenseg1|WideOr6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \lf|sevenseg1|WideOr6~1_combout\ = (\lf|first\(4) & (\lf|first\(3) $ (((\lf|first\(1)) # (\lf|first\(2)))))) # (!\lf|first\(4) & ((\lf|first\(3)) # (\lf|first\(1) $ (\lf|first\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011101111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lf|first\(4),
	datab => \lf|first\(3),
	datac => \lf|first\(1),
	datad => \lf|first\(2),
	combout => \lf|sevenseg1|WideOr6~1_combout\);

-- Location: LCCOMB_X113_Y36_N24
\lf|sevenseg1|WideOr6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lf|sevenseg1|WideOr6~0_combout\ = (\lf|first\(3) & ((\lf|first\(1) & (!\lf|first\(4) & \lf|first\(2))) # (!\lf|first\(1) & ((!\lf|first\(2)))))) # (!\lf|first\(3) & ((\lf|first\(4) & ((\lf|first\(2)))) # (!\lf|first\(4) & (\lf|first\(1) & 
-- !\lf|first\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001000011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lf|first\(4),
	datab => \lf|first\(3),
	datac => \lf|first\(1),
	datad => \lf|first\(2),
	combout => \lf|sevenseg1|WideOr6~0_combout\);

-- Location: LCCOMB_X114_Y36_N24
\lf|sevenseg1|WideOr6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \lf|sevenseg1|WideOr6~2_combout\ = (\lf|first\(0) & ((\lf|sevenseg1|WideOr6~0_combout\))) # (!\lf|first\(0) & (\lf|sevenseg1|WideOr6~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lf|first\(0),
	datac => \lf|sevenseg1|WideOr6~1_combout\,
	datad => \lf|sevenseg1|WideOr6~0_combout\,
	combout => \lf|sevenseg1|WideOr6~2_combout\);

-- Location: LCCOMB_X113_Y36_N20
\lf|sevenseg1|WideOr5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lf|sevenseg1|WideOr5~0_combout\ = (\lf|first\(3) & (!\lf|first\(2) & (!\lf|first\(0) & !\lf|first\(1)))) # (!\lf|first\(3) & (\lf|first\(2) $ (((\lf|first\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lf|first\(2),
	datab => \lf|first\(0),
	datac => \lf|first\(1),
	datad => \lf|first\(3),
	combout => \lf|sevenseg1|WideOr5~0_combout\);

-- Location: LCCOMB_X113_Y36_N14
\lf|sevenseg1|WideOr5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \lf|sevenseg1|WideOr5~1_combout\ = (\lf|first\(2) & ((\lf|first\(0)) # ((\lf|first\(1)) # (\lf|first\(3))))) # (!\lf|first\(2) & (\lf|first\(1) $ (((!\lf|first\(0) & \lf|first\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lf|first\(2),
	datab => \lf|first\(0),
	datac => \lf|first\(1),
	datad => \lf|first\(3),
	combout => \lf|sevenseg1|WideOr5~1_combout\);

-- Location: LCCOMB_X114_Y36_N6
\lf|sevenseg1|WideOr5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \lf|sevenseg1|WideOr5~2_combout\ = (\lf|first\(4) & (\lf|sevenseg1|WideOr5~0_combout\)) # (!\lf|first\(4) & ((\lf|sevenseg1|WideOr5~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lf|sevenseg1|WideOr5~0_combout\,
	datac => \lf|first\(4),
	datad => \lf|sevenseg1|WideOr5~1_combout\,
	combout => \lf|sevenseg1|WideOr5~2_combout\);

-- Location: LCCOMB_X113_Y36_N0
\lf|sevenseg1|WideOr4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lf|sevenseg1|WideOr4~0_combout\ = (!\lf|first\(0) & ((\lf|first\(4) & (\lf|first\(1) & !\lf|first\(2))) # (!\lf|first\(4) & (!\lf|first\(1) & \lf|first\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lf|first\(4),
	datab => \lf|first\(0),
	datac => \lf|first\(1),
	datad => \lf|first\(2),
	combout => \lf|sevenseg1|WideOr4~0_combout\);

-- Location: LCCOMB_X113_Y36_N22
\lf|sevenseg1|WideOr4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \lf|sevenseg1|WideOr4~1_combout\ = (\lf|first\(4) & (!\lf|first\(0))) # (!\lf|first\(4) & ((\lf|first\(0) & (\lf|first\(1) $ (\lf|first\(2)))) # (!\lf|first\(0) & (\lf|first\(1) & \lf|first\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lf|first\(4),
	datab => \lf|first\(0),
	datac => \lf|first\(1),
	datad => \lf|first\(2),
	combout => \lf|sevenseg1|WideOr4~1_combout\);

-- Location: LCCOMB_X113_Y36_N28
\lf|sevenseg1|WideOr4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \lf|sevenseg1|WideOr4~2_combout\ = (\lf|first\(3) & (\lf|sevenseg1|WideOr4~0_combout\)) # (!\lf|first\(3) & ((\lf|sevenseg1|WideOr4~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lf|sevenseg1|WideOr4~0_combout\,
	datac => \lf|sevenseg1|WideOr4~1_combout\,
	datad => \lf|first\(3),
	combout => \lf|sevenseg1|WideOr4~2_combout\);

-- Location: LCCOMB_X113_Y36_N12
\lf|sevenseg1|WideOr3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \lf|sevenseg1|WideOr3~1_combout\ = (\lf|first\(3) & ((\lf|first\(0) & (!\lf|first\(4))) # (!\lf|first\(0) & ((!\lf|first\(1)))))) # (!\lf|first\(3) & ((\lf|first\(0) & ((!\lf|first\(1)))) # (!\lf|first\(0) & (\lf|first\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011100101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lf|first\(4),
	datab => \lf|first\(3),
	datac => \lf|first\(1),
	datad => \lf|first\(0),
	combout => \lf|sevenseg1|WideOr3~1_combout\);

-- Location: LCCOMB_X113_Y36_N6
\lf|sevenseg1|WideOr3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lf|sevenseg1|WideOr3~0_combout\ = (\lf|first\(3) & (!\lf|first\(4) & (\lf|first\(1) $ (\lf|first\(0))))) # (!\lf|first\(3) & (\lf|first\(1) & (\lf|first\(4) $ (!\lf|first\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lf|first\(4),
	datab => \lf|first\(3),
	datac => \lf|first\(1),
	datad => \lf|first\(0),
	combout => \lf|sevenseg1|WideOr3~0_combout\);

-- Location: LCCOMB_X113_Y36_N18
\lf|sevenseg1|WideOr3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \lf|sevenseg1|WideOr3~2_combout\ = (\lf|first\(2) & ((\lf|sevenseg1|WideOr3~0_combout\))) # (!\lf|first\(2) & (\lf|sevenseg1|WideOr3~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lf|sevenseg1|WideOr3~1_combout\,
	datab => \lf|first\(2),
	datad => \lf|sevenseg1|WideOr3~0_combout\,
	combout => \lf|sevenseg1|WideOr3~2_combout\);

-- Location: LCCOMB_X113_Y36_N8
\lf|sevenseg1|WideOr2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lf|sevenseg1|WideOr2~0_combout\ = (\lf|first\(2) & ((\lf|first\(1)))) # (!\lf|first\(2) & (\lf|first\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lf|first\(0),
	datac => \lf|first\(1),
	datad => \lf|first\(2),
	combout => \lf|sevenseg1|WideOr2~0_combout\);

-- Location: LCCOMB_X113_Y36_N2
\lf|sevenseg1|WideOr2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \lf|sevenseg1|WideOr2~1_combout\ = (\lf|first\(4) & (\lf|sevenseg1|WideOr2~0_combout\ & ((!\lf|first\(3)) # (!\lf|first\(1))))) # (!\lf|first\(4) & (\lf|first\(3) & (\lf|sevenseg1|WideOr2~0_combout\ $ (\lf|first\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lf|first\(4),
	datab => \lf|sevenseg1|WideOr2~0_combout\,
	datac => \lf|first\(1),
	datad => \lf|first\(3),
	combout => \lf|sevenseg1|WideOr2~1_combout\);

-- Location: LCCOMB_X113_Y36_N16
\lf|sevenseg1|WideOr1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lf|sevenseg1|WideOr1~0_combout\ = (\lf|first\(2) & (\lf|first\(0) & (!\lf|first\(1) & !\lf|first\(3)))) # (!\lf|first\(2) & (!\lf|first\(0) & ((\lf|first\(1)) # (\lf|first\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lf|first\(2),
	datab => \lf|first\(0),
	datac => \lf|first\(1),
	datad => \lf|first\(3),
	combout => \lf|sevenseg1|WideOr1~0_combout\);

-- Location: LCCOMB_X113_Y36_N10
\lf|sevenseg1|WideOr1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \lf|sevenseg1|WideOr1~1_combout\ = (\lf|first\(0) & (\lf|first\(3) $ (((!\lf|first\(2) & \lf|first\(1)))))) # (!\lf|first\(0) & ((\lf|first\(1) & ((\lf|first\(3)))) # (!\lf|first\(1) & (\lf|first\(2) & !\lf|first\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110001000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lf|first\(2),
	datab => \lf|first\(0),
	datac => \lf|first\(1),
	datad => \lf|first\(3),
	combout => \lf|sevenseg1|WideOr1~1_combout\);

-- Location: LCCOMB_X114_Y36_N28
\lf|sevenseg1|WideOr1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \lf|sevenseg1|WideOr1~2_combout\ = (\lf|first\(4) & (\lf|sevenseg1|WideOr1~0_combout\)) # (!\lf|first\(4) & ((\lf|sevenseg1|WideOr1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lf|first\(4),
	datac => \lf|sevenseg1|WideOr1~0_combout\,
	datad => \lf|sevenseg1|WideOr1~1_combout\,
	combout => \lf|sevenseg1|WideOr1~2_combout\);

-- Location: LCCOMB_X113_Y36_N4
\lf|sevenseg1|WideOr0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lf|sevenseg1|WideOr0~0_combout\ = (\lf|first\(0) & (!\lf|first\(1) & (\lf|first\(2) $ (\lf|first\(3))))) # (!\lf|first\(0) & (\lf|first\(2) $ (\lf|first\(1) $ (!\lf|first\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011000101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lf|first\(2),
	datab => \lf|first\(0),
	datac => \lf|first\(1),
	datad => \lf|first\(3),
	combout => \lf|sevenseg1|WideOr0~0_combout\);

-- Location: LCCOMB_X113_Y36_N30
\lf|sevenseg1|WideOr0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \lf|sevenseg1|WideOr0~1_combout\ = (\lf|first\(4) & ((\lf|sevenseg1|WideOr0~0_combout\ & ((\lf|first\(2)))) # (!\lf|sevenseg1|WideOr0~0_combout\ & (\lf|first\(3))))) # (!\lf|first\(4) & (\lf|sevenseg1|WideOr0~0_combout\ & ((\lf|first\(3)) # 
-- (!\lf|first\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lf|first\(4),
	datab => \lf|first\(3),
	datac => \lf|sevenseg1|WideOr0~0_combout\,
	datad => \lf|first\(2),
	combout => \lf|sevenseg1|WideOr0~1_combout\);

-- Location: LCCOMB_X113_Y37_N2
\lf|WideOr7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lf|WideOr7~0_combout\ = (\lf|character\(0) & (\lf|character\(2) $ (((\lf|character\(1)) # (!\lf|character\(3)))))) # (!\lf|character\(0) & (\lf|character\(2) & ((\lf|character\(3)) # (!\lf|character\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101111000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lf|character\(3),
	datab => \lf|character\(0),
	datac => \lf|character\(1),
	datad => \lf|character\(2),
	combout => \lf|WideOr7~0_combout\);

-- Location: FF_X113_Y37_N3
\lf|second[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~input_o\,
	d => \lf|WideOr7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lf|second\(2));

-- Location: LCCOMB_X114_Y37_N24
\lf|WideOr5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lf|WideOr5~0_combout\ = (\lf|character\(1) & (\lf|character\(0) & ((\lf|character\(2)) # (!\lf|character\(3))))) # (!\lf|character\(1) & (!\lf|character\(3) & (\lf|character\(2) & !\lf|character\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lf|character\(1),
	datab => \lf|character\(3),
	datac => \lf|character\(2),
	datad => \lf|character\(0),
	combout => \lf|WideOr5~0_combout\);

-- Location: FF_X114_Y37_N25
\lf|second[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~input_o\,
	d => \lf|WideOr5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lf|second\(4));

-- Location: LCCOMB_X114_Y37_N4
\lf|WideOr6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lf|WideOr6~0_combout\ = (\lf|character\(2) & ((\lf|character\(1)) # (\lf|character\(3) $ (\lf|character\(0))))) # (!\lf|character\(2) & ((\lf|character\(3) $ (!\lf|character\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110011100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lf|character\(1),
	datab => \lf|character\(3),
	datac => \lf|character\(2),
	datad => \lf|character\(0),
	combout => \lf|WideOr6~0_combout\);

-- Location: FF_X114_Y37_N5
\lf|second[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~input_o\,
	d => \lf|WideOr6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lf|second\(3));

-- Location: LCCOMB_X114_Y37_N22
\lf|Decoder0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lf|Decoder0~0_combout\ = (!\lf|character\(0) & (\lf|character\(3) & (\lf|character\(2) & !\lf|character\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lf|character\(0),
	datab => \lf|character\(3),
	datac => \lf|character\(2),
	datad => \lf|character\(1),
	combout => \lf|Decoder0~0_combout\);

-- Location: FF_X114_Y37_N23
\lf|second[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~input_o\,
	d => \lf|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lf|second\(1));

-- Location: LCCOMB_X114_Y21_N10
\lf|sevenseg2|WideOr6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \lf|sevenseg2|WideOr6~1_combout\ = (\lf|second\(4) & (\lf|second\(3) $ (((\lf|second\(2)) # (\lf|second\(1)))))) # (!\lf|second\(4) & ((\lf|second\(3)) # (\lf|second\(2) $ (\lf|second\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110101111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lf|second\(2),
	datab => \lf|second\(4),
	datac => \lf|second\(3),
	datad => \lf|second\(1),
	combout => \lf|sevenseg2|WideOr6~1_combout\);

-- Location: LCCOMB_X113_Y37_N20
\lf|WideOr8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lf|WideOr8~0_combout\ = (\lf|character\(2) & ((\lf|character\(3)) # ((\lf|character\(1))))) # (!\lf|character\(2) & (\lf|character\(3) $ ((\lf|character\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lf|character\(3),
	datab => \lf|character\(0),
	datac => \lf|character\(1),
	datad => \lf|character\(2),
	combout => \lf|WideOr8~0_combout\);

-- Location: FF_X113_Y37_N21
\lf|second[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~input_o\,
	d => \lf|WideOr8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lf|second\(0));

-- Location: LCCOMB_X114_Y21_N24
\lf|sevenseg2|WideOr6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lf|sevenseg2|WideOr6~0_combout\ = (\lf|second\(2) & ((\lf|second\(4) & (!\lf|second\(3))) # (!\lf|second\(4) & (\lf|second\(3) & \lf|second\(1))))) # (!\lf|second\(2) & ((\lf|second\(3) & ((!\lf|second\(1)))) # (!\lf|second\(3) & (!\lf|second\(4) & 
-- \lf|second\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100101011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lf|second\(2),
	datab => \lf|second\(4),
	datac => \lf|second\(3),
	datad => \lf|second\(1),
	combout => \lf|sevenseg2|WideOr6~0_combout\);

-- Location: LCCOMB_X114_Y21_N28
\lf|sevenseg2|WideOr6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \lf|sevenseg2|WideOr6~2_combout\ = (\lf|second\(0) & ((\lf|sevenseg2|WideOr6~0_combout\))) # (!\lf|second\(0) & (\lf|sevenseg2|WideOr6~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lf|sevenseg2|WideOr6~1_combout\,
	datac => \lf|second\(0),
	datad => \lf|sevenseg2|WideOr6~0_combout\,
	combout => \lf|sevenseg2|WideOr6~2_combout\);

-- Location: LCCOMB_X114_Y21_N18
\lf|sevenseg2|WideOr5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lf|sevenseg2|WideOr5~0_combout\ = (\lf|second\(3) & (!\lf|second\(1) & (!\lf|second\(0) & !\lf|second\(2)))) # (!\lf|second\(3) & (\lf|second\(1) $ (((\lf|second\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000101000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lf|second\(3),
	datab => \lf|second\(1),
	datac => \lf|second\(0),
	datad => \lf|second\(2),
	combout => \lf|sevenseg2|WideOr5~0_combout\);

-- Location: LCCOMB_X114_Y21_N4
\lf|sevenseg2|WideOr5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \lf|sevenseg2|WideOr5~1_combout\ = (\lf|second\(3) & ((\lf|second\(2)) # (\lf|second\(1) $ (!\lf|second\(0))))) # (!\lf|second\(3) & ((\lf|second\(1)) # ((\lf|second\(0) & \lf|second\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lf|second\(3),
	datab => \lf|second\(1),
	datac => \lf|second\(0),
	datad => \lf|second\(2),
	combout => \lf|sevenseg2|WideOr5~1_combout\);

-- Location: LCCOMB_X114_Y21_N14
\lf|sevenseg2|WideOr5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \lf|sevenseg2|WideOr5~2_combout\ = (\lf|second\(4) & (\lf|sevenseg2|WideOr5~0_combout\)) # (!\lf|second\(4) & ((\lf|sevenseg2|WideOr5~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lf|sevenseg2|WideOr5~0_combout\,
	datac => \lf|sevenseg2|WideOr5~1_combout\,
	datad => \lf|second\(4),
	combout => \lf|sevenseg2|WideOr5~2_combout\);

-- Location: LCCOMB_X114_Y21_N26
\lf|sevenseg2|WideOr4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \lf|sevenseg2|WideOr4~1_combout\ = (\lf|second\(4) & (((!\lf|second\(0))))) # (!\lf|second\(4) & ((\lf|second\(2) & (\lf|second\(0) $ (\lf|second\(1)))) # (!\lf|second\(2) & (\lf|second\(0) & \lf|second\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lf|second\(2),
	datab => \lf|second\(4),
	datac => \lf|second\(0),
	datad => \lf|second\(1),
	combout => \lf|sevenseg2|WideOr4~1_combout\);

-- Location: LCCOMB_X114_Y21_N16
\lf|sevenseg2|WideOr4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lf|sevenseg2|WideOr4~0_combout\ = (!\lf|second\(0) & ((\lf|second\(2) & (!\lf|second\(4) & !\lf|second\(1))) # (!\lf|second\(2) & (\lf|second\(4) & \lf|second\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lf|second\(2),
	datab => \lf|second\(4),
	datac => \lf|second\(0),
	datad => \lf|second\(1),
	combout => \lf|sevenseg2|WideOr4~0_combout\);

-- Location: LCCOMB_X114_Y21_N20
\lf|sevenseg2|WideOr4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \lf|sevenseg2|WideOr4~2_combout\ = (\lf|second\(3) & ((\lf|sevenseg2|WideOr4~0_combout\))) # (!\lf|second\(3) & (\lf|sevenseg2|WideOr4~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lf|second\(3),
	datac => \lf|sevenseg2|WideOr4~1_combout\,
	datad => \lf|sevenseg2|WideOr4~0_combout\,
	combout => \lf|sevenseg2|WideOr4~2_combout\);

-- Location: LCCOMB_X114_Y22_N12
\lf|sevenseg2|WideOr3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lf|sevenseg2|WideOr3~0_combout\ = (\lf|second\(3) & (!\lf|second\(4) & (\lf|second\(0) $ (\lf|second\(1))))) # (!\lf|second\(3) & (\lf|second\(1) & (\lf|second\(0) $ (!\lf|second\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lf|second\(0),
	datab => \lf|second\(4),
	datac => \lf|second\(3),
	datad => \lf|second\(1),
	combout => \lf|sevenseg2|WideOr3~0_combout\);

-- Location: LCCOMB_X114_Y22_N18
\lf|sevenseg2|WideOr3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \lf|sevenseg2|WideOr3~1_combout\ = (\lf|second\(0) & ((\lf|second\(3) & (!\lf|second\(4))) # (!\lf|second\(3) & ((!\lf|second\(1)))))) # (!\lf|second\(0) & ((\lf|second\(3) & ((!\lf|second\(1)))) # (!\lf|second\(3) & (\lf|second\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010001111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lf|second\(0),
	datab => \lf|second\(4),
	datac => \lf|second\(3),
	datad => \lf|second\(1),
	combout => \lf|sevenseg2|WideOr3~1_combout\);

-- Location: LCCOMB_X114_Y22_N28
\lf|sevenseg2|WideOr3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \lf|sevenseg2|WideOr3~2_combout\ = (\lf|second\(2) & (\lf|sevenseg2|WideOr3~0_combout\)) # (!\lf|second\(2) & ((\lf|sevenseg2|WideOr3~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lf|sevenseg2|WideOr3~0_combout\,
	datab => \lf|sevenseg2|WideOr3~1_combout\,
	datad => \lf|second\(2),
	combout => \lf|sevenseg2|WideOr3~2_combout\);

-- Location: LCCOMB_X114_Y22_N10
\lf|sevenseg2|WideOr2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lf|sevenseg2|WideOr2~0_combout\ = (\lf|second\(2) & ((\lf|second\(1)))) # (!\lf|second\(2) & (\lf|second\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lf|second\(2),
	datac => \lf|second\(0),
	datad => \lf|second\(1),
	combout => \lf|sevenseg2|WideOr2~0_combout\);

-- Location: LCCOMB_X114_Y22_N4
\lf|sevenseg2|WideOr2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \lf|sevenseg2|WideOr2~1_combout\ = (\lf|sevenseg2|WideOr2~0_combout\ & ((\lf|second\(3) & ((!\lf|second\(1)))) # (!\lf|second\(3) & (\lf|second\(4))))) # (!\lf|sevenseg2|WideOr2~0_combout\ & (!\lf|second\(4) & (\lf|second\(3) & \lf|second\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lf|sevenseg2|WideOr2~0_combout\,
	datab => \lf|second\(4),
	datac => \lf|second\(3),
	datad => \lf|second\(1),
	combout => \lf|sevenseg2|WideOr2~1_combout\);

-- Location: LCCOMB_X114_Y21_N22
\lf|sevenseg2|WideOr1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lf|sevenseg2|WideOr1~0_combout\ = (\lf|second\(0) & (!\lf|second\(3) & (!\lf|second\(1) & \lf|second\(2)))) # (!\lf|second\(0) & (!\lf|second\(2) & ((\lf|second\(3)) # (\lf|second\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lf|second\(3),
	datab => \lf|second\(1),
	datac => \lf|second\(0),
	datad => \lf|second\(2),
	combout => \lf|sevenseg2|WideOr1~0_combout\);

-- Location: LCCOMB_X114_Y21_N8
\lf|sevenseg2|WideOr1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \lf|sevenseg2|WideOr1~1_combout\ = (\lf|second\(1) & (\lf|second\(3) $ (((\lf|second\(0) & !\lf|second\(2)))))) # (!\lf|second\(1) & ((\lf|second\(3) & (\lf|second\(0))) # (!\lf|second\(3) & (!\lf|second\(0) & \lf|second\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100101101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lf|second\(3),
	datab => \lf|second\(1),
	datac => \lf|second\(0),
	datad => \lf|second\(2),
	combout => \lf|sevenseg2|WideOr1~1_combout\);

-- Location: LCCOMB_X114_Y21_N30
\lf|sevenseg2|WideOr1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \lf|sevenseg2|WideOr1~2_combout\ = (\lf|second\(4) & (\lf|sevenseg2|WideOr1~0_combout\)) # (!\lf|second\(4) & ((\lf|sevenseg2|WideOr1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lf|sevenseg2|WideOr1~0_combout\,
	datac => \lf|sevenseg2|WideOr1~1_combout\,
	datad => \lf|second\(4),
	combout => \lf|sevenseg2|WideOr1~2_combout\);

-- Location: LCCOMB_X114_Y21_N12
\lf|sevenseg2|WideOr0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lf|sevenseg2|WideOr0~0_combout\ = (\lf|second\(1) & (!\lf|second\(0) & (\lf|second\(3) $ (\lf|second\(2))))) # (!\lf|second\(1) & (\lf|second\(3) $ (\lf|second\(0) $ (!\lf|second\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011000101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lf|second\(3),
	datab => \lf|second\(1),
	datac => \lf|second\(0),
	datad => \lf|second\(2),
	combout => \lf|sevenseg2|WideOr0~0_combout\);

-- Location: LCCOMB_X114_Y21_N2
\lf|sevenseg2|WideOr0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \lf|sevenseg2|WideOr0~1_combout\ = (\lf|sevenseg2|WideOr0~0_combout\ & ((\lf|second\(4) & ((\lf|second\(2)))) # (!\lf|second\(4) & ((\lf|second\(3)) # (!\lf|second\(2)))))) # (!\lf|sevenseg2|WideOr0~0_combout\ & (\lf|second\(4) & (\lf|second\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lf|sevenseg2|WideOr0~0_combout\,
	datab => \lf|second\(4),
	datac => \lf|second\(3),
	datad => \lf|second\(2),
	combout => \lf|sevenseg2|WideOr0~1_combout\);

-- Location: LCCOMB_X114_Y37_N14
\lf|WideOr11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lf|WideOr11~0_combout\ = (\lf|character\(3) & (!\lf|character\(1) & (!\lf|character\(2)))) # (!\lf|character\(3) & (((!\lf|character\(0)) # (!\lf|character\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lf|character\(1),
	datab => \lf|character\(3),
	datac => \lf|character\(2),
	datad => \lf|character\(0),
	combout => \lf|WideOr11~0_combout\);

-- Location: FF_X114_Y37_N15
\lf|third[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~input_o\,
	d => \lf|WideOr11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lf|third\(2));

-- Location: LCCOMB_X114_Y37_N18
\lf|WideOr9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lf|WideOr9~0_combout\ = (!\lf|character\(0) & ((\lf|character\(1) & (\lf|character\(3) & !\lf|character\(2))) # (!\lf|character\(1) & ((\lf|character\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lf|character\(1),
	datab => \lf|character\(3),
	datac => \lf|character\(2),
	datad => \lf|character\(0),
	combout => \lf|WideOr9~0_combout\);

-- Location: FF_X114_Y37_N19
\lf|third[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~input_o\,
	d => \lf|WideOr9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lf|third\(4));

-- Location: LCCOMB_X113_Y37_N18
\lf|WideOr10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lf|WideOr10~0_combout\ = (\lf|character\(3) & (\lf|character\(0) & (!\lf|character\(1)))) # (!\lf|character\(3) & ((\lf|character\(0) $ (\lf|character\(1))) # (!\lf|character\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110001011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lf|character\(3),
	datab => \lf|character\(0),
	datac => \lf|character\(1),
	datad => \lf|character\(2),
	combout => \lf|WideOr10~0_combout\);

-- Location: FF_X113_Y37_N19
\lf|third[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~input_o\,
	d => \lf|WideOr10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lf|third\(3));

-- Location: LCCOMB_X114_Y37_N20
\lf|WideOr12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lf|WideOr12~0_combout\ = (\lf|character\(3) & ((\lf|character\(2) & ((!\lf|character\(0)))) # (!\lf|character\(2) & ((\lf|character\(1)) # (\lf|character\(0)))))) # (!\lf|character\(3) & (!\lf|character\(2) & ((!\lf|character\(0)) # 
-- (!\lf|character\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110111001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lf|character\(1),
	datab => \lf|character\(3),
	datac => \lf|character\(2),
	datad => \lf|character\(0),
	combout => \lf|WideOr12~0_combout\);

-- Location: FF_X114_Y37_N21
\lf|third[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~input_o\,
	d => \lf|WideOr12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lf|third\(1));

-- Location: LCCOMB_X114_Y33_N28
\lf|sevenseg3|WideOr6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lf|sevenseg3|WideOr6~0_combout\ = (\lf|third\(2) & ((\lf|third\(4) & (!\lf|third\(3))) # (!\lf|third\(4) & (\lf|third\(3) & \lf|third\(1))))) # (!\lf|third\(2) & ((\lf|third\(3) & ((!\lf|third\(1)))) # (!\lf|third\(3) & (!\lf|third\(4) & 
-- \lf|third\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100101011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lf|third\(2),
	datab => \lf|third\(4),
	datac => \lf|third\(3),
	datad => \lf|third\(1),
	combout => \lf|sevenseg3|WideOr6~0_combout\);

-- Location: LCCOMB_X114_Y37_N8
\lf|WideOr13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lf|WideOr13~0_combout\ = (\lf|character\(2) & (((\lf|character\(0))))) # (!\lf|character\(2) & ((\lf|character\(3) & (!\lf|character\(1))) # (!\lf|character\(3) & ((!\lf|character\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lf|character\(1),
	datab => \lf|character\(3),
	datac => \lf|character\(2),
	datad => \lf|character\(0),
	combout => \lf|WideOr13~0_combout\);

-- Location: FF_X114_Y37_N9
\lf|third[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~input_o\,
	d => \lf|WideOr13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lf|third\(0));

-- Location: LCCOMB_X114_Y33_N18
\lf|sevenseg3|WideOr6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \lf|sevenseg3|WideOr6~1_combout\ = (\lf|third\(4) & (\lf|third\(3) $ (((\lf|third\(2)) # (\lf|third\(1)))))) # (!\lf|third\(4) & ((\lf|third\(3)) # (\lf|third\(2) $ (\lf|third\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110101111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lf|third\(2),
	datab => \lf|third\(4),
	datac => \lf|third\(3),
	datad => \lf|third\(1),
	combout => \lf|sevenseg3|WideOr6~1_combout\);

-- Location: LCCOMB_X114_Y33_N0
\lf|sevenseg3|WideOr6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \lf|sevenseg3|WideOr6~2_combout\ = (\lf|third\(0) & (\lf|sevenseg3|WideOr6~0_combout\)) # (!\lf|third\(0) & ((\lf|sevenseg3|WideOr6~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lf|sevenseg3|WideOr6~0_combout\,
	datac => \lf|third\(0),
	datad => \lf|sevenseg3|WideOr6~1_combout\,
	combout => \lf|sevenseg3|WideOr6~2_combout\);

-- Location: LCCOMB_X114_Y33_N20
\lf|sevenseg3|WideOr5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \lf|sevenseg3|WideOr5~1_combout\ = (\lf|third\(2) & ((\lf|third\(3)) # ((\lf|third\(0)) # (\lf|third\(1))))) # (!\lf|third\(2) & (\lf|third\(1) $ (((\lf|third\(3) & !\lf|third\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lf|third\(2),
	datab => \lf|third\(3),
	datac => \lf|third\(0),
	datad => \lf|third\(1),
	combout => \lf|sevenseg3|WideOr5~1_combout\);

-- Location: LCCOMB_X114_Y33_N22
\lf|sevenseg3|WideOr5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lf|sevenseg3|WideOr5~0_combout\ = (\lf|third\(3) & (!\lf|third\(2) & (!\lf|third\(0) & !\lf|third\(1)))) # (!\lf|third\(3) & (\lf|third\(2) $ (((\lf|third\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lf|third\(2),
	datab => \lf|third\(3),
	datac => \lf|third\(0),
	datad => \lf|third\(1),
	combout => \lf|sevenseg3|WideOr5~0_combout\);

-- Location: LCCOMB_X114_Y33_N14
\lf|sevenseg3|WideOr5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \lf|sevenseg3|WideOr5~2_combout\ = (\lf|third\(4) & ((\lf|sevenseg3|WideOr5~0_combout\))) # (!\lf|third\(4) & (\lf|sevenseg3|WideOr5~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lf|sevenseg3|WideOr5~1_combout\,
	datac => \lf|sevenseg3|WideOr5~0_combout\,
	datad => \lf|third\(4),
	combout => \lf|sevenseg3|WideOr5~2_combout\);

-- Location: LCCOMB_X114_Y33_N10
\lf|sevenseg3|WideOr4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \lf|sevenseg3|WideOr4~1_combout\ = (\lf|third\(4) & (((!\lf|third\(0))))) # (!\lf|third\(4) & ((\lf|third\(2) & (\lf|third\(0) $ (\lf|third\(1)))) # (!\lf|third\(2) & (\lf|third\(0) & \lf|third\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lf|third\(2),
	datab => \lf|third\(4),
	datac => \lf|third\(0),
	datad => \lf|third\(1),
	combout => \lf|sevenseg3|WideOr4~1_combout\);

-- Location: LCCOMB_X114_Y33_N24
\lf|sevenseg3|WideOr4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lf|sevenseg3|WideOr4~0_combout\ = (!\lf|third\(0) & ((\lf|third\(2) & (!\lf|third\(4) & !\lf|third\(1))) # (!\lf|third\(2) & (\lf|third\(4) & \lf|third\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lf|third\(2),
	datab => \lf|third\(4),
	datac => \lf|third\(0),
	datad => \lf|third\(1),
	combout => \lf|sevenseg3|WideOr4~0_combout\);

-- Location: LCCOMB_X114_Y33_N16
\lf|sevenseg3|WideOr4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \lf|sevenseg3|WideOr4~2_combout\ = (\lf|third\(3) & ((\lf|sevenseg3|WideOr4~0_combout\))) # (!\lf|third\(3) & (\lf|sevenseg3|WideOr4~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lf|sevenseg3|WideOr4~1_combout\,
	datab => \lf|third\(3),
	datad => \lf|sevenseg3|WideOr4~0_combout\,
	combout => \lf|sevenseg3|WideOr4~2_combout\);

-- Location: LCCOMB_X114_Y33_N26
\lf|sevenseg3|WideOr3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lf|sevenseg3|WideOr3~0_combout\ = (\lf|third\(3) & (!\lf|third\(4) & (\lf|third\(0) $ (\lf|third\(1))))) # (!\lf|third\(3) & (\lf|third\(1) & (\lf|third\(4) $ (!\lf|third\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lf|third\(3),
	datab => \lf|third\(4),
	datac => \lf|third\(0),
	datad => \lf|third\(1),
	combout => \lf|sevenseg3|WideOr3~0_combout\);

-- Location: LCCOMB_X114_Y33_N4
\lf|sevenseg3|WideOr3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \lf|sevenseg3|WideOr3~1_combout\ = (\lf|third\(3) & ((\lf|third\(0) & (!\lf|third\(4))) # (!\lf|third\(0) & ((!\lf|third\(1)))))) # (!\lf|third\(3) & ((\lf|third\(0) & ((!\lf|third\(1)))) # (!\lf|third\(0) & (\lf|third\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010001111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lf|third\(3),
	datab => \lf|third\(4),
	datac => \lf|third\(0),
	datad => \lf|third\(1),
	combout => \lf|sevenseg3|WideOr3~1_combout\);

-- Location: LCCOMB_X114_Y33_N2
\lf|sevenseg3|WideOr3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \lf|sevenseg3|WideOr3~2_combout\ = (\lf|third\(2) & (\lf|sevenseg3|WideOr3~0_combout\)) # (!\lf|third\(2) & ((\lf|sevenseg3|WideOr3~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lf|sevenseg3|WideOr3~0_combout\,
	datac => \lf|sevenseg3|WideOr3~1_combout\,
	datad => \lf|third\(2),
	combout => \lf|sevenseg3|WideOr3~2_combout\);

-- Location: LCCOMB_X114_Y33_N12
\lf|sevenseg3|WideOr2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lf|sevenseg3|WideOr2~0_combout\ = (\lf|third\(2) & ((\lf|third\(1)))) # (!\lf|third\(2) & (\lf|third\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lf|third\(2),
	datac => \lf|third\(0),
	datad => \lf|third\(1),
	combout => \lf|sevenseg3|WideOr2~0_combout\);

-- Location: LCCOMB_X114_Y33_N6
\lf|sevenseg3|WideOr2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \lf|sevenseg3|WideOr2~1_combout\ = (\lf|sevenseg3|WideOr2~0_combout\ & ((\lf|third\(3) & ((!\lf|third\(1)))) # (!\lf|third\(3) & (\lf|third\(4))))) # (!\lf|sevenseg3|WideOr2~0_combout\ & (!\lf|third\(4) & (\lf|third\(3) & \lf|third\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lf|sevenseg3|WideOr2~0_combout\,
	datab => \lf|third\(4),
	datac => \lf|third\(3),
	datad => \lf|third\(1),
	combout => \lf|sevenseg3|WideOr2~1_combout\);

-- Location: LCCOMB_X114_Y34_N4
\lf|sevenseg3|WideOr1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lf|sevenseg3|WideOr1~0_combout\ = (\lf|third\(0) & (!\lf|third\(3) & (!\lf|third\(1) & \lf|third\(2)))) # (!\lf|third\(0) & (!\lf|third\(2) & ((\lf|third\(3)) # (\lf|third\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lf|third\(0),
	datab => \lf|third\(3),
	datac => \lf|third\(1),
	datad => \lf|third\(2),
	combout => \lf|sevenseg3|WideOr1~0_combout\);

-- Location: LCCOMB_X114_Y34_N18
\lf|sevenseg3|WideOr1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \lf|sevenseg3|WideOr1~1_combout\ = (\lf|third\(0) & (\lf|third\(3) $ (((\lf|third\(1) & !\lf|third\(2)))))) # (!\lf|third\(0) & ((\lf|third\(3) & (\lf|third\(1))) # (!\lf|third\(3) & (!\lf|third\(1) & \lf|third\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100101101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lf|third\(0),
	datab => \lf|third\(3),
	datac => \lf|third\(1),
	datad => \lf|third\(2),
	combout => \lf|sevenseg3|WideOr1~1_combout\);

-- Location: LCCOMB_X114_Y34_N28
\lf|sevenseg3|WideOr1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \lf|sevenseg3|WideOr1~2_combout\ = (\lf|third\(4) & (\lf|sevenseg3|WideOr1~0_combout\)) # (!\lf|third\(4) & ((\lf|sevenseg3|WideOr1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lf|third\(4),
	datac => \lf|sevenseg3|WideOr1~0_combout\,
	datad => \lf|sevenseg3|WideOr1~1_combout\,
	combout => \lf|sevenseg3|WideOr1~2_combout\);

-- Location: LCCOMB_X114_Y33_N8
\lf|sevenseg3|WideOr0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lf|sevenseg3|WideOr0~0_combout\ = (\lf|third\(0) & (!\lf|third\(1) & (\lf|third\(2) $ (\lf|third\(3))))) # (!\lf|third\(0) & (\lf|third\(2) $ (\lf|third\(3) $ (!\lf|third\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lf|third\(2),
	datab => \lf|third\(3),
	datac => \lf|third\(0),
	datad => \lf|third\(1),
	combout => \lf|sevenseg3|WideOr0~0_combout\);

-- Location: LCCOMB_X114_Y33_N30
\lf|sevenseg3|WideOr0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \lf|sevenseg3|WideOr0~1_combout\ = (\lf|sevenseg3|WideOr0~0_combout\ & ((\lf|third\(2) & ((\lf|third\(3)) # (\lf|third\(4)))) # (!\lf|third\(2) & ((!\lf|third\(4)))))) # (!\lf|sevenseg3|WideOr0~0_combout\ & (((\lf|third\(3) & \lf|third\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lf|third\(2),
	datab => \lf|third\(3),
	datac => \lf|sevenseg3|WideOr0~0_combout\,
	datad => \lf|third\(4),
	combout => \lf|sevenseg3|WideOr0~1_combout\);

-- Location: LCCOMB_X113_Y37_N26
\lf|WideOr18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lf|WideOr18~0_combout\ = (\lf|character\(3) & (((\lf|character\(1) & !\lf|character\(2))) # (!\lf|character\(0)))) # (!\lf|character\(3) & ((\lf|character\(1)) # ((!\lf|character\(0) & \lf|character\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lf|character\(3),
	datab => \lf|character\(0),
	datac => \lf|character\(1),
	datad => \lf|character\(2),
	combout => \lf|WideOr18~0_combout\);

-- Location: FF_X113_Y37_N27
\lf|fourth[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~input_o\,
	d => \lf|WideOr18~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lf|fourth\(0));

-- Location: LCCOMB_X113_Y37_N12
\lf|WideOr16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lf|WideOr16~0_combout\ = (\lf|character\(3) & ((\lf|character\(0)) # ((\lf|character\(2))))) # (!\lf|character\(3) & (((!\lf|character\(1))) # (!\lf|character\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lf|character\(3),
	datab => \lf|character\(0),
	datac => \lf|character\(1),
	datad => \lf|character\(2),
	combout => \lf|WideOr16~0_combout\);

-- Location: FF_X113_Y37_N13
\lf|fourth[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~input_o\,
	d => \lf|WideOr16~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lf|fourth\(2));

-- Location: LCCOMB_X113_Y37_N24
\lf|WideOr14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lf|WideOr14~0_combout\ = (\lf|character\(1) & (\lf|character\(2) & (\lf|character\(3) $ (!\lf|character\(0))))) # (!\lf|character\(1) & (!\lf|character\(2) & (\lf|character\(3) $ (\lf|character\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lf|character\(3),
	datab => \lf|character\(0),
	datac => \lf|character\(1),
	datad => \lf|character\(2),
	combout => \lf|WideOr14~0_combout\);

-- Location: FF_X113_Y37_N25
\lf|fourth[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~input_o\,
	d => \lf|WideOr14~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lf|fourth\(4));

-- Location: LCCOMB_X113_Y37_N22
\lf|WideOr17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lf|WideOr17~0_combout\ = (\lf|character\(1) & (!\lf|character\(3) & (\lf|character\(0) & \lf|character\(2)))) # (!\lf|character\(1) & (\lf|character\(0) $ (((\lf|character\(2)) # (!\lf|character\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001100001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lf|character\(3),
	datab => \lf|character\(0),
	datac => \lf|character\(1),
	datad => \lf|character\(2),
	combout => \lf|WideOr17~0_combout\);

-- Location: FF_X113_Y37_N23
\lf|fourth[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~input_o\,
	d => \lf|WideOr17~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lf|fourth\(1));

-- Location: LCCOMB_X114_Y37_N10
\lf|WideOr15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lf|WideOr15~0_combout\ = (\lf|character\(1) & (!\lf|character\(3) & (\lf|character\(2) $ (!\lf|character\(0))))) # (!\lf|character\(1) & ((\lf|character\(3) $ (\lf|character\(2))) # (!\lf|character\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010001010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lf|character\(1),
	datab => \lf|character\(3),
	datac => \lf|character\(2),
	datad => \lf|character\(0),
	combout => \lf|WideOr15~0_combout\);

-- Location: FF_X114_Y37_N11
\lf|fourth[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~input_o\,
	d => \lf|WideOr15~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lf|fourth\(3));

-- Location: LCCOMB_X113_Y55_N2
\lf|sevenseg4|WideOr6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \lf|sevenseg4|WideOr6~1_combout\ = (\lf|fourth\(4) & (\lf|fourth\(3) $ (((\lf|fourth\(2)) # (\lf|fourth\(1)))))) # (!\lf|fourth\(4) & ((\lf|fourth\(3)) # (\lf|fourth\(2) $ (\lf|fourth\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011111011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lf|fourth\(2),
	datab => \lf|fourth\(4),
	datac => \lf|fourth\(1),
	datad => \lf|fourth\(3),
	combout => \lf|sevenseg4|WideOr6~1_combout\);

-- Location: LCCOMB_X113_Y55_N28
\lf|sevenseg4|WideOr6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lf|sevenseg4|WideOr6~0_combout\ = (\lf|fourth\(2) & ((\lf|fourth\(4) & ((!\lf|fourth\(3)))) # (!\lf|fourth\(4) & (\lf|fourth\(1) & \lf|fourth\(3))))) # (!\lf|fourth\(2) & ((\lf|fourth\(1) & (!\lf|fourth\(4) & !\lf|fourth\(3))) # (!\lf|fourth\(1) & 
-- ((\lf|fourth\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010110011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lf|fourth\(2),
	datab => \lf|fourth\(4),
	datac => \lf|fourth\(1),
	datad => \lf|fourth\(3),
	combout => \lf|sevenseg4|WideOr6~0_combout\);

-- Location: LCCOMB_X113_Y55_N8
\lf|sevenseg4|WideOr6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \lf|sevenseg4|WideOr6~2_combout\ = (\lf|fourth\(0) & ((\lf|sevenseg4|WideOr6~0_combout\))) # (!\lf|fourth\(0) & (\lf|sevenseg4|WideOr6~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lf|fourth\(0),
	datab => \lf|sevenseg4|WideOr6~1_combout\,
	datad => \lf|sevenseg4|WideOr6~0_combout\,
	combout => \lf|sevenseg4|WideOr6~2_combout\);

-- Location: LCCOMB_X113_Y55_N12
\lf|sevenseg4|WideOr5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \lf|sevenseg4|WideOr5~1_combout\ = (\lf|fourth\(2) & ((\lf|fourth\(3)) # ((\lf|fourth\(1)) # (\lf|fourth\(0))))) # (!\lf|fourth\(2) & (\lf|fourth\(1) $ (((\lf|fourth\(3) & !\lf|fourth\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lf|fourth\(2),
	datab => \lf|fourth\(3),
	datac => \lf|fourth\(1),
	datad => \lf|fourth\(0),
	combout => \lf|sevenseg4|WideOr5~1_combout\);

-- Location: LCCOMB_X113_Y55_N10
\lf|sevenseg4|WideOr5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lf|sevenseg4|WideOr5~0_combout\ = (\lf|fourth\(3) & (!\lf|fourth\(2) & (!\lf|fourth\(1) & !\lf|fourth\(0)))) # (!\lf|fourth\(3) & (\lf|fourth\(2) $ ((\lf|fourth\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lf|fourth\(2),
	datab => \lf|fourth\(3),
	datac => \lf|fourth\(1),
	datad => \lf|fourth\(0),
	combout => \lf|sevenseg4|WideOr5~0_combout\);

-- Location: LCCOMB_X114_Y55_N28
\lf|sevenseg4|WideOr5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \lf|sevenseg4|WideOr5~2_combout\ = (\lf|fourth\(4) & ((\lf|sevenseg4|WideOr5~0_combout\))) # (!\lf|fourth\(4) & (\lf|sevenseg4|WideOr5~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lf|sevenseg4|WideOr5~1_combout\,
	datac => \lf|fourth\(4),
	datad => \lf|sevenseg4|WideOr5~0_combout\,
	combout => \lf|sevenseg4|WideOr5~2_combout\);

-- Location: LCCOMB_X113_Y55_N0
\lf|sevenseg4|WideOr4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \lf|sevenseg4|WideOr4~1_combout\ = (\lf|fourth\(4) & (((!\lf|fourth\(0))))) # (!\lf|fourth\(4) & ((\lf|fourth\(2) & (\lf|fourth\(1) $ (\lf|fourth\(0)))) # (!\lf|fourth\(2) & (\lf|fourth\(1) & \lf|fourth\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lf|fourth\(2),
	datab => \lf|fourth\(4),
	datac => \lf|fourth\(1),
	datad => \lf|fourth\(0),
	combout => \lf|sevenseg4|WideOr4~1_combout\);

-- Location: LCCOMB_X113_Y55_N22
\lf|sevenseg4|WideOr4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lf|sevenseg4|WideOr4~0_combout\ = (!\lf|fourth\(0) & ((\lf|fourth\(2) & (!\lf|fourth\(4) & !\lf|fourth\(1))) # (!\lf|fourth\(2) & (\lf|fourth\(4) & \lf|fourth\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lf|fourth\(2),
	datab => \lf|fourth\(4),
	datac => \lf|fourth\(1),
	datad => \lf|fourth\(0),
	combout => \lf|sevenseg4|WideOr4~0_combout\);

-- Location: LCCOMB_X113_Y55_N18
\lf|sevenseg4|WideOr4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \lf|sevenseg4|WideOr4~2_combout\ = (\lf|fourth\(3) & ((\lf|sevenseg4|WideOr4~0_combout\))) # (!\lf|fourth\(3) & (\lf|sevenseg4|WideOr4~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lf|sevenseg4|WideOr4~1_combout\,
	datac => \lf|sevenseg4|WideOr4~0_combout\,
	datad => \lf|fourth\(3),
	combout => \lf|sevenseg4|WideOr4~2_combout\);

-- Location: LCCOMB_X113_Y55_N20
\lf|sevenseg4|WideOr3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lf|sevenseg4|WideOr3~0_combout\ = (\lf|fourth\(3) & (!\lf|fourth\(4) & (\lf|fourth\(0) $ (\lf|fourth\(1))))) # (!\lf|fourth\(3) & (\lf|fourth\(1) & (\lf|fourth\(0) $ (!\lf|fourth\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lf|fourth\(0),
	datab => \lf|fourth\(4),
	datac => \lf|fourth\(1),
	datad => \lf|fourth\(3),
	combout => \lf|sevenseg4|WideOr3~0_combout\);

-- Location: LCCOMB_X113_Y55_N26
\lf|sevenseg4|WideOr3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \lf|sevenseg4|WideOr3~1_combout\ = (\lf|fourth\(0) & ((\lf|fourth\(3) & (!\lf|fourth\(4))) # (!\lf|fourth\(3) & ((!\lf|fourth\(1)))))) # (!\lf|fourth\(0) & ((\lf|fourth\(3) & ((!\lf|fourth\(1)))) # (!\lf|fourth\(3) & (\lf|fourth\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011101001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lf|fourth\(0),
	datab => \lf|fourth\(4),
	datac => \lf|fourth\(1),
	datad => \lf|fourth\(3),
	combout => \lf|sevenseg4|WideOr3~1_combout\);

-- Location: LCCOMB_X114_Y55_N30
\lf|sevenseg4|WideOr3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \lf|sevenseg4|WideOr3~2_combout\ = (\lf|fourth\(2) & (\lf|sevenseg4|WideOr3~0_combout\)) # (!\lf|fourth\(2) & ((\lf|sevenseg4|WideOr3~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lf|sevenseg4|WideOr3~0_combout\,
	datac => \lf|sevenseg4|WideOr3~1_combout\,
	datad => \lf|fourth\(2),
	combout => \lf|sevenseg4|WideOr3~2_combout\);

-- Location: LCCOMB_X113_Y55_N16
\lf|sevenseg4|WideOr2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lf|sevenseg4|WideOr2~0_combout\ = (\lf|fourth\(2) & (\lf|fourth\(1))) # (!\lf|fourth\(2) & ((\lf|fourth\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lf|fourth\(2),
	datac => \lf|fourth\(1),
	datad => \lf|fourth\(0),
	combout => \lf|sevenseg4|WideOr2~0_combout\);

-- Location: LCCOMB_X113_Y55_N30
\lf|sevenseg4|WideOr2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \lf|sevenseg4|WideOr2~1_combout\ = (\lf|sevenseg4|WideOr2~0_combout\ & ((\lf|fourth\(3) & ((!\lf|fourth\(1)))) # (!\lf|fourth\(3) & (\lf|fourth\(4))))) # (!\lf|sevenseg4|WideOr2~0_combout\ & (!\lf|fourth\(4) & (\lf|fourth\(1) & \lf|fourth\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lf|sevenseg4|WideOr2~0_combout\,
	datab => \lf|fourth\(4),
	datac => \lf|fourth\(1),
	datad => \lf|fourth\(3),
	combout => \lf|sevenseg4|WideOr2~1_combout\);

-- Location: LCCOMB_X113_Y55_N6
\lf|sevenseg4|WideOr1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \lf|sevenseg4|WideOr1~1_combout\ = (\lf|fourth\(1) & (\lf|fourth\(3) $ (((!\lf|fourth\(2) & \lf|fourth\(0)))))) # (!\lf|fourth\(1) & ((\lf|fourth\(3) & ((\lf|fourth\(0)))) # (!\lf|fourth\(3) & (\lf|fourth\(2) & !\lf|fourth\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lf|fourth\(2),
	datab => \lf|fourth\(3),
	datac => \lf|fourth\(1),
	datad => \lf|fourth\(0),
	combout => \lf|sevenseg4|WideOr1~1_combout\);

-- Location: LCCOMB_X113_Y55_N24
\lf|sevenseg4|WideOr1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lf|sevenseg4|WideOr1~0_combout\ = (\lf|fourth\(2) & (!\lf|fourth\(3) & (!\lf|fourth\(1) & \lf|fourth\(0)))) # (!\lf|fourth\(2) & (!\lf|fourth\(0) & ((\lf|fourth\(3)) # (\lf|fourth\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lf|fourth\(2),
	datab => \lf|fourth\(3),
	datac => \lf|fourth\(1),
	datad => \lf|fourth\(0),
	combout => \lf|sevenseg4|WideOr1~0_combout\);

-- Location: LCCOMB_X114_Y55_N16
\lf|sevenseg4|WideOr1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \lf|sevenseg4|WideOr1~2_combout\ = (\lf|fourth\(4) & ((\lf|sevenseg4|WideOr1~0_combout\))) # (!\lf|fourth\(4) & (\lf|sevenseg4|WideOr1~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \lf|sevenseg4|WideOr1~1_combout\,
	datac => \lf|fourth\(4),
	datad => \lf|sevenseg4|WideOr1~0_combout\,
	combout => \lf|sevenseg4|WideOr1~2_combout\);

-- Location: LCCOMB_X113_Y55_N4
\lf|sevenseg4|WideOr0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lf|sevenseg4|WideOr0~0_combout\ = (\lf|fourth\(1) & (!\lf|fourth\(0) & (\lf|fourth\(2) $ (\lf|fourth\(3))))) # (!\lf|fourth\(1) & (\lf|fourth\(2) $ (\lf|fourth\(3) $ (!\lf|fourth\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lf|fourth\(2),
	datab => \lf|fourth\(3),
	datac => \lf|fourth\(1),
	datad => \lf|fourth\(0),
	combout => \lf|sevenseg4|WideOr0~0_combout\);

-- Location: LCCOMB_X113_Y55_N14
\lf|sevenseg4|WideOr0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \lf|sevenseg4|WideOr0~1_combout\ = (\lf|fourth\(4) & ((\lf|sevenseg4|WideOr0~0_combout\ & (\lf|fourth\(2))) # (!\lf|sevenseg4|WideOr0~0_combout\ & ((\lf|fourth\(3)))))) # (!\lf|fourth\(4) & (\lf|sevenseg4|WideOr0~0_combout\ & ((\lf|fourth\(3)) # 
-- (!\lf|fourth\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lf|fourth\(2),
	datab => \lf|fourth\(4),
	datac => \lf|sevenseg4|WideOr0~0_combout\,
	datad => \lf|fourth\(3),
	combout => \lf|sevenseg4|WideOr0~1_combout\);

-- Location: IOIBUF_X115_Y14_N1
\SW[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

-- Location: IOIBUF_X115_Y15_N8
\SW[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

-- Location: IOIBUF_X115_Y13_N8
\SW[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

-- Location: IOIBUF_X115_Y18_N8
\SW[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(4),
	o => \SW[4]~input_o\);

-- Location: IOIBUF_X5_Y0_N15
\KEY[-1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY_neg_1,
	o => \KEY[-1]~input_o\);

ww_HEX3(0) <= \HEX3[0]~output_o\;

ww_HEX3(1) <= \HEX3[1]~output_o\;

ww_HEX3(2) <= \HEX3[2]~output_o\;

ww_HEX3(3) <= \HEX3[3]~output_o\;

ww_HEX3(4) <= \HEX3[4]~output_o\;

ww_HEX3(5) <= \HEX3[5]~output_o\;

ww_HEX3(6) <= \HEX3[6]~output_o\;

ww_HEX2(0) <= \HEX2[0]~output_o\;

ww_HEX2(1) <= \HEX2[1]~output_o\;

ww_HEX2(2) <= \HEX2[2]~output_o\;

ww_HEX2(3) <= \HEX2[3]~output_o\;

ww_HEX2(4) <= \HEX2[4]~output_o\;

ww_HEX2(5) <= \HEX2[5]~output_o\;

ww_HEX2(6) <= \HEX2[6]~output_o\;

ww_HEX1(0) <= \HEX1[0]~output_o\;

ww_HEX1(1) <= \HEX1[1]~output_o\;

ww_HEX1(2) <= \HEX1[2]~output_o\;

ww_HEX1(3) <= \HEX1[3]~output_o\;

ww_HEX1(4) <= \HEX1[4]~output_o\;

ww_HEX1(5) <= \HEX1[5]~output_o\;

ww_HEX1(6) <= \HEX1[6]~output_o\;

ww_HEX0(0) <= \HEX0[0]~output_o\;

ww_HEX0(1) <= \HEX0[1]~output_o\;

ww_HEX0(2) <= \HEX0[2]~output_o\;

ww_HEX0(3) <= \HEX0[3]~output_o\;

ww_HEX0(4) <= \HEX0[4]~output_o\;

ww_HEX0(5) <= \HEX0[5]~output_o\;

ww_HEX0(6) <= \HEX0[6]~output_o\;
END structure;


