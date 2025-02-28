-- Copyright (C) 2024  Intel Corporation. All rights reserved.
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
-- VERSION "Version 23.1std.1 Build 993 05/14/2024 SC Lite Edition"

-- DATE "02/25/2025 16:11:42"

-- 
-- Device: Altera 10M50DAF484C7G Package FBGA484
-- 

-- 
-- This VHDL file should be used for Questa Intel FPGA (VHDL) only
-- 

LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_TMS~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TCK~	=>  Location: PIN_G2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDI~	=>  Location: PIN_L4,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDO~	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_CONFIG_SEL~	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCONFIG~	=>  Location: PIN_H9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_nSTATUS~	=>  Location: PIN_G9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_CONF_DONE~	=>  Location: PIN_F8,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_TMS~~padout\ : std_logic;
SIGNAL \~ALTERA_TCK~~padout\ : std_logic;
SIGNAL \~ALTERA_TDI~~padout\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~padout\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~padout\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~padout\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~padout\ : std_logic;
SIGNAL \~ALTERA_TMS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TCK~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TDI~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	practica2ffd IS
    PORT (
	S0 : OUT std_logic;
	Reset : IN std_logic;
	clk : IN std_logic;
	E1 : IN std_logic;
	E2 : IN std_logic;
	S1 : OUT std_logic;
	Q0_Out : OUT std_logic;
	Q1_Out : OUT std_logic
	);
END practica2ffd;

-- Design Ports Information
-- S0	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S1	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q0_Out	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q1_Out	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- E1	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- E2	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Reset	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF practica2ffd IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_S0 : std_logic;
SIGNAL ww_Reset : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_E1 : std_logic;
SIGNAL ww_E2 : std_logic;
SIGNAL ww_S1 : std_logic;
SIGNAL ww_Q0_Out : std_logic;
SIGNAL ww_Q1_Out : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst14|cuenta[25]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \S0~output_o\ : std_logic;
SIGNAL \S1~output_o\ : std_logic;
SIGNAL \Q0_Out~output_o\ : std_logic;
SIGNAL \Q1_Out~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst14|Equal0~5_combout\ : std_logic;
SIGNAL \inst14|Equal0~3_combout\ : std_logic;
SIGNAL \inst14|Equal0~2_combout\ : std_logic;
SIGNAL \inst14|Equal0~0_combout\ : std_logic;
SIGNAL \inst14|Equal0~1_combout\ : std_logic;
SIGNAL \inst14|Equal0~4_combout\ : std_logic;
SIGNAL \inst14|Add0~51\ : std_logic;
SIGNAL \inst14|Add0~52_combout\ : std_logic;
SIGNAL \inst14|cuenta~1_combout\ : std_logic;
SIGNAL \inst14|Add0~53\ : std_logic;
SIGNAL \inst14|Add0~54_combout\ : std_logic;
SIGNAL \inst14|Equal0~7_combout\ : std_logic;
SIGNAL \inst14|Equal0~6_combout\ : std_logic;
SIGNAL \inst14|Equal0~8_combout\ : std_logic;
SIGNAL \inst14|Add0~0_combout\ : std_logic;
SIGNAL \inst14|cuenta~0_combout\ : std_logic;
SIGNAL \inst14|Add0~1\ : std_logic;
SIGNAL \inst14|Add0~2_combout\ : std_logic;
SIGNAL \inst14|Add0~3\ : std_logic;
SIGNAL \inst14|Add0~4_combout\ : std_logic;
SIGNAL \inst14|Add0~5\ : std_logic;
SIGNAL \inst14|Add0~6_combout\ : std_logic;
SIGNAL \inst14|Add0~7\ : std_logic;
SIGNAL \inst14|Add0~8_combout\ : std_logic;
SIGNAL \inst14|Add0~9\ : std_logic;
SIGNAL \inst14|Add0~10_combout\ : std_logic;
SIGNAL \inst14|Add0~11\ : std_logic;
SIGNAL \inst14|Add0~12_combout\ : std_logic;
SIGNAL \inst14|Add0~13\ : std_logic;
SIGNAL \inst14|Add0~14_combout\ : std_logic;
SIGNAL \inst14|Add0~15\ : std_logic;
SIGNAL \inst14|Add0~16_combout\ : std_logic;
SIGNAL \inst14|Add0~17\ : std_logic;
SIGNAL \inst14|Add0~18_combout\ : std_logic;
SIGNAL \inst14|Add0~19\ : std_logic;
SIGNAL \inst14|Add0~20_combout\ : std_logic;
SIGNAL \inst14|Add0~21\ : std_logic;
SIGNAL \inst14|Add0~22_combout\ : std_logic;
SIGNAL \inst14|Add0~23\ : std_logic;
SIGNAL \inst14|Add0~24_combout\ : std_logic;
SIGNAL \inst14|Add0~25\ : std_logic;
SIGNAL \inst14|Add0~26_combout\ : std_logic;
SIGNAL \inst14|Add0~27\ : std_logic;
SIGNAL \inst14|Add0~28_combout\ : std_logic;
SIGNAL \inst14|Add0~29\ : std_logic;
SIGNAL \inst14|Add0~30_combout\ : std_logic;
SIGNAL \inst14|Add0~31\ : std_logic;
SIGNAL \inst14|Add0~32_combout\ : std_logic;
SIGNAL \inst14|Add0~33\ : std_logic;
SIGNAL \inst14|Add0~34_combout\ : std_logic;
SIGNAL \inst14|Add0~35\ : std_logic;
SIGNAL \inst14|Add0~36_combout\ : std_logic;
SIGNAL \inst14|Add0~37\ : std_logic;
SIGNAL \inst14|Add0~38_combout\ : std_logic;
SIGNAL \inst14|Add0~39\ : std_logic;
SIGNAL \inst14|Add0~40_combout\ : std_logic;
SIGNAL \inst14|Add0~41\ : std_logic;
SIGNAL \inst14|Add0~42_combout\ : std_logic;
SIGNAL \inst14|Add0~43\ : std_logic;
SIGNAL \inst14|Add0~44_combout\ : std_logic;
SIGNAL \inst14|Add0~45\ : std_logic;
SIGNAL \inst14|Add0~46_combout\ : std_logic;
SIGNAL \inst14|Add0~47\ : std_logic;
SIGNAL \inst14|Add0~48_combout\ : std_logic;
SIGNAL \inst14|Add0~49\ : std_logic;
SIGNAL \inst14|Add0~50_combout\ : std_logic;
SIGNAL \inst14|cuenta[25]~clkctrl_outclk\ : std_logic;
SIGNAL \E1~input_o\ : std_logic;
SIGNAL \E2~input_o\ : std_logic;
SIGNAL \inst11~0_combout\ : std_logic;
SIGNAL \Reset~input_o\ : std_logic;
SIGNAL \Q1~q\ : std_logic;
SIGNAL \inst13~0_combout\ : std_logic;
SIGNAL \Q0~q\ : std_logic;
SIGNAL \inst14|cuenta\ : std_logic_vector(27 DOWNTO 0);
SIGNAL \ALT_INV_Q1~q\ : std_logic;
SIGNAL \ALT_INV_Q0~q\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

S0 <= ww_S0;
ww_Reset <= Reset;
ww_clk <= clk;
ww_E1 <= E1;
ww_E2 <= E2;
S1 <= ww_S1;
Q0_Out <= ww_Q0_Out;
Q1_Out <= ww_Q1_Out;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\inst14|cuenta[25]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst14|cuenta\(25));

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_Q1~q\ <= NOT \Q1~q\;
\ALT_INV_Q0~q\ <= NOT \Q0~q\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y52_N14
\~QUARTUS_CREATED_GND~I\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~QUARTUS_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~QUARTUS_CREATED_GND~I_combout\);

-- Location: IOOBUF_X51_Y54_N9
\S0~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Q0~q\,
	devoe => ww_devoe,
	o => \S0~output_o\);

-- Location: IOOBUF_X49_Y54_N9
\S1~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Q1~q\,
	devoe => ww_devoe,
	o => \S1~output_o\);

-- Location: IOOBUF_X46_Y54_N2
\Q0_Out~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Q0~q\,
	devoe => ww_devoe,
	o => \Q0_Out~output_o\);

-- Location: IOOBUF_X46_Y54_N23
\Q1_Out~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Q1~q\,
	devoe => ww_devoe,
	o => \Q1_Out~output_o\);

-- Location: IOIBUF_X34_Y0_N29
\clk~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G19
\clk~inputclkctrl\ : fiftyfivenm_clkctrl
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

-- Location: LCCOMB_X45_Y51_N30
\inst14|Equal0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|Equal0~5_combout\ = (!\inst14|cuenta\(17) & (!\inst14|cuenta\(18) & (!\inst14|cuenta\(16) & !\inst14|cuenta\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|cuenta\(17),
	datab => \inst14|cuenta\(18),
	datac => \inst14|cuenta\(16),
	datad => \inst14|cuenta\(19),
	combout => \inst14|Equal0~5_combout\);

-- Location: LCCOMB_X44_Y52_N10
\inst14|Equal0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|Equal0~3_combout\ = (!\inst14|cuenta\(14) & (!\inst14|cuenta\(15) & (!\inst14|cuenta\(13) & !\inst14|cuenta\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|cuenta\(14),
	datab => \inst14|cuenta\(15),
	datac => \inst14|cuenta\(13),
	datad => \inst14|cuenta\(12),
	combout => \inst14|Equal0~3_combout\);

-- Location: LCCOMB_X44_Y52_N28
\inst14|Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|Equal0~2_combout\ = (!\inst14|cuenta\(8) & (!\inst14|cuenta\(10) & (!\inst14|cuenta\(11) & !\inst14|cuenta\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|cuenta\(8),
	datab => \inst14|cuenta\(10),
	datac => \inst14|cuenta\(11),
	datad => \inst14|cuenta\(9),
	combout => \inst14|Equal0~2_combout\);

-- Location: LCCOMB_X44_Y52_N8
\inst14|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|Equal0~0_combout\ = (!\inst14|cuenta\(0) & (!\inst14|cuenta\(2) & (!\inst14|cuenta\(3) & !\inst14|cuenta\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|cuenta\(0),
	datab => \inst14|cuenta\(2),
	datac => \inst14|cuenta\(3),
	datad => \inst14|cuenta\(1),
	combout => \inst14|Equal0~0_combout\);

-- Location: LCCOMB_X44_Y52_N18
\inst14|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|Equal0~1_combout\ = (!\inst14|cuenta\(4) & (!\inst14|cuenta\(6) & (!\inst14|cuenta\(5) & !\inst14|cuenta\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|cuenta\(4),
	datab => \inst14|cuenta\(6),
	datac => \inst14|cuenta\(5),
	datad => \inst14|cuenta\(7),
	combout => \inst14|Equal0~1_combout\);

-- Location: LCCOMB_X44_Y52_N20
\inst14|Equal0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|Equal0~4_combout\ = (\inst14|Equal0~3_combout\ & (\inst14|Equal0~2_combout\ & (\inst14|Equal0~0_combout\ & \inst14|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|Equal0~3_combout\,
	datab => \inst14|Equal0~2_combout\,
	datac => \inst14|Equal0~0_combout\,
	datad => \inst14|Equal0~1_combout\,
	combout => \inst14|Equal0~4_combout\);

-- Location: LCCOMB_X45_Y51_N22
\inst14|Add0~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|Add0~50_combout\ = (\inst14|cuenta\(25) & (!\inst14|Add0~49\)) # (!\inst14|cuenta\(25) & ((\inst14|Add0~49\) # (GND)))
-- \inst14|Add0~51\ = CARRY((!\inst14|Add0~49\) # (!\inst14|cuenta\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|cuenta\(25),
	datad => VCC,
	cin => \inst14|Add0~49\,
	combout => \inst14|Add0~50_combout\,
	cout => \inst14|Add0~51\);

-- Location: LCCOMB_X45_Y51_N24
\inst14|Add0~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|Add0~52_combout\ = (\inst14|cuenta\(26) & (\inst14|Add0~51\ $ (GND))) # (!\inst14|cuenta\(26) & (!\inst14|Add0~51\ & VCC))
-- \inst14|Add0~53\ = CARRY((\inst14|cuenta\(26) & !\inst14|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst14|cuenta\(26),
	datad => VCC,
	cin => \inst14|Add0~51\,
	combout => \inst14|Add0~52_combout\,
	cout => \inst14|Add0~53\);

-- Location: LCCOMB_X45_Y51_N28
\inst14|cuenta~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|cuenta~1_combout\ = (\inst14|Add0~52_combout\ & ((!\inst14|Equal0~4_combout\) # (!\inst14|Equal0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|Equal0~8_combout\,
	datac => \inst14|Equal0~4_combout\,
	datad => \inst14|Add0~52_combout\,
	combout => \inst14|cuenta~1_combout\);

-- Location: FF_X45_Y51_N29
\inst14|cuenta[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst14|cuenta~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|cuenta\(26));

-- Location: LCCOMB_X45_Y51_N26
\inst14|Add0~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|Add0~54_combout\ = \inst14|cuenta\(27) $ (\inst14|Add0~53\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|cuenta\(27),
	cin => \inst14|Add0~53\,
	combout => \inst14|Add0~54_combout\);

-- Location: FF_X45_Y51_N27
\inst14|cuenta[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst14|Add0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|cuenta\(27));

-- Location: LCCOMB_X44_Y51_N20
\inst14|Equal0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|Equal0~7_combout\ = (!\inst14|cuenta\(25) & (!\inst14|cuenta\(27) & (!\inst14|cuenta\(24) & \inst14|cuenta\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|cuenta\(25),
	datab => \inst14|cuenta\(27),
	datac => \inst14|cuenta\(24),
	datad => \inst14|cuenta\(26),
	combout => \inst14|Equal0~7_combout\);

-- Location: LCCOMB_X46_Y51_N0
\inst14|Equal0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|Equal0~6_combout\ = (!\inst14|cuenta\(21) & (!\inst14|cuenta\(23) & (!\inst14|cuenta\(22) & !\inst14|cuenta\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|cuenta\(21),
	datab => \inst14|cuenta\(23),
	datac => \inst14|cuenta\(22),
	datad => \inst14|cuenta\(20),
	combout => \inst14|Equal0~6_combout\);

-- Location: LCCOMB_X45_Y52_N2
\inst14|Equal0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|Equal0~8_combout\ = (\inst14|Equal0~5_combout\ & (\inst14|Equal0~7_combout\ & \inst14|Equal0~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|Equal0~5_combout\,
	datac => \inst14|Equal0~7_combout\,
	datad => \inst14|Equal0~6_combout\,
	combout => \inst14|Equal0~8_combout\);

-- Location: LCCOMB_X45_Y52_N4
\inst14|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|Add0~0_combout\ = \inst14|cuenta\(0) $ (VCC)
-- \inst14|Add0~1\ = CARRY(\inst14|cuenta\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst14|cuenta\(0),
	datad => VCC,
	combout => \inst14|Add0~0_combout\,
	cout => \inst14|Add0~1\);

-- Location: LCCOMB_X45_Y52_N0
\inst14|cuenta~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|cuenta~0_combout\ = (\inst14|Add0~0_combout\ & ((!\inst14|Equal0~4_combout\) # (!\inst14|Equal0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|Equal0~8_combout\,
	datac => \inst14|Add0~0_combout\,
	datad => \inst14|Equal0~4_combout\,
	combout => \inst14|cuenta~0_combout\);

-- Location: FF_X45_Y52_N1
\inst14|cuenta[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst14|cuenta~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|cuenta\(0));

-- Location: LCCOMB_X45_Y52_N6
\inst14|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|Add0~2_combout\ = (\inst14|cuenta\(1) & (!\inst14|Add0~1\)) # (!\inst14|cuenta\(1) & ((\inst14|Add0~1\) # (GND)))
-- \inst14|Add0~3\ = CARRY((!\inst14|Add0~1\) # (!\inst14|cuenta\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|cuenta\(1),
	datad => VCC,
	cin => \inst14|Add0~1\,
	combout => \inst14|Add0~2_combout\,
	cout => \inst14|Add0~3\);

-- Location: FF_X45_Y52_N7
\inst14|cuenta[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst14|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|cuenta\(1));

-- Location: LCCOMB_X45_Y52_N8
\inst14|Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|Add0~4_combout\ = (\inst14|cuenta\(2) & (\inst14|Add0~3\ $ (GND))) # (!\inst14|cuenta\(2) & (!\inst14|Add0~3\ & VCC))
-- \inst14|Add0~5\ = CARRY((\inst14|cuenta\(2) & !\inst14|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst14|cuenta\(2),
	datad => VCC,
	cin => \inst14|Add0~3\,
	combout => \inst14|Add0~4_combout\,
	cout => \inst14|Add0~5\);

-- Location: FF_X45_Y52_N9
\inst14|cuenta[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst14|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|cuenta\(2));

-- Location: LCCOMB_X45_Y52_N10
\inst14|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|Add0~6_combout\ = (\inst14|cuenta\(3) & (!\inst14|Add0~5\)) # (!\inst14|cuenta\(3) & ((\inst14|Add0~5\) # (GND)))
-- \inst14|Add0~7\ = CARRY((!\inst14|Add0~5\) # (!\inst14|cuenta\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|cuenta\(3),
	datad => VCC,
	cin => \inst14|Add0~5\,
	combout => \inst14|Add0~6_combout\,
	cout => \inst14|Add0~7\);

-- Location: FF_X45_Y52_N11
\inst14|cuenta[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst14|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|cuenta\(3));

-- Location: LCCOMB_X45_Y52_N12
\inst14|Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|Add0~8_combout\ = (\inst14|cuenta\(4) & (\inst14|Add0~7\ $ (GND))) # (!\inst14|cuenta\(4) & (!\inst14|Add0~7\ & VCC))
-- \inst14|Add0~9\ = CARRY((\inst14|cuenta\(4) & !\inst14|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|cuenta\(4),
	datad => VCC,
	cin => \inst14|Add0~7\,
	combout => \inst14|Add0~8_combout\,
	cout => \inst14|Add0~9\);

-- Location: FF_X45_Y52_N13
\inst14|cuenta[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst14|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|cuenta\(4));

-- Location: LCCOMB_X45_Y52_N14
\inst14|Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|Add0~10_combout\ = (\inst14|cuenta\(5) & (!\inst14|Add0~9\)) # (!\inst14|cuenta\(5) & ((\inst14|Add0~9\) # (GND)))
-- \inst14|Add0~11\ = CARRY((!\inst14|Add0~9\) # (!\inst14|cuenta\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst14|cuenta\(5),
	datad => VCC,
	cin => \inst14|Add0~9\,
	combout => \inst14|Add0~10_combout\,
	cout => \inst14|Add0~11\);

-- Location: FF_X45_Y52_N15
\inst14|cuenta[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst14|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|cuenta\(5));

-- Location: LCCOMB_X45_Y52_N16
\inst14|Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|Add0~12_combout\ = (\inst14|cuenta\(6) & (\inst14|Add0~11\ $ (GND))) # (!\inst14|cuenta\(6) & (!\inst14|Add0~11\ & VCC))
-- \inst14|Add0~13\ = CARRY((\inst14|cuenta\(6) & !\inst14|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst14|cuenta\(6),
	datad => VCC,
	cin => \inst14|Add0~11\,
	combout => \inst14|Add0~12_combout\,
	cout => \inst14|Add0~13\);

-- Location: FF_X45_Y52_N17
\inst14|cuenta[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst14|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|cuenta\(6));

-- Location: LCCOMB_X45_Y52_N18
\inst14|Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|Add0~14_combout\ = (\inst14|cuenta\(7) & (!\inst14|Add0~13\)) # (!\inst14|cuenta\(7) & ((\inst14|Add0~13\) # (GND)))
-- \inst14|Add0~15\ = CARRY((!\inst14|Add0~13\) # (!\inst14|cuenta\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst14|cuenta\(7),
	datad => VCC,
	cin => \inst14|Add0~13\,
	combout => \inst14|Add0~14_combout\,
	cout => \inst14|Add0~15\);

-- Location: FF_X45_Y52_N19
\inst14|cuenta[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst14|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|cuenta\(7));

-- Location: LCCOMB_X45_Y52_N20
\inst14|Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|Add0~16_combout\ = (\inst14|cuenta\(8) & (\inst14|Add0~15\ $ (GND))) # (!\inst14|cuenta\(8) & (!\inst14|Add0~15\ & VCC))
-- \inst14|Add0~17\ = CARRY((\inst14|cuenta\(8) & !\inst14|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst14|cuenta\(8),
	datad => VCC,
	cin => \inst14|Add0~15\,
	combout => \inst14|Add0~16_combout\,
	cout => \inst14|Add0~17\);

-- Location: FF_X45_Y52_N21
\inst14|cuenta[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst14|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|cuenta\(8));

-- Location: LCCOMB_X45_Y52_N22
\inst14|Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|Add0~18_combout\ = (\inst14|cuenta\(9) & (!\inst14|Add0~17\)) # (!\inst14|cuenta\(9) & ((\inst14|Add0~17\) # (GND)))
-- \inst14|Add0~19\ = CARRY((!\inst14|Add0~17\) # (!\inst14|cuenta\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|cuenta\(9),
	datad => VCC,
	cin => \inst14|Add0~17\,
	combout => \inst14|Add0~18_combout\,
	cout => \inst14|Add0~19\);

-- Location: FF_X45_Y52_N23
\inst14|cuenta[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst14|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|cuenta\(9));

-- Location: LCCOMB_X45_Y52_N24
\inst14|Add0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|Add0~20_combout\ = (\inst14|cuenta\(10) & (\inst14|Add0~19\ $ (GND))) # (!\inst14|cuenta\(10) & (!\inst14|Add0~19\ & VCC))
-- \inst14|Add0~21\ = CARRY((\inst14|cuenta\(10) & !\inst14|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst14|cuenta\(10),
	datad => VCC,
	cin => \inst14|Add0~19\,
	combout => \inst14|Add0~20_combout\,
	cout => \inst14|Add0~21\);

-- Location: FF_X45_Y52_N25
\inst14|cuenta[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst14|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|cuenta\(10));

-- Location: LCCOMB_X45_Y52_N26
\inst14|Add0~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|Add0~22_combout\ = (\inst14|cuenta\(11) & (!\inst14|Add0~21\)) # (!\inst14|cuenta\(11) & ((\inst14|Add0~21\) # (GND)))
-- \inst14|Add0~23\ = CARRY((!\inst14|Add0~21\) # (!\inst14|cuenta\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|cuenta\(11),
	datad => VCC,
	cin => \inst14|Add0~21\,
	combout => \inst14|Add0~22_combout\,
	cout => \inst14|Add0~23\);

-- Location: FF_X45_Y52_N27
\inst14|cuenta[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst14|Add0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|cuenta\(11));

-- Location: LCCOMB_X45_Y52_N28
\inst14|Add0~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|Add0~24_combout\ = (\inst14|cuenta\(12) & (\inst14|Add0~23\ $ (GND))) # (!\inst14|cuenta\(12) & (!\inst14|Add0~23\ & VCC))
-- \inst14|Add0~25\ = CARRY((\inst14|cuenta\(12) & !\inst14|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst14|cuenta\(12),
	datad => VCC,
	cin => \inst14|Add0~23\,
	combout => \inst14|Add0~24_combout\,
	cout => \inst14|Add0~25\);

-- Location: FF_X45_Y52_N29
\inst14|cuenta[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst14|Add0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|cuenta\(12));

-- Location: LCCOMB_X45_Y52_N30
\inst14|Add0~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|Add0~26_combout\ = (\inst14|cuenta\(13) & (!\inst14|Add0~25\)) # (!\inst14|cuenta\(13) & ((\inst14|Add0~25\) # (GND)))
-- \inst14|Add0~27\ = CARRY((!\inst14|Add0~25\) # (!\inst14|cuenta\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|cuenta\(13),
	datad => VCC,
	cin => \inst14|Add0~25\,
	combout => \inst14|Add0~26_combout\,
	cout => \inst14|Add0~27\);

-- Location: FF_X45_Y52_N31
\inst14|cuenta[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst14|Add0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|cuenta\(13));

-- Location: LCCOMB_X45_Y51_N0
\inst14|Add0~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|Add0~28_combout\ = (\inst14|cuenta\(14) & (\inst14|Add0~27\ $ (GND))) # (!\inst14|cuenta\(14) & (!\inst14|Add0~27\ & VCC))
-- \inst14|Add0~29\ = CARRY((\inst14|cuenta\(14) & !\inst14|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst14|cuenta\(14),
	datad => VCC,
	cin => \inst14|Add0~27\,
	combout => \inst14|Add0~28_combout\,
	cout => \inst14|Add0~29\);

-- Location: FF_X45_Y51_N1
\inst14|cuenta[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst14|Add0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|cuenta\(14));

-- Location: LCCOMB_X45_Y51_N2
\inst14|Add0~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|Add0~30_combout\ = (\inst14|cuenta\(15) & (!\inst14|Add0~29\)) # (!\inst14|cuenta\(15) & ((\inst14|Add0~29\) # (GND)))
-- \inst14|Add0~31\ = CARRY((!\inst14|Add0~29\) # (!\inst14|cuenta\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst14|cuenta\(15),
	datad => VCC,
	cin => \inst14|Add0~29\,
	combout => \inst14|Add0~30_combout\,
	cout => \inst14|Add0~31\);

-- Location: FF_X45_Y51_N3
\inst14|cuenta[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst14|Add0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|cuenta\(15));

-- Location: LCCOMB_X45_Y51_N4
\inst14|Add0~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|Add0~32_combout\ = (\inst14|cuenta\(16) & (\inst14|Add0~31\ $ (GND))) # (!\inst14|cuenta\(16) & (!\inst14|Add0~31\ & VCC))
-- \inst14|Add0~33\ = CARRY((\inst14|cuenta\(16) & !\inst14|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst14|cuenta\(16),
	datad => VCC,
	cin => \inst14|Add0~31\,
	combout => \inst14|Add0~32_combout\,
	cout => \inst14|Add0~33\);

-- Location: FF_X45_Y51_N5
\inst14|cuenta[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst14|Add0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|cuenta\(16));

-- Location: LCCOMB_X45_Y51_N6
\inst14|Add0~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|Add0~34_combout\ = (\inst14|cuenta\(17) & (!\inst14|Add0~33\)) # (!\inst14|cuenta\(17) & ((\inst14|Add0~33\) # (GND)))
-- \inst14|Add0~35\ = CARRY((!\inst14|Add0~33\) # (!\inst14|cuenta\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|cuenta\(17),
	datad => VCC,
	cin => \inst14|Add0~33\,
	combout => \inst14|Add0~34_combout\,
	cout => \inst14|Add0~35\);

-- Location: FF_X45_Y51_N7
\inst14|cuenta[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst14|Add0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|cuenta\(17));

-- Location: LCCOMB_X45_Y51_N8
\inst14|Add0~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|Add0~36_combout\ = (\inst14|cuenta\(18) & (\inst14|Add0~35\ $ (GND))) # (!\inst14|cuenta\(18) & (!\inst14|Add0~35\ & VCC))
-- \inst14|Add0~37\ = CARRY((\inst14|cuenta\(18) & !\inst14|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst14|cuenta\(18),
	datad => VCC,
	cin => \inst14|Add0~35\,
	combout => \inst14|Add0~36_combout\,
	cout => \inst14|Add0~37\);

-- Location: FF_X45_Y51_N9
\inst14|cuenta[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst14|Add0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|cuenta\(18));

-- Location: LCCOMB_X45_Y51_N10
\inst14|Add0~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|Add0~38_combout\ = (\inst14|cuenta\(19) & (!\inst14|Add0~37\)) # (!\inst14|cuenta\(19) & ((\inst14|Add0~37\) # (GND)))
-- \inst14|Add0~39\ = CARRY((!\inst14|Add0~37\) # (!\inst14|cuenta\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|cuenta\(19),
	datad => VCC,
	cin => \inst14|Add0~37\,
	combout => \inst14|Add0~38_combout\,
	cout => \inst14|Add0~39\);

-- Location: FF_X45_Y51_N11
\inst14|cuenta[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst14|Add0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|cuenta\(19));

-- Location: LCCOMB_X45_Y51_N12
\inst14|Add0~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|Add0~40_combout\ = (\inst14|cuenta\(20) & (\inst14|Add0~39\ $ (GND))) # (!\inst14|cuenta\(20) & (!\inst14|Add0~39\ & VCC))
-- \inst14|Add0~41\ = CARRY((\inst14|cuenta\(20) & !\inst14|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|cuenta\(20),
	datad => VCC,
	cin => \inst14|Add0~39\,
	combout => \inst14|Add0~40_combout\,
	cout => \inst14|Add0~41\);

-- Location: FF_X45_Y51_N13
\inst14|cuenta[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst14|Add0~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|cuenta\(20));

-- Location: LCCOMB_X45_Y51_N14
\inst14|Add0~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|Add0~42_combout\ = (\inst14|cuenta\(21) & (!\inst14|Add0~41\)) # (!\inst14|cuenta\(21) & ((\inst14|Add0~41\) # (GND)))
-- \inst14|Add0~43\ = CARRY((!\inst14|Add0~41\) # (!\inst14|cuenta\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst14|cuenta\(21),
	datad => VCC,
	cin => \inst14|Add0~41\,
	combout => \inst14|Add0~42_combout\,
	cout => \inst14|Add0~43\);

-- Location: FF_X45_Y51_N15
\inst14|cuenta[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst14|Add0~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|cuenta\(21));

-- Location: LCCOMB_X45_Y51_N16
\inst14|Add0~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|Add0~44_combout\ = (\inst14|cuenta\(22) & (\inst14|Add0~43\ $ (GND))) # (!\inst14|cuenta\(22) & (!\inst14|Add0~43\ & VCC))
-- \inst14|Add0~45\ = CARRY((\inst14|cuenta\(22) & !\inst14|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst14|cuenta\(22),
	datad => VCC,
	cin => \inst14|Add0~43\,
	combout => \inst14|Add0~44_combout\,
	cout => \inst14|Add0~45\);

-- Location: FF_X45_Y51_N17
\inst14|cuenta[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst14|Add0~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|cuenta\(22));

-- Location: LCCOMB_X45_Y51_N18
\inst14|Add0~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|Add0~46_combout\ = (\inst14|cuenta\(23) & (!\inst14|Add0~45\)) # (!\inst14|cuenta\(23) & ((\inst14|Add0~45\) # (GND)))
-- \inst14|Add0~47\ = CARRY((!\inst14|Add0~45\) # (!\inst14|cuenta\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst14|cuenta\(23),
	datad => VCC,
	cin => \inst14|Add0~45\,
	combout => \inst14|Add0~46_combout\,
	cout => \inst14|Add0~47\);

-- Location: FF_X45_Y51_N19
\inst14|cuenta[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst14|Add0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|cuenta\(23));

-- Location: LCCOMB_X45_Y51_N20
\inst14|Add0~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|Add0~48_combout\ = (\inst14|cuenta\(24) & (\inst14|Add0~47\ $ (GND))) # (!\inst14|cuenta\(24) & (!\inst14|Add0~47\ & VCC))
-- \inst14|Add0~49\ = CARRY((\inst14|cuenta\(24) & !\inst14|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst14|cuenta\(24),
	datad => VCC,
	cin => \inst14|Add0~47\,
	combout => \inst14|Add0~48_combout\,
	cout => \inst14|Add0~49\);

-- Location: FF_X45_Y51_N21
\inst14|cuenta[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst14|Add0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|cuenta\(24));

-- Location: FF_X45_Y51_N23
\inst14|cuenta[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst14|Add0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|cuenta\(25));

-- Location: CLKCTRL_G11
\inst14|cuenta[25]~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst14|cuenta[25]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst14|cuenta[25]~clkctrl_outclk\);

-- Location: IOIBUF_X51_Y54_N29
\E1~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_E1,
	o => \E1~input_o\);

-- Location: IOIBUF_X51_Y54_N22
\E2~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_E2,
	o => \E2~input_o\);

-- Location: LCCOMB_X47_Y53_N18
\inst11~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst11~0_combout\ = (\E1~input_o\ & (\Q1~q\ & ((!\Q0~q\) # (!\E2~input_o\)))) # (!\E1~input_o\ & ((\Q1~q\) # ((!\E2~input_o\ & \Q0~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \E1~input_o\,
	datab => \E2~input_o\,
	datac => \Q1~q\,
	datad => \Q0~q\,
	combout => \inst11~0_combout\);

-- Location: IOIBUF_X46_Y54_N29
\Reset~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Reset,
	o => \Reset~input_o\);

-- Location: FF_X47_Y53_N19
Q1 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|cuenta[25]~clkctrl_outclk\,
	d => \inst11~0_combout\,
	clrn => \Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Q1~q\);

-- Location: LCCOMB_X47_Y53_N24
\inst13~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13~0_combout\ = ((\Q1~q\ & ((!\E2~input_o\))) # (!\Q1~q\ & (\E1~input_o\))) # (!\Q0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \E1~input_o\,
	datab => \E2~input_o\,
	datac => \Q0~q\,
	datad => \Q1~q\,
	combout => \inst13~0_combout\);

-- Location: FF_X47_Y53_N25
Q0 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst14|cuenta[25]~clkctrl_outclk\,
	d => \inst13~0_combout\,
	clrn => \Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Q0~q\);

-- Location: UNVM_X0_Y40_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_end_addr => -1,
	addr_range2_offset => -1,
	addr_range3_offset => -1,
	is_compressed_image => "false",
	is_dual_boot => "false",
	is_eram_skip => "false",
	max_ufm_valid_addr => -1,
	max_valid_addr => -1,
	min_ufm_valid_addr => -1,
	min_valid_addr => -1,
	part_name => "quartus_created_unvm",
	reserve_block => "true")
-- pragma translate_on
PORT MAP (
	nosc_ena => \~QUARTUS_CREATED_GND~I_combout\,
	xe_ye => \~QUARTUS_CREATED_GND~I_combout\,
	se => \~QUARTUS_CREATED_GND~I_combout\,
	busy => \~QUARTUS_CREATED_UNVM~~busy\);

-- Location: ADCBLOCK_X43_Y52_N0
\~QUARTUS_CREATED_ADC1~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 1,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC1~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC1~~eoc\);

-- Location: ADCBLOCK_X43_Y51_N0
\~QUARTUS_CREATED_ADC2~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 2,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC2~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC2~~eoc\);

ww_S0 <= \S0~output_o\;

ww_S1 <= \S1~output_o\;

ww_Q0_Out <= \Q0_Out~output_o\;

ww_Q1_Out <= \Q1_Out~output_o\;
END structure;


