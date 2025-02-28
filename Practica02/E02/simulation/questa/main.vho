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

-- DATE "02/25/2025 16:50:35"

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

ENTITY 	main IS
    PORT (
	CLK : IN std_logic;
	RESET : IN std_logic;
	E : IN std_logic_vector(1 DOWNTO 0);
	S : OUT std_logic_vector(1 DOWNTO 0);
	Q_OUT : OUT std_logic_vector(1 DOWNTO 0)
	);
END main;

-- Design Ports Information
-- S[0]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[1]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q_OUT[0]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q_OUT[1]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- E[0]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- E[1]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESET	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF main IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_RESET : std_logic;
SIGNAL ww_E : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_S : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_Q_OUT : std_logic_vector(1 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \div_freq_motor|cuenta[25]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \S[0]~output_o\ : std_logic;
SIGNAL \S[1]~output_o\ : std_logic;
SIGNAL \Q_OUT[0]~output_o\ : std_logic;
SIGNAL \Q_OUT[1]~output_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \div_freq_motor|Add0~0_combout\ : std_logic;
SIGNAL \div_freq_motor|Equal0~2_combout\ : std_logic;
SIGNAL \div_freq_motor|Equal0~1_combout\ : std_logic;
SIGNAL \div_freq_motor|Equal0~3_combout\ : std_logic;
SIGNAL \div_freq_motor|Equal0~0_combout\ : std_logic;
SIGNAL \div_freq_motor|Equal0~4_combout\ : std_logic;
SIGNAL \div_freq_motor|Add0~51\ : std_logic;
SIGNAL \div_freq_motor|Add0~52_combout\ : std_logic;
SIGNAL \div_freq_motor|cuenta~1_combout\ : std_logic;
SIGNAL \div_freq_motor|Add0~53\ : std_logic;
SIGNAL \div_freq_motor|Add0~54_combout\ : std_logic;
SIGNAL \div_freq_motor|Equal0~7_combout\ : std_logic;
SIGNAL \div_freq_motor|Equal0~5_combout\ : std_logic;
SIGNAL \div_freq_motor|Equal0~6_combout\ : std_logic;
SIGNAL \div_freq_motor|Equal0~8_combout\ : std_logic;
SIGNAL \div_freq_motor|cuenta~0_combout\ : std_logic;
SIGNAL \div_freq_motor|Add0~1\ : std_logic;
SIGNAL \div_freq_motor|Add0~2_combout\ : std_logic;
SIGNAL \div_freq_motor|Add0~3\ : std_logic;
SIGNAL \div_freq_motor|Add0~4_combout\ : std_logic;
SIGNAL \div_freq_motor|Add0~5\ : std_logic;
SIGNAL \div_freq_motor|Add0~6_combout\ : std_logic;
SIGNAL \div_freq_motor|Add0~7\ : std_logic;
SIGNAL \div_freq_motor|Add0~8_combout\ : std_logic;
SIGNAL \div_freq_motor|Add0~9\ : std_logic;
SIGNAL \div_freq_motor|Add0~10_combout\ : std_logic;
SIGNAL \div_freq_motor|Add0~11\ : std_logic;
SIGNAL \div_freq_motor|Add0~12_combout\ : std_logic;
SIGNAL \div_freq_motor|Add0~13\ : std_logic;
SIGNAL \div_freq_motor|Add0~14_combout\ : std_logic;
SIGNAL \div_freq_motor|Add0~15\ : std_logic;
SIGNAL \div_freq_motor|Add0~16_combout\ : std_logic;
SIGNAL \div_freq_motor|Add0~17\ : std_logic;
SIGNAL \div_freq_motor|Add0~18_combout\ : std_logic;
SIGNAL \div_freq_motor|Add0~19\ : std_logic;
SIGNAL \div_freq_motor|Add0~20_combout\ : std_logic;
SIGNAL \div_freq_motor|Add0~21\ : std_logic;
SIGNAL \div_freq_motor|Add0~22_combout\ : std_logic;
SIGNAL \div_freq_motor|Add0~23\ : std_logic;
SIGNAL \div_freq_motor|Add0~24_combout\ : std_logic;
SIGNAL \div_freq_motor|Add0~25\ : std_logic;
SIGNAL \div_freq_motor|Add0~26_combout\ : std_logic;
SIGNAL \div_freq_motor|Add0~27\ : std_logic;
SIGNAL \div_freq_motor|Add0~28_combout\ : std_logic;
SIGNAL \div_freq_motor|Add0~29\ : std_logic;
SIGNAL \div_freq_motor|Add0~30_combout\ : std_logic;
SIGNAL \div_freq_motor|Add0~31\ : std_logic;
SIGNAL \div_freq_motor|Add0~32_combout\ : std_logic;
SIGNAL \div_freq_motor|Add0~33\ : std_logic;
SIGNAL \div_freq_motor|Add0~34_combout\ : std_logic;
SIGNAL \div_freq_motor|Add0~35\ : std_logic;
SIGNAL \div_freq_motor|Add0~36_combout\ : std_logic;
SIGNAL \div_freq_motor|Add0~37\ : std_logic;
SIGNAL \div_freq_motor|Add0~38_combout\ : std_logic;
SIGNAL \div_freq_motor|Add0~39\ : std_logic;
SIGNAL \div_freq_motor|Add0~40_combout\ : std_logic;
SIGNAL \div_freq_motor|Add0~41\ : std_logic;
SIGNAL \div_freq_motor|Add0~42_combout\ : std_logic;
SIGNAL \div_freq_motor|Add0~43\ : std_logic;
SIGNAL \div_freq_motor|Add0~44_combout\ : std_logic;
SIGNAL \div_freq_motor|Add0~45\ : std_logic;
SIGNAL \div_freq_motor|Add0~46_combout\ : std_logic;
SIGNAL \div_freq_motor|Add0~47\ : std_logic;
SIGNAL \div_freq_motor|Add0~48_combout\ : std_logic;
SIGNAL \div_freq_motor|Add0~49\ : std_logic;
SIGNAL \div_freq_motor|Add0~50_combout\ : std_logic;
SIGNAL \div_freq_motor|cuenta[25]~clkctrl_outclk\ : std_logic;
SIGNAL \E[1]~input_o\ : std_logic;
SIGNAL \E[0]~input_o\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \RESET~input_o\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \SALIDA[1]~feeder_combout\ : std_logic;
SIGNAL \div_freq_motor|cuenta\ : std_logic_vector(27 DOWNTO 0);
SIGNAL SALIDA : std_logic_vector(1 DOWNTO 0);
SIGNAL EDO_SIG : std_logic_vector(1 DOWNTO 0);
SIGNAL ALT_INV_SALIDA : std_logic_vector(1 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_CLK <= CLK;
ww_RESET <= RESET;
ww_E <= E;
S <= ww_S;
Q_OUT <= ww_Q_OUT;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\div_freq_motor|cuenta[25]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \div_freq_motor|cuenta\(25));

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);
ALT_INV_SALIDA(1) <= NOT SALIDA(1);
ALT_INV_SALIDA(0) <= NOT SALIDA(0);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y52_N4
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
\S[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => ALT_INV_SALIDA(0),
	devoe => ww_devoe,
	o => \S[0]~output_o\);

-- Location: IOOBUF_X49_Y54_N9
\S[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => ALT_INV_SALIDA(1),
	devoe => ww_devoe,
	o => \S[1]~output_o\);

-- Location: IOOBUF_X46_Y54_N23
\Q_OUT[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => EDO_SIG(0),
	devoe => ww_devoe,
	o => \Q_OUT[0]~output_o\);

-- Location: IOOBUF_X46_Y54_N2
\Q_OUT[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => EDO_SIG(1),
	devoe => ww_devoe,
	o => \Q_OUT[1]~output_o\);

-- Location: IOIBUF_X34_Y0_N29
\CLK~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK,
	o => \CLK~input_o\);

-- Location: CLKCTRL_G19
\CLK~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLK~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLK~inputclkctrl_outclk\);

-- Location: LCCOMB_X1_Y38_N4
\div_freq_motor|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \div_freq_motor|Add0~0_combout\ = \div_freq_motor|cuenta\(0) $ (VCC)
-- \div_freq_motor|Add0~1\ = CARRY(\div_freq_motor|cuenta\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \div_freq_motor|cuenta\(0),
	datad => VCC,
	combout => \div_freq_motor|Add0~0_combout\,
	cout => \div_freq_motor|Add0~1\);

-- Location: LCCOMB_X1_Y38_N2
\div_freq_motor|Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \div_freq_motor|Equal0~2_combout\ = (!\div_freq_motor|cuenta\(9) & (!\div_freq_motor|cuenta\(8) & (!\div_freq_motor|cuenta\(11) & !\div_freq_motor|cuenta\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div_freq_motor|cuenta\(9),
	datab => \div_freq_motor|cuenta\(8),
	datac => \div_freq_motor|cuenta\(11),
	datad => \div_freq_motor|cuenta\(10),
	combout => \div_freq_motor|Equal0~2_combout\);

-- Location: LCCOMB_X2_Y38_N18
\div_freq_motor|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \div_freq_motor|Equal0~1_combout\ = (!\div_freq_motor|cuenta\(5) & (!\div_freq_motor|cuenta\(4) & (!\div_freq_motor|cuenta\(6) & !\div_freq_motor|cuenta\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div_freq_motor|cuenta\(5),
	datab => \div_freq_motor|cuenta\(4),
	datac => \div_freq_motor|cuenta\(6),
	datad => \div_freq_motor|cuenta\(7),
	combout => \div_freq_motor|Equal0~1_combout\);

-- Location: LCCOMB_X2_Y38_N8
\div_freq_motor|Equal0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \div_freq_motor|Equal0~3_combout\ = (!\div_freq_motor|cuenta\(14) & (!\div_freq_motor|cuenta\(12) & (!\div_freq_motor|cuenta\(15) & !\div_freq_motor|cuenta\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div_freq_motor|cuenta\(14),
	datab => \div_freq_motor|cuenta\(12),
	datac => \div_freq_motor|cuenta\(15),
	datad => \div_freq_motor|cuenta\(13),
	combout => \div_freq_motor|Equal0~3_combout\);

-- Location: LCCOMB_X2_Y38_N28
\div_freq_motor|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \div_freq_motor|Equal0~0_combout\ = (!\div_freq_motor|cuenta\(2) & (!\div_freq_motor|cuenta\(1) & (!\div_freq_motor|cuenta\(0) & !\div_freq_motor|cuenta\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div_freq_motor|cuenta\(2),
	datab => \div_freq_motor|cuenta\(1),
	datac => \div_freq_motor|cuenta\(0),
	datad => \div_freq_motor|cuenta\(3),
	combout => \div_freq_motor|Equal0~0_combout\);

-- Location: LCCOMB_X2_Y38_N26
\div_freq_motor|Equal0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \div_freq_motor|Equal0~4_combout\ = (\div_freq_motor|Equal0~2_combout\ & (\div_freq_motor|Equal0~1_combout\ & (\div_freq_motor|Equal0~3_combout\ & \div_freq_motor|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div_freq_motor|Equal0~2_combout\,
	datab => \div_freq_motor|Equal0~1_combout\,
	datac => \div_freq_motor|Equal0~3_combout\,
	datad => \div_freq_motor|Equal0~0_combout\,
	combout => \div_freq_motor|Equal0~4_combout\);

-- Location: LCCOMB_X1_Y37_N22
\div_freq_motor|Add0~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \div_freq_motor|Add0~50_combout\ = (\div_freq_motor|cuenta\(25) & (!\div_freq_motor|Add0~49\)) # (!\div_freq_motor|cuenta\(25) & ((\div_freq_motor|Add0~49\) # (GND)))
-- \div_freq_motor|Add0~51\ = CARRY((!\div_freq_motor|Add0~49\) # (!\div_freq_motor|cuenta\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div_freq_motor|cuenta\(25),
	datad => VCC,
	cin => \div_freq_motor|Add0~49\,
	combout => \div_freq_motor|Add0~50_combout\,
	cout => \div_freq_motor|Add0~51\);

-- Location: LCCOMB_X1_Y37_N24
\div_freq_motor|Add0~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \div_freq_motor|Add0~52_combout\ = (\div_freq_motor|cuenta\(26) & (\div_freq_motor|Add0~51\ $ (GND))) # (!\div_freq_motor|cuenta\(26) & (!\div_freq_motor|Add0~51\ & VCC))
-- \div_freq_motor|Add0~53\ = CARRY((\div_freq_motor|cuenta\(26) & !\div_freq_motor|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div_freq_motor|cuenta\(26),
	datad => VCC,
	cin => \div_freq_motor|Add0~51\,
	combout => \div_freq_motor|Add0~52_combout\,
	cout => \div_freq_motor|Add0~53\);

-- Location: LCCOMB_X1_Y37_N28
\div_freq_motor|cuenta~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \div_freq_motor|cuenta~1_combout\ = (\div_freq_motor|Add0~52_combout\ & ((!\div_freq_motor|Equal0~8_combout\) # (!\div_freq_motor|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div_freq_motor|Equal0~4_combout\,
	datac => \div_freq_motor|Equal0~8_combout\,
	datad => \div_freq_motor|Add0~52_combout\,
	combout => \div_freq_motor|cuenta~1_combout\);

-- Location: FF_X1_Y37_N29
\div_freq_motor|cuenta[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \div_freq_motor|cuenta~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_freq_motor|cuenta\(26));

-- Location: LCCOMB_X1_Y37_N26
\div_freq_motor|Add0~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \div_freq_motor|Add0~54_combout\ = \div_freq_motor|cuenta\(27) $ (\div_freq_motor|Add0~53\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \div_freq_motor|cuenta\(27),
	cin => \div_freq_motor|Add0~53\,
	combout => \div_freq_motor|Add0~54_combout\);

-- Location: FF_X1_Y37_N27
\div_freq_motor|cuenta[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \div_freq_motor|Add0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_freq_motor|cuenta\(27));

-- Location: LCCOMB_X1_Y37_N30
\div_freq_motor|Equal0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \div_freq_motor|Equal0~7_combout\ = (!\div_freq_motor|cuenta\(25) & (!\div_freq_motor|cuenta\(24) & (!\div_freq_motor|cuenta\(27) & \div_freq_motor|cuenta\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div_freq_motor|cuenta\(25),
	datab => \div_freq_motor|cuenta\(24),
	datac => \div_freq_motor|cuenta\(27),
	datad => \div_freq_motor|cuenta\(26),
	combout => \div_freq_motor|Equal0~7_combout\);

-- Location: LCCOMB_X2_Y37_N8
\div_freq_motor|Equal0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \div_freq_motor|Equal0~5_combout\ = (!\div_freq_motor|cuenta\(19) & (!\div_freq_motor|cuenta\(17) & (!\div_freq_motor|cuenta\(16) & !\div_freq_motor|cuenta\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div_freq_motor|cuenta\(19),
	datab => \div_freq_motor|cuenta\(17),
	datac => \div_freq_motor|cuenta\(16),
	datad => \div_freq_motor|cuenta\(18),
	combout => \div_freq_motor|Equal0~5_combout\);

-- Location: LCCOMB_X2_Y37_N18
\div_freq_motor|Equal0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \div_freq_motor|Equal0~6_combout\ = (!\div_freq_motor|cuenta\(20) & (!\div_freq_motor|cuenta\(23) & (!\div_freq_motor|cuenta\(22) & !\div_freq_motor|cuenta\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div_freq_motor|cuenta\(20),
	datab => \div_freq_motor|cuenta\(23),
	datac => \div_freq_motor|cuenta\(22),
	datad => \div_freq_motor|cuenta\(21),
	combout => \div_freq_motor|Equal0~6_combout\);

-- Location: LCCOMB_X2_Y37_N0
\div_freq_motor|Equal0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \div_freq_motor|Equal0~8_combout\ = (\div_freq_motor|Equal0~7_combout\ & (\div_freq_motor|Equal0~5_combout\ & \div_freq_motor|Equal0~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \div_freq_motor|Equal0~7_combout\,
	datac => \div_freq_motor|Equal0~5_combout\,
	datad => \div_freq_motor|Equal0~6_combout\,
	combout => \div_freq_motor|Equal0~8_combout\);

-- Location: LCCOMB_X1_Y38_N0
\div_freq_motor|cuenta~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \div_freq_motor|cuenta~0_combout\ = (\div_freq_motor|Add0~0_combout\ & ((!\div_freq_motor|Equal0~4_combout\) # (!\div_freq_motor|Equal0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \div_freq_motor|Add0~0_combout\,
	datac => \div_freq_motor|Equal0~8_combout\,
	datad => \div_freq_motor|Equal0~4_combout\,
	combout => \div_freq_motor|cuenta~0_combout\);

-- Location: FF_X1_Y38_N1
\div_freq_motor|cuenta[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \div_freq_motor|cuenta~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_freq_motor|cuenta\(0));

-- Location: LCCOMB_X1_Y38_N6
\div_freq_motor|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \div_freq_motor|Add0~2_combout\ = (\div_freq_motor|cuenta\(1) & (!\div_freq_motor|Add0~1\)) # (!\div_freq_motor|cuenta\(1) & ((\div_freq_motor|Add0~1\) # (GND)))
-- \div_freq_motor|Add0~3\ = CARRY((!\div_freq_motor|Add0~1\) # (!\div_freq_motor|cuenta\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \div_freq_motor|cuenta\(1),
	datad => VCC,
	cin => \div_freq_motor|Add0~1\,
	combout => \div_freq_motor|Add0~2_combout\,
	cout => \div_freq_motor|Add0~3\);

-- Location: FF_X1_Y38_N7
\div_freq_motor|cuenta[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \div_freq_motor|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_freq_motor|cuenta\(1));

-- Location: LCCOMB_X1_Y38_N8
\div_freq_motor|Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \div_freq_motor|Add0~4_combout\ = (\div_freq_motor|cuenta\(2) & (\div_freq_motor|Add0~3\ $ (GND))) # (!\div_freq_motor|cuenta\(2) & (!\div_freq_motor|Add0~3\ & VCC))
-- \div_freq_motor|Add0~5\ = CARRY((\div_freq_motor|cuenta\(2) & !\div_freq_motor|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div_freq_motor|cuenta\(2),
	datad => VCC,
	cin => \div_freq_motor|Add0~3\,
	combout => \div_freq_motor|Add0~4_combout\,
	cout => \div_freq_motor|Add0~5\);

-- Location: FF_X1_Y38_N9
\div_freq_motor|cuenta[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \div_freq_motor|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_freq_motor|cuenta\(2));

-- Location: LCCOMB_X1_Y38_N10
\div_freq_motor|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \div_freq_motor|Add0~6_combout\ = (\div_freq_motor|cuenta\(3) & (!\div_freq_motor|Add0~5\)) # (!\div_freq_motor|cuenta\(3) & ((\div_freq_motor|Add0~5\) # (GND)))
-- \div_freq_motor|Add0~7\ = CARRY((!\div_freq_motor|Add0~5\) # (!\div_freq_motor|cuenta\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \div_freq_motor|cuenta\(3),
	datad => VCC,
	cin => \div_freq_motor|Add0~5\,
	combout => \div_freq_motor|Add0~6_combout\,
	cout => \div_freq_motor|Add0~7\);

-- Location: FF_X1_Y38_N11
\div_freq_motor|cuenta[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \div_freq_motor|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_freq_motor|cuenta\(3));

-- Location: LCCOMB_X1_Y38_N12
\div_freq_motor|Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \div_freq_motor|Add0~8_combout\ = (\div_freq_motor|cuenta\(4) & (\div_freq_motor|Add0~7\ $ (GND))) # (!\div_freq_motor|cuenta\(4) & (!\div_freq_motor|Add0~7\ & VCC))
-- \div_freq_motor|Add0~9\ = CARRY((\div_freq_motor|cuenta\(4) & !\div_freq_motor|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \div_freq_motor|cuenta\(4),
	datad => VCC,
	cin => \div_freq_motor|Add0~7\,
	combout => \div_freq_motor|Add0~8_combout\,
	cout => \div_freq_motor|Add0~9\);

-- Location: FF_X1_Y38_N13
\div_freq_motor|cuenta[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \div_freq_motor|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_freq_motor|cuenta\(4));

-- Location: LCCOMB_X1_Y38_N14
\div_freq_motor|Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \div_freq_motor|Add0~10_combout\ = (\div_freq_motor|cuenta\(5) & (!\div_freq_motor|Add0~9\)) # (!\div_freq_motor|cuenta\(5) & ((\div_freq_motor|Add0~9\) # (GND)))
-- \div_freq_motor|Add0~11\ = CARRY((!\div_freq_motor|Add0~9\) # (!\div_freq_motor|cuenta\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div_freq_motor|cuenta\(5),
	datad => VCC,
	cin => \div_freq_motor|Add0~9\,
	combout => \div_freq_motor|Add0~10_combout\,
	cout => \div_freq_motor|Add0~11\);

-- Location: FF_X1_Y38_N15
\div_freq_motor|cuenta[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \div_freq_motor|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_freq_motor|cuenta\(5));

-- Location: LCCOMB_X1_Y38_N16
\div_freq_motor|Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \div_freq_motor|Add0~12_combout\ = (\div_freq_motor|cuenta\(6) & (\div_freq_motor|Add0~11\ $ (GND))) # (!\div_freq_motor|cuenta\(6) & (!\div_freq_motor|Add0~11\ & VCC))
-- \div_freq_motor|Add0~13\ = CARRY((\div_freq_motor|cuenta\(6) & !\div_freq_motor|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div_freq_motor|cuenta\(6),
	datad => VCC,
	cin => \div_freq_motor|Add0~11\,
	combout => \div_freq_motor|Add0~12_combout\,
	cout => \div_freq_motor|Add0~13\);

-- Location: FF_X1_Y38_N17
\div_freq_motor|cuenta[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \div_freq_motor|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_freq_motor|cuenta\(6));

-- Location: LCCOMB_X1_Y38_N18
\div_freq_motor|Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \div_freq_motor|Add0~14_combout\ = (\div_freq_motor|cuenta\(7) & (!\div_freq_motor|Add0~13\)) # (!\div_freq_motor|cuenta\(7) & ((\div_freq_motor|Add0~13\) # (GND)))
-- \div_freq_motor|Add0~15\ = CARRY((!\div_freq_motor|Add0~13\) # (!\div_freq_motor|cuenta\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div_freq_motor|cuenta\(7),
	datad => VCC,
	cin => \div_freq_motor|Add0~13\,
	combout => \div_freq_motor|Add0~14_combout\,
	cout => \div_freq_motor|Add0~15\);

-- Location: FF_X1_Y38_N19
\div_freq_motor|cuenta[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \div_freq_motor|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_freq_motor|cuenta\(7));

-- Location: LCCOMB_X1_Y38_N20
\div_freq_motor|Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \div_freq_motor|Add0~16_combout\ = (\div_freq_motor|cuenta\(8) & (\div_freq_motor|Add0~15\ $ (GND))) # (!\div_freq_motor|cuenta\(8) & (!\div_freq_motor|Add0~15\ & VCC))
-- \div_freq_motor|Add0~17\ = CARRY((\div_freq_motor|cuenta\(8) & !\div_freq_motor|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div_freq_motor|cuenta\(8),
	datad => VCC,
	cin => \div_freq_motor|Add0~15\,
	combout => \div_freq_motor|Add0~16_combout\,
	cout => \div_freq_motor|Add0~17\);

-- Location: FF_X1_Y38_N21
\div_freq_motor|cuenta[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \div_freq_motor|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_freq_motor|cuenta\(8));

-- Location: LCCOMB_X1_Y38_N22
\div_freq_motor|Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \div_freq_motor|Add0~18_combout\ = (\div_freq_motor|cuenta\(9) & (!\div_freq_motor|Add0~17\)) # (!\div_freq_motor|cuenta\(9) & ((\div_freq_motor|Add0~17\) # (GND)))
-- \div_freq_motor|Add0~19\ = CARRY((!\div_freq_motor|Add0~17\) # (!\div_freq_motor|cuenta\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \div_freq_motor|cuenta\(9),
	datad => VCC,
	cin => \div_freq_motor|Add0~17\,
	combout => \div_freq_motor|Add0~18_combout\,
	cout => \div_freq_motor|Add0~19\);

-- Location: FF_X1_Y38_N23
\div_freq_motor|cuenta[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \div_freq_motor|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_freq_motor|cuenta\(9));

-- Location: LCCOMB_X1_Y38_N24
\div_freq_motor|Add0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \div_freq_motor|Add0~20_combout\ = (\div_freq_motor|cuenta\(10) & (\div_freq_motor|Add0~19\ $ (GND))) # (!\div_freq_motor|cuenta\(10) & (!\div_freq_motor|Add0~19\ & VCC))
-- \div_freq_motor|Add0~21\ = CARRY((\div_freq_motor|cuenta\(10) & !\div_freq_motor|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div_freq_motor|cuenta\(10),
	datad => VCC,
	cin => \div_freq_motor|Add0~19\,
	combout => \div_freq_motor|Add0~20_combout\,
	cout => \div_freq_motor|Add0~21\);

-- Location: FF_X1_Y38_N25
\div_freq_motor|cuenta[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \div_freq_motor|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_freq_motor|cuenta\(10));

-- Location: LCCOMB_X1_Y38_N26
\div_freq_motor|Add0~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \div_freq_motor|Add0~22_combout\ = (\div_freq_motor|cuenta\(11) & (!\div_freq_motor|Add0~21\)) # (!\div_freq_motor|cuenta\(11) & ((\div_freq_motor|Add0~21\) # (GND)))
-- \div_freq_motor|Add0~23\ = CARRY((!\div_freq_motor|Add0~21\) # (!\div_freq_motor|cuenta\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \div_freq_motor|cuenta\(11),
	datad => VCC,
	cin => \div_freq_motor|Add0~21\,
	combout => \div_freq_motor|Add0~22_combout\,
	cout => \div_freq_motor|Add0~23\);

-- Location: FF_X1_Y38_N27
\div_freq_motor|cuenta[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \div_freq_motor|Add0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_freq_motor|cuenta\(11));

-- Location: LCCOMB_X1_Y38_N28
\div_freq_motor|Add0~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \div_freq_motor|Add0~24_combout\ = (\div_freq_motor|cuenta\(12) & (\div_freq_motor|Add0~23\ $ (GND))) # (!\div_freq_motor|cuenta\(12) & (!\div_freq_motor|Add0~23\ & VCC))
-- \div_freq_motor|Add0~25\ = CARRY((\div_freq_motor|cuenta\(12) & !\div_freq_motor|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div_freq_motor|cuenta\(12),
	datad => VCC,
	cin => \div_freq_motor|Add0~23\,
	combout => \div_freq_motor|Add0~24_combout\,
	cout => \div_freq_motor|Add0~25\);

-- Location: FF_X1_Y38_N29
\div_freq_motor|cuenta[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \div_freq_motor|Add0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_freq_motor|cuenta\(12));

-- Location: LCCOMB_X1_Y38_N30
\div_freq_motor|Add0~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \div_freq_motor|Add0~26_combout\ = (\div_freq_motor|cuenta\(13) & (!\div_freq_motor|Add0~25\)) # (!\div_freq_motor|cuenta\(13) & ((\div_freq_motor|Add0~25\) # (GND)))
-- \div_freq_motor|Add0~27\ = CARRY((!\div_freq_motor|Add0~25\) # (!\div_freq_motor|cuenta\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \div_freq_motor|cuenta\(13),
	datad => VCC,
	cin => \div_freq_motor|Add0~25\,
	combout => \div_freq_motor|Add0~26_combout\,
	cout => \div_freq_motor|Add0~27\);

-- Location: FF_X1_Y38_N31
\div_freq_motor|cuenta[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \div_freq_motor|Add0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_freq_motor|cuenta\(13));

-- Location: LCCOMB_X1_Y37_N0
\div_freq_motor|Add0~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \div_freq_motor|Add0~28_combout\ = (\div_freq_motor|cuenta\(14) & (\div_freq_motor|Add0~27\ $ (GND))) # (!\div_freq_motor|cuenta\(14) & (!\div_freq_motor|Add0~27\ & VCC))
-- \div_freq_motor|Add0~29\ = CARRY((\div_freq_motor|cuenta\(14) & !\div_freq_motor|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div_freq_motor|cuenta\(14),
	datad => VCC,
	cin => \div_freq_motor|Add0~27\,
	combout => \div_freq_motor|Add0~28_combout\,
	cout => \div_freq_motor|Add0~29\);

-- Location: FF_X1_Y37_N1
\div_freq_motor|cuenta[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \div_freq_motor|Add0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_freq_motor|cuenta\(14));

-- Location: LCCOMB_X1_Y37_N2
\div_freq_motor|Add0~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \div_freq_motor|Add0~30_combout\ = (\div_freq_motor|cuenta\(15) & (!\div_freq_motor|Add0~29\)) # (!\div_freq_motor|cuenta\(15) & ((\div_freq_motor|Add0~29\) # (GND)))
-- \div_freq_motor|Add0~31\ = CARRY((!\div_freq_motor|Add0~29\) # (!\div_freq_motor|cuenta\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div_freq_motor|cuenta\(15),
	datad => VCC,
	cin => \div_freq_motor|Add0~29\,
	combout => \div_freq_motor|Add0~30_combout\,
	cout => \div_freq_motor|Add0~31\);

-- Location: FF_X1_Y37_N3
\div_freq_motor|cuenta[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \div_freq_motor|Add0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_freq_motor|cuenta\(15));

-- Location: LCCOMB_X1_Y37_N4
\div_freq_motor|Add0~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \div_freq_motor|Add0~32_combout\ = (\div_freq_motor|cuenta\(16) & (\div_freq_motor|Add0~31\ $ (GND))) # (!\div_freq_motor|cuenta\(16) & (!\div_freq_motor|Add0~31\ & VCC))
-- \div_freq_motor|Add0~33\ = CARRY((\div_freq_motor|cuenta\(16) & !\div_freq_motor|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div_freq_motor|cuenta\(16),
	datad => VCC,
	cin => \div_freq_motor|Add0~31\,
	combout => \div_freq_motor|Add0~32_combout\,
	cout => \div_freq_motor|Add0~33\);

-- Location: FF_X1_Y37_N5
\div_freq_motor|cuenta[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \div_freq_motor|Add0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_freq_motor|cuenta\(16));

-- Location: LCCOMB_X1_Y37_N6
\div_freq_motor|Add0~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \div_freq_motor|Add0~34_combout\ = (\div_freq_motor|cuenta\(17) & (!\div_freq_motor|Add0~33\)) # (!\div_freq_motor|cuenta\(17) & ((\div_freq_motor|Add0~33\) # (GND)))
-- \div_freq_motor|Add0~35\ = CARRY((!\div_freq_motor|Add0~33\) # (!\div_freq_motor|cuenta\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \div_freq_motor|cuenta\(17),
	datad => VCC,
	cin => \div_freq_motor|Add0~33\,
	combout => \div_freq_motor|Add0~34_combout\,
	cout => \div_freq_motor|Add0~35\);

-- Location: FF_X1_Y37_N7
\div_freq_motor|cuenta[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \div_freq_motor|Add0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_freq_motor|cuenta\(17));

-- Location: LCCOMB_X1_Y37_N8
\div_freq_motor|Add0~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \div_freq_motor|Add0~36_combout\ = (\div_freq_motor|cuenta\(18) & (\div_freq_motor|Add0~35\ $ (GND))) # (!\div_freq_motor|cuenta\(18) & (!\div_freq_motor|Add0~35\ & VCC))
-- \div_freq_motor|Add0~37\ = CARRY((\div_freq_motor|cuenta\(18) & !\div_freq_motor|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div_freq_motor|cuenta\(18),
	datad => VCC,
	cin => \div_freq_motor|Add0~35\,
	combout => \div_freq_motor|Add0~36_combout\,
	cout => \div_freq_motor|Add0~37\);

-- Location: FF_X1_Y37_N9
\div_freq_motor|cuenta[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \div_freq_motor|Add0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_freq_motor|cuenta\(18));

-- Location: LCCOMB_X1_Y37_N10
\div_freq_motor|Add0~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \div_freq_motor|Add0~38_combout\ = (\div_freq_motor|cuenta\(19) & (!\div_freq_motor|Add0~37\)) # (!\div_freq_motor|cuenta\(19) & ((\div_freq_motor|Add0~37\) # (GND)))
-- \div_freq_motor|Add0~39\ = CARRY((!\div_freq_motor|Add0~37\) # (!\div_freq_motor|cuenta\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \div_freq_motor|cuenta\(19),
	datad => VCC,
	cin => \div_freq_motor|Add0~37\,
	combout => \div_freq_motor|Add0~38_combout\,
	cout => \div_freq_motor|Add0~39\);

-- Location: FF_X1_Y37_N11
\div_freq_motor|cuenta[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \div_freq_motor|Add0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_freq_motor|cuenta\(19));

-- Location: LCCOMB_X1_Y37_N12
\div_freq_motor|Add0~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \div_freq_motor|Add0~40_combout\ = (\div_freq_motor|cuenta\(20) & (\div_freq_motor|Add0~39\ $ (GND))) # (!\div_freq_motor|cuenta\(20) & (!\div_freq_motor|Add0~39\ & VCC))
-- \div_freq_motor|Add0~41\ = CARRY((\div_freq_motor|cuenta\(20) & !\div_freq_motor|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \div_freq_motor|cuenta\(20),
	datad => VCC,
	cin => \div_freq_motor|Add0~39\,
	combout => \div_freq_motor|Add0~40_combout\,
	cout => \div_freq_motor|Add0~41\);

-- Location: FF_X1_Y37_N13
\div_freq_motor|cuenta[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \div_freq_motor|Add0~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_freq_motor|cuenta\(20));

-- Location: LCCOMB_X1_Y37_N14
\div_freq_motor|Add0~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \div_freq_motor|Add0~42_combout\ = (\div_freq_motor|cuenta\(21) & (!\div_freq_motor|Add0~41\)) # (!\div_freq_motor|cuenta\(21) & ((\div_freq_motor|Add0~41\) # (GND)))
-- \div_freq_motor|Add0~43\ = CARRY((!\div_freq_motor|Add0~41\) # (!\div_freq_motor|cuenta\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div_freq_motor|cuenta\(21),
	datad => VCC,
	cin => \div_freq_motor|Add0~41\,
	combout => \div_freq_motor|Add0~42_combout\,
	cout => \div_freq_motor|Add0~43\);

-- Location: FF_X1_Y37_N15
\div_freq_motor|cuenta[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \div_freq_motor|Add0~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_freq_motor|cuenta\(21));

-- Location: LCCOMB_X1_Y37_N16
\div_freq_motor|Add0~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \div_freq_motor|Add0~44_combout\ = (\div_freq_motor|cuenta\(22) & (\div_freq_motor|Add0~43\ $ (GND))) # (!\div_freq_motor|cuenta\(22) & (!\div_freq_motor|Add0~43\ & VCC))
-- \div_freq_motor|Add0~45\ = CARRY((\div_freq_motor|cuenta\(22) & !\div_freq_motor|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div_freq_motor|cuenta\(22),
	datad => VCC,
	cin => \div_freq_motor|Add0~43\,
	combout => \div_freq_motor|Add0~44_combout\,
	cout => \div_freq_motor|Add0~45\);

-- Location: FF_X1_Y37_N17
\div_freq_motor|cuenta[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \div_freq_motor|Add0~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_freq_motor|cuenta\(22));

-- Location: LCCOMB_X1_Y37_N18
\div_freq_motor|Add0~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \div_freq_motor|Add0~46_combout\ = (\div_freq_motor|cuenta\(23) & (!\div_freq_motor|Add0~45\)) # (!\div_freq_motor|cuenta\(23) & ((\div_freq_motor|Add0~45\) # (GND)))
-- \div_freq_motor|Add0~47\ = CARRY((!\div_freq_motor|Add0~45\) # (!\div_freq_motor|cuenta\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div_freq_motor|cuenta\(23),
	datad => VCC,
	cin => \div_freq_motor|Add0~45\,
	combout => \div_freq_motor|Add0~46_combout\,
	cout => \div_freq_motor|Add0~47\);

-- Location: FF_X1_Y37_N19
\div_freq_motor|cuenta[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \div_freq_motor|Add0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_freq_motor|cuenta\(23));

-- Location: LCCOMB_X1_Y37_N20
\div_freq_motor|Add0~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \div_freq_motor|Add0~48_combout\ = (\div_freq_motor|cuenta\(24) & (\div_freq_motor|Add0~47\ $ (GND))) # (!\div_freq_motor|cuenta\(24) & (!\div_freq_motor|Add0~47\ & VCC))
-- \div_freq_motor|Add0~49\ = CARRY((\div_freq_motor|cuenta\(24) & !\div_freq_motor|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div_freq_motor|cuenta\(24),
	datad => VCC,
	cin => \div_freq_motor|Add0~47\,
	combout => \div_freq_motor|Add0~48_combout\,
	cout => \div_freq_motor|Add0~49\);

-- Location: FF_X1_Y37_N21
\div_freq_motor|cuenta[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \div_freq_motor|Add0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_freq_motor|cuenta\(24));

-- Location: FF_X1_Y37_N23
\div_freq_motor|cuenta[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \div_freq_motor|Add0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_freq_motor|cuenta\(25));

-- Location: CLKCTRL_G1
\div_freq_motor|cuenta[25]~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \div_freq_motor|cuenta[25]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \div_freq_motor|cuenta[25]~clkctrl_outclk\);

-- Location: IOIBUF_X51_Y54_N22
\E[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_E(1),
	o => \E[1]~input_o\);

-- Location: IOIBUF_X51_Y54_N29
\E[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_E(0),
	o => \E[0]~input_o\);

-- Location: LCCOMB_X50_Y53_N24
\Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = ((EDO_SIG(1) & ((!\E[0]~input_o\))) # (!EDO_SIG(1) & (\E[1]~input_o\))) # (!EDO_SIG(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \E[1]~input_o\,
	datab => \E[0]~input_o\,
	datac => EDO_SIG(0),
	datad => EDO_SIG(1),
	combout => \Mux1~0_combout\);

-- Location: IOIBUF_X46_Y54_N29
\RESET~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RESET,
	o => \RESET~input_o\);

-- Location: FF_X50_Y53_N25
\EDO_SIG[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \div_freq_motor|cuenta[25]~clkctrl_outclk\,
	d => \Mux1~0_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => EDO_SIG(0));

-- Location: LCCOMB_X50_Y53_N30
\Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (\E[1]~input_o\ & (EDO_SIG(1) & ((!EDO_SIG(0)) # (!\E[0]~input_o\)))) # (!\E[1]~input_o\ & ((EDO_SIG(1)) # ((!\E[0]~input_o\ & EDO_SIG(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \E[1]~input_o\,
	datab => \E[0]~input_o\,
	datac => EDO_SIG(1),
	datad => EDO_SIG(0),
	combout => \Mux0~0_combout\);

-- Location: FF_X50_Y53_N31
\EDO_SIG[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \div_freq_motor|cuenta[25]~clkctrl_outclk\,
	d => \Mux0~0_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => EDO_SIG(1));

-- Location: LCCOMB_X50_Y53_N28
\Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (EDO_SIG(1) & ((\E[1]~input_o\) # ((\E[0]~input_o\) # (EDO_SIG(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \E[1]~input_o\,
	datab => \E[0]~input_o\,
	datac => EDO_SIG(1),
	datad => EDO_SIG(0),
	combout => \Mux2~0_combout\);

-- Location: FF_X50_Y53_N29
\SALIDA[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \div_freq_motor|cuenta[25]~clkctrl_outclk\,
	d => \Mux2~0_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => SALIDA(0));

-- Location: LCCOMB_X50_Y53_N18
\SALIDA[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SALIDA[1]~feeder_combout\ = EDO_SIG(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => EDO_SIG(0),
	combout => \SALIDA[1]~feeder_combout\);

-- Location: FF_X50_Y53_N19
\SALIDA[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \div_freq_motor|cuenta[25]~clkctrl_outclk\,
	d => \SALIDA[1]~feeder_combout\,
	clrn => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => SALIDA(1));

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

ww_S(0) <= \S[0]~output_o\;

ww_S(1) <= \S[1]~output_o\;

ww_Q_OUT(0) <= \Q_OUT[0]~output_o\;

ww_Q_OUT(1) <= \Q_OUT[1]~output_o\;
END structure;


