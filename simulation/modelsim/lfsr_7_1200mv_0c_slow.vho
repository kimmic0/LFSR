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

-- DATE "05/02/2022 23:32:53"

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

ENTITY 	lfsr IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	q : IN std_logic_vector(3 DOWNTO 0);
	push : IN std_logic;
	segment4 : OUT std_logic_vector(6 DOWNTO 0);
	segment3 : OUT std_logic_vector(6 DOWNTO 0);
	segment2 : OUT std_logic_vector(6 DOWNTO 0);
	segment1 : OUT std_logic_vector(6 DOWNTO 0)
	);
END lfsr;

-- Design Ports Information
-- q[0]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[1]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[2]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[3]	=>  Location: PIN_G24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segment4[0]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segment4[1]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segment4[2]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segment4[3]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segment4[4]	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segment4[5]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segment4[6]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segment3[0]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segment3[1]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segment3[2]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segment3[3]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segment3[4]	=>  Location: PIN_G14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segment3[5]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segment3[6]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segment2[0]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segment2[1]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segment2[2]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segment2[3]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segment2[4]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segment2[5]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segment2[6]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segment1[0]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segment1[1]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segment1[2]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segment1[3]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segment1[4]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segment1[5]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segment1[6]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- push	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_Y1,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF lfsr IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_q : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_push : std_logic;
SIGNAL ww_segment4 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_segment3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_segment2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_segment1 : std_logic_vector(6 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reset~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \push~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \q[0]~input_o\ : std_logic;
SIGNAL \q[1]~input_o\ : std_logic;
SIGNAL \q[2]~input_o\ : std_logic;
SIGNAL \q[3]~input_o\ : std_logic;
SIGNAL \segment4[0]~output_o\ : std_logic;
SIGNAL \segment4[1]~output_o\ : std_logic;
SIGNAL \segment4[2]~output_o\ : std_logic;
SIGNAL \segment4[3]~output_o\ : std_logic;
SIGNAL \segment4[4]~output_o\ : std_logic;
SIGNAL \segment4[5]~output_o\ : std_logic;
SIGNAL \segment4[6]~output_o\ : std_logic;
SIGNAL \segment3[0]~output_o\ : std_logic;
SIGNAL \segment3[1]~output_o\ : std_logic;
SIGNAL \segment3[2]~output_o\ : std_logic;
SIGNAL \segment3[3]~output_o\ : std_logic;
SIGNAL \segment3[4]~output_o\ : std_logic;
SIGNAL \segment3[5]~output_o\ : std_logic;
SIGNAL \segment3[6]~output_o\ : std_logic;
SIGNAL \segment2[0]~output_o\ : std_logic;
SIGNAL \segment2[1]~output_o\ : std_logic;
SIGNAL \segment2[2]~output_o\ : std_logic;
SIGNAL \segment2[3]~output_o\ : std_logic;
SIGNAL \segment2[4]~output_o\ : std_logic;
SIGNAL \segment2[5]~output_o\ : std_logic;
SIGNAL \segment2[6]~output_o\ : std_logic;
SIGNAL \segment1[0]~output_o\ : std_logic;
SIGNAL \segment1[1]~output_o\ : std_logic;
SIGNAL \segment1[2]~output_o\ : std_logic;
SIGNAL \segment1[3]~output_o\ : std_logic;
SIGNAL \segment1[4]~output_o\ : std_logic;
SIGNAL \segment1[5]~output_o\ : std_logic;
SIGNAL \segment1[6]~output_o\ : std_logic;
SIGNAL \push~input_o\ : std_logic;
SIGNAL \push~inputclkctrl_outclk\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \y[0]~0_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \path~combout\ : std_logic;
SIGNAL \y[2]~feeder_combout\ : std_logic;
SIGNAL \y[1]~feeder_combout\ : std_logic;
SIGNAL \character[1]~feeder_combout\ : std_logic;
SIGNAL \character[2]~feeder_combout\ : std_logic;
SIGNAL \character[3]~feeder_combout\ : std_logic;
SIGNAL \character[0]~0_combout\ : std_logic;
SIGNAL \WideOr15~0_combout\ : std_logic;
SIGNAL \WideOr13~0_combout\ : std_logic;
SIGNAL \WideOr14~0_combout\ : std_logic;
SIGNAL \WideOr16~0_combout\ : std_logic;
SIGNAL \sevenseg4|WideOr6~1_combout\ : std_logic;
SIGNAL \sevenseg4|WideOr6~0_combout\ : std_logic;
SIGNAL \WideOr17~0_combout\ : std_logic;
SIGNAL \sevenseg4|WideOr6~2_combout\ : std_logic;
SIGNAL \sevenseg4|WideOr5~0_combout\ : std_logic;
SIGNAL \sevenseg4|WideOr5~1_combout\ : std_logic;
SIGNAL \sevenseg4|WideOr5~2_combout\ : std_logic;
SIGNAL \sevenseg4|WideOr4~0_combout\ : std_logic;
SIGNAL \sevenseg4|WideOr4~1_combout\ : std_logic;
SIGNAL \sevenseg4|WideOr4~2_combout\ : std_logic;
SIGNAL \sevenseg4|WideOr3~1_combout\ : std_logic;
SIGNAL \sevenseg4|WideOr3~0_combout\ : std_logic;
SIGNAL \sevenseg4|WideOr3~2_combout\ : std_logic;
SIGNAL \sevenseg4|WideOr2~0_combout\ : std_logic;
SIGNAL \sevenseg4|WideOr2~1_combout\ : std_logic;
SIGNAL \sevenseg4|WideOr1~1_combout\ : std_logic;
SIGNAL \sevenseg4|WideOr1~0_combout\ : std_logic;
SIGNAL \sevenseg4|WideOr1~2_combout\ : std_logic;
SIGNAL \sevenseg4|WideOr0~0_combout\ : std_logic;
SIGNAL \sevenseg4|WideOr0~1_combout\ : std_logic;
SIGNAL \WideOr12~0_combout\ : std_logic;
SIGNAL \WideOr10~0_combout\ : std_logic;
SIGNAL \WideOr11~0_combout\ : std_logic;
SIGNAL \WideOr8~0_combout\ : std_logic;
SIGNAL \WideOr9~0_combout\ : std_logic;
SIGNAL \sevenseg3|WideOr6~1_combout\ : std_logic;
SIGNAL \sevenseg3|WideOr6~0_combout\ : std_logic;
SIGNAL \sevenseg3|WideOr6~2_combout\ : std_logic;
SIGNAL \sevenseg3|WideOr5~1_combout\ : std_logic;
SIGNAL \sevenseg3|WideOr5~0_combout\ : std_logic;
SIGNAL \sevenseg3|WideOr5~2_combout\ : std_logic;
SIGNAL \sevenseg3|WideOr4~1_combout\ : std_logic;
SIGNAL \sevenseg3|WideOr4~0_combout\ : std_logic;
SIGNAL \sevenseg3|WideOr4~2_combout\ : std_logic;
SIGNAL \sevenseg3|WideOr3~1_combout\ : std_logic;
SIGNAL \sevenseg3|WideOr3~0_combout\ : std_logic;
SIGNAL \sevenseg3|WideOr3~2_combout\ : std_logic;
SIGNAL \sevenseg3|WideOr2~0_combout\ : std_logic;
SIGNAL \sevenseg3|WideOr2~1_combout\ : std_logic;
SIGNAL \sevenseg3|WideOr1~1_combout\ : std_logic;
SIGNAL \sevenseg3|WideOr1~0_combout\ : std_logic;
SIGNAL \sevenseg3|WideOr1~2_combout\ : std_logic;
SIGNAL \sevenseg3|WideOr0~0_combout\ : std_logic;
SIGNAL \sevenseg3|WideOr0~1_combout\ : std_logic;
SIGNAL \WideOr5~0_combout\ : std_logic;
SIGNAL \WideOr4~0_combout\ : std_logic;
SIGNAL \WideOr6~0_combout\ : std_logic;
SIGNAL \Decoder1~0_combout\ : std_logic;
SIGNAL \sevenseg2|WideOr6~1_combout\ : std_logic;
SIGNAL \sevenseg2|WideOr6~0_combout\ : std_logic;
SIGNAL \WideOr7~0_combout\ : std_logic;
SIGNAL \sevenseg2|WideOr6~2_combout\ : std_logic;
SIGNAL \sevenseg2|WideOr5~0_combout\ : std_logic;
SIGNAL \sevenseg2|WideOr5~1_combout\ : std_logic;
SIGNAL \sevenseg2|WideOr5~2_combout\ : std_logic;
SIGNAL \sevenseg2|WideOr4~0_combout\ : std_logic;
SIGNAL \sevenseg2|WideOr4~1_combout\ : std_logic;
SIGNAL \sevenseg2|WideOr4~2_combout\ : std_logic;
SIGNAL \sevenseg2|WideOr3~0_combout\ : std_logic;
SIGNAL \sevenseg2|WideOr3~1_combout\ : std_logic;
SIGNAL \sevenseg2|WideOr3~2_combout\ : std_logic;
SIGNAL \sevenseg2|WideOr2~0_combout\ : std_logic;
SIGNAL \sevenseg2|WideOr2~1_combout\ : std_logic;
SIGNAL \sevenseg2|WideOr1~1_combout\ : std_logic;
SIGNAL \sevenseg2|WideOr1~0_combout\ : std_logic;
SIGNAL \sevenseg2|WideOr1~2_combout\ : std_logic;
SIGNAL \sevenseg2|WideOr0~0_combout\ : std_logic;
SIGNAL \sevenseg2|WideOr0~1_combout\ : std_logic;
SIGNAL \WideOr3~0_combout\ : std_logic;
SIGNAL \first~0_combout\ : std_logic;
SIGNAL \WideOr2~0_combout\ : std_logic;
SIGNAL \WideOr1~0_combout\ : std_logic;
SIGNAL \WideOr0~0_combout\ : std_logic;
SIGNAL \sevenseg1|WideOr6~0_combout\ : std_logic;
SIGNAL \sevenseg1|WideOr6~1_combout\ : std_logic;
SIGNAL \sevenseg1|WideOr6~2_combout\ : std_logic;
SIGNAL \sevenseg1|WideOr5~0_combout\ : std_logic;
SIGNAL \sevenseg1|WideOr5~1_combout\ : std_logic;
SIGNAL \sevenseg1|WideOr5~2_combout\ : std_logic;
SIGNAL \sevenseg1|WideOr4~0_combout\ : std_logic;
SIGNAL \sevenseg1|WideOr4~1_combout\ : std_logic;
SIGNAL \sevenseg1|WideOr4~2_combout\ : std_logic;
SIGNAL \sevenseg1|WideOr3~1_combout\ : std_logic;
SIGNAL \sevenseg1|WideOr3~0_combout\ : std_logic;
SIGNAL \sevenseg1|WideOr3~2_combout\ : std_logic;
SIGNAL \sevenseg1|WideOr2~0_combout\ : std_logic;
SIGNAL \sevenseg1|WideOr2~1_combout\ : std_logic;
SIGNAL \sevenseg1|WideOr1~1_combout\ : std_logic;
SIGNAL \sevenseg1|WideOr1~0_combout\ : std_logic;
SIGNAL \sevenseg1|WideOr1~2_combout\ : std_logic;
SIGNAL \sevenseg1|WideOr0~0_combout\ : std_logic;
SIGNAL \sevenseg1|WideOr0~1_combout\ : std_logic;
SIGNAL fourth : std_logic_vector(6 DOWNTO 0);
SIGNAL third : std_logic_vector(6 DOWNTO 0);
SIGNAL second : std_logic_vector(6 DOWNTO 0);
SIGNAL first : std_logic_vector(6 DOWNTO 0);
SIGNAL character : std_logic_vector(3 DOWNTO 0);
SIGNAL y : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_reset~inputclkctrl_outclk\ : std_logic;

BEGIN

ww_clk <= clk;
ww_reset <= reset;
ww_q <= q;
ww_push <= push;
segment4 <= ww_segment4;
segment3 <= ww_segment3;
segment2 <= ww_segment2;
segment1 <= ww_segment1;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

\reset~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reset~input_o\);

\push~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \push~input_o\);
\ALT_INV_reset~inputclkctrl_outclk\ <= NOT \reset~inputclkctrl_outclk\;

-- Location: IOOBUF_X38_Y73_N16
\segment4[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sevenseg4|WideOr6~2_combout\,
	devoe => ww_devoe,
	o => \segment4[0]~output_o\);

-- Location: IOOBUF_X38_Y73_N2
\segment4[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sevenseg4|WideOr5~2_combout\,
	devoe => ww_devoe,
	o => \segment4[1]~output_o\);

-- Location: IOOBUF_X42_Y73_N2
\segment4[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sevenseg4|WideOr4~2_combout\,
	devoe => ww_devoe,
	o => \segment4[2]~output_o\);

-- Location: IOOBUF_X38_Y73_N23
\segment4[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sevenseg4|WideOr3~2_combout\,
	devoe => ww_devoe,
	o => \segment4[3]~output_o\);

-- Location: IOOBUF_X40_Y73_N9
\segment4[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sevenseg4|WideOr2~1_combout\,
	devoe => ww_devoe,
	o => \segment4[4]~output_o\);

-- Location: IOOBUF_X38_Y73_N9
\segment4[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sevenseg4|WideOr1~2_combout\,
	devoe => ww_devoe,
	o => \segment4[5]~output_o\);

-- Location: IOOBUF_X40_Y73_N2
\segment4[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sevenseg4|WideOr0~1_combout\,
	devoe => ww_devoe,
	o => \segment4[6]~output_o\);

-- Location: IOOBUF_X42_Y73_N9
\segment3[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sevenseg3|WideOr6~2_combout\,
	devoe => ww_devoe,
	o => \segment3[0]~output_o\);

-- Location: IOOBUF_X52_Y73_N23
\segment3[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sevenseg3|WideOr5~2_combout\,
	devoe => ww_devoe,
	o => \segment3[1]~output_o\);

-- Location: IOOBUF_X45_Y73_N9
\segment3[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sevenseg3|WideOr4~2_combout\,
	devoe => ww_devoe,
	o => \segment3[2]~output_o\);

-- Location: IOOBUF_X54_Y73_N2
\segment3[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sevenseg3|WideOr3~2_combout\,
	devoe => ww_devoe,
	o => \segment3[3]~output_o\);

-- Location: IOOBUF_X47_Y73_N16
\segment3[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sevenseg3|WideOr2~1_combout\,
	devoe => ww_devoe,
	o => \segment3[4]~output_o\);

-- Location: IOOBUF_X47_Y73_N2
\segment3[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sevenseg3|WideOr1~2_combout\,
	devoe => ww_devoe,
	o => \segment3[5]~output_o\);

-- Location: IOOBUF_X54_Y73_N9
\segment3[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sevenseg3|WideOr0~1_combout\,
	devoe => ww_devoe,
	o => \segment3[6]~output_o\);

-- Location: IOOBUF_X31_Y73_N9
\segment2[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sevenseg2|WideOr6~2_combout\,
	devoe => ww_devoe,
	o => \segment2[0]~output_o\);

-- Location: IOOBUF_X31_Y73_N2
\segment2[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sevenseg2|WideOr5~2_combout\,
	devoe => ww_devoe,
	o => \segment2[1]~output_o\);

-- Location: IOOBUF_X33_Y73_N9
\segment2[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sevenseg2|WideOr4~2_combout\,
	devoe => ww_devoe,
	o => \segment2[2]~output_o\);

-- Location: IOOBUF_X35_Y73_N16
\segment2[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sevenseg2|WideOr3~2_combout\,
	devoe => ww_devoe,
	o => \segment2[3]~output_o\);

-- Location: IOOBUF_X33_Y73_N2
\segment2[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sevenseg2|WideOr2~1_combout\,
	devoe => ww_devoe,
	o => \segment2[4]~output_o\);

-- Location: IOOBUF_X29_Y73_N2
\segment2[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sevenseg2|WideOr1~2_combout\,
	devoe => ww_devoe,
	o => \segment2[5]~output_o\);

-- Location: IOOBUF_X35_Y73_N23
\segment2[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sevenseg2|WideOr0~1_combout\,
	devoe => ww_devoe,
	o => \segment2[6]~output_o\);

-- Location: IOOBUF_X45_Y73_N2
\segment1[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sevenseg1|WideOr6~2_combout\,
	devoe => ww_devoe,
	o => \segment1[0]~output_o\);

-- Location: IOOBUF_X52_Y73_N2
\segment1[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sevenseg1|WideOr5~2_combout\,
	devoe => ww_devoe,
	o => \segment1[1]~output_o\);

-- Location: IOOBUF_X52_Y73_N9
\segment1[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sevenseg1|WideOr4~2_combout\,
	devoe => ww_devoe,
	o => \segment1[2]~output_o\);

-- Location: IOOBUF_X52_Y73_N16
\segment1[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sevenseg1|WideOr3~2_combout\,
	devoe => ww_devoe,
	o => \segment1[3]~output_o\);

-- Location: IOOBUF_X58_Y73_N9
\segment1[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sevenseg1|WideOr2~1_combout\,
	devoe => ww_devoe,
	o => \segment1[4]~output_o\);

-- Location: IOOBUF_X49_Y73_N23
\segment1[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sevenseg1|WideOr1~2_combout\,
	devoe => ww_devoe,
	o => \segment1[5]~output_o\);

-- Location: IOOBUF_X49_Y73_N16
\segment1[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sevenseg1|WideOr0~1_combout\,
	devoe => ww_devoe,
	o => \segment1[6]~output_o\);

-- Location: IOIBUF_X0_Y36_N8
\push~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_push,
	o => \push~input_o\);

-- Location: CLKCTRL_G2
\push~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \push~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \push~inputclkctrl_outclk\);

-- Location: IOIBUF_X0_Y36_N15
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G4
\clk~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: LCCOMB_X46_Y72_N8
\y[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \y[0]~0_combout\ = !y(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => y(1),
	combout => \y[0]~0_combout\);

-- Location: IOIBUF_X0_Y36_N22
\reset~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: CLKCTRL_G3
\reset~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \reset~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \reset~inputclkctrl_outclk\);

-- Location: FF_X46_Y72_N9
\y[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \y[0]~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y(0));

-- Location: LCCOMB_X46_Y72_N28
path : cycloneive_lcell_comb
-- Equation(s):
-- \path~combout\ = y(0) $ (!y(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => y(0),
	datad => y(1),
	combout => \path~combout\);

-- Location: FF_X46_Y72_N29
\y[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \path~combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y(3));

-- Location: LCCOMB_X45_Y72_N18
\y[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \y[2]~feeder_combout\ = y(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => y(3),
	combout => \y[2]~feeder_combout\);

-- Location: FF_X45_Y72_N19
\y[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \y[2]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y(2));

-- Location: LCCOMB_X46_Y72_N10
\y[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \y[1]~feeder_combout\ = y(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => y(2),
	combout => \y[1]~feeder_combout\);

-- Location: FF_X46_Y72_N11
\y[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \y[1]~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => y(1));

-- Location: LCCOMB_X46_Y72_N4
\character[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \character[1]~feeder_combout\ = y(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => y(1),
	combout => \character[1]~feeder_combout\);

-- Location: FF_X46_Y72_N5
\character[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \push~inputclkctrl_outclk\,
	d => \character[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => character(1));

-- Location: LCCOMB_X45_Y72_N8
\character[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \character[2]~feeder_combout\ = y(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => y(2),
	combout => \character[2]~feeder_combout\);

-- Location: FF_X45_Y72_N9
\character[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \push~inputclkctrl_outclk\,
	d => \character[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => character(2));

-- Location: LCCOMB_X46_Y72_N22
\character[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \character[3]~feeder_combout\ = y(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => y(3),
	combout => \character[3]~feeder_combout\);

-- Location: FF_X46_Y72_N23
\character[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \push~inputclkctrl_outclk\,
	d => \character[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => character(3));

-- Location: LCCOMB_X46_Y72_N6
\character[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \character[0]~0_combout\ = !y(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => y(0),
	combout => \character[0]~0_combout\);

-- Location: FF_X46_Y72_N7
\character[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \push~inputclkctrl_outclk\,
	d => \character[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => character(0));

-- Location: LCCOMB_X45_Y72_N28
\WideOr15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr15~0_combout\ = (character(1) & ((character(3) $ (character(0))))) # (!character(1) & ((character(2)) # ((!character(0)) # (!character(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => character(1),
	datab => character(2),
	datac => character(3),
	datad => character(0),
	combout => \WideOr15~0_combout\);

-- Location: FF_X45_Y72_N29
\fourth[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \push~inputclkctrl_outclk\,
	d => \WideOr15~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => fourth(2));

-- Location: LCCOMB_X45_Y72_N4
\WideOr13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr13~0_combout\ = (character(1) & (character(2) & (character(3) $ (character(0))))) # (!character(1) & (!character(2) & (character(3) & character(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => character(1),
	datab => character(2),
	datac => character(3),
	datad => character(0),
	combout => \WideOr13~0_combout\);

-- Location: FF_X45_Y72_N5
\fourth[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \push~inputclkctrl_outclk\,
	d => \WideOr13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => fourth(4));

-- Location: LCCOMB_X45_Y72_N26
\WideOr14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr14~0_combout\ = (character(1) & (!character(3) & (character(2) $ (character(0))))) # (!character(1) & ((character(0)) # (character(2) $ (character(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011100011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => character(1),
	datab => character(2),
	datac => character(3),
	datad => character(0),
	combout => \WideOr14~0_combout\);

-- Location: FF_X45_Y72_N27
\fourth[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \push~inputclkctrl_outclk\,
	d => \WideOr14~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => fourth(3));

-- Location: LCCOMB_X45_Y72_N14
\WideOr16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr16~0_combout\ = (character(1) & (!character(0) & (character(2) & !character(3)))) # (!character(1) & (character(0) $ (((!character(2) & character(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010010011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => character(0),
	datab => character(2),
	datac => character(3),
	datad => character(1),
	combout => \WideOr16~0_combout\);

-- Location: FF_X45_Y72_N15
\fourth[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \push~inputclkctrl_outclk\,
	d => \WideOr16~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => fourth(1));

-- Location: LCCOMB_X41_Y72_N30
\sevenseg4|WideOr6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevenseg4|WideOr6~1_combout\ = (fourth(4) & (fourth(3) $ (((fourth(2)) # (fourth(1)))))) # (!fourth(4) & ((fourth(3)) # (fourth(2) $ (fourth(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110101111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => fourth(2),
	datab => fourth(4),
	datac => fourth(3),
	datad => fourth(1),
	combout => \sevenseg4|WideOr6~1_combout\);

-- Location: LCCOMB_X41_Y72_N8
\sevenseg4|WideOr6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevenseg4|WideOr6~0_combout\ = (fourth(2) & ((fourth(4) & (!fourth(3))) # (!fourth(4) & (fourth(3) & fourth(1))))) # (!fourth(2) & ((fourth(3) & ((!fourth(1)))) # (!fourth(3) & (!fourth(4) & fourth(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100101011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => fourth(2),
	datab => fourth(4),
	datac => fourth(3),
	datad => fourth(1),
	combout => \sevenseg4|WideOr6~0_combout\);

-- Location: LCCOMB_X45_Y72_N0
\WideOr17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr17~0_combout\ = (character(1) & (((!character(3)) # (!character(2))))) # (!character(1) & (character(0) $ (((!character(2) & !character(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111110101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => character(0),
	datab => character(2),
	datac => character(3),
	datad => character(1),
	combout => \WideOr17~0_combout\);

-- Location: FF_X45_Y72_N1
\fourth[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \push~inputclkctrl_outclk\,
	d => \WideOr17~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => fourth(0));

-- Location: LCCOMB_X41_Y72_N4
\sevenseg4|WideOr6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevenseg4|WideOr6~2_combout\ = (fourth(0) & ((\sevenseg4|WideOr6~0_combout\))) # (!fourth(0) & (\sevenseg4|WideOr6~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sevenseg4|WideOr6~1_combout\,
	datab => \sevenseg4|WideOr6~0_combout\,
	datac => fourth(0),
	combout => \sevenseg4|WideOr6~2_combout\);

-- Location: LCCOMB_X41_Y72_N26
\sevenseg4|WideOr5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevenseg4|WideOr5~0_combout\ = (fourth(3) & (!fourth(2) & (!fourth(0) & !fourth(1)))) # (!fourth(3) & (fourth(2) $ (((fourth(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => fourth(2),
	datab => fourth(0),
	datac => fourth(3),
	datad => fourth(1),
	combout => \sevenseg4|WideOr5~0_combout\);

-- Location: LCCOMB_X41_Y72_N0
\sevenseg4|WideOr5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevenseg4|WideOr5~1_combout\ = (fourth(2) & ((fourth(0)) # ((fourth(3)) # (fourth(1))))) # (!fourth(2) & (fourth(1) $ (((!fourth(0) & fourth(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => fourth(2),
	datab => fourth(0),
	datac => fourth(3),
	datad => fourth(1),
	combout => \sevenseg4|WideOr5~1_combout\);

-- Location: LCCOMB_X40_Y72_N0
\sevenseg4|WideOr5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevenseg4|WideOr5~2_combout\ = (fourth(4) & (\sevenseg4|WideOr5~0_combout\)) # (!fourth(4) & ((\sevenseg4|WideOr5~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sevenseg4|WideOr5~0_combout\,
	datac => \sevenseg4|WideOr5~1_combout\,
	datad => fourth(4),
	combout => \sevenseg4|WideOr5~2_combout\);

-- Location: LCCOMB_X41_Y72_N14
\sevenseg4|WideOr4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevenseg4|WideOr4~0_combout\ = (!fourth(0) & ((fourth(2) & (!fourth(4) & !fourth(1))) # (!fourth(2) & (fourth(4) & fourth(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => fourth(2),
	datab => fourth(0),
	datac => fourth(4),
	datad => fourth(1),
	combout => \sevenseg4|WideOr4~0_combout\);

-- Location: LCCOMB_X41_Y72_N28
\sevenseg4|WideOr4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevenseg4|WideOr4~1_combout\ = (fourth(0) & (!fourth(4) & (fourth(2) $ (fourth(1))))) # (!fourth(0) & ((fourth(4)) # ((fourth(2) & fourth(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => fourth(2),
	datab => fourth(0),
	datac => fourth(4),
	datad => fourth(1),
	combout => \sevenseg4|WideOr4~1_combout\);

-- Location: LCCOMB_X42_Y72_N0
\sevenseg4|WideOr4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevenseg4|WideOr4~2_combout\ = (fourth(3) & (\sevenseg4|WideOr4~0_combout\)) # (!fourth(3) & ((\sevenseg4|WideOr4~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sevenseg4|WideOr4~0_combout\,
	datab => \sevenseg4|WideOr4~1_combout\,
	datac => fourth(3),
	combout => \sevenseg4|WideOr4~2_combout\);

-- Location: LCCOMB_X41_Y72_N12
\sevenseg4|WideOr3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevenseg4|WideOr3~1_combout\ = (fourth(3) & ((fourth(0) & (!fourth(4))) # (!fourth(0) & ((!fourth(1)))))) # (!fourth(3) & ((fourth(0) & ((!fourth(1)))) # (!fourth(0) & (fourth(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100001111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => fourth(3),
	datab => fourth(0),
	datac => fourth(4),
	datad => fourth(1),
	combout => \sevenseg4|WideOr3~1_combout\);

-- Location: LCCOMB_X41_Y72_N18
\sevenseg4|WideOr3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevenseg4|WideOr3~0_combout\ = (fourth(3) & (!fourth(4) & (fourth(0) $ (fourth(1))))) # (!fourth(3) & (fourth(1) & (fourth(0) $ (!fourth(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => fourth(3),
	datab => fourth(0),
	datac => fourth(4),
	datad => fourth(1),
	combout => \sevenseg4|WideOr3~0_combout\);

-- Location: LCCOMB_X41_Y72_N6
\sevenseg4|WideOr3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevenseg4|WideOr3~2_combout\ = (fourth(2) & ((\sevenseg4|WideOr3~0_combout\))) # (!fourth(2) & (\sevenseg4|WideOr3~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sevenseg4|WideOr3~1_combout\,
	datac => fourth(2),
	datad => \sevenseg4|WideOr3~0_combout\,
	combout => \sevenseg4|WideOr3~2_combout\);

-- Location: LCCOMB_X41_Y72_N16
\sevenseg4|WideOr2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevenseg4|WideOr2~0_combout\ = (fourth(2) & ((fourth(1)))) # (!fourth(2) & (fourth(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => fourth(0),
	datac => fourth(2),
	datad => fourth(1),
	combout => \sevenseg4|WideOr2~0_combout\);

-- Location: LCCOMB_X41_Y72_N2
\sevenseg4|WideOr2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevenseg4|WideOr2~1_combout\ = (fourth(3) & ((\sevenseg4|WideOr2~0_combout\ & ((!fourth(1)))) # (!\sevenseg4|WideOr2~0_combout\ & (!fourth(4) & fourth(1))))) # (!fourth(3) & (\sevenseg4|WideOr2~0_combout\ & (fourth(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => fourth(3),
	datab => \sevenseg4|WideOr2~0_combout\,
	datac => fourth(4),
	datad => fourth(1),
	combout => \sevenseg4|WideOr2~1_combout\);

-- Location: LCCOMB_X41_Y72_N22
\sevenseg4|WideOr1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevenseg4|WideOr1~1_combout\ = (fourth(0) & (fourth(3) $ (((!fourth(2) & fourth(1)))))) # (!fourth(0) & ((fourth(3) & ((fourth(1)))) # (!fourth(3) & (fourth(2) & !fourth(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => fourth(2),
	datab => fourth(0),
	datac => fourth(3),
	datad => fourth(1),
	combout => \sevenseg4|WideOr1~1_combout\);

-- Location: LCCOMB_X41_Y72_N20
\sevenseg4|WideOr1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevenseg4|WideOr1~0_combout\ = (fourth(2) & (fourth(0) & (!fourth(3) & !fourth(1)))) # (!fourth(2) & (!fourth(0) & ((fourth(3)) # (fourth(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => fourth(2),
	datab => fourth(0),
	datac => fourth(3),
	datad => fourth(1),
	combout => \sevenseg4|WideOr1~0_combout\);

-- Location: LCCOMB_X40_Y72_N2
\sevenseg4|WideOr1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevenseg4|WideOr1~2_combout\ = (fourth(4) & ((\sevenseg4|WideOr1~0_combout\))) # (!fourth(4) & (\sevenseg4|WideOr1~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sevenseg4|WideOr1~1_combout\,
	datac => \sevenseg4|WideOr1~0_combout\,
	datad => fourth(4),
	combout => \sevenseg4|WideOr1~2_combout\);

-- Location: LCCOMB_X41_Y72_N24
\sevenseg4|WideOr0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevenseg4|WideOr0~0_combout\ = (fourth(0) & (!fourth(1) & (fourth(2) $ (fourth(3))))) # (!fourth(0) & (fourth(2) $ (fourth(3) $ (!fourth(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001001101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => fourth(2),
	datab => fourth(0),
	datac => fourth(3),
	datad => fourth(1),
	combout => \sevenseg4|WideOr0~0_combout\);

-- Location: LCCOMB_X41_Y72_N10
\sevenseg4|WideOr0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevenseg4|WideOr0~1_combout\ = (fourth(4) & ((\sevenseg4|WideOr0~0_combout\ & (fourth(2))) # (!\sevenseg4|WideOr0~0_combout\ & ((fourth(3)))))) # (!fourth(4) & (\sevenseg4|WideOr0~0_combout\ & ((fourth(3)) # (!fourth(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => fourth(2),
	datab => fourth(4),
	datac => fourth(3),
	datad => \sevenseg4|WideOr0~0_combout\,
	combout => \sevenseg4|WideOr0~1_combout\);

-- Location: LCCOMB_X46_Y72_N14
\WideOr12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr12~0_combout\ = (character(2) & (((!character(0))))) # (!character(2) & ((character(3) & (!character(1))) # (!character(3) & ((character(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => character(3),
	datab => character(1),
	datac => character(0),
	datad => character(2),
	combout => \WideOr12~0_combout\);

-- Location: FF_X46_Y72_N15
\third[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \push~inputclkctrl_outclk\,
	d => \WideOr12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => third(0));

-- Location: LCCOMB_X45_Y72_N24
\WideOr10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr10~0_combout\ = (character(3) & (!character(1) & (!character(2)))) # (!character(3) & ((character(0)) # ((character(1) & !character(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => character(1),
	datab => character(2),
	datac => character(3),
	datad => character(0),
	combout => \WideOr10~0_combout\);

-- Location: FF_X45_Y72_N25
\third[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \push~inputclkctrl_outclk\,
	d => \WideOr10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => third(2));

-- Location: LCCOMB_X45_Y72_N6
\WideOr11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr11~0_combout\ = (character(1) & (!character(2) & ((character(3)) # (character(0))))) # (!character(1) & (character(2) $ (((!character(0)) # (!character(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => character(1),
	datab => character(2),
	datac => character(3),
	datad => character(0),
	combout => \WideOr11~0_combout\);

-- Location: FF_X45_Y72_N7
\third[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \push~inputclkctrl_outclk\,
	d => \WideOr11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => third(1));

-- Location: LCCOMB_X46_Y72_N20
\WideOr8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr8~0_combout\ = (character(0) & ((character(1) & (character(3) & !character(2))) # (!character(1) & ((character(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => character(3),
	datab => character(1),
	datac => character(0),
	datad => character(2),
	combout => \WideOr8~0_combout\);

-- Location: FF_X46_Y72_N21
\third[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \push~inputclkctrl_outclk\,
	d => \WideOr8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => third(4));

-- Location: LCCOMB_X45_Y72_N10
\WideOr9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr9~0_combout\ = (character(1) & (!character(3) & ((character(0)) # (!character(2))))) # (!character(1) & (character(0) $ (((character(2)) # (character(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101101010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => character(1),
	datab => character(2),
	datac => character(3),
	datad => character(0),
	combout => \WideOr9~0_combout\);

-- Location: FF_X45_Y72_N11
\third[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \push~inputclkctrl_outclk\,
	d => \WideOr9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => third(3));

-- Location: LCCOMB_X47_Y72_N26
\sevenseg3|WideOr6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevenseg3|WideOr6~1_combout\ = (third(4) & (third(3) $ (((third(2)) # (third(1)))))) # (!third(4) & ((third(3)) # (third(2) $ (third(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111111100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => third(2),
	datab => third(1),
	datac => third(4),
	datad => third(3),
	combout => \sevenseg3|WideOr6~1_combout\);

-- Location: LCCOMB_X47_Y72_N16
\sevenseg3|WideOr6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevenseg3|WideOr6~0_combout\ = (third(2) & ((third(4) & ((!third(3)))) # (!third(4) & (third(1) & third(3))))) # (!third(2) & ((third(1) & (!third(4) & !third(3))) # (!third(1) & ((third(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100110100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => third(2),
	datab => third(1),
	datac => third(4),
	datad => third(3),
	combout => \sevenseg3|WideOr6~0_combout\);

-- Location: LCCOMB_X47_Y72_N28
\sevenseg3|WideOr6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevenseg3|WideOr6~2_combout\ = (third(0) & ((\sevenseg3|WideOr6~0_combout\))) # (!third(0) & (\sevenseg3|WideOr6~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => third(0),
	datac => \sevenseg3|WideOr6~1_combout\,
	datad => \sevenseg3|WideOr6~0_combout\,
	combout => \sevenseg3|WideOr6~2_combout\);

-- Location: LCCOMB_X47_Y72_N4
\sevenseg3|WideOr5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevenseg3|WideOr5~1_combout\ = (third(3) & ((third(2)) # (third(1) $ (!third(0))))) # (!third(3) & ((third(1)) # ((third(2) & third(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => third(3),
	datab => third(1),
	datac => third(2),
	datad => third(0),
	combout => \sevenseg3|WideOr5~1_combout\);

-- Location: LCCOMB_X47_Y72_N18
\sevenseg3|WideOr5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevenseg3|WideOr5~0_combout\ = (third(3) & (!third(1) & (!third(2) & !third(0)))) # (!third(3) & (third(1) $ ((third(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => third(3),
	datab => third(1),
	datac => third(2),
	datad => third(0),
	combout => \sevenseg3|WideOr5~0_combout\);

-- Location: LCCOMB_X48_Y72_N24
\sevenseg3|WideOr5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevenseg3|WideOr5~2_combout\ = (third(4) & ((\sevenseg3|WideOr5~0_combout\))) # (!third(4) & (\sevenseg3|WideOr5~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sevenseg3|WideOr5~1_combout\,
	datac => third(4),
	datad => \sevenseg3|WideOr5~0_combout\,
	combout => \sevenseg3|WideOr5~2_combout\);

-- Location: LCCOMB_X47_Y72_N8
\sevenseg3|WideOr4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevenseg3|WideOr4~1_combout\ = (third(4) & (((!third(0))))) # (!third(4) & ((third(2) & (third(1) $ (third(0)))) # (!third(2) & (third(1) & third(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => third(2),
	datab => third(1),
	datac => third(4),
	datad => third(0),
	combout => \sevenseg3|WideOr4~1_combout\);

-- Location: LCCOMB_X47_Y72_N10
\sevenseg3|WideOr4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevenseg3|WideOr4~0_combout\ = (!third(0) & ((third(2) & (!third(1) & !third(4))) # (!third(2) & (third(1) & third(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => third(2),
	datab => third(1),
	datac => third(4),
	datad => third(0),
	combout => \sevenseg3|WideOr4~0_combout\);

-- Location: LCCOMB_X47_Y72_N2
\sevenseg3|WideOr4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevenseg3|WideOr4~2_combout\ = (third(3) & ((\sevenseg3|WideOr4~0_combout\))) # (!third(3) & (\sevenseg3|WideOr4~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => third(3),
	datac => \sevenseg3|WideOr4~1_combout\,
	datad => \sevenseg3|WideOr4~0_combout\,
	combout => \sevenseg3|WideOr4~2_combout\);

-- Location: LCCOMB_X47_Y72_N14
\sevenseg3|WideOr3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevenseg3|WideOr3~1_combout\ = (third(3) & ((third(0) & ((!third(4)))) # (!third(0) & (!third(1))))) # (!third(3) & ((third(0) & (!third(1))) # (!third(0) & ((third(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101101110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => third(3),
	datab => third(1),
	datac => third(4),
	datad => third(0),
	combout => \sevenseg3|WideOr3~1_combout\);

-- Location: LCCOMB_X47_Y72_N24
\sevenseg3|WideOr3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevenseg3|WideOr3~0_combout\ = (third(3) & (!third(4) & (third(1) $ (third(0))))) # (!third(3) & (third(1) & (third(4) $ (!third(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => third(3),
	datab => third(1),
	datac => third(4),
	datad => third(0),
	combout => \sevenseg3|WideOr3~0_combout\);

-- Location: LCCOMB_X48_Y72_N6
\sevenseg3|WideOr3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevenseg3|WideOr3~2_combout\ = (third(2) & ((\sevenseg3|WideOr3~0_combout\))) # (!third(2) & (\sevenseg3|WideOr3~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sevenseg3|WideOr3~1_combout\,
	datac => third(2),
	datad => \sevenseg3|WideOr3~0_combout\,
	combout => \sevenseg3|WideOr3~2_combout\);

-- Location: LCCOMB_X47_Y72_N20
\sevenseg3|WideOr2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevenseg3|WideOr2~0_combout\ = (third(2) & (third(1))) # (!third(2) & ((third(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => third(1),
	datac => third(2),
	datad => third(0),
	combout => \sevenseg3|WideOr2~0_combout\);

-- Location: LCCOMB_X47_Y72_N6
\sevenseg3|WideOr2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevenseg3|WideOr2~1_combout\ = (third(3) & ((third(1) & (!third(4) & !\sevenseg3|WideOr2~0_combout\)) # (!third(1) & ((\sevenseg3|WideOr2~0_combout\))))) # (!third(3) & (((third(4) & \sevenseg3|WideOr2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => third(3),
	datab => third(1),
	datac => third(4),
	datad => \sevenseg3|WideOr2~0_combout\,
	combout => \sevenseg3|WideOr2~1_combout\);

-- Location: LCCOMB_X47_Y72_N22
\sevenseg3|WideOr1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevenseg3|WideOr1~1_combout\ = (third(1) & (third(3) $ (((!third(2) & third(0)))))) # (!third(1) & ((third(3) & ((third(0)))) # (!third(3) & (third(2) & !third(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => third(3),
	datab => third(1),
	datac => third(2),
	datad => third(0),
	combout => \sevenseg3|WideOr1~1_combout\);

-- Location: LCCOMB_X47_Y72_N0
\sevenseg3|WideOr1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevenseg3|WideOr1~0_combout\ = (third(2) & (!third(3) & (!third(1) & third(0)))) # (!third(2) & (!third(0) & ((third(3)) # (third(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => third(3),
	datab => third(1),
	datac => third(2),
	datad => third(0),
	combout => \sevenseg3|WideOr1~0_combout\);

-- Location: LCCOMB_X47_Y72_N12
\sevenseg3|WideOr1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevenseg3|WideOr1~2_combout\ = (third(4) & ((\sevenseg3|WideOr1~0_combout\))) # (!third(4) & (\sevenseg3|WideOr1~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => third(4),
	datac => \sevenseg3|WideOr1~1_combout\,
	datad => \sevenseg3|WideOr1~0_combout\,
	combout => \sevenseg3|WideOr1~2_combout\);

-- Location: LCCOMB_X47_Y72_N30
\sevenseg3|WideOr0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevenseg3|WideOr0~0_combout\ = (third(1) & (!third(0) & (third(3) $ (third(2))))) # (!third(1) & (third(3) $ (third(2) $ (!third(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001001101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => third(3),
	datab => third(1),
	datac => third(2),
	datad => third(0),
	combout => \sevenseg3|WideOr0~0_combout\);

-- Location: LCCOMB_X48_Y72_N4
\sevenseg3|WideOr0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevenseg3|WideOr0~1_combout\ = (third(4) & ((\sevenseg3|WideOr0~0_combout\ & (third(2))) # (!\sevenseg3|WideOr0~0_combout\ & ((third(3)))))) # (!third(4) & (\sevenseg3|WideOr0~0_combout\ & ((third(3)) # (!third(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => third(2),
	datab => third(3),
	datac => third(4),
	datad => \sevenseg3|WideOr0~0_combout\,
	combout => \sevenseg3|WideOr0~1_combout\);

-- Location: LCCOMB_X45_Y72_N12
\WideOr5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr5~0_combout\ = (character(3) & (character(0) $ (((character(1)) # (!character(2)))))) # (!character(3) & ((character(1) & ((character(2)) # (character(0)))) # (!character(1) & ((!character(0)) # (!character(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101110111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => character(1),
	datab => character(2),
	datac => character(3),
	datad => character(0),
	combout => \WideOr5~0_combout\);

-- Location: FF_X45_Y72_N13
\second[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \push~inputclkctrl_outclk\,
	d => \WideOr5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => second(3));

-- Location: LCCOMB_X45_Y72_N20
\WideOr4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr4~0_combout\ = (character(1) & (!character(0) & ((character(2)) # (!character(3))))) # (!character(1) & (character(2) & (!character(3) & character(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => character(1),
	datab => character(2),
	datac => character(3),
	datad => character(0),
	combout => \WideOr4~0_combout\);

-- Location: FF_X45_Y72_N21
\second[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \push~inputclkctrl_outclk\,
	d => \WideOr4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => second(4));

-- Location: LCCOMB_X45_Y72_N2
\WideOr6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr6~0_combout\ = (character(1) & (!character(2) & ((!character(0))))) # (!character(1) & (character(2) $ (((!character(3) & !character(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => character(1),
	datab => character(2),
	datac => character(3),
	datad => character(0),
	combout => \WideOr6~0_combout\);

-- Location: FF_X45_Y72_N3
\second[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \push~inputclkctrl_outclk\,
	d => \WideOr6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => second(2));

-- Location: LCCOMB_X46_Y72_N24
\Decoder1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder1~0_combout\ = (character(3) & (!character(1) & (character(0) & character(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => character(3),
	datab => character(1),
	datac => character(0),
	datad => character(2),
	combout => \Decoder1~0_combout\);

-- Location: FF_X46_Y72_N25
\second[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \push~inputclkctrl_outclk\,
	d => \Decoder1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => second(1));

-- Location: LCCOMB_X34_Y72_N26
\sevenseg2|WideOr6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevenseg2|WideOr6~1_combout\ = (second(4) & (second(3) $ (((second(2)) # (second(1)))))) # (!second(4) & ((second(3)) # (second(2) $ (second(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011101111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => second(3),
	datab => second(4),
	datac => second(2),
	datad => second(1),
	combout => \sevenseg2|WideOr6~1_combout\);

-- Location: LCCOMB_X34_Y72_N8
\sevenseg2|WideOr6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevenseg2|WideOr6~0_combout\ = (second(3) & ((second(2) & (!second(4) & second(1))) # (!second(2) & ((!second(1)))))) # (!second(3) & ((second(4) & (second(2))) # (!second(4) & (!second(2) & second(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000101001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => second(3),
	datab => second(4),
	datac => second(2),
	datad => second(1),
	combout => \sevenseg2|WideOr6~0_combout\);

-- Location: LCCOMB_X45_Y72_N22
\WideOr7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr7~0_combout\ = (character(2) & ((character(1) & ((!character(0)) # (!character(3)))) # (!character(1) & (character(3))))) # (!character(2) & ((character(3) $ (!character(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => character(1),
	datab => character(2),
	datac => character(3),
	datad => character(0),
	combout => \WideOr7~0_combout\);

-- Location: FF_X45_Y72_N23
\second[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \push~inputclkctrl_outclk\,
	d => \WideOr7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => second(0));

-- Location: LCCOMB_X33_Y72_N0
\sevenseg2|WideOr6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevenseg2|WideOr6~2_combout\ = (second(0) & ((\sevenseg2|WideOr6~0_combout\))) # (!second(0) & (\sevenseg2|WideOr6~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sevenseg2|WideOr6~1_combout\,
	datac => \sevenseg2|WideOr6~0_combout\,
	datad => second(0),
	combout => \sevenseg2|WideOr6~2_combout\);

-- Location: LCCOMB_X34_Y72_N28
\sevenseg2|WideOr5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevenseg2|WideOr5~0_combout\ = (second(3) & (!second(0) & (!second(2) & !second(1)))) # (!second(3) & ((second(2) $ (second(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => second(0),
	datab => second(2),
	datac => second(3),
	datad => second(1),
	combout => \sevenseg2|WideOr5~0_combout\);

-- Location: LCCOMB_X34_Y72_N30
\sevenseg2|WideOr5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevenseg2|WideOr5~1_combout\ = (second(0) & ((second(2)) # ((second(1))))) # (!second(0) & ((second(3) & ((second(2)) # (!second(1)))) # (!second(3) & ((second(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => second(0),
	datab => second(2),
	datac => second(3),
	datad => second(1),
	combout => \sevenseg2|WideOr5~1_combout\);

-- Location: LCCOMB_X33_Y72_N10
\sevenseg2|WideOr5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevenseg2|WideOr5~2_combout\ = (second(4) & (\sevenseg2|WideOr5~0_combout\)) # (!second(4) & ((\sevenseg2|WideOr5~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sevenseg2|WideOr5~0_combout\,
	datac => \sevenseg2|WideOr5~1_combout\,
	datad => second(4),
	combout => \sevenseg2|WideOr5~2_combout\);

-- Location: LCCOMB_X34_Y72_N12
\sevenseg2|WideOr4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevenseg2|WideOr4~0_combout\ = (!second(0) & ((second(4) & (!second(2) & second(1))) # (!second(4) & (second(2) & !second(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => second(0),
	datab => second(4),
	datac => second(2),
	datad => second(1),
	combout => \sevenseg2|WideOr4~0_combout\);

-- Location: LCCOMB_X34_Y72_N18
\sevenseg2|WideOr4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevenseg2|WideOr4~1_combout\ = (second(0) & (!second(4) & (second(2) $ (second(1))))) # (!second(0) & ((second(4)) # ((second(2) & second(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => second(0),
	datab => second(4),
	datac => second(2),
	datad => second(1),
	combout => \sevenseg2|WideOr4~1_combout\);

-- Location: LCCOMB_X34_Y72_N0
\sevenseg2|WideOr4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevenseg2|WideOr4~2_combout\ = (second(3) & (\sevenseg2|WideOr4~0_combout\)) # (!second(3) & ((\sevenseg2|WideOr4~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sevenseg2|WideOr4~0_combout\,
	datac => second(3),
	datad => \sevenseg2|WideOr4~1_combout\,
	combout => \sevenseg2|WideOr4~2_combout\);

-- Location: LCCOMB_X34_Y72_N10
\sevenseg2|WideOr3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevenseg2|WideOr3~0_combout\ = (second(3) & (!second(4) & (second(0) $ (second(1))))) # (!second(3) & (second(1) & (second(4) $ (!second(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => second(3),
	datab => second(4),
	datac => second(0),
	datad => second(1),
	combout => \sevenseg2|WideOr3~0_combout\);

-- Location: LCCOMB_X34_Y72_N24
\sevenseg2|WideOr3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevenseg2|WideOr3~1_combout\ = (second(3) & ((second(0) & (!second(4))) # (!second(0) & ((!second(1)))))) # (!second(3) & ((second(0) & ((!second(1)))) # (!second(0) & (second(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010001111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => second(3),
	datab => second(4),
	datac => second(0),
	datad => second(1),
	combout => \sevenseg2|WideOr3~1_combout\);

-- Location: LCCOMB_X34_Y72_N22
\sevenseg2|WideOr3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevenseg2|WideOr3~2_combout\ = (second(2) & (\sevenseg2|WideOr3~0_combout\)) # (!second(2) & ((\sevenseg2|WideOr3~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sevenseg2|WideOr3~0_combout\,
	datab => second(2),
	datad => \sevenseg2|WideOr3~1_combout\,
	combout => \sevenseg2|WideOr3~2_combout\);

-- Location: LCCOMB_X34_Y72_N4
\sevenseg2|WideOr2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevenseg2|WideOr2~0_combout\ = (second(2) & ((second(1)))) # (!second(2) & (second(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => second(0),
	datab => second(2),
	datad => second(1),
	combout => \sevenseg2|WideOr2~0_combout\);

-- Location: LCCOMB_X34_Y72_N14
\sevenseg2|WideOr2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevenseg2|WideOr2~1_combout\ = (second(3) & ((\sevenseg2|WideOr2~0_combout\ & ((!second(1)))) # (!\sevenseg2|WideOr2~0_combout\ & (!second(4) & second(1))))) # (!second(3) & (second(4) & (\sevenseg2|WideOr2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => second(3),
	datab => second(4),
	datac => \sevenseg2|WideOr2~0_combout\,
	datad => second(1),
	combout => \sevenseg2|WideOr2~1_combout\);

-- Location: LCCOMB_X34_Y72_N6
\sevenseg2|WideOr1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevenseg2|WideOr1~1_combout\ = (second(0) & (second(3) $ (((!second(2) & second(1)))))) # (!second(0) & ((second(3) & ((second(1)))) # (!second(3) & (second(2) & !second(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => second(0),
	datab => second(2),
	datac => second(3),
	datad => second(1),
	combout => \sevenseg2|WideOr1~1_combout\);

-- Location: LCCOMB_X34_Y72_N20
\sevenseg2|WideOr1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevenseg2|WideOr1~0_combout\ = (second(0) & (second(2) & (!second(3) & !second(1)))) # (!second(0) & (!second(2) & ((second(3)) # (second(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => second(0),
	datab => second(2),
	datac => second(3),
	datad => second(1),
	combout => \sevenseg2|WideOr1~0_combout\);

-- Location: LCCOMB_X33_Y72_N4
\sevenseg2|WideOr1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevenseg2|WideOr1~2_combout\ = (second(4) & ((\sevenseg2|WideOr1~0_combout\))) # (!second(4) & (\sevenseg2|WideOr1~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sevenseg2|WideOr1~1_combout\,
	datac => \sevenseg2|WideOr1~0_combout\,
	datad => second(4),
	combout => \sevenseg2|WideOr1~2_combout\);

-- Location: LCCOMB_X34_Y72_N16
\sevenseg2|WideOr0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevenseg2|WideOr0~0_combout\ = (second(0) & (!second(1) & (second(2) $ (second(3))))) # (!second(0) & (second(2) $ (second(3) $ (!second(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010001101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => second(0),
	datab => second(2),
	datac => second(3),
	datad => second(1),
	combout => \sevenseg2|WideOr0~0_combout\);

-- Location: LCCOMB_X34_Y72_N2
\sevenseg2|WideOr0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevenseg2|WideOr0~1_combout\ = (second(4) & ((\sevenseg2|WideOr0~0_combout\ & ((second(2)))) # (!\sevenseg2|WideOr0~0_combout\ & (second(3))))) # (!second(4) & (\sevenseg2|WideOr0~0_combout\ & ((second(3)) # (!second(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => second(3),
	datab => second(4),
	datac => second(2),
	datad => \sevenseg2|WideOr0~0_combout\,
	combout => \sevenseg2|WideOr0~1_combout\);

-- Location: LCCOMB_X46_Y72_N18
\WideOr3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr3~0_combout\ = (character(1) & ((!character(0)))) # (!character(1) & ((character(0)) # (!character(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => character(3),
	datac => character(1),
	datad => character(0),
	combout => \WideOr3~0_combout\);

-- Location: FF_X46_Y72_N19
\first[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \push~inputclkctrl_outclk\,
	d => \WideOr3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => first(0));

-- Location: LCCOMB_X45_Y72_N16
\first~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \first~0_combout\ = (!character(2) & ((character(1) & (!character(3) & character(0))) # (!character(1) & (character(3) & !character(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => character(1),
	datab => character(2),
	datac => character(3),
	datad => character(0),
	combout => \first~0_combout\);

-- Location: FF_X45_Y72_N17
\first[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \push~inputclkctrl_outclk\,
	d => \first~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => first(4));

-- Location: LCCOMB_X45_Y72_N30
\WideOr2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr2~0_combout\ = (character(3) & (((character(0) & !character(2))) # (!character(1)))) # (!character(3) & (!character(1) & (character(0) $ (character(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000011110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => character(0),
	datab => character(2),
	datac => character(3),
	datad => character(1),
	combout => \WideOr2~0_combout\);

-- Location: FF_X45_Y72_N31
\first[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \push~inputclkctrl_outclk\,
	d => \WideOr2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => first(1));

-- Location: LCCOMB_X46_Y72_N26
\WideOr1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr1~0_combout\ = (character(2) & (character(0) & (character(3) $ (character(1))))) # (!character(2) & (!character(3) & (character(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => character(3),
	datab => character(1),
	datac => character(0),
	datad => character(2),
	combout => \WideOr1~0_combout\);

-- Location: FF_X46_Y72_N27
\first[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \push~inputclkctrl_outclk\,
	d => \WideOr1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => first(2));

-- Location: LCCOMB_X46_Y72_N12
\WideOr0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr0~0_combout\ = (!character(1) & ((character(3) & ((!character(2)))) # (!character(3) & (character(0) & character(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => character(3),
	datab => character(1),
	datac => character(0),
	datad => character(2),
	combout => \WideOr0~0_combout\);

-- Location: FF_X46_Y72_N13
\first[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \push~inputclkctrl_outclk\,
	d => \WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => first(3));

-- Location: LCCOMB_X46_Y72_N30
\sevenseg1|WideOr6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevenseg1|WideOr6~0_combout\ = (first(2) & ((first(4) & ((!first(3)))) # (!first(4) & (first(1) & first(3))))) # (!first(2) & ((first(1) & (!first(4) & !first(3))) # (!first(1) & ((first(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001110100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => first(4),
	datab => first(1),
	datac => first(2),
	datad => first(3),
	combout => \sevenseg1|WideOr6~0_combout\);

-- Location: LCCOMB_X46_Y72_N0
\sevenseg1|WideOr6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevenseg1|WideOr6~1_combout\ = (first(4) & (first(3) $ (((first(1)) # (first(2)))))) # (!first(4) & ((first(3)) # (first(1) $ (first(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011110111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => first(4),
	datab => first(1),
	datac => first(2),
	datad => first(3),
	combout => \sevenseg1|WideOr6~1_combout\);

-- Location: LCCOMB_X46_Y72_N16
\sevenseg1|WideOr6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevenseg1|WideOr6~2_combout\ = (first(0) & (\sevenseg1|WideOr6~0_combout\)) # (!first(0) & ((\sevenseg1|WideOr6~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => first(0),
	datac => \sevenseg1|WideOr6~0_combout\,
	datad => \sevenseg1|WideOr6~1_combout\,
	combout => \sevenseg1|WideOr6~2_combout\);

-- Location: LCCOMB_X49_Y72_N12
\sevenseg1|WideOr5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevenseg1|WideOr5~0_combout\ = (first(3) & (!first(2) & (!first(1) & !first(0)))) # (!first(3) & (first(2) $ ((first(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => first(2),
	datab => first(3),
	datac => first(1),
	datad => first(0),
	combout => \sevenseg1|WideOr5~0_combout\);

-- Location: LCCOMB_X49_Y72_N14
\sevenseg1|WideOr5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevenseg1|WideOr5~1_combout\ = (first(2) & ((first(3)) # ((first(1)) # (first(0))))) # (!first(2) & (first(1) $ (((first(3) & !first(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => first(2),
	datab => first(3),
	datac => first(1),
	datad => first(0),
	combout => \sevenseg1|WideOr5~1_combout\);

-- Location: LCCOMB_X49_Y72_N0
\sevenseg1|WideOr5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevenseg1|WideOr5~2_combout\ = (first(4) & (\sevenseg1|WideOr5~0_combout\)) # (!first(4) & ((\sevenseg1|WideOr5~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sevenseg1|WideOr5~0_combout\,
	datab => \sevenseg1|WideOr5~1_combout\,
	datac => first(4),
	combout => \sevenseg1|WideOr5~2_combout\);

-- Location: LCCOMB_X49_Y72_N26
\sevenseg1|WideOr4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevenseg1|WideOr4~0_combout\ = (!first(0) & ((first(4) & (first(1) & !first(2))) # (!first(4) & (!first(1) & first(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => first(4),
	datab => first(1),
	datac => first(2),
	datad => first(0),
	combout => \sevenseg1|WideOr4~0_combout\);

-- Location: LCCOMB_X49_Y72_N8
\sevenseg1|WideOr4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevenseg1|WideOr4~1_combout\ = (first(4) & (((!first(0))))) # (!first(4) & ((first(1) & (first(2) $ (first(0)))) # (!first(1) & (first(2) & first(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => first(4),
	datab => first(1),
	datac => first(2),
	datad => first(0),
	combout => \sevenseg1|WideOr4~1_combout\);

-- Location: LCCOMB_X49_Y72_N6
\sevenseg1|WideOr4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevenseg1|WideOr4~2_combout\ = (first(3) & (\sevenseg1|WideOr4~0_combout\)) # (!first(3) & ((\sevenseg1|WideOr4~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sevenseg1|WideOr4~0_combout\,
	datab => first(3),
	datac => \sevenseg1|WideOr4~1_combout\,
	combout => \sevenseg1|WideOr4~2_combout\);

-- Location: LCCOMB_X49_Y72_N30
\sevenseg1|WideOr3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevenseg1|WideOr3~1_combout\ = (first(3) & ((first(0) & (!first(4))) # (!first(0) & ((!first(1)))))) # (!first(3) & ((first(0) & ((!first(1)))) # (!first(0) & (first(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011100101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => first(4),
	datab => first(3),
	datac => first(1),
	datad => first(0),
	combout => \sevenseg1|WideOr3~1_combout\);

-- Location: LCCOMB_X49_Y72_N16
\sevenseg1|WideOr3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevenseg1|WideOr3~0_combout\ = (first(3) & (!first(4) & (first(1) $ (first(0))))) # (!first(3) & (first(1) & (first(4) $ (!first(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => first(4),
	datab => first(3),
	datac => first(1),
	datad => first(0),
	combout => \sevenseg1|WideOr3~0_combout\);

-- Location: LCCOMB_X49_Y72_N20
\sevenseg1|WideOr3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevenseg1|WideOr3~2_combout\ = (first(2) & ((\sevenseg1|WideOr3~0_combout\))) # (!first(2) & (\sevenseg1|WideOr3~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sevenseg1|WideOr3~1_combout\,
	datab => \sevenseg1|WideOr3~0_combout\,
	datac => first(2),
	combout => \sevenseg1|WideOr3~2_combout\);

-- Location: LCCOMB_X49_Y72_N10
\sevenseg1|WideOr2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevenseg1|WideOr2~0_combout\ = (first(2) & (first(1))) # (!first(2) & ((first(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => first(2),
	datac => first(1),
	datad => first(0),
	combout => \sevenseg1|WideOr2~0_combout\);

-- Location: LCCOMB_X49_Y72_N28
\sevenseg1|WideOr2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevenseg1|WideOr2~1_combout\ = (first(4) & (\sevenseg1|WideOr2~0_combout\ & ((!first(1)) # (!first(3))))) # (!first(4) & (first(3) & (first(1) $ (\sevenseg1|WideOr2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => first(4),
	datab => first(3),
	datac => first(1),
	datad => \sevenseg1|WideOr2~0_combout\,
	combout => \sevenseg1|WideOr2~1_combout\);

-- Location: LCCOMB_X49_Y72_N4
\sevenseg1|WideOr1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevenseg1|WideOr1~1_combout\ = (first(1) & (first(3) $ (((!first(2) & first(0)))))) # (!first(1) & ((first(3) & ((first(0)))) # (!first(3) & (first(2) & !first(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => first(2),
	datab => first(3),
	datac => first(1),
	datad => first(0),
	combout => \sevenseg1|WideOr1~1_combout\);

-- Location: LCCOMB_X49_Y72_N18
\sevenseg1|WideOr1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevenseg1|WideOr1~0_combout\ = (first(2) & (!first(3) & (!first(1) & first(0)))) # (!first(2) & (!first(0) & ((first(3)) # (first(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => first(2),
	datab => first(3),
	datac => first(1),
	datad => first(0),
	combout => \sevenseg1|WideOr1~0_combout\);

-- Location: LCCOMB_X49_Y72_N2
\sevenseg1|WideOr1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevenseg1|WideOr1~2_combout\ = (first(4) & ((\sevenseg1|WideOr1~0_combout\))) # (!first(4) & (\sevenseg1|WideOr1~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sevenseg1|WideOr1~1_combout\,
	datac => first(4),
	datad => \sevenseg1|WideOr1~0_combout\,
	combout => \sevenseg1|WideOr1~2_combout\);

-- Location: LCCOMB_X49_Y72_N24
\sevenseg1|WideOr0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevenseg1|WideOr0~0_combout\ = (first(1) & (!first(0) & (first(2) $ (first(3))))) # (!first(1) & (first(2) $ (first(3) $ (!first(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => first(2),
	datab => first(3),
	datac => first(1),
	datad => first(0),
	combout => \sevenseg1|WideOr0~0_combout\);

-- Location: LCCOMB_X49_Y72_N22
\sevenseg1|WideOr0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevenseg1|WideOr0~1_combout\ = (first(4) & ((\sevenseg1|WideOr0~0_combout\ & (first(2))) # (!\sevenseg1|WideOr0~0_combout\ & ((first(3)))))) # (!first(4) & (\sevenseg1|WideOr0~0_combout\ & ((first(3)) # (!first(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => first(2),
	datab => first(3),
	datac => first(4),
	datad => \sevenseg1|WideOr0~0_combout\,
	combout => \sevenseg1|WideOr0~1_combout\);

-- Location: IOIBUF_X107_Y0_N8
\q[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_q(0),
	o => \q[0]~input_o\);

-- Location: IOIBUF_X52_Y0_N1
\q[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_q(1),
	o => \q[1]~input_o\);

-- Location: IOIBUF_X56_Y0_N8
\q[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_q(2),
	o => \q[2]~input_o\);

-- Location: IOIBUF_X115_Y69_N22
\q[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_q(3),
	o => \q[3]~input_o\);

ww_segment4(0) <= \segment4[0]~output_o\;

ww_segment4(1) <= \segment4[1]~output_o\;

ww_segment4(2) <= \segment4[2]~output_o\;

ww_segment4(3) <= \segment4[3]~output_o\;

ww_segment4(4) <= \segment4[4]~output_o\;

ww_segment4(5) <= \segment4[5]~output_o\;

ww_segment4(6) <= \segment4[6]~output_o\;

ww_segment3(0) <= \segment3[0]~output_o\;

ww_segment3(1) <= \segment3[1]~output_o\;

ww_segment3(2) <= \segment3[2]~output_o\;

ww_segment3(3) <= \segment3[3]~output_o\;

ww_segment3(4) <= \segment3[4]~output_o\;

ww_segment3(5) <= \segment3[5]~output_o\;

ww_segment3(6) <= \segment3[6]~output_o\;

ww_segment2(0) <= \segment2[0]~output_o\;

ww_segment2(1) <= \segment2[1]~output_o\;

ww_segment2(2) <= \segment2[2]~output_o\;

ww_segment2(3) <= \segment2[3]~output_o\;

ww_segment2(4) <= \segment2[4]~output_o\;

ww_segment2(5) <= \segment2[5]~output_o\;

ww_segment2(6) <= \segment2[6]~output_o\;

ww_segment1(0) <= \segment1[0]~output_o\;

ww_segment1(1) <= \segment1[1]~output_o\;

ww_segment1(2) <= \segment1[2]~output_o\;

ww_segment1(3) <= \segment1[3]~output_o\;

ww_segment1(4) <= \segment1[4]~output_o\;

ww_segment1(5) <= \segment1[5]~output_o\;

ww_segment1(6) <= \segment1[6]~output_o\;
END structure;


