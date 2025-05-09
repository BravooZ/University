-- Copyright (C) 2023  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 22.1std.2 Build 922 07/20/2023 SC Lite Edition"

-- DATE "03/21/2024 10:59:38"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for Questa Intel FPGA (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_F4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_P28,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	AccN_Demo IS
    PORT (
	LEDR7 : OUT std_logic;
	SW : IN std_logic_vector(15 DOWNTO 0);
	KEY : IN std_logic_vector(1 DOWNTO 0);
	LEDR6 : OUT std_logic;
	LEDR5 : OUT std_logic;
	LEDR4 : OUT std_logic;
	LEDR3 : OUT std_logic;
	LEDR2 : OUT std_logic;
	LEDR1 : OUT std_logic;
	LEDR0 : OUT std_logic;
	LEDR13 : OUT std_logic;
	LEDR12 : OUT std_logic;
	LEDR11 : OUT std_logic;
	LEDR10 : OUT std_logic
	);
END AccN_Demo;

-- Design Ports Information
-- LEDR7	=>  Location: PIN_M24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR6	=>  Location: PIN_P21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR5	=>  Location: PIN_P27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR4	=>  Location: PIN_R21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR3	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR2	=>  Location: PIN_P25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR1	=>  Location: PIN_P26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR0	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR13	=>  Location: PIN_K26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR12	=>  Location: PIN_G27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR11	=>  Location: PIN_L25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR10	=>  Location: PIN_G28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_AC26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_AC25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_AB25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[13]	=>  Location: PIN_AA24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[12]	=>  Location: PIN_AB23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[11]	=>  Location: PIN_AB24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[10]	=>  Location: PIN_AC24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[14]	=>  Location: PIN_AA23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[15]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF AccN_Demo IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_LEDR7 : std_logic;
SIGNAL ww_SW : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_KEY : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_LEDR6 : std_logic;
SIGNAL ww_LEDR5 : std_logic;
SIGNAL ww_LEDR4 : std_logic;
SIGNAL ww_LEDR3 : std_logic;
SIGNAL ww_LEDR2 : std_logic;
SIGNAL ww_LEDR1 : std_logic;
SIGNAL ww_LEDR0 : std_logic;
SIGNAL ww_LEDR13 : std_logic;
SIGNAL ww_LEDR12 : std_logic;
SIGNAL ww_LEDR11 : std_logic;
SIGNAL ww_LEDR10 : std_logic;
SIGNAL \LEDR7~output_o\ : std_logic;
SIGNAL \LEDR6~output_o\ : std_logic;
SIGNAL \LEDR5~output_o\ : std_logic;
SIGNAL \LEDR4~output_o\ : std_logic;
SIGNAL \LEDR3~output_o\ : std_logic;
SIGNAL \LEDR2~output_o\ : std_logic;
SIGNAL \LEDR1~output_o\ : std_logic;
SIGNAL \LEDR0~output_o\ : std_logic;
SIGNAL \LEDR13~output_o\ : std_logic;
SIGNAL \LEDR12~output_o\ : std_logic;
SIGNAL \LEDR11~output_o\ : std_logic;
SIGNAL \LEDR10~output_o\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \inst|RegN_0|dataOut[0]~8_combout\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \inst|RegN_0|dataOut[7]~24_combout\ : std_logic;
SIGNAL \inst|RegN_0|dataOut[0]~9\ : std_logic;
SIGNAL \inst|RegN_0|dataOut[1]~10_combout\ : std_logic;
SIGNAL \inst|RegN_0|dataOut[1]~11\ : std_logic;
SIGNAL \inst|RegN_0|dataOut[2]~12_combout\ : std_logic;
SIGNAL \inst|RegN_0|dataOut[2]~13\ : std_logic;
SIGNAL \inst|RegN_0|dataOut[3]~14_combout\ : std_logic;
SIGNAL \inst|RegN_0|dataOut[3]~15\ : std_logic;
SIGNAL \inst|RegN_0|dataOut[4]~16_combout\ : std_logic;
SIGNAL \inst|RegN_0|dataOut[4]~17\ : std_logic;
SIGNAL \inst|RegN_0|dataOut[5]~18_combout\ : std_logic;
SIGNAL \inst|RegN_0|dataOut[5]~19\ : std_logic;
SIGNAL \inst|RegN_0|dataOut[6]~20_combout\ : std_logic;
SIGNAL \inst|RegN_0|dataOut[6]~21\ : std_logic;
SIGNAL \inst|RegN_0|dataOut[7]~22_combout\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \SW[13]~input_o\ : std_logic;
SIGNAL \SW[12]~input_o\ : std_logic;
SIGNAL \SW[11]~input_o\ : std_logic;
SIGNAL \SW[10]~input_o\ : std_logic;
SIGNAL \i|RegN_0|dataOut[0]~4_combout\ : std_logic;
SIGNAL \SW[14]~input_o\ : std_logic;
SIGNAL \SW[15]~input_o\ : std_logic;
SIGNAL \i|RegN_0|dataOut[3]~12_combout\ : std_logic;
SIGNAL \i|RegN_0|dataOut[0]~5\ : std_logic;
SIGNAL \i|RegN_0|dataOut[1]~6_combout\ : std_logic;
SIGNAL \i|RegN_0|dataOut[1]~7\ : std_logic;
SIGNAL \i|RegN_0|dataOut[2]~8_combout\ : std_logic;
SIGNAL \i|RegN_0|dataOut[2]~9\ : std_logic;
SIGNAL \i|RegN_0|dataOut[3]~10_combout\ : std_logic;
SIGNAL \inst|RegN_0|dataOut\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \i|RegN_0|dataOut\ : std_logic_vector(3 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

LEDR7 <= ww_LEDR7;
ww_SW <= SW;
ww_KEY <= KEY;
LEDR6 <= ww_LEDR6;
LEDR5 <= ww_LEDR5;
LEDR4 <= ww_LEDR4;
LEDR3 <= ww_LEDR3;
LEDR2 <= ww_LEDR2;
LEDR1 <= ww_LEDR1;
LEDR0 <= ww_LEDR0;
LEDR13 <= ww_LEDR13;
LEDR12 <= ww_LEDR12;
LEDR11 <= ww_LEDR11;
LEDR10 <= ww_LEDR10;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X115_Y41_N2
\LEDR7~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|RegN_0|dataOut\(7),
	devoe => ww_devoe,
	o => \LEDR7~output_o\);

-- Location: IOOBUF_X115_Y36_N2
\LEDR6~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|RegN_0|dataOut\(6),
	devoe => ww_devoe,
	o => \LEDR6~output_o\);

-- Location: IOOBUF_X115_Y44_N9
\LEDR5~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|RegN_0|dataOut\(5),
	devoe => ww_devoe,
	o => \LEDR5~output_o\);

-- Location: IOOBUF_X115_Y36_N9
\LEDR4~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|RegN_0|dataOut\(4),
	devoe => ww_devoe,
	o => \LEDR4~output_o\);

-- Location: IOOBUF_X115_Y36_N16
\LEDR3~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|RegN_0|dataOut\(3),
	devoe => ww_devoe,
	o => \LEDR3~output_o\);

-- Location: IOOBUF_X115_Y41_N9
\LEDR2~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|RegN_0|dataOut\(2),
	devoe => ww_devoe,
	o => \LEDR2~output_o\);

-- Location: IOOBUF_X115_Y40_N2
\LEDR1~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|RegN_0|dataOut\(1),
	devoe => ww_devoe,
	o => \LEDR1~output_o\);

-- Location: IOOBUF_X115_Y42_N16
\LEDR0~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|RegN_0|dataOut\(0),
	devoe => ww_devoe,
	o => \LEDR0~output_o\);

-- Location: IOOBUF_X115_Y55_N23
\LEDR13~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i|RegN_0|dataOut\(3),
	devoe => ww_devoe,
	o => \LEDR13~output_o\);

-- Location: IOOBUF_X115_Y52_N2
\LEDR12~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i|RegN_0|dataOut\(2),
	devoe => ww_devoe,
	o => \LEDR12~output_o\);

-- Location: IOOBUF_X115_Y54_N16
\LEDR11~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i|RegN_0|dataOut\(1),
	devoe => ww_devoe,
	o => \LEDR11~output_o\);

-- Location: IOOBUF_X115_Y52_N9
\LEDR10~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i|RegN_0|dataOut\(0),
	devoe => ww_devoe,
	o => \LEDR10~output_o\);

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

-- Location: IOIBUF_X115_Y15_N1
\SW[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(7),
	o => \SW[7]~input_o\);

-- Location: IOIBUF_X115_Y10_N1
\SW[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(6),
	o => \SW[6]~input_o\);

-- Location: IOIBUF_X115_Y11_N8
\SW[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(5),
	o => \SW[5]~input_o\);

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

-- Location: LCCOMB_X114_Y40_N14
\inst|RegN_0|dataOut[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|RegN_0|dataOut[0]~8_combout\ = (\SW[0]~input_o\ & (\inst|RegN_0|dataOut\(0) $ (VCC))) # (!\SW[0]~input_o\ & (\inst|RegN_0|dataOut\(0) & VCC))
-- \inst|RegN_0|dataOut[0]~9\ = CARRY((\SW[0]~input_o\ & \inst|RegN_0|dataOut\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \inst|RegN_0|dataOut\(0),
	datad => VCC,
	combout => \inst|RegN_0|dataOut[0]~8_combout\,
	cout => \inst|RegN_0|dataOut[0]~9\);

-- Location: IOIBUF_X115_Y4_N22
\SW[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(8),
	o => \SW[8]~input_o\);

-- Location: IOIBUF_X115_Y16_N8
\SW[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(9),
	o => \SW[9]~input_o\);

-- Location: LCCOMB_X114_Y40_N12
\inst|RegN_0|dataOut[7]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|RegN_0|dataOut[7]~24_combout\ = (\SW[9]~input_o\) # (\SW[8]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[9]~input_o\,
	datac => \SW[8]~input_o\,
	combout => \inst|RegN_0|dataOut[7]~24_combout\);

-- Location: FF_X114_Y40_N15
\inst|RegN_0|dataOut[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \inst|RegN_0|dataOut[0]~8_combout\,
	sclr => \SW[8]~input_o\,
	ena => \inst|RegN_0|dataOut[7]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|RegN_0|dataOut\(0));

-- Location: LCCOMB_X114_Y40_N16
\inst|RegN_0|dataOut[1]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|RegN_0|dataOut[1]~10_combout\ = (\SW[1]~input_o\ & ((\inst|RegN_0|dataOut\(1) & (\inst|RegN_0|dataOut[0]~9\ & VCC)) # (!\inst|RegN_0|dataOut\(1) & (!\inst|RegN_0|dataOut[0]~9\)))) # (!\SW[1]~input_o\ & ((\inst|RegN_0|dataOut\(1) & 
-- (!\inst|RegN_0|dataOut[0]~9\)) # (!\inst|RegN_0|dataOut\(1) & ((\inst|RegN_0|dataOut[0]~9\) # (GND)))))
-- \inst|RegN_0|dataOut[1]~11\ = CARRY((\SW[1]~input_o\ & (!\inst|RegN_0|dataOut\(1) & !\inst|RegN_0|dataOut[0]~9\)) # (!\SW[1]~input_o\ & ((!\inst|RegN_0|dataOut[0]~9\) # (!\inst|RegN_0|dataOut\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \inst|RegN_0|dataOut\(1),
	datad => VCC,
	cin => \inst|RegN_0|dataOut[0]~9\,
	combout => \inst|RegN_0|dataOut[1]~10_combout\,
	cout => \inst|RegN_0|dataOut[1]~11\);

-- Location: FF_X114_Y40_N17
\inst|RegN_0|dataOut[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \inst|RegN_0|dataOut[1]~10_combout\,
	sclr => \SW[8]~input_o\,
	ena => \inst|RegN_0|dataOut[7]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|RegN_0|dataOut\(1));

-- Location: LCCOMB_X114_Y40_N18
\inst|RegN_0|dataOut[2]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|RegN_0|dataOut[2]~12_combout\ = ((\SW[2]~input_o\ $ (\inst|RegN_0|dataOut\(2) $ (!\inst|RegN_0|dataOut[1]~11\)))) # (GND)
-- \inst|RegN_0|dataOut[2]~13\ = CARRY((\SW[2]~input_o\ & ((\inst|RegN_0|dataOut\(2)) # (!\inst|RegN_0|dataOut[1]~11\))) # (!\SW[2]~input_o\ & (\inst|RegN_0|dataOut\(2) & !\inst|RegN_0|dataOut[1]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \inst|RegN_0|dataOut\(2),
	datad => VCC,
	cin => \inst|RegN_0|dataOut[1]~11\,
	combout => \inst|RegN_0|dataOut[2]~12_combout\,
	cout => \inst|RegN_0|dataOut[2]~13\);

-- Location: FF_X114_Y40_N19
\inst|RegN_0|dataOut[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \inst|RegN_0|dataOut[2]~12_combout\,
	sclr => \SW[8]~input_o\,
	ena => \inst|RegN_0|dataOut[7]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|RegN_0|dataOut\(2));

-- Location: LCCOMB_X114_Y40_N20
\inst|RegN_0|dataOut[3]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|RegN_0|dataOut[3]~14_combout\ = (\SW[3]~input_o\ & ((\inst|RegN_0|dataOut\(3) & (\inst|RegN_0|dataOut[2]~13\ & VCC)) # (!\inst|RegN_0|dataOut\(3) & (!\inst|RegN_0|dataOut[2]~13\)))) # (!\SW[3]~input_o\ & ((\inst|RegN_0|dataOut\(3) & 
-- (!\inst|RegN_0|dataOut[2]~13\)) # (!\inst|RegN_0|dataOut\(3) & ((\inst|RegN_0|dataOut[2]~13\) # (GND)))))
-- \inst|RegN_0|dataOut[3]~15\ = CARRY((\SW[3]~input_o\ & (!\inst|RegN_0|dataOut\(3) & !\inst|RegN_0|dataOut[2]~13\)) # (!\SW[3]~input_o\ & ((!\inst|RegN_0|dataOut[2]~13\) # (!\inst|RegN_0|dataOut\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \inst|RegN_0|dataOut\(3),
	datad => VCC,
	cin => \inst|RegN_0|dataOut[2]~13\,
	combout => \inst|RegN_0|dataOut[3]~14_combout\,
	cout => \inst|RegN_0|dataOut[3]~15\);

-- Location: FF_X114_Y40_N21
\inst|RegN_0|dataOut[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \inst|RegN_0|dataOut[3]~14_combout\,
	sclr => \SW[8]~input_o\,
	ena => \inst|RegN_0|dataOut[7]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|RegN_0|dataOut\(3));

-- Location: LCCOMB_X114_Y40_N22
\inst|RegN_0|dataOut[4]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|RegN_0|dataOut[4]~16_combout\ = ((\inst|RegN_0|dataOut\(4) $ (\SW[4]~input_o\ $ (!\inst|RegN_0|dataOut[3]~15\)))) # (GND)
-- \inst|RegN_0|dataOut[4]~17\ = CARRY((\inst|RegN_0|dataOut\(4) & ((\SW[4]~input_o\) # (!\inst|RegN_0|dataOut[3]~15\))) # (!\inst|RegN_0|dataOut\(4) & (\SW[4]~input_o\ & !\inst|RegN_0|dataOut[3]~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|RegN_0|dataOut\(4),
	datab => \SW[4]~input_o\,
	datad => VCC,
	cin => \inst|RegN_0|dataOut[3]~15\,
	combout => \inst|RegN_0|dataOut[4]~16_combout\,
	cout => \inst|RegN_0|dataOut[4]~17\);

-- Location: FF_X114_Y40_N23
\inst|RegN_0|dataOut[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \inst|RegN_0|dataOut[4]~16_combout\,
	sclr => \SW[8]~input_o\,
	ena => \inst|RegN_0|dataOut[7]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|RegN_0|dataOut\(4));

-- Location: LCCOMB_X114_Y40_N24
\inst|RegN_0|dataOut[5]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|RegN_0|dataOut[5]~18_combout\ = (\SW[5]~input_o\ & ((\inst|RegN_0|dataOut\(5) & (\inst|RegN_0|dataOut[4]~17\ & VCC)) # (!\inst|RegN_0|dataOut\(5) & (!\inst|RegN_0|dataOut[4]~17\)))) # (!\SW[5]~input_o\ & ((\inst|RegN_0|dataOut\(5) & 
-- (!\inst|RegN_0|dataOut[4]~17\)) # (!\inst|RegN_0|dataOut\(5) & ((\inst|RegN_0|dataOut[4]~17\) # (GND)))))
-- \inst|RegN_0|dataOut[5]~19\ = CARRY((\SW[5]~input_o\ & (!\inst|RegN_0|dataOut\(5) & !\inst|RegN_0|dataOut[4]~17\)) # (!\SW[5]~input_o\ & ((!\inst|RegN_0|dataOut[4]~17\) # (!\inst|RegN_0|dataOut\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW[5]~input_o\,
	datab => \inst|RegN_0|dataOut\(5),
	datad => VCC,
	cin => \inst|RegN_0|dataOut[4]~17\,
	combout => \inst|RegN_0|dataOut[5]~18_combout\,
	cout => \inst|RegN_0|dataOut[5]~19\);

-- Location: FF_X114_Y40_N25
\inst|RegN_0|dataOut[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \inst|RegN_0|dataOut[5]~18_combout\,
	sclr => \SW[8]~input_o\,
	ena => \inst|RegN_0|dataOut[7]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|RegN_0|dataOut\(5));

-- Location: LCCOMB_X114_Y40_N26
\inst|RegN_0|dataOut[6]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|RegN_0|dataOut[6]~20_combout\ = ((\inst|RegN_0|dataOut\(6) $ (\SW[6]~input_o\ $ (!\inst|RegN_0|dataOut[5]~19\)))) # (GND)
-- \inst|RegN_0|dataOut[6]~21\ = CARRY((\inst|RegN_0|dataOut\(6) & ((\SW[6]~input_o\) # (!\inst|RegN_0|dataOut[5]~19\))) # (!\inst|RegN_0|dataOut\(6) & (\SW[6]~input_o\ & !\inst|RegN_0|dataOut[5]~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|RegN_0|dataOut\(6),
	datab => \SW[6]~input_o\,
	datad => VCC,
	cin => \inst|RegN_0|dataOut[5]~19\,
	combout => \inst|RegN_0|dataOut[6]~20_combout\,
	cout => \inst|RegN_0|dataOut[6]~21\);

-- Location: FF_X114_Y40_N27
\inst|RegN_0|dataOut[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \inst|RegN_0|dataOut[6]~20_combout\,
	sclr => \SW[8]~input_o\,
	ena => \inst|RegN_0|dataOut[7]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|RegN_0|dataOut\(6));

-- Location: LCCOMB_X114_Y40_N28
\inst|RegN_0|dataOut[7]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|RegN_0|dataOut[7]~22_combout\ = \SW[7]~input_o\ $ (\inst|RegN_0|dataOut[6]~21\ $ (\inst|RegN_0|dataOut\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SW[7]~input_o\,
	datad => \inst|RegN_0|dataOut\(7),
	cin => \inst|RegN_0|dataOut[6]~21\,
	combout => \inst|RegN_0|dataOut[7]~22_combout\);

-- Location: FF_X114_Y40_N29
\inst|RegN_0|dataOut[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \inst|RegN_0|dataOut[7]~22_combout\,
	sclr => \SW[8]~input_o\,
	ena => \inst|RegN_0|dataOut[7]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|RegN_0|dataOut\(7));

-- Location: IOIBUF_X115_Y53_N15
\KEY[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

-- Location: IOIBUF_X115_Y9_N22
\SW[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(13),
	o => \SW[13]~input_o\);

-- Location: IOIBUF_X115_Y7_N15
\SW[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(12),
	o => \SW[12]~input_o\);

-- Location: IOIBUF_X115_Y5_N15
\SW[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(11),
	o => \SW[11]~input_o\);

-- Location: IOIBUF_X115_Y4_N15
\SW[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(10),
	o => \SW[10]~input_o\);

-- Location: LCCOMB_X114_Y53_N6
\i|RegN_0|dataOut[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \i|RegN_0|dataOut[0]~4_combout\ = (\i|RegN_0|dataOut\(0) & (\SW[10]~input_o\ $ (VCC))) # (!\i|RegN_0|dataOut\(0) & (\SW[10]~input_o\ & VCC))
-- \i|RegN_0|dataOut[0]~5\ = CARRY((\i|RegN_0|dataOut\(0) & \SW[10]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i|RegN_0|dataOut\(0),
	datab => \SW[10]~input_o\,
	datad => VCC,
	combout => \i|RegN_0|dataOut[0]~4_combout\,
	cout => \i|RegN_0|dataOut[0]~5\);

-- Location: IOIBUF_X115_Y10_N8
\SW[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(14),
	o => \SW[14]~input_o\);

-- Location: IOIBUF_X115_Y6_N15
\SW[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(15),
	o => \SW[15]~input_o\);

-- Location: LCCOMB_X114_Y53_N4
\i|RegN_0|dataOut[3]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \i|RegN_0|dataOut[3]~12_combout\ = (\SW[15]~input_o\) # (\SW[14]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[15]~input_o\,
	datad => \SW[14]~input_o\,
	combout => \i|RegN_0|dataOut[3]~12_combout\);

-- Location: FF_X114_Y53_N7
\i|RegN_0|dataOut[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~input_o\,
	d => \i|RegN_0|dataOut[0]~4_combout\,
	sclr => \SW[14]~input_o\,
	ena => \i|RegN_0|dataOut[3]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i|RegN_0|dataOut\(0));

-- Location: LCCOMB_X114_Y53_N8
\i|RegN_0|dataOut[1]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \i|RegN_0|dataOut[1]~6_combout\ = (\SW[11]~input_o\ & ((\i|RegN_0|dataOut\(1) & (\i|RegN_0|dataOut[0]~5\ & VCC)) # (!\i|RegN_0|dataOut\(1) & (!\i|RegN_0|dataOut[0]~5\)))) # (!\SW[11]~input_o\ & ((\i|RegN_0|dataOut\(1) & (!\i|RegN_0|dataOut[0]~5\)) # 
-- (!\i|RegN_0|dataOut\(1) & ((\i|RegN_0|dataOut[0]~5\) # (GND)))))
-- \i|RegN_0|dataOut[1]~7\ = CARRY((\SW[11]~input_o\ & (!\i|RegN_0|dataOut\(1) & !\i|RegN_0|dataOut[0]~5\)) # (!\SW[11]~input_o\ & ((!\i|RegN_0|dataOut[0]~5\) # (!\i|RegN_0|dataOut\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW[11]~input_o\,
	datab => \i|RegN_0|dataOut\(1),
	datad => VCC,
	cin => \i|RegN_0|dataOut[0]~5\,
	combout => \i|RegN_0|dataOut[1]~6_combout\,
	cout => \i|RegN_0|dataOut[1]~7\);

-- Location: FF_X114_Y53_N9
\i|RegN_0|dataOut[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~input_o\,
	d => \i|RegN_0|dataOut[1]~6_combout\,
	sclr => \SW[14]~input_o\,
	ena => \i|RegN_0|dataOut[3]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i|RegN_0|dataOut\(1));

-- Location: LCCOMB_X114_Y53_N10
\i|RegN_0|dataOut[2]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \i|RegN_0|dataOut[2]~8_combout\ = ((\i|RegN_0|dataOut\(2) $ (\SW[12]~input_o\ $ (!\i|RegN_0|dataOut[1]~7\)))) # (GND)
-- \i|RegN_0|dataOut[2]~9\ = CARRY((\i|RegN_0|dataOut\(2) & ((\SW[12]~input_o\) # (!\i|RegN_0|dataOut[1]~7\))) # (!\i|RegN_0|dataOut\(2) & (\SW[12]~input_o\ & !\i|RegN_0|dataOut[1]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i|RegN_0|dataOut\(2),
	datab => \SW[12]~input_o\,
	datad => VCC,
	cin => \i|RegN_0|dataOut[1]~7\,
	combout => \i|RegN_0|dataOut[2]~8_combout\,
	cout => \i|RegN_0|dataOut[2]~9\);

-- Location: FF_X114_Y53_N11
\i|RegN_0|dataOut[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~input_o\,
	d => \i|RegN_0|dataOut[2]~8_combout\,
	sclr => \SW[14]~input_o\,
	ena => \i|RegN_0|dataOut[3]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i|RegN_0|dataOut\(2));

-- Location: LCCOMB_X114_Y53_N12
\i|RegN_0|dataOut[3]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \i|RegN_0|dataOut[3]~10_combout\ = \SW[13]~input_o\ $ (\i|RegN_0|dataOut[2]~9\ $ (\i|RegN_0|dataOut\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SW[13]~input_o\,
	datad => \i|RegN_0|dataOut\(3),
	cin => \i|RegN_0|dataOut[2]~9\,
	combout => \i|RegN_0|dataOut[3]~10_combout\);

-- Location: FF_X114_Y53_N13
\i|RegN_0|dataOut[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[1]~input_o\,
	d => \i|RegN_0|dataOut[3]~10_combout\,
	sclr => \SW[14]~input_o\,
	ena => \i|RegN_0|dataOut[3]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i|RegN_0|dataOut\(3));

ww_LEDR7 <= \LEDR7~output_o\;

ww_LEDR6 <= \LEDR6~output_o\;

ww_LEDR5 <= \LEDR5~output_o\;

ww_LEDR4 <= \LEDR4~output_o\;

ww_LEDR3 <= \LEDR3~output_o\;

ww_LEDR2 <= \LEDR2~output_o\;

ww_LEDR1 <= \LEDR1~output_o\;

ww_LEDR0 <= \LEDR0~output_o\;

ww_LEDR13 <= \LEDR13~output_o\;

ww_LEDR12 <= \LEDR12~output_o\;

ww_LEDR11 <= \LEDR11~output_o\;

ww_LEDR10 <= \LEDR10~output_o\;
END structure;


