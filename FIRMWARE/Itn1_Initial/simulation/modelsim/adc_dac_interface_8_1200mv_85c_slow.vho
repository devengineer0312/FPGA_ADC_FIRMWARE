-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Full Version"

-- DATE "07/17/2020 12:20:01"

-- 
-- Device: Altera EP4CE30F23C8 Package FBGA484
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

ENTITY 	adc_dac_interface IS
    PORT (
	CLKY2 : IN std_logic;
	SYS_RESET : IN std_logic;
	AD_CONVST : OUT std_logic;
	AD_SCLK : OUT std_logic;
	AD_CS : OUT std_logic;
	AD_SDI : OUT std_logic;
	AD_SDO : IN std_logic;
	DA_CLK : OUT std_logic;
	DA1_LD : OUT std_logic;
	DA1_SRI : OUT std_logic;
	DA2_LD : OUT std_logic;
	DA2_SRI : OUT std_logic;
	DA3_LD : OUT std_logic;
	DA3_SRI : OUT std_logic;
	DA4_LD : OUT std_logic;
	DA4_SRI : OUT std_logic;
	DA5_LD : OUT std_logic;
	DA5_SRI : OUT std_logic;
	DA6_LD : OUT std_logic;
	DA6_SRI : OUT std_logic;
	LED : OUT std_logic_vector(3 DOWNTO 0)
	);
END adc_dac_interface;

-- Design Ports Information
-- AD_CONVST	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AD_SCLK	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AD_CS	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AD_SDI	=>  Location: PIN_B2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DA_CLK	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DA1_LD	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DA1_SRI	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DA2_LD	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DA2_SRI	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DA3_LD	=>  Location: PIN_W13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DA3_SRI	=>  Location: PIN_W14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DA4_LD	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DA4_SRI	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DA5_LD	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DA5_SRI	=>  Location: PIN_AB14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DA6_LD	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DA6_SRI	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED[0]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED[1]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED[2]	=>  Location: PIN_AB19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED[3]	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLKY2	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SYS_RESET	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AD_SDO	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF adc_dac_interface IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLKY2 : std_logic;
SIGNAL ww_SYS_RESET : std_logic;
SIGNAL ww_AD_CONVST : std_logic;
SIGNAL ww_AD_SCLK : std_logic;
SIGNAL ww_AD_CS : std_logic;
SIGNAL ww_AD_SDI : std_logic;
SIGNAL ww_AD_SDO : std_logic;
SIGNAL ww_DA_CLK : std_logic;
SIGNAL ww_DA1_LD : std_logic;
SIGNAL ww_DA1_SRI : std_logic;
SIGNAL ww_DA2_LD : std_logic;
SIGNAL ww_DA2_SRI : std_logic;
SIGNAL ww_DA3_LD : std_logic;
SIGNAL ww_DA3_SRI : std_logic;
SIGNAL ww_DA4_LD : std_logic;
SIGNAL ww_DA4_SRI : std_logic;
SIGNAL ww_DA5_LD : std_logic;
SIGNAL ww_DA5_SRI : std_logic;
SIGNAL ww_DA6_LD : std_logic;
SIGNAL ww_DA6_SRI : std_logic;
SIGNAL ww_LED : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLKY2~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \AD_CONVST~output_o\ : std_logic;
SIGNAL \AD_SCLK~output_o\ : std_logic;
SIGNAL \AD_CS~output_o\ : std_logic;
SIGNAL \AD_SDI~output_o\ : std_logic;
SIGNAL \DA_CLK~output_o\ : std_logic;
SIGNAL \DA1_LD~output_o\ : std_logic;
SIGNAL \DA1_SRI~output_o\ : std_logic;
SIGNAL \DA2_LD~output_o\ : std_logic;
SIGNAL \DA2_SRI~output_o\ : std_logic;
SIGNAL \DA3_LD~output_o\ : std_logic;
SIGNAL \DA3_SRI~output_o\ : std_logic;
SIGNAL \DA4_LD~output_o\ : std_logic;
SIGNAL \DA4_SRI~output_o\ : std_logic;
SIGNAL \DA5_LD~output_o\ : std_logic;
SIGNAL \DA5_SRI~output_o\ : std_logic;
SIGNAL \DA6_LD~output_o\ : std_logic;
SIGNAL \DA6_SRI~output_o\ : std_logic;
SIGNAL \LED[0]~output_o\ : std_logic;
SIGNAL \LED[1]~output_o\ : std_logic;
SIGNAL \LED[2]~output_o\ : std_logic;
SIGNAL \LED[3]~output_o\ : std_logic;
SIGNAL \CLKY2~input_o\ : std_logic;
SIGNAL \CLKY2~inputclkctrl_outclk\ : std_logic;
SIGNAL \I_power_on_reset|count[0]~45_combout\ : std_logic;
SIGNAL \I_power_on_reset|count[1]~15_combout\ : std_logic;
SIGNAL \I_power_on_reset|count[1]~16\ : std_logic;
SIGNAL \I_power_on_reset|count[2]~17_combout\ : std_logic;
SIGNAL \I_power_on_reset|count[2]~18\ : std_logic;
SIGNAL \I_power_on_reset|count[3]~19_combout\ : std_logic;
SIGNAL \I_power_on_reset|count[3]~20\ : std_logic;
SIGNAL \I_power_on_reset|count[4]~21_combout\ : std_logic;
SIGNAL \I_power_on_reset|count[4]~22\ : std_logic;
SIGNAL \I_power_on_reset|count[5]~23_combout\ : std_logic;
SIGNAL \I_power_on_reset|count[5]~24\ : std_logic;
SIGNAL \I_power_on_reset|count[6]~25_combout\ : std_logic;
SIGNAL \I_power_on_reset|count[6]~26\ : std_logic;
SIGNAL \I_power_on_reset|count[7]~27_combout\ : std_logic;
SIGNAL \I_power_on_reset|count[7]~28\ : std_logic;
SIGNAL \I_power_on_reset|count[8]~29_combout\ : std_logic;
SIGNAL \I_power_on_reset|count[8]~30\ : std_logic;
SIGNAL \I_power_on_reset|count[9]~31_combout\ : std_logic;
SIGNAL \I_power_on_reset|count[9]~32\ : std_logic;
SIGNAL \I_power_on_reset|count[10]~33_combout\ : std_logic;
SIGNAL \I_power_on_reset|count[10]~34\ : std_logic;
SIGNAL \I_power_on_reset|count[11]~35_combout\ : std_logic;
SIGNAL \I_power_on_reset|count[11]~36\ : std_logic;
SIGNAL \I_power_on_reset|count[12]~37_combout\ : std_logic;
SIGNAL \I_power_on_reset|count[12]~38\ : std_logic;
SIGNAL \I_power_on_reset|count[13]~39_combout\ : std_logic;
SIGNAL \I_power_on_reset|count[13]~40\ : std_logic;
SIGNAL \I_power_on_reset|count[14]~41_combout\ : std_logic;
SIGNAL \I_power_on_reset|count[14]~42\ : std_logic;
SIGNAL \I_power_on_reset|count[15]~43_combout\ : std_logic;
SIGNAL \I_power_on_reset|LessThan0~2_combout\ : std_logic;
SIGNAL \I_power_on_reset|LessThan0~0_combout\ : std_logic;
SIGNAL \I_power_on_reset|LessThan0~1_combout\ : std_logic;
SIGNAL \I_power_on_reset|LessThan0~3_combout\ : std_logic;
SIGNAL \I_power_on_reset|reset_t~0_combout\ : std_logic;
SIGNAL \I_power_on_reset|reset_t~q\ : std_logic;
SIGNAL \SYS_RESET~input_o\ : std_logic;
SIGNAL \sw_0_shift[0]~0_combout\ : std_logic;
SIGNAL \temp_count[0]~66_combout\ : std_logic;
SIGNAL \temp_count[1]~22_combout\ : std_logic;
SIGNAL \temp_count[1]~23\ : std_logic;
SIGNAL \temp_count[2]~24_combout\ : std_logic;
SIGNAL \temp_count[2]~25\ : std_logic;
SIGNAL \temp_count[3]~26_combout\ : std_logic;
SIGNAL \temp_count[3]~27\ : std_logic;
SIGNAL \temp_count[4]~28_combout\ : std_logic;
SIGNAL \temp_count[4]~29\ : std_logic;
SIGNAL \temp_count[5]~30_combout\ : std_logic;
SIGNAL \temp_count[5]~31\ : std_logic;
SIGNAL \temp_count[6]~32_combout\ : std_logic;
SIGNAL \temp_count[6]~33\ : std_logic;
SIGNAL \temp_count[7]~34_combout\ : std_logic;
SIGNAL \temp_count[7]~35\ : std_logic;
SIGNAL \temp_count[8]~36_combout\ : std_logic;
SIGNAL \temp_count[8]~37\ : std_logic;
SIGNAL \temp_count[9]~38_combout\ : std_logic;
SIGNAL \temp_count[9]~39\ : std_logic;
SIGNAL \temp_count[10]~40_combout\ : std_logic;
SIGNAL \temp_count[10]~41\ : std_logic;
SIGNAL \temp_count[11]~42_combout\ : std_logic;
SIGNAL \temp_count[11]~43\ : std_logic;
SIGNAL \temp_count[12]~44_combout\ : std_logic;
SIGNAL \temp_count[12]~45\ : std_logic;
SIGNAL \temp_count[13]~46_combout\ : std_logic;
SIGNAL \temp_count[13]~47\ : std_logic;
SIGNAL \temp_count[14]~48_combout\ : std_logic;
SIGNAL \temp_count[14]~49\ : std_logic;
SIGNAL \temp_count[15]~50_combout\ : std_logic;
SIGNAL \temp_count[15]~51\ : std_logic;
SIGNAL \temp_count[16]~52_combout\ : std_logic;
SIGNAL \temp_count[16]~53\ : std_logic;
SIGNAL \temp_count[17]~54_combout\ : std_logic;
SIGNAL \temp_count[17]~55\ : std_logic;
SIGNAL \temp_count[18]~56_combout\ : std_logic;
SIGNAL \temp_count[18]~57\ : std_logic;
SIGNAL \temp_count[19]~58_combout\ : std_logic;
SIGNAL \temp_count[19]~59\ : std_logic;
SIGNAL \temp_count[20]~60_combout\ : std_logic;
SIGNAL \temp_count[20]~61\ : std_logic;
SIGNAL \temp_count[21]~62_combout\ : std_logic;
SIGNAL \temp_count[21]~63\ : std_logic;
SIGNAL \temp_count[22]~64_combout\ : std_logic;
SIGNAL \clk_6Hz_fd1~feeder_combout\ : std_logic;
SIGNAL \clk_6Hz_fd1~q\ : std_logic;
SIGNAL \clk_6Hz_fd2~q\ : std_logic;
SIGNAL \clk_6Hz_pul~combout\ : std_logic;
SIGNAL \sw_0_shift[1]~feeder_combout\ : std_logic;
SIGNAL \sw_0_shift[2]~feeder_combout\ : std_logic;
SIGNAL \sw_0_shift[3]~feeder_combout\ : std_logic;
SIGNAL \sw_0_deb~0_combout\ : std_logic;
SIGNAL \sw_0_deb~1_combout\ : std_logic;
SIGNAL \sw_0_deb~q\ : std_logic;
SIGNAL \I_ads8330_interface|count_1[0]~7_combout\ : std_logic;
SIGNAL \reset~combout\ : std_logic;
SIGNAL \I_ads8330_interface|next_state.idle~feeder_combout\ : std_logic;
SIGNAL \I_ads8330_interface|next_state.idle~q\ : std_logic;
SIGNAL \I_ads8330_interface|count_1[2]~12\ : std_logic;
SIGNAL \I_ads8330_interface|count_1[3]~16_combout\ : std_logic;
SIGNAL \I_ads8330_interface|count_1[3]~17\ : std_logic;
SIGNAL \I_ads8330_interface|count_1[4]~18_combout\ : std_logic;
SIGNAL \I_ads8330_interface|Equal0~0_combout\ : std_logic;
SIGNAL \I_ads8330_interface|count_1[4]~19\ : std_logic;
SIGNAL \I_ads8330_interface|count_1[5]~20_combout\ : std_logic;
SIGNAL \I_ads8330_interface|next_state~13_combout\ : std_logic;
SIGNAL \I_ads8330_interface|next_state.issue_cs~q\ : std_logic;
SIGNAL \I_ads8330_interface|count_1[5]~13_combout\ : std_logic;
SIGNAL \I_ads8330_interface|Equal0~1_combout\ : std_logic;
SIGNAL \I_ads8330_interface|Equal2~0_combout\ : std_logic;
SIGNAL \I_ads8330_interface|Equal2~1_combout\ : std_logic;
SIGNAL \I_ads8330_interface|count_1[5]~14_combout\ : std_logic;
SIGNAL \I_ads8330_interface|count_1[5]~15_combout\ : std_logic;
SIGNAL \I_ads8330_interface|count_1[0]~8\ : std_logic;
SIGNAL \I_ads8330_interface|count_1[1]~9_combout\ : std_logic;
SIGNAL \I_ads8330_interface|count_1[1]~10\ : std_logic;
SIGNAL \I_ads8330_interface|count_1[2]~11_combout\ : std_logic;
SIGNAL \I_ads8330_interface|Equal1~0_combout\ : std_logic;
SIGNAL \I_ads8330_interface|next_state~12_combout\ : std_logic;
SIGNAL \I_ads8330_interface|next_state.data_transfer~q\ : std_logic;
SIGNAL \I_ads8330_interface|sclk_t~2_combout\ : std_logic;
SIGNAL \I_ads8330_interface|next_state~15_combout\ : std_logic;
SIGNAL \I_ads8330_interface|next_state~14_combout\ : std_logic;
SIGNAL \I_ads8330_interface|next_state.wait_state~q\ : std_logic;
SIGNAL \I_ads8330_interface|next_state~10_combout\ : std_logic;
SIGNAL \I_ads8330_interface|next_state~11_combout\ : std_logic;
SIGNAL \I_ads8330_interface|next_state.issue_convst~q\ : std_logic;
SIGNAL \I_ads8330_interface|next_state~9_combout\ : std_logic;
SIGNAL \I_ads8330_interface|convst_n_t~feeder_combout\ : std_logic;
SIGNAL \I_ads8330_interface|convst_n_t~q\ : std_logic;
SIGNAL \I_ads8330_interface|sclk_t~1_combout\ : std_logic;
SIGNAL \I_ads8330_interface|sclk_t~q\ : std_logic;
SIGNAL \I_ads8330_interface|cs_n_t~1_combout\ : std_logic;
SIGNAL \I_ads8330_interface|cs_n_t~q\ : std_logic;
SIGNAL \I_ads8330_interface|count_2[0]~5_combout\ : std_logic;
SIGNAL \I_ads8330_interface|count_2[0]~15_combout\ : std_logic;
SIGNAL \I_ads8330_interface|count_2[0]~6\ : std_logic;
SIGNAL \I_ads8330_interface|count_2[1]~7_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \I_ads8330_interface|count_2[1]~8\ : std_logic;
SIGNAL \I_ads8330_interface|count_2[2]~9_combout\ : std_logic;
SIGNAL \I_ads8330_interface|count_2[2]~10\ : std_logic;
SIGNAL \I_ads8330_interface|count_2[3]~11_combout\ : std_logic;
SIGNAL \I_ads8330_interface|count_2[3]~12\ : std_logic;
SIGNAL \I_ads8330_interface|count_2[4]~13_combout\ : std_logic;
SIGNAL \I_ads8330_interface|sdi_t~0_combout\ : std_logic;
SIGNAL \I_ads8330_interface|sdi_t~1_combout\ : std_logic;
SIGNAL \I_ads8330_interface|sdi_t~2_combout\ : std_logic;
SIGNAL \I_ads8330_interface|sdi_t~q\ : std_logic;
SIGNAL \I_ads8330_interface|data_val~0_combout\ : std_logic;
SIGNAL \I_ads8330_interface|data_val~q\ : std_logic;
SIGNAL \I_ad5441_interface_1|next_state~8_combout\ : std_logic;
SIGNAL \I_ad5441_interface_1|next_state.idle~q\ : std_logic;
SIGNAL \I_ad5441_interface_1|count_1[0]~5_combout\ : std_logic;
SIGNAL \I_ad5441_interface_1|count_1[0]~6\ : std_logic;
SIGNAL \I_ad5441_interface_1|count_1[1]~7_combout\ : std_logic;
SIGNAL \I_ad5441_interface_1|count_1[1]~8\ : std_logic;
SIGNAL \I_ad5441_interface_1|count_1[2]~9_combout\ : std_logic;
SIGNAL \I_ad5441_interface_1|count_1[2]~10\ : std_logic;
SIGNAL \I_ad5441_interface_1|count_1[3]~11_combout\ : std_logic;
SIGNAL \I_ad5441_interface_1|count_1[3]~12\ : std_logic;
SIGNAL \I_ad5441_interface_1|count_1[4]~13_combout\ : std_logic;
SIGNAL \I_ad5441_interface_1|Equal0~0_combout\ : std_logic;
SIGNAL \I_ad5441_interface_1|next_state~6_combout\ : std_logic;
SIGNAL \I_ad5441_interface_1|next_state~7_combout\ : std_logic;
SIGNAL \I_ad5441_interface_1|next_state.data_transfer~q\ : std_logic;
SIGNAL \I_ad5441_interface_1|next_state~5_combout\ : std_logic;
SIGNAL \I_ad5441_interface_1|next_state.issue_ld~q\ : std_logic;
SIGNAL \I_ad5441_interface_1|dac_ld_n_t~0_combout\ : std_logic;
SIGNAL \I_ad5441_interface_1|dac_ld_n_t~q\ : std_logic;
SIGNAL \I_ad5441_interface_2|dac_ld_n_t~q\ : std_logic;
SIGNAL \I_ad5441_interface_3|dac_ld_n_t~q\ : std_logic;
SIGNAL \I_ad5441_interface_4|dac_ld_n_t~feeder_combout\ : std_logic;
SIGNAL \I_ad5441_interface_4|dac_ld_n_t~q\ : std_logic;
SIGNAL \I_ad5441_interface_5|dac_ld_n_t~feeder_combout\ : std_logic;
SIGNAL \I_ad5441_interface_5|dac_ld_n_t~q\ : std_logic;
SIGNAL \I_ad5441_interface_6|dac_ld_n_t~feeder_combout\ : std_logic;
SIGNAL \I_ad5441_interface_6|dac_ld_n_t~q\ : std_logic;
SIGNAL \I_ads8330_interface|adc_data~1_combout\ : std_logic;
SIGNAL \AD_SDO~input_o\ : std_logic;
SIGNAL \I_ads8330_interface|adc_data_t~0_combout\ : std_logic;
SIGNAL \I_ads8330_interface|adc_data_t~1_combout\ : std_logic;
SIGNAL \I_ads8330_interface|adc_data~0_combout\ : std_logic;
SIGNAL \I_ads8330_interface|adc_data~2_combout\ : std_logic;
SIGNAL \adc_data_fd~0_combout\ : std_logic;
SIGNAL \adc_data_fd~q\ : std_logic;
SIGNAL \status~1_combout\ : std_logic;
SIGNAL \init_flag~q\ : std_logic;
SIGNAL \status~0_combout\ : std_logic;
SIGNAL \status~q\ : std_logic;
SIGNAL sw_0_shift : std_logic_vector(4 DOWNTO 0);
SIGNAL temp_count : std_logic_vector(22 DOWNTO 0);
SIGNAL \I_power_on_reset|count\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \I_ads8330_interface|count_2\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \I_ads8330_interface|count_1\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \I_ads8330_interface|adc_data_t\ : std_logic_vector(16 DOWNTO 0);
SIGNAL \I_ads8330_interface|adc_data\ : std_logic_vector(16 DOWNTO 0);
SIGNAL \I_ad5441_interface_1|count_1\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \I_ads8330_interface|ALT_INV_sclk_t~2_combout\ : std_logic;
SIGNAL \I_ad5441_interface_1|ALT_INV_next_state~6_combout\ : std_logic;

BEGIN

ww_CLKY2 <= CLKY2;
ww_SYS_RESET <= SYS_RESET;
AD_CONVST <= ww_AD_CONVST;
AD_SCLK <= ww_AD_SCLK;
AD_CS <= ww_AD_CS;
AD_SDI <= ww_AD_SDI;
ww_AD_SDO <= AD_SDO;
DA_CLK <= ww_DA_CLK;
DA1_LD <= ww_DA1_LD;
DA1_SRI <= ww_DA1_SRI;
DA2_LD <= ww_DA2_LD;
DA2_SRI <= ww_DA2_SRI;
DA3_LD <= ww_DA3_LD;
DA3_SRI <= ww_DA3_SRI;
DA4_LD <= ww_DA4_LD;
DA4_SRI <= ww_DA4_SRI;
DA5_LD <= ww_DA5_LD;
DA5_SRI <= ww_DA5_SRI;
DA6_LD <= ww_DA6_LD;
DA6_SRI <= ww_DA6_SRI;
LED <= ww_LED;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLKY2~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLKY2~input_o\);
\I_ads8330_interface|ALT_INV_sclk_t~2_combout\ <= NOT \I_ads8330_interface|sclk_t~2_combout\;
\I_ad5441_interface_1|ALT_INV_next_state~6_combout\ <= NOT \I_ad5441_interface_1|next_state~6_combout\;

-- Location: IOOBUF_X0_Y36_N16
\AD_CONVST~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \I_ads8330_interface|convst_n_t~q\,
	devoe => ww_devoe,
	o => \AD_CONVST~output_o\);

-- Location: IOOBUF_X0_Y39_N9
\AD_SCLK~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \I_ads8330_interface|sclk_t~q\,
	devoe => ww_devoe,
	o => \AD_SCLK~output_o\);

-- Location: IOOBUF_X0_Y38_N23
\AD_CS~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \I_ads8330_interface|cs_n_t~q\,
	devoe => ww_devoe,
	o => \AD_CS~output_o\);

-- Location: IOOBUF_X0_Y41_N23
\AD_SDI~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \I_ads8330_interface|sdi_t~q\,
	devoe => ww_devoe,
	o => \AD_SDI~output_o\);

-- Location: IOOBUF_X61_Y0_N30
\DA_CLK~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DA_CLK~output_o\);

-- Location: IOOBUF_X54_Y0_N30
\DA1_LD~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \I_ad5441_interface_1|dac_ld_n_t~q\,
	devoe => ww_devoe,
	o => \DA1_LD~output_o\);

-- Location: IOOBUF_X54_Y0_N23
\DA1_SRI~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DA1_SRI~output_o\);

-- Location: IOOBUF_X45_Y0_N23
\DA2_LD~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \I_ad5441_interface_2|dac_ld_n_t~q\,
	devoe => ww_devoe,
	o => \DA2_LD~output_o\);

-- Location: IOOBUF_X45_Y0_N16
\DA2_SRI~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DA2_SRI~output_o\);

-- Location: IOOBUF_X43_Y0_N30
\DA3_LD~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \I_ad5441_interface_3|dac_ld_n_t~q\,
	devoe => ww_devoe,
	o => \DA3_LD~output_o\);

-- Location: IOOBUF_X48_Y0_N23
\DA3_SRI~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DA3_SRI~output_o\);

-- Location: IOOBUF_X43_Y0_N16
\DA4_LD~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \I_ad5441_interface_4|dac_ld_n_t~q\,
	devoe => ww_devoe,
	o => \DA4_LD~output_o\);

-- Location: IOOBUF_X43_Y0_N9
\DA4_SRI~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DA4_SRI~output_o\);

-- Location: IOOBUF_X38_Y0_N16
\DA5_LD~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \I_ad5441_interface_5|dac_ld_n_t~q\,
	devoe => ww_devoe,
	o => \DA5_LD~output_o\);

-- Location: IOOBUF_X38_Y0_N9
\DA5_SRI~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DA5_SRI~output_o\);

-- Location: IOOBUF_X38_Y0_N30
\DA6_LD~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \I_ad5441_interface_6|dac_ld_n_t~q\,
	devoe => ww_devoe,
	o => \DA6_LD~output_o\);

-- Location: IOOBUF_X38_Y0_N23
\DA6_SRI~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DA6_SRI~output_o\);

-- Location: IOOBUF_X52_Y0_N2
\LED[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \status~q\,
	devoe => ww_devoe,
	o => \LED[0]~output_o\);

-- Location: IOOBUF_X56_Y0_N2
\LED[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LED[1]~output_o\);

-- Location: IOOBUF_X59_Y0_N30
\LED[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LED[2]~output_o\);

-- Location: IOOBUF_X54_Y0_N16
\LED[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LED[3]~output_o\);

-- Location: IOIBUF_X0_Y21_N8
\CLKY2~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLKY2,
	o => \CLKY2~input_o\);

-- Location: CLKCTRL_G2
\CLKY2~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLKY2~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLKY2~inputclkctrl_outclk\);

-- Location: LCCOMB_X7_Y40_N16
\I_power_on_reset|count[0]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_power_on_reset|count[0]~45_combout\ = \I_power_on_reset|count\(0) $ (\I_power_on_reset|LessThan0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \I_power_on_reset|count\(0),
	datad => \I_power_on_reset|LessThan0~3_combout\,
	combout => \I_power_on_reset|count[0]~45_combout\);

-- Location: FF_X7_Y40_N17
\I_power_on_reset|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKY2~inputclkctrl_outclk\,
	d => \I_power_on_reset|count[0]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_power_on_reset|count\(0));

-- Location: LCCOMB_X8_Y40_N0
\I_power_on_reset|count[1]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_power_on_reset|count[1]~15_combout\ = (\I_power_on_reset|count\(0) & (\I_power_on_reset|count\(1) $ (VCC))) # (!\I_power_on_reset|count\(0) & (\I_power_on_reset|count\(1) & VCC))
-- \I_power_on_reset|count[1]~16\ = CARRY((\I_power_on_reset|count\(0) & \I_power_on_reset|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I_power_on_reset|count\(0),
	datab => \I_power_on_reset|count\(1),
	datad => VCC,
	combout => \I_power_on_reset|count[1]~15_combout\,
	cout => \I_power_on_reset|count[1]~16\);

-- Location: FF_X8_Y40_N1
\I_power_on_reset|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKY2~inputclkctrl_outclk\,
	d => \I_power_on_reset|count[1]~15_combout\,
	ena => \I_power_on_reset|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_power_on_reset|count\(1));

-- Location: LCCOMB_X8_Y40_N2
\I_power_on_reset|count[2]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_power_on_reset|count[2]~17_combout\ = (\I_power_on_reset|count\(2) & (!\I_power_on_reset|count[1]~16\)) # (!\I_power_on_reset|count\(2) & ((\I_power_on_reset|count[1]~16\) # (GND)))
-- \I_power_on_reset|count[2]~18\ = CARRY((!\I_power_on_reset|count[1]~16\) # (!\I_power_on_reset|count\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \I_power_on_reset|count\(2),
	datad => VCC,
	cin => \I_power_on_reset|count[1]~16\,
	combout => \I_power_on_reset|count[2]~17_combout\,
	cout => \I_power_on_reset|count[2]~18\);

-- Location: FF_X8_Y40_N3
\I_power_on_reset|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKY2~inputclkctrl_outclk\,
	d => \I_power_on_reset|count[2]~17_combout\,
	ena => \I_power_on_reset|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_power_on_reset|count\(2));

-- Location: LCCOMB_X8_Y40_N4
\I_power_on_reset|count[3]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_power_on_reset|count[3]~19_combout\ = (\I_power_on_reset|count\(3) & (\I_power_on_reset|count[2]~18\ $ (GND))) # (!\I_power_on_reset|count\(3) & (!\I_power_on_reset|count[2]~18\ & VCC))
-- \I_power_on_reset|count[3]~20\ = CARRY((\I_power_on_reset|count\(3) & !\I_power_on_reset|count[2]~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \I_power_on_reset|count\(3),
	datad => VCC,
	cin => \I_power_on_reset|count[2]~18\,
	combout => \I_power_on_reset|count[3]~19_combout\,
	cout => \I_power_on_reset|count[3]~20\);

-- Location: FF_X8_Y40_N5
\I_power_on_reset|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKY2~inputclkctrl_outclk\,
	d => \I_power_on_reset|count[3]~19_combout\,
	ena => \I_power_on_reset|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_power_on_reset|count\(3));

-- Location: LCCOMB_X8_Y40_N6
\I_power_on_reset|count[4]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_power_on_reset|count[4]~21_combout\ = (\I_power_on_reset|count\(4) & (!\I_power_on_reset|count[3]~20\)) # (!\I_power_on_reset|count\(4) & ((\I_power_on_reset|count[3]~20\) # (GND)))
-- \I_power_on_reset|count[4]~22\ = CARRY((!\I_power_on_reset|count[3]~20\) # (!\I_power_on_reset|count\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \I_power_on_reset|count\(4),
	datad => VCC,
	cin => \I_power_on_reset|count[3]~20\,
	combout => \I_power_on_reset|count[4]~21_combout\,
	cout => \I_power_on_reset|count[4]~22\);

-- Location: FF_X8_Y40_N7
\I_power_on_reset|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKY2~inputclkctrl_outclk\,
	d => \I_power_on_reset|count[4]~21_combout\,
	ena => \I_power_on_reset|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_power_on_reset|count\(4));

-- Location: LCCOMB_X8_Y40_N8
\I_power_on_reset|count[5]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_power_on_reset|count[5]~23_combout\ = (\I_power_on_reset|count\(5) & (\I_power_on_reset|count[4]~22\ $ (GND))) # (!\I_power_on_reset|count\(5) & (!\I_power_on_reset|count[4]~22\ & VCC))
-- \I_power_on_reset|count[5]~24\ = CARRY((\I_power_on_reset|count\(5) & !\I_power_on_reset|count[4]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \I_power_on_reset|count\(5),
	datad => VCC,
	cin => \I_power_on_reset|count[4]~22\,
	combout => \I_power_on_reset|count[5]~23_combout\,
	cout => \I_power_on_reset|count[5]~24\);

-- Location: FF_X8_Y40_N9
\I_power_on_reset|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKY2~inputclkctrl_outclk\,
	d => \I_power_on_reset|count[5]~23_combout\,
	ena => \I_power_on_reset|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_power_on_reset|count\(5));

-- Location: LCCOMB_X8_Y40_N10
\I_power_on_reset|count[6]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_power_on_reset|count[6]~25_combout\ = (\I_power_on_reset|count\(6) & (!\I_power_on_reset|count[5]~24\)) # (!\I_power_on_reset|count\(6) & ((\I_power_on_reset|count[5]~24\) # (GND)))
-- \I_power_on_reset|count[6]~26\ = CARRY((!\I_power_on_reset|count[5]~24\) # (!\I_power_on_reset|count\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \I_power_on_reset|count\(6),
	datad => VCC,
	cin => \I_power_on_reset|count[5]~24\,
	combout => \I_power_on_reset|count[6]~25_combout\,
	cout => \I_power_on_reset|count[6]~26\);

-- Location: FF_X8_Y40_N11
\I_power_on_reset|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKY2~inputclkctrl_outclk\,
	d => \I_power_on_reset|count[6]~25_combout\,
	ena => \I_power_on_reset|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_power_on_reset|count\(6));

-- Location: LCCOMB_X8_Y40_N12
\I_power_on_reset|count[7]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_power_on_reset|count[7]~27_combout\ = (\I_power_on_reset|count\(7) & (\I_power_on_reset|count[6]~26\ $ (GND))) # (!\I_power_on_reset|count\(7) & (!\I_power_on_reset|count[6]~26\ & VCC))
-- \I_power_on_reset|count[7]~28\ = CARRY((\I_power_on_reset|count\(7) & !\I_power_on_reset|count[6]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \I_power_on_reset|count\(7),
	datad => VCC,
	cin => \I_power_on_reset|count[6]~26\,
	combout => \I_power_on_reset|count[7]~27_combout\,
	cout => \I_power_on_reset|count[7]~28\);

-- Location: FF_X8_Y40_N13
\I_power_on_reset|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKY2~inputclkctrl_outclk\,
	d => \I_power_on_reset|count[7]~27_combout\,
	ena => \I_power_on_reset|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_power_on_reset|count\(7));

-- Location: LCCOMB_X8_Y40_N14
\I_power_on_reset|count[8]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_power_on_reset|count[8]~29_combout\ = (\I_power_on_reset|count\(8) & (!\I_power_on_reset|count[7]~28\)) # (!\I_power_on_reset|count\(8) & ((\I_power_on_reset|count[7]~28\) # (GND)))
-- \I_power_on_reset|count[8]~30\ = CARRY((!\I_power_on_reset|count[7]~28\) # (!\I_power_on_reset|count\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \I_power_on_reset|count\(8),
	datad => VCC,
	cin => \I_power_on_reset|count[7]~28\,
	combout => \I_power_on_reset|count[8]~29_combout\,
	cout => \I_power_on_reset|count[8]~30\);

-- Location: FF_X8_Y40_N15
\I_power_on_reset|count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKY2~inputclkctrl_outclk\,
	d => \I_power_on_reset|count[8]~29_combout\,
	ena => \I_power_on_reset|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_power_on_reset|count\(8));

-- Location: LCCOMB_X8_Y40_N16
\I_power_on_reset|count[9]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_power_on_reset|count[9]~31_combout\ = (\I_power_on_reset|count\(9) & (\I_power_on_reset|count[8]~30\ $ (GND))) # (!\I_power_on_reset|count\(9) & (!\I_power_on_reset|count[8]~30\ & VCC))
-- \I_power_on_reset|count[9]~32\ = CARRY((\I_power_on_reset|count\(9) & !\I_power_on_reset|count[8]~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \I_power_on_reset|count\(9),
	datad => VCC,
	cin => \I_power_on_reset|count[8]~30\,
	combout => \I_power_on_reset|count[9]~31_combout\,
	cout => \I_power_on_reset|count[9]~32\);

-- Location: FF_X8_Y40_N17
\I_power_on_reset|count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKY2~inputclkctrl_outclk\,
	d => \I_power_on_reset|count[9]~31_combout\,
	ena => \I_power_on_reset|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_power_on_reset|count\(9));

-- Location: LCCOMB_X8_Y40_N18
\I_power_on_reset|count[10]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_power_on_reset|count[10]~33_combout\ = (\I_power_on_reset|count\(10) & (!\I_power_on_reset|count[9]~32\)) # (!\I_power_on_reset|count\(10) & ((\I_power_on_reset|count[9]~32\) # (GND)))
-- \I_power_on_reset|count[10]~34\ = CARRY((!\I_power_on_reset|count[9]~32\) # (!\I_power_on_reset|count\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \I_power_on_reset|count\(10),
	datad => VCC,
	cin => \I_power_on_reset|count[9]~32\,
	combout => \I_power_on_reset|count[10]~33_combout\,
	cout => \I_power_on_reset|count[10]~34\);

-- Location: FF_X8_Y40_N19
\I_power_on_reset|count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKY2~inputclkctrl_outclk\,
	d => \I_power_on_reset|count[10]~33_combout\,
	ena => \I_power_on_reset|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_power_on_reset|count\(10));

-- Location: LCCOMB_X8_Y40_N20
\I_power_on_reset|count[11]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_power_on_reset|count[11]~35_combout\ = (\I_power_on_reset|count\(11) & (\I_power_on_reset|count[10]~34\ $ (GND))) # (!\I_power_on_reset|count\(11) & (!\I_power_on_reset|count[10]~34\ & VCC))
-- \I_power_on_reset|count[11]~36\ = CARRY((\I_power_on_reset|count\(11) & !\I_power_on_reset|count[10]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \I_power_on_reset|count\(11),
	datad => VCC,
	cin => \I_power_on_reset|count[10]~34\,
	combout => \I_power_on_reset|count[11]~35_combout\,
	cout => \I_power_on_reset|count[11]~36\);

-- Location: FF_X8_Y40_N21
\I_power_on_reset|count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKY2~inputclkctrl_outclk\,
	d => \I_power_on_reset|count[11]~35_combout\,
	ena => \I_power_on_reset|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_power_on_reset|count\(11));

-- Location: LCCOMB_X8_Y40_N22
\I_power_on_reset|count[12]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_power_on_reset|count[12]~37_combout\ = (\I_power_on_reset|count\(12) & (!\I_power_on_reset|count[11]~36\)) # (!\I_power_on_reset|count\(12) & ((\I_power_on_reset|count[11]~36\) # (GND)))
-- \I_power_on_reset|count[12]~38\ = CARRY((!\I_power_on_reset|count[11]~36\) # (!\I_power_on_reset|count\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \I_power_on_reset|count\(12),
	datad => VCC,
	cin => \I_power_on_reset|count[11]~36\,
	combout => \I_power_on_reset|count[12]~37_combout\,
	cout => \I_power_on_reset|count[12]~38\);

-- Location: FF_X8_Y40_N23
\I_power_on_reset|count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKY2~inputclkctrl_outclk\,
	d => \I_power_on_reset|count[12]~37_combout\,
	ena => \I_power_on_reset|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_power_on_reset|count\(12));

-- Location: LCCOMB_X8_Y40_N24
\I_power_on_reset|count[13]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_power_on_reset|count[13]~39_combout\ = (\I_power_on_reset|count\(13) & (\I_power_on_reset|count[12]~38\ $ (GND))) # (!\I_power_on_reset|count\(13) & (!\I_power_on_reset|count[12]~38\ & VCC))
-- \I_power_on_reset|count[13]~40\ = CARRY((\I_power_on_reset|count\(13) & !\I_power_on_reset|count[12]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \I_power_on_reset|count\(13),
	datad => VCC,
	cin => \I_power_on_reset|count[12]~38\,
	combout => \I_power_on_reset|count[13]~39_combout\,
	cout => \I_power_on_reset|count[13]~40\);

-- Location: FF_X8_Y40_N25
\I_power_on_reset|count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKY2~inputclkctrl_outclk\,
	d => \I_power_on_reset|count[13]~39_combout\,
	ena => \I_power_on_reset|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_power_on_reset|count\(13));

-- Location: LCCOMB_X8_Y40_N26
\I_power_on_reset|count[14]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_power_on_reset|count[14]~41_combout\ = (\I_power_on_reset|count\(14) & (!\I_power_on_reset|count[13]~40\)) # (!\I_power_on_reset|count\(14) & ((\I_power_on_reset|count[13]~40\) # (GND)))
-- \I_power_on_reset|count[14]~42\ = CARRY((!\I_power_on_reset|count[13]~40\) # (!\I_power_on_reset|count\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \I_power_on_reset|count\(14),
	datad => VCC,
	cin => \I_power_on_reset|count[13]~40\,
	combout => \I_power_on_reset|count[14]~41_combout\,
	cout => \I_power_on_reset|count[14]~42\);

-- Location: FF_X8_Y40_N27
\I_power_on_reset|count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKY2~inputclkctrl_outclk\,
	d => \I_power_on_reset|count[14]~41_combout\,
	ena => \I_power_on_reset|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_power_on_reset|count\(14));

-- Location: LCCOMB_X8_Y40_N28
\I_power_on_reset|count[15]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_power_on_reset|count[15]~43_combout\ = \I_power_on_reset|count[14]~42\ $ (!\I_power_on_reset|count\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \I_power_on_reset|count\(15),
	cin => \I_power_on_reset|count[14]~42\,
	combout => \I_power_on_reset|count[15]~43_combout\);

-- Location: FF_X8_Y40_N29
\I_power_on_reset|count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKY2~inputclkctrl_outclk\,
	d => \I_power_on_reset|count[15]~43_combout\,
	ena => \I_power_on_reset|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_power_on_reset|count\(15));

-- Location: LCCOMB_X7_Y40_N6
\I_power_on_reset|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_power_on_reset|LessThan0~2_combout\ = (!\I_power_on_reset|count\(11) & (!\I_power_on_reset|count\(13) & (!\I_power_on_reset|count\(12) & !\I_power_on_reset|count\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I_power_on_reset|count\(11),
	datab => \I_power_on_reset|count\(13),
	datac => \I_power_on_reset|count\(12),
	datad => \I_power_on_reset|count\(10),
	combout => \I_power_on_reset|LessThan0~2_combout\);

-- Location: LCCOMB_X7_Y40_N2
\I_power_on_reset|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_power_on_reset|LessThan0~0_combout\ = ((!\I_power_on_reset|count\(4) & (!\I_power_on_reset|count\(5) & !\I_power_on_reset|count\(7)))) # (!\I_power_on_reset|count\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I_power_on_reset|count\(4),
	datab => \I_power_on_reset|count\(5),
	datac => \I_power_on_reset|count\(7),
	datad => \I_power_on_reset|count\(8),
	combout => \I_power_on_reset|LessThan0~0_combout\);

-- Location: LCCOMB_X7_Y40_N24
\I_power_on_reset|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_power_on_reset|LessThan0~1_combout\ = ((\I_power_on_reset|LessThan0~0_combout\) # ((!\I_power_on_reset|count\(7) & !\I_power_on_reset|count\(6)))) # (!\I_power_on_reset|count\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I_power_on_reset|count\(7),
	datab => \I_power_on_reset|count\(9),
	datac => \I_power_on_reset|count\(6),
	datad => \I_power_on_reset|LessThan0~0_combout\,
	combout => \I_power_on_reset|LessThan0~1_combout\);

-- Location: LCCOMB_X8_Y40_N30
\I_power_on_reset|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_power_on_reset|LessThan0~3_combout\ = (((\I_power_on_reset|LessThan0~2_combout\ & \I_power_on_reset|LessThan0~1_combout\)) # (!\I_power_on_reset|count\(15))) # (!\I_power_on_reset|count\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I_power_on_reset|count\(14),
	datab => \I_power_on_reset|count\(15),
	datac => \I_power_on_reset|LessThan0~2_combout\,
	datad => \I_power_on_reset|LessThan0~1_combout\,
	combout => \I_power_on_reset|LessThan0~3_combout\);

-- Location: LCCOMB_X7_Y40_N20
\I_power_on_reset|reset_t~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_power_on_reset|reset_t~0_combout\ = !\I_power_on_reset|LessThan0~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \I_power_on_reset|LessThan0~3_combout\,
	combout => \I_power_on_reset|reset_t~0_combout\);

-- Location: FF_X7_Y40_N21
\I_power_on_reset|reset_t\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKY2~inputclkctrl_outclk\,
	d => \I_power_on_reset|reset_t~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_power_on_reset|reset_t~q\);

-- Location: IOIBUF_X0_Y39_N1
\SYS_RESET~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SYS_RESET,
	o => \SYS_RESET~input_o\);

-- Location: LCCOMB_X4_Y39_N12
\sw_0_shift[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sw_0_shift[0]~0_combout\ = !\SYS_RESET~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SYS_RESET~input_o\,
	combout => \sw_0_shift[0]~0_combout\);

-- Location: LCCOMB_X3_Y40_N4
\temp_count[0]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp_count[0]~66_combout\ = !temp_count(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => temp_count(0),
	combout => \temp_count[0]~66_combout\);

-- Location: FF_X3_Y40_N5
\temp_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKY2~inputclkctrl_outclk\,
	d => \temp_count[0]~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp_count(0));

-- Location: LCCOMB_X3_Y40_N10
\temp_count[1]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp_count[1]~22_combout\ = (temp_count(1) & (temp_count(0) $ (VCC))) # (!temp_count(1) & (temp_count(0) & VCC))
-- \temp_count[1]~23\ = CARRY((temp_count(1) & temp_count(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => temp_count(1),
	datab => temp_count(0),
	datad => VCC,
	combout => \temp_count[1]~22_combout\,
	cout => \temp_count[1]~23\);

-- Location: FF_X3_Y40_N11
\temp_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKY2~inputclkctrl_outclk\,
	d => \temp_count[1]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp_count(1));

-- Location: LCCOMB_X3_Y40_N12
\temp_count[2]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp_count[2]~24_combout\ = (temp_count(2) & (!\temp_count[1]~23\)) # (!temp_count(2) & ((\temp_count[1]~23\) # (GND)))
-- \temp_count[2]~25\ = CARRY((!\temp_count[1]~23\) # (!temp_count(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => temp_count(2),
	datad => VCC,
	cin => \temp_count[1]~23\,
	combout => \temp_count[2]~24_combout\,
	cout => \temp_count[2]~25\);

-- Location: FF_X3_Y40_N13
\temp_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKY2~inputclkctrl_outclk\,
	d => \temp_count[2]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp_count(2));

-- Location: LCCOMB_X3_Y40_N14
\temp_count[3]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp_count[3]~26_combout\ = (temp_count(3) & (\temp_count[2]~25\ $ (GND))) # (!temp_count(3) & (!\temp_count[2]~25\ & VCC))
-- \temp_count[3]~27\ = CARRY((temp_count(3) & !\temp_count[2]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => temp_count(3),
	datad => VCC,
	cin => \temp_count[2]~25\,
	combout => \temp_count[3]~26_combout\,
	cout => \temp_count[3]~27\);

-- Location: FF_X3_Y40_N15
\temp_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKY2~inputclkctrl_outclk\,
	d => \temp_count[3]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp_count(3));

-- Location: LCCOMB_X3_Y40_N16
\temp_count[4]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp_count[4]~28_combout\ = (temp_count(4) & (!\temp_count[3]~27\)) # (!temp_count(4) & ((\temp_count[3]~27\) # (GND)))
-- \temp_count[4]~29\ = CARRY((!\temp_count[3]~27\) # (!temp_count(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => temp_count(4),
	datad => VCC,
	cin => \temp_count[3]~27\,
	combout => \temp_count[4]~28_combout\,
	cout => \temp_count[4]~29\);

-- Location: FF_X3_Y40_N17
\temp_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKY2~inputclkctrl_outclk\,
	d => \temp_count[4]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp_count(4));

-- Location: LCCOMB_X3_Y40_N18
\temp_count[5]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp_count[5]~30_combout\ = (temp_count(5) & (\temp_count[4]~29\ $ (GND))) # (!temp_count(5) & (!\temp_count[4]~29\ & VCC))
-- \temp_count[5]~31\ = CARRY((temp_count(5) & !\temp_count[4]~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => temp_count(5),
	datad => VCC,
	cin => \temp_count[4]~29\,
	combout => \temp_count[5]~30_combout\,
	cout => \temp_count[5]~31\);

-- Location: FF_X3_Y40_N19
\temp_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKY2~inputclkctrl_outclk\,
	d => \temp_count[5]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp_count(5));

-- Location: LCCOMB_X3_Y40_N20
\temp_count[6]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp_count[6]~32_combout\ = (temp_count(6) & (!\temp_count[5]~31\)) # (!temp_count(6) & ((\temp_count[5]~31\) # (GND)))
-- \temp_count[6]~33\ = CARRY((!\temp_count[5]~31\) # (!temp_count(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => temp_count(6),
	datad => VCC,
	cin => \temp_count[5]~31\,
	combout => \temp_count[6]~32_combout\,
	cout => \temp_count[6]~33\);

-- Location: FF_X3_Y40_N21
\temp_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKY2~inputclkctrl_outclk\,
	d => \temp_count[6]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp_count(6));

-- Location: LCCOMB_X3_Y40_N22
\temp_count[7]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp_count[7]~34_combout\ = (temp_count(7) & (\temp_count[6]~33\ $ (GND))) # (!temp_count(7) & (!\temp_count[6]~33\ & VCC))
-- \temp_count[7]~35\ = CARRY((temp_count(7) & !\temp_count[6]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => temp_count(7),
	datad => VCC,
	cin => \temp_count[6]~33\,
	combout => \temp_count[7]~34_combout\,
	cout => \temp_count[7]~35\);

-- Location: FF_X3_Y40_N23
\temp_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKY2~inputclkctrl_outclk\,
	d => \temp_count[7]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp_count(7));

-- Location: LCCOMB_X3_Y40_N24
\temp_count[8]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp_count[8]~36_combout\ = (temp_count(8) & (!\temp_count[7]~35\)) # (!temp_count(8) & ((\temp_count[7]~35\) # (GND)))
-- \temp_count[8]~37\ = CARRY((!\temp_count[7]~35\) # (!temp_count(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => temp_count(8),
	datad => VCC,
	cin => \temp_count[7]~35\,
	combout => \temp_count[8]~36_combout\,
	cout => \temp_count[8]~37\);

-- Location: FF_X3_Y40_N25
\temp_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKY2~inputclkctrl_outclk\,
	d => \temp_count[8]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp_count(8));

-- Location: LCCOMB_X3_Y40_N26
\temp_count[9]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp_count[9]~38_combout\ = (temp_count(9) & (\temp_count[8]~37\ $ (GND))) # (!temp_count(9) & (!\temp_count[8]~37\ & VCC))
-- \temp_count[9]~39\ = CARRY((temp_count(9) & !\temp_count[8]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => temp_count(9),
	datad => VCC,
	cin => \temp_count[8]~37\,
	combout => \temp_count[9]~38_combout\,
	cout => \temp_count[9]~39\);

-- Location: FF_X3_Y40_N27
\temp_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKY2~inputclkctrl_outclk\,
	d => \temp_count[9]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp_count(9));

-- Location: LCCOMB_X3_Y40_N28
\temp_count[10]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp_count[10]~40_combout\ = (temp_count(10) & (!\temp_count[9]~39\)) # (!temp_count(10) & ((\temp_count[9]~39\) # (GND)))
-- \temp_count[10]~41\ = CARRY((!\temp_count[9]~39\) # (!temp_count(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => temp_count(10),
	datad => VCC,
	cin => \temp_count[9]~39\,
	combout => \temp_count[10]~40_combout\,
	cout => \temp_count[10]~41\);

-- Location: FF_X3_Y40_N29
\temp_count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKY2~inputclkctrl_outclk\,
	d => \temp_count[10]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp_count(10));

-- Location: LCCOMB_X3_Y40_N30
\temp_count[11]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp_count[11]~42_combout\ = (temp_count(11) & (\temp_count[10]~41\ $ (GND))) # (!temp_count(11) & (!\temp_count[10]~41\ & VCC))
-- \temp_count[11]~43\ = CARRY((temp_count(11) & !\temp_count[10]~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => temp_count(11),
	datad => VCC,
	cin => \temp_count[10]~41\,
	combout => \temp_count[11]~42_combout\,
	cout => \temp_count[11]~43\);

-- Location: FF_X3_Y40_N31
\temp_count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKY2~inputclkctrl_outclk\,
	d => \temp_count[11]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp_count(11));

-- Location: LCCOMB_X3_Y39_N0
\temp_count[12]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp_count[12]~44_combout\ = (temp_count(12) & (!\temp_count[11]~43\)) # (!temp_count(12) & ((\temp_count[11]~43\) # (GND)))
-- \temp_count[12]~45\ = CARRY((!\temp_count[11]~43\) # (!temp_count(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => temp_count(12),
	datad => VCC,
	cin => \temp_count[11]~43\,
	combout => \temp_count[12]~44_combout\,
	cout => \temp_count[12]~45\);

-- Location: FF_X3_Y39_N1
\temp_count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKY2~inputclkctrl_outclk\,
	d => \temp_count[12]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp_count(12));

-- Location: LCCOMB_X3_Y39_N2
\temp_count[13]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp_count[13]~46_combout\ = (temp_count(13) & (\temp_count[12]~45\ $ (GND))) # (!temp_count(13) & (!\temp_count[12]~45\ & VCC))
-- \temp_count[13]~47\ = CARRY((temp_count(13) & !\temp_count[12]~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => temp_count(13),
	datad => VCC,
	cin => \temp_count[12]~45\,
	combout => \temp_count[13]~46_combout\,
	cout => \temp_count[13]~47\);

-- Location: FF_X3_Y39_N3
\temp_count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKY2~inputclkctrl_outclk\,
	d => \temp_count[13]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp_count(13));

-- Location: LCCOMB_X3_Y39_N4
\temp_count[14]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp_count[14]~48_combout\ = (temp_count(14) & (!\temp_count[13]~47\)) # (!temp_count(14) & ((\temp_count[13]~47\) # (GND)))
-- \temp_count[14]~49\ = CARRY((!\temp_count[13]~47\) # (!temp_count(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => temp_count(14),
	datad => VCC,
	cin => \temp_count[13]~47\,
	combout => \temp_count[14]~48_combout\,
	cout => \temp_count[14]~49\);

-- Location: FF_X3_Y39_N5
\temp_count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKY2~inputclkctrl_outclk\,
	d => \temp_count[14]~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp_count(14));

-- Location: LCCOMB_X3_Y39_N6
\temp_count[15]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp_count[15]~50_combout\ = (temp_count(15) & (\temp_count[14]~49\ $ (GND))) # (!temp_count(15) & (!\temp_count[14]~49\ & VCC))
-- \temp_count[15]~51\ = CARRY((temp_count(15) & !\temp_count[14]~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => temp_count(15),
	datad => VCC,
	cin => \temp_count[14]~49\,
	combout => \temp_count[15]~50_combout\,
	cout => \temp_count[15]~51\);

-- Location: FF_X3_Y39_N7
\temp_count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKY2~inputclkctrl_outclk\,
	d => \temp_count[15]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp_count(15));

-- Location: LCCOMB_X3_Y39_N8
\temp_count[16]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp_count[16]~52_combout\ = (temp_count(16) & (!\temp_count[15]~51\)) # (!temp_count(16) & ((\temp_count[15]~51\) # (GND)))
-- \temp_count[16]~53\ = CARRY((!\temp_count[15]~51\) # (!temp_count(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => temp_count(16),
	datad => VCC,
	cin => \temp_count[15]~51\,
	combout => \temp_count[16]~52_combout\,
	cout => \temp_count[16]~53\);

-- Location: FF_X3_Y39_N9
\temp_count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKY2~inputclkctrl_outclk\,
	d => \temp_count[16]~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp_count(16));

-- Location: LCCOMB_X3_Y39_N10
\temp_count[17]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp_count[17]~54_combout\ = (temp_count(17) & (\temp_count[16]~53\ $ (GND))) # (!temp_count(17) & (!\temp_count[16]~53\ & VCC))
-- \temp_count[17]~55\ = CARRY((temp_count(17) & !\temp_count[16]~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => temp_count(17),
	datad => VCC,
	cin => \temp_count[16]~53\,
	combout => \temp_count[17]~54_combout\,
	cout => \temp_count[17]~55\);

-- Location: FF_X3_Y39_N11
\temp_count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKY2~inputclkctrl_outclk\,
	d => \temp_count[17]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp_count(17));

-- Location: LCCOMB_X3_Y39_N12
\temp_count[18]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp_count[18]~56_combout\ = (temp_count(18) & (!\temp_count[17]~55\)) # (!temp_count(18) & ((\temp_count[17]~55\) # (GND)))
-- \temp_count[18]~57\ = CARRY((!\temp_count[17]~55\) # (!temp_count(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => temp_count(18),
	datad => VCC,
	cin => \temp_count[17]~55\,
	combout => \temp_count[18]~56_combout\,
	cout => \temp_count[18]~57\);

-- Location: FF_X3_Y39_N13
\temp_count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKY2~inputclkctrl_outclk\,
	d => \temp_count[18]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp_count(18));

-- Location: LCCOMB_X3_Y39_N14
\temp_count[19]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp_count[19]~58_combout\ = (temp_count(19) & (\temp_count[18]~57\ $ (GND))) # (!temp_count(19) & (!\temp_count[18]~57\ & VCC))
-- \temp_count[19]~59\ = CARRY((temp_count(19) & !\temp_count[18]~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => temp_count(19),
	datad => VCC,
	cin => \temp_count[18]~57\,
	combout => \temp_count[19]~58_combout\,
	cout => \temp_count[19]~59\);

-- Location: FF_X3_Y39_N15
\temp_count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKY2~inputclkctrl_outclk\,
	d => \temp_count[19]~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp_count(19));

-- Location: LCCOMB_X3_Y39_N16
\temp_count[20]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp_count[20]~60_combout\ = (temp_count(20) & (!\temp_count[19]~59\)) # (!temp_count(20) & ((\temp_count[19]~59\) # (GND)))
-- \temp_count[20]~61\ = CARRY((!\temp_count[19]~59\) # (!temp_count(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => temp_count(20),
	datad => VCC,
	cin => \temp_count[19]~59\,
	combout => \temp_count[20]~60_combout\,
	cout => \temp_count[20]~61\);

-- Location: FF_X3_Y39_N17
\temp_count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKY2~inputclkctrl_outclk\,
	d => \temp_count[20]~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp_count(20));

-- Location: LCCOMB_X3_Y39_N18
\temp_count[21]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp_count[21]~62_combout\ = (temp_count(21) & (\temp_count[20]~61\ $ (GND))) # (!temp_count(21) & (!\temp_count[20]~61\ & VCC))
-- \temp_count[21]~63\ = CARRY((temp_count(21) & !\temp_count[20]~61\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => temp_count(21),
	datad => VCC,
	cin => \temp_count[20]~61\,
	combout => \temp_count[21]~62_combout\,
	cout => \temp_count[21]~63\);

-- Location: FF_X3_Y39_N19
\temp_count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKY2~inputclkctrl_outclk\,
	d => \temp_count[21]~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp_count(21));

-- Location: LCCOMB_X3_Y39_N20
\temp_count[22]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp_count[22]~64_combout\ = \temp_count[21]~63\ $ (temp_count(22))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => temp_count(22),
	cin => \temp_count[21]~63\,
	combout => \temp_count[22]~64_combout\);

-- Location: FF_X3_Y39_N21
\temp_count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKY2~inputclkctrl_outclk\,
	d => \temp_count[22]~64_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp_count(22));

-- Location: LCCOMB_X4_Y39_N10
\clk_6Hz_fd1~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_6Hz_fd1~feeder_combout\ = temp_count(22)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => temp_count(22),
	combout => \clk_6Hz_fd1~feeder_combout\);

-- Location: FF_X4_Y39_N11
clk_6Hz_fd1 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKY2~inputclkctrl_outclk\,
	d => \clk_6Hz_fd1~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_6Hz_fd1~q\);

-- Location: FF_X4_Y39_N25
clk_6Hz_fd2 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKY2~inputclkctrl_outclk\,
	asdata => \clk_6Hz_fd1~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_6Hz_fd2~q\);

-- Location: LCCOMB_X4_Y39_N24
clk_6Hz_pul : cycloneive_lcell_comb
-- Equation(s):
-- \clk_6Hz_pul~combout\ = (!\clk_6Hz_fd2~q\ & \clk_6Hz_fd1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clk_6Hz_fd2~q\,
	datad => \clk_6Hz_fd1~q\,
	combout => \clk_6Hz_pul~combout\);

-- Location: FF_X4_Y39_N13
\sw_0_shift[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKY2~inputclkctrl_outclk\,
	d => \sw_0_shift[0]~0_combout\,
	ena => \clk_6Hz_pul~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sw_0_shift(0));

-- Location: LCCOMB_X4_Y39_N4
\sw_0_shift[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sw_0_shift[1]~feeder_combout\ = sw_0_shift(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sw_0_shift(0),
	combout => \sw_0_shift[1]~feeder_combout\);

-- Location: FF_X4_Y39_N5
\sw_0_shift[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKY2~inputclkctrl_outclk\,
	d => \sw_0_shift[1]~feeder_combout\,
	ena => \clk_6Hz_pul~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sw_0_shift(1));

-- Location: LCCOMB_X4_Y39_N6
\sw_0_shift[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sw_0_shift[2]~feeder_combout\ = sw_0_shift(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => sw_0_shift(1),
	combout => \sw_0_shift[2]~feeder_combout\);

-- Location: FF_X4_Y39_N7
\sw_0_shift[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKY2~inputclkctrl_outclk\,
	d => \sw_0_shift[2]~feeder_combout\,
	ena => \clk_6Hz_pul~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sw_0_shift(2));

-- Location: LCCOMB_X4_Y39_N22
\sw_0_shift[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sw_0_shift[3]~feeder_combout\ = sw_0_shift(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => sw_0_shift(2),
	combout => \sw_0_shift[3]~feeder_combout\);

-- Location: FF_X4_Y39_N23
\sw_0_shift[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKY2~inputclkctrl_outclk\,
	d => \sw_0_shift[3]~feeder_combout\,
	ena => \clk_6Hz_pul~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sw_0_shift(3));

-- Location: FF_X4_Y39_N29
\sw_0_shift[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKY2~inputclkctrl_outclk\,
	asdata => sw_0_shift(3),
	sload => VCC,
	ena => \clk_6Hz_pul~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sw_0_shift(4));

-- Location: LCCOMB_X4_Y39_N28
\sw_0_deb~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sw_0_deb~0_combout\ = (sw_0_shift(3) & ((\sw_0_deb~q\) # ((sw_0_shift(4) & sw_0_shift(0))))) # (!sw_0_shift(3) & (\sw_0_deb~q\ & ((sw_0_shift(4)) # (sw_0_shift(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sw_0_shift(3),
	datab => \sw_0_deb~q\,
	datac => sw_0_shift(4),
	datad => sw_0_shift(0),
	combout => \sw_0_deb~0_combout\);

-- Location: LCCOMB_X8_Y39_N18
\sw_0_deb~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sw_0_deb~1_combout\ = (sw_0_shift(1) & ((\sw_0_deb~q\) # ((sw_0_shift(2) & \sw_0_deb~0_combout\)))) # (!sw_0_shift(1) & (\sw_0_deb~q\ & ((sw_0_shift(2)) # (\sw_0_deb~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sw_0_shift(1),
	datab => sw_0_shift(2),
	datac => \sw_0_deb~q\,
	datad => \sw_0_deb~0_combout\,
	combout => \sw_0_deb~1_combout\);

-- Location: FF_X8_Y39_N19
sw_0_deb : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKY2~inputclkctrl_outclk\,
	d => \sw_0_deb~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sw_0_deb~q\);

-- Location: LCCOMB_X9_Y39_N8
\I_ads8330_interface|count_1[0]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_ads8330_interface|count_1[0]~7_combout\ = \I_ads8330_interface|count_1\(0) $ (VCC)
-- \I_ads8330_interface|count_1[0]~8\ = CARRY(\I_ads8330_interface|count_1\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \I_ads8330_interface|count_1\(0),
	datad => VCC,
	combout => \I_ads8330_interface|count_1[0]~7_combout\,
	cout => \I_ads8330_interface|count_1[0]~8\);

-- Location: LCCOMB_X8_Y39_N6
reset : cycloneive_lcell_comb
-- Equation(s):
-- \reset~combout\ = (!\sw_0_deb~q\ & \I_power_on_reset|reset_t~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sw_0_deb~q\,
	datad => \I_power_on_reset|reset_t~q\,
	combout => \reset~combout\);

-- Location: LCCOMB_X8_Y39_N22
\I_ads8330_interface|next_state.idle~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_ads8330_interface|next_state.idle~feeder_combout\ = \reset~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \reset~combout\,
	combout => \I_ads8330_interface|next_state.idle~feeder_combout\);

-- Location: FF_X8_Y39_N23
\I_ads8330_interface|next_state.idle\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKY2~inputclkctrl_outclk\,
	d => \I_ads8330_interface|next_state.idle~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_ads8330_interface|next_state.idle~q\);

-- Location: LCCOMB_X9_Y39_N12
\I_ads8330_interface|count_1[2]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_ads8330_interface|count_1[2]~11_combout\ = (\I_ads8330_interface|count_1\(2) & (\I_ads8330_interface|count_1[1]~10\ $ (GND))) # (!\I_ads8330_interface|count_1\(2) & (!\I_ads8330_interface|count_1[1]~10\ & VCC))
-- \I_ads8330_interface|count_1[2]~12\ = CARRY((\I_ads8330_interface|count_1\(2) & !\I_ads8330_interface|count_1[1]~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \I_ads8330_interface|count_1\(2),
	datad => VCC,
	cin => \I_ads8330_interface|count_1[1]~10\,
	combout => \I_ads8330_interface|count_1[2]~11_combout\,
	cout => \I_ads8330_interface|count_1[2]~12\);

-- Location: LCCOMB_X9_Y39_N14
\I_ads8330_interface|count_1[3]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_ads8330_interface|count_1[3]~16_combout\ = (\I_ads8330_interface|count_1\(3) & (!\I_ads8330_interface|count_1[2]~12\)) # (!\I_ads8330_interface|count_1\(3) & ((\I_ads8330_interface|count_1[2]~12\) # (GND)))
-- \I_ads8330_interface|count_1[3]~17\ = CARRY((!\I_ads8330_interface|count_1[2]~12\) # (!\I_ads8330_interface|count_1\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \I_ads8330_interface|count_1\(3),
	datad => VCC,
	cin => \I_ads8330_interface|count_1[2]~12\,
	combout => \I_ads8330_interface|count_1[3]~16_combout\,
	cout => \I_ads8330_interface|count_1[3]~17\);

-- Location: FF_X9_Y39_N15
\I_ads8330_interface|count_1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKY2~inputclkctrl_outclk\,
	d => \I_ads8330_interface|count_1[3]~16_combout\,
	sclr => \I_ads8330_interface|count_1[5]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_ads8330_interface|count_1\(3));

-- Location: LCCOMB_X9_Y39_N16
\I_ads8330_interface|count_1[4]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_ads8330_interface|count_1[4]~18_combout\ = (\I_ads8330_interface|count_1\(4) & (\I_ads8330_interface|count_1[3]~17\ $ (GND))) # (!\I_ads8330_interface|count_1\(4) & (!\I_ads8330_interface|count_1[3]~17\ & VCC))
-- \I_ads8330_interface|count_1[4]~19\ = CARRY((\I_ads8330_interface|count_1\(4) & !\I_ads8330_interface|count_1[3]~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \I_ads8330_interface|count_1\(4),
	datad => VCC,
	cin => \I_ads8330_interface|count_1[3]~17\,
	combout => \I_ads8330_interface|count_1[4]~18_combout\,
	cout => \I_ads8330_interface|count_1[4]~19\);

-- Location: FF_X9_Y39_N17
\I_ads8330_interface|count_1[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKY2~inputclkctrl_outclk\,
	d => \I_ads8330_interface|count_1[4]~18_combout\,
	sclr => \I_ads8330_interface|count_1[5]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_ads8330_interface|count_1\(4));

-- Location: LCCOMB_X9_Y39_N30
\I_ads8330_interface|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_ads8330_interface|Equal0~0_combout\ = (!\I_ads8330_interface|count_1\(1) & (!\I_ads8330_interface|count_1\(3) & (\I_ads8330_interface|count_1\(0) & !\I_ads8330_interface|count_1\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I_ads8330_interface|count_1\(1),
	datab => \I_ads8330_interface|count_1\(3),
	datac => \I_ads8330_interface|count_1\(0),
	datad => \I_ads8330_interface|count_1\(4),
	combout => \I_ads8330_interface|Equal0~0_combout\);

-- Location: LCCOMB_X9_Y39_N18
\I_ads8330_interface|count_1[5]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_ads8330_interface|count_1[5]~20_combout\ = \I_ads8330_interface|count_1[4]~19\ $ (\I_ads8330_interface|count_1\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \I_ads8330_interface|count_1\(5),
	cin => \I_ads8330_interface|count_1[4]~19\,
	combout => \I_ads8330_interface|count_1[5]~20_combout\);

-- Location: FF_X9_Y39_N19
\I_ads8330_interface|count_1[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKY2~inputclkctrl_outclk\,
	d => \I_ads8330_interface|count_1[5]~20_combout\,
	sclr => \I_ads8330_interface|count_1[5]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_ads8330_interface|count_1\(5));

-- Location: LCCOMB_X8_Y39_N8
\I_ads8330_interface|next_state~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_ads8330_interface|next_state~13_combout\ = (\I_ads8330_interface|Equal0~0_combout\ & (!\I_ads8330_interface|count_1\(5) & (\I_ads8330_interface|count_1\(2) & !\I_ads8330_interface|next_state~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I_ads8330_interface|Equal0~0_combout\,
	datab => \I_ads8330_interface|count_1\(5),
	datac => \I_ads8330_interface|count_1\(2),
	datad => \I_ads8330_interface|next_state~9_combout\,
	combout => \I_ads8330_interface|next_state~13_combout\);

-- Location: FF_X8_Y39_N9
\I_ads8330_interface|next_state.issue_cs\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKY2~inputclkctrl_outclk\,
	d => \I_ads8330_interface|next_state~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_ads8330_interface|next_state.issue_cs~q\);

-- Location: LCCOMB_X8_Y39_N16
\I_ads8330_interface|count_1[5]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_ads8330_interface|count_1[5]~13_combout\ = ((\sw_0_deb~q\) # ((\I_ads8330_interface|next_state.issue_cs~q\) # (!\I_power_on_reset|reset_t~q\))) # (!\I_ads8330_interface|next_state.idle~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I_ads8330_interface|next_state.idle~q\,
	datab => \sw_0_deb~q\,
	datac => \I_ads8330_interface|next_state.issue_cs~q\,
	datad => \I_power_on_reset|reset_t~q\,
	combout => \I_ads8330_interface|count_1[5]~13_combout\);

-- Location: LCCOMB_X9_Y39_N4
\I_ads8330_interface|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_ads8330_interface|Equal0~1_combout\ = (\I_ads8330_interface|count_1\(2) & (\I_ads8330_interface|Equal0~0_combout\ & !\I_ads8330_interface|count_1\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I_ads8330_interface|count_1\(2),
	datac => \I_ads8330_interface|Equal0~0_combout\,
	datad => \I_ads8330_interface|count_1\(5),
	combout => \I_ads8330_interface|Equal0~1_combout\);

-- Location: LCCOMB_X9_Y39_N2
\I_ads8330_interface|Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_ads8330_interface|Equal2~0_combout\ = (!\I_ads8330_interface|count_1\(1) & (!\I_ads8330_interface|count_1\(4) & (!\I_ads8330_interface|count_1\(0) & !\I_ads8330_interface|count_1\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I_ads8330_interface|count_1\(1),
	datab => \I_ads8330_interface|count_1\(4),
	datac => \I_ads8330_interface|count_1\(0),
	datad => \I_ads8330_interface|count_1\(2),
	combout => \I_ads8330_interface|Equal2~0_combout\);

-- Location: LCCOMB_X9_Y39_N20
\I_ads8330_interface|Equal2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_ads8330_interface|Equal2~1_combout\ = (!\I_ads8330_interface|count_1\(5) & (\I_ads8330_interface|count_1\(3) & \I_ads8330_interface|Equal2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \I_ads8330_interface|count_1\(5),
	datac => \I_ads8330_interface|count_1\(3),
	datad => \I_ads8330_interface|Equal2~0_combout\,
	combout => \I_ads8330_interface|Equal2~1_combout\);

-- Location: LCCOMB_X9_Y39_N28
\I_ads8330_interface|count_1[5]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_ads8330_interface|count_1[5]~14_combout\ = (!\I_ads8330_interface|next_state.issue_convst~q\ & ((\I_ads8330_interface|next_state.wait_state~q\ & ((\I_ads8330_interface|Equal2~1_combout\))) # (!\I_ads8330_interface|next_state.wait_state~q\ & 
-- (\I_ads8330_interface|Equal1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I_ads8330_interface|next_state.wait_state~q\,
	datab => \I_ads8330_interface|next_state.issue_convst~q\,
	datac => \I_ads8330_interface|Equal1~0_combout\,
	datad => \I_ads8330_interface|Equal2~1_combout\,
	combout => \I_ads8330_interface|count_1[5]~14_combout\);

-- Location: LCCOMB_X9_Y39_N6
\I_ads8330_interface|count_1[5]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_ads8330_interface|count_1[5]~15_combout\ = (\I_ads8330_interface|count_1[5]~13_combout\) # ((\I_ads8330_interface|count_1[5]~14_combout\) # ((\I_ads8330_interface|next_state.issue_convst~q\ & \I_ads8330_interface|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I_ads8330_interface|count_1[5]~13_combout\,
	datab => \I_ads8330_interface|next_state.issue_convst~q\,
	datac => \I_ads8330_interface|Equal0~1_combout\,
	datad => \I_ads8330_interface|count_1[5]~14_combout\,
	combout => \I_ads8330_interface|count_1[5]~15_combout\);

-- Location: FF_X9_Y39_N9
\I_ads8330_interface|count_1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKY2~inputclkctrl_outclk\,
	d => \I_ads8330_interface|count_1[0]~7_combout\,
	sclr => \I_ads8330_interface|count_1[5]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_ads8330_interface|count_1\(0));

-- Location: LCCOMB_X9_Y39_N10
\I_ads8330_interface|count_1[1]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_ads8330_interface|count_1[1]~9_combout\ = (\I_ads8330_interface|count_1\(1) & (!\I_ads8330_interface|count_1[0]~8\)) # (!\I_ads8330_interface|count_1\(1) & ((\I_ads8330_interface|count_1[0]~8\) # (GND)))
-- \I_ads8330_interface|count_1[1]~10\ = CARRY((!\I_ads8330_interface|count_1[0]~8\) # (!\I_ads8330_interface|count_1\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \I_ads8330_interface|count_1\(1),
	datad => VCC,
	cin => \I_ads8330_interface|count_1[0]~8\,
	combout => \I_ads8330_interface|count_1[1]~9_combout\,
	cout => \I_ads8330_interface|count_1[1]~10\);

-- Location: FF_X9_Y39_N11
\I_ads8330_interface|count_1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKY2~inputclkctrl_outclk\,
	d => \I_ads8330_interface|count_1[1]~9_combout\,
	sclr => \I_ads8330_interface|count_1[5]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_ads8330_interface|count_1\(1));

-- Location: FF_X9_Y39_N13
\I_ads8330_interface|count_1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKY2~inputclkctrl_outclk\,
	d => \I_ads8330_interface|count_1[2]~11_combout\,
	sclr => \I_ads8330_interface|count_1[5]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_ads8330_interface|count_1\(2));

-- Location: LCCOMB_X9_Y39_N22
\I_ads8330_interface|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_ads8330_interface|Equal1~0_combout\ = (!\I_ads8330_interface|count_1\(2) & (\I_ads8330_interface|Equal0~0_combout\ & \I_ads8330_interface|count_1\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I_ads8330_interface|count_1\(2),
	datac => \I_ads8330_interface|Equal0~0_combout\,
	datad => \I_ads8330_interface|count_1\(5),
	combout => \I_ads8330_interface|Equal1~0_combout\);

-- Location: LCCOMB_X6_Y39_N14
\I_ads8330_interface|next_state~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_ads8330_interface|next_state~12_combout\ = (\I_ads8330_interface|Equal1~0_combout\ & (\I_ads8330_interface|next_state.issue_cs~q\ & ((\reset~combout\)))) # (!\I_ads8330_interface|Equal1~0_combout\ & ((\I_ads8330_interface|sclk_t~2_combout\) # 
-- ((\I_ads8330_interface|next_state.issue_cs~q\ & \reset~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I_ads8330_interface|Equal1~0_combout\,
	datab => \I_ads8330_interface|next_state.issue_cs~q\,
	datac => \I_ads8330_interface|sclk_t~2_combout\,
	datad => \reset~combout\,
	combout => \I_ads8330_interface|next_state~12_combout\);

-- Location: FF_X6_Y39_N15
\I_ads8330_interface|next_state.data_transfer\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKY2~inputclkctrl_outclk\,
	d => \I_ads8330_interface|next_state~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_ads8330_interface|next_state.data_transfer~q\);

-- Location: LCCOMB_X6_Y39_N4
\I_ads8330_interface|sclk_t~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_ads8330_interface|sclk_t~2_combout\ = (\I_ads8330_interface|next_state.data_transfer~q\ & (!\sw_0_deb~q\ & \I_power_on_reset|reset_t~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \I_ads8330_interface|next_state.data_transfer~q\,
	datac => \sw_0_deb~q\,
	datad => \I_power_on_reset|reset_t~q\,
	combout => \I_ads8330_interface|sclk_t~2_combout\);

-- Location: LCCOMB_X8_Y39_N14
\I_ads8330_interface|next_state~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_ads8330_interface|next_state~15_combout\ = (\I_power_on_reset|reset_t~q\ & (\I_ads8330_interface|next_state.wait_state~q\ & (!\I_ads8330_interface|Equal2~1_combout\ & !\sw_0_deb~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I_power_on_reset|reset_t~q\,
	datab => \I_ads8330_interface|next_state.wait_state~q\,
	datac => \I_ads8330_interface|Equal2~1_combout\,
	datad => \sw_0_deb~q\,
	combout => \I_ads8330_interface|next_state~15_combout\);

-- Location: LCCOMB_X9_Y39_N0
\I_ads8330_interface|next_state~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_ads8330_interface|next_state~14_combout\ = (\I_ads8330_interface|next_state~15_combout\) # ((\I_ads8330_interface|Equal1~0_combout\ & \I_ads8330_interface|sclk_t~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I_ads8330_interface|Equal1~0_combout\,
	datac => \I_ads8330_interface|sclk_t~2_combout\,
	datad => \I_ads8330_interface|next_state~15_combout\,
	combout => \I_ads8330_interface|next_state~14_combout\);

-- Location: FF_X9_Y39_N1
\I_ads8330_interface|next_state.wait_state\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKY2~inputclkctrl_outclk\,
	d => \I_ads8330_interface|next_state~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_ads8330_interface|next_state.wait_state~q\);

-- Location: LCCOMB_X9_Y39_N26
\I_ads8330_interface|next_state~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_ads8330_interface|next_state~10_combout\ = (\reset~combout\ & (((!\I_ads8330_interface|Equal0~1_combout\ & \I_ads8330_interface|next_state.issue_convst~q\)) # (!\I_ads8330_interface|next_state.idle~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I_ads8330_interface|next_state.idle~q\,
	datab => \I_ads8330_interface|Equal0~1_combout\,
	datac => \reset~combout\,
	datad => \I_ads8330_interface|next_state.issue_convst~q\,
	combout => \I_ads8330_interface|next_state~10_combout\);

-- Location: LCCOMB_X9_Y39_N24
\I_ads8330_interface|next_state~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_ads8330_interface|next_state~11_combout\ = (\I_ads8330_interface|next_state~10_combout\) # ((\I_ads8330_interface|next_state.wait_state~q\ & (\reset~combout\ & \I_ads8330_interface|Equal2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I_ads8330_interface|next_state.wait_state~q\,
	datab => \reset~combout\,
	datac => \I_ads8330_interface|next_state~10_combout\,
	datad => \I_ads8330_interface|Equal2~1_combout\,
	combout => \I_ads8330_interface|next_state~11_combout\);

-- Location: FF_X9_Y39_N25
\I_ads8330_interface|next_state.issue_convst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKY2~inputclkctrl_outclk\,
	d => \I_ads8330_interface|next_state~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_ads8330_interface|next_state.issue_convst~q\);

-- Location: LCCOMB_X8_Y39_N20
\I_ads8330_interface|next_state~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_ads8330_interface|next_state~9_combout\ = ((\sw_0_deb~q\) # (!\I_ads8330_interface|next_state.issue_convst~q\)) # (!\I_power_on_reset|reset_t~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I_power_on_reset|reset_t~q\,
	datab => \sw_0_deb~q\,
	datad => \I_ads8330_interface|next_state.issue_convst~q\,
	combout => \I_ads8330_interface|next_state~9_combout\);

-- Location: LCCOMB_X7_Y39_N4
\I_ads8330_interface|convst_n_t~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_ads8330_interface|convst_n_t~feeder_combout\ = \I_ads8330_interface|next_state~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \I_ads8330_interface|next_state~9_combout\,
	combout => \I_ads8330_interface|convst_n_t~feeder_combout\);

-- Location: FF_X7_Y39_N5
\I_ads8330_interface|convst_n_t\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKY2~inputclkctrl_outclk\,
	d => \I_ads8330_interface|convst_n_t~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_ads8330_interface|convst_n_t~q\);

-- Location: LCCOMB_X6_Y39_N28
\I_ads8330_interface|sclk_t~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_ads8330_interface|sclk_t~1_combout\ = (\I_power_on_reset|reset_t~q\ & (\I_ads8330_interface|next_state.data_transfer~q\ & (!\I_ads8330_interface|sclk_t~q\ & !\sw_0_deb~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I_power_on_reset|reset_t~q\,
	datab => \I_ads8330_interface|next_state.data_transfer~q\,
	datac => \I_ads8330_interface|sclk_t~q\,
	datad => \sw_0_deb~q\,
	combout => \I_ads8330_interface|sclk_t~1_combout\);

-- Location: FF_X6_Y39_N29
\I_ads8330_interface|sclk_t\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKY2~inputclkctrl_outclk\,
	d => \I_ads8330_interface|sclk_t~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_ads8330_interface|sclk_t~q\);

-- Location: LCCOMB_X6_Y39_N30
\I_ads8330_interface|cs_n_t~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_ads8330_interface|cs_n_t~1_combout\ = ((\sw_0_deb~q\) # ((!\I_ads8330_interface|next_state.data_transfer~q\ & !\I_ads8330_interface|next_state.issue_cs~q\))) # (!\I_power_on_reset|reset_t~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I_power_on_reset|reset_t~q\,
	datab => \sw_0_deb~q\,
	datac => \I_ads8330_interface|next_state.data_transfer~q\,
	datad => \I_ads8330_interface|next_state.issue_cs~q\,
	combout => \I_ads8330_interface|cs_n_t~1_combout\);

-- Location: FF_X6_Y39_N31
\I_ads8330_interface|cs_n_t\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKY2~inputclkctrl_outclk\,
	d => \I_ads8330_interface|cs_n_t~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_ads8330_interface|cs_n_t~q\);

-- Location: LCCOMB_X6_Y39_N16
\I_ads8330_interface|count_2[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_ads8330_interface|count_2[0]~5_combout\ = \I_ads8330_interface|count_2\(0) $ (VCC)
-- \I_ads8330_interface|count_2[0]~6\ = CARRY(\I_ads8330_interface|count_2\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \I_ads8330_interface|count_2\(0),
	datad => VCC,
	combout => \I_ads8330_interface|count_2[0]~5_combout\,
	cout => \I_ads8330_interface|count_2[0]~6\);

-- Location: LCCOMB_X6_Y39_N10
\I_ads8330_interface|count_2[0]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_ads8330_interface|count_2[0]~15_combout\ = (((\sw_0_deb~q\) # (!\I_ads8330_interface|sclk_t~q\)) # (!\I_ads8330_interface|next_state.data_transfer~q\)) # (!\I_power_on_reset|reset_t~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I_power_on_reset|reset_t~q\,
	datab => \I_ads8330_interface|next_state.data_transfer~q\,
	datac => \sw_0_deb~q\,
	datad => \I_ads8330_interface|sclk_t~q\,
	combout => \I_ads8330_interface|count_2[0]~15_combout\);

-- Location: FF_X6_Y39_N17
\I_ads8330_interface|count_2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKY2~inputclkctrl_outclk\,
	d => \I_ads8330_interface|count_2[0]~5_combout\,
	asdata => VCC,
	sload => \I_ads8330_interface|ALT_INV_sclk_t~2_combout\,
	ena => \I_ads8330_interface|count_2[0]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_ads8330_interface|count_2\(0));

-- Location: LCCOMB_X6_Y39_N18
\I_ads8330_interface|count_2[1]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_ads8330_interface|count_2[1]~7_combout\ = (\I_ads8330_interface|count_2\(1) & (\I_ads8330_interface|count_2[0]~6\ & VCC)) # (!\I_ads8330_interface|count_2\(1) & (!\I_ads8330_interface|count_2[0]~6\))
-- \I_ads8330_interface|count_2[1]~8\ = CARRY((!\I_ads8330_interface|count_2\(1) & !\I_ads8330_interface|count_2[0]~6\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \I_ads8330_interface|count_2\(1),
	datad => VCC,
	cin => \I_ads8330_interface|count_2[0]~6\,
	combout => \I_ads8330_interface|count_2[1]~7_combout\,
	cout => \I_ads8330_interface|count_2[1]~8\);

-- Location: LCCOMB_X6_Y39_N26
\~GND\ : cycloneive_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: FF_X6_Y39_N19
\I_ads8330_interface|count_2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKY2~inputclkctrl_outclk\,
	d => \I_ads8330_interface|count_2[1]~7_combout\,
	asdata => \~GND~combout\,
	sload => \I_ads8330_interface|ALT_INV_sclk_t~2_combout\,
	ena => \I_ads8330_interface|count_2[0]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_ads8330_interface|count_2\(1));

-- Location: LCCOMB_X6_Y39_N20
\I_ads8330_interface|count_2[2]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_ads8330_interface|count_2[2]~9_combout\ = (\I_ads8330_interface|count_2\(2) & ((GND) # (!\I_ads8330_interface|count_2[1]~8\))) # (!\I_ads8330_interface|count_2\(2) & (\I_ads8330_interface|count_2[1]~8\ $ (GND)))
-- \I_ads8330_interface|count_2[2]~10\ = CARRY((\I_ads8330_interface|count_2\(2)) # (!\I_ads8330_interface|count_2[1]~8\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \I_ads8330_interface|count_2\(2),
	datad => VCC,
	cin => \I_ads8330_interface|count_2[1]~8\,
	combout => \I_ads8330_interface|count_2[2]~9_combout\,
	cout => \I_ads8330_interface|count_2[2]~10\);

-- Location: FF_X6_Y39_N21
\I_ads8330_interface|count_2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKY2~inputclkctrl_outclk\,
	d => \I_ads8330_interface|count_2[2]~9_combout\,
	asdata => \~GND~combout\,
	sload => \I_ads8330_interface|ALT_INV_sclk_t~2_combout\,
	ena => \I_ads8330_interface|count_2[0]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_ads8330_interface|count_2\(2));

-- Location: LCCOMB_X6_Y39_N22
\I_ads8330_interface|count_2[3]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_ads8330_interface|count_2[3]~11_combout\ = (\I_ads8330_interface|count_2\(3) & (\I_ads8330_interface|count_2[2]~10\ & VCC)) # (!\I_ads8330_interface|count_2\(3) & (!\I_ads8330_interface|count_2[2]~10\))
-- \I_ads8330_interface|count_2[3]~12\ = CARRY((!\I_ads8330_interface|count_2\(3) & !\I_ads8330_interface|count_2[2]~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \I_ads8330_interface|count_2\(3),
	datad => VCC,
	cin => \I_ads8330_interface|count_2[2]~10\,
	combout => \I_ads8330_interface|count_2[3]~11_combout\,
	cout => \I_ads8330_interface|count_2[3]~12\);

-- Location: FF_X6_Y39_N23
\I_ads8330_interface|count_2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKY2~inputclkctrl_outclk\,
	d => \I_ads8330_interface|count_2[3]~11_combout\,
	asdata => \~GND~combout\,
	sload => \I_ads8330_interface|ALT_INV_sclk_t~2_combout\,
	ena => \I_ads8330_interface|count_2[0]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_ads8330_interface|count_2\(3));

-- Location: LCCOMB_X6_Y39_N24
\I_ads8330_interface|count_2[4]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_ads8330_interface|count_2[4]~13_combout\ = \I_ads8330_interface|count_2[3]~12\ $ (\I_ads8330_interface|count_2\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \I_ads8330_interface|count_2\(4),
	cin => \I_ads8330_interface|count_2[3]~12\,
	combout => \I_ads8330_interface|count_2[4]~13_combout\);

-- Location: FF_X6_Y39_N25
\I_ads8330_interface|count_2[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKY2~inputclkctrl_outclk\,
	d => \I_ads8330_interface|count_2[4]~13_combout\,
	asdata => VCC,
	sload => \I_ads8330_interface|ALT_INV_sclk_t~2_combout\,
	ena => \I_ads8330_interface|count_2[0]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_ads8330_interface|count_2\(4));

-- Location: LCCOMB_X6_Y39_N2
\I_ads8330_interface|sdi_t~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_ads8330_interface|sdi_t~0_combout\ = (\I_ads8330_interface|sclk_t~q\ & (\I_ads8330_interface|sdi_t~q\)) # (!\I_ads8330_interface|sclk_t~q\ & ((\I_ads8330_interface|count_2\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \I_ads8330_interface|sclk_t~q\,
	datac => \I_ads8330_interface|sdi_t~q\,
	datad => \I_ads8330_interface|count_2\(4),
	combout => \I_ads8330_interface|sdi_t~0_combout\);

-- Location: LCCOMB_X6_Y39_N12
\I_ads8330_interface|sdi_t~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_ads8330_interface|sdi_t~1_combout\ = (!\I_ads8330_interface|sclk_t~q\ & (\I_ads8330_interface|count_2\(1) & (\I_ads8330_interface|count_2\(2) & !\I_ads8330_interface|count_2\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I_ads8330_interface|sclk_t~q\,
	datab => \I_ads8330_interface|count_2\(1),
	datac => \I_ads8330_interface|count_2\(2),
	datad => \I_ads8330_interface|count_2\(0),
	combout => \I_ads8330_interface|sdi_t~1_combout\);

-- Location: LCCOMB_X6_Y39_N0
\I_ads8330_interface|sdi_t~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_ads8330_interface|sdi_t~2_combout\ = (\I_ads8330_interface|sclk_t~2_combout\ & ((\I_ads8330_interface|sdi_t~0_combout\) # ((\I_ads8330_interface|count_2\(3) & \I_ads8330_interface|sdi_t~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I_ads8330_interface|count_2\(3),
	datab => \I_ads8330_interface|sdi_t~0_combout\,
	datac => \I_ads8330_interface|sclk_t~2_combout\,
	datad => \I_ads8330_interface|sdi_t~1_combout\,
	combout => \I_ads8330_interface|sdi_t~2_combout\);

-- Location: FF_X6_Y39_N1
\I_ads8330_interface|sdi_t\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKY2~inputclkctrl_outclk\,
	d => \I_ads8330_interface|sdi_t~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_ads8330_interface|sdi_t~q\);

-- Location: LCCOMB_X8_Y39_N0
\I_ads8330_interface|data_val~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_ads8330_interface|data_val~0_combout\ = (\I_ads8330_interface|next_state.wait_state~q\ & (\reset~combout\ & ((\I_ads8330_interface|Equal2~1_combout\) # (\I_ads8330_interface|data_val~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I_ads8330_interface|Equal2~1_combout\,
	datab => \I_ads8330_interface|next_state.wait_state~q\,
	datac => \I_ads8330_interface|data_val~q\,
	datad => \reset~combout\,
	combout => \I_ads8330_interface|data_val~0_combout\);

-- Location: FF_X8_Y39_N1
\I_ads8330_interface|data_val\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKY2~inputclkctrl_outclk\,
	d => \I_ads8330_interface|data_val~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_ads8330_interface|data_val~q\);

-- Location: LCCOMB_X7_Y39_N10
\I_ad5441_interface_1|next_state~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_ad5441_interface_1|next_state~8_combout\ = (!\I_ad5441_interface_1|next_state.issue_ld~q\ & (\reset~combout\ & ((\I_ads8330_interface|data_val~q\) # (\I_ad5441_interface_1|next_state.idle~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I_ad5441_interface_1|next_state.issue_ld~q\,
	datab => \I_ads8330_interface|data_val~q\,
	datac => \I_ad5441_interface_1|next_state.idle~q\,
	datad => \reset~combout\,
	combout => \I_ad5441_interface_1|next_state~8_combout\);

-- Location: FF_X7_Y39_N11
\I_ad5441_interface_1|next_state.idle\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKY2~inputclkctrl_outclk\,
	d => \I_ad5441_interface_1|next_state~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_ad5441_interface_1|next_state.idle~q\);

-- Location: LCCOMB_X7_Y39_N16
\I_ad5441_interface_1|count_1[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_ad5441_interface_1|count_1[0]~5_combout\ = \I_ad5441_interface_1|count_1\(0) $ (VCC)
-- \I_ad5441_interface_1|count_1[0]~6\ = CARRY(\I_ad5441_interface_1|count_1\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \I_ad5441_interface_1|count_1\(0),
	datad => VCC,
	combout => \I_ad5441_interface_1|count_1[0]~5_combout\,
	cout => \I_ad5441_interface_1|count_1[0]~6\);

-- Location: FF_X7_Y39_N17
\I_ad5441_interface_1|count_1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKY2~inputclkctrl_outclk\,
	d => \I_ad5441_interface_1|count_1[0]~5_combout\,
	sclr => \I_ad5441_interface_1|ALT_INV_next_state~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_ad5441_interface_1|count_1\(0));

-- Location: LCCOMB_X7_Y39_N18
\I_ad5441_interface_1|count_1[1]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_ad5441_interface_1|count_1[1]~7_combout\ = (\I_ad5441_interface_1|count_1\(1) & (!\I_ad5441_interface_1|count_1[0]~6\)) # (!\I_ad5441_interface_1|count_1\(1) & ((\I_ad5441_interface_1|count_1[0]~6\) # (GND)))
-- \I_ad5441_interface_1|count_1[1]~8\ = CARRY((!\I_ad5441_interface_1|count_1[0]~6\) # (!\I_ad5441_interface_1|count_1\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \I_ad5441_interface_1|count_1\(1),
	datad => VCC,
	cin => \I_ad5441_interface_1|count_1[0]~6\,
	combout => \I_ad5441_interface_1|count_1[1]~7_combout\,
	cout => \I_ad5441_interface_1|count_1[1]~8\);

-- Location: FF_X7_Y39_N19
\I_ad5441_interface_1|count_1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKY2~inputclkctrl_outclk\,
	d => \I_ad5441_interface_1|count_1[1]~7_combout\,
	sclr => \I_ad5441_interface_1|ALT_INV_next_state~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_ad5441_interface_1|count_1\(1));

-- Location: LCCOMB_X7_Y39_N20
\I_ad5441_interface_1|count_1[2]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_ad5441_interface_1|count_1[2]~9_combout\ = (\I_ad5441_interface_1|count_1\(2) & (\I_ad5441_interface_1|count_1[1]~8\ $ (GND))) # (!\I_ad5441_interface_1|count_1\(2) & (!\I_ad5441_interface_1|count_1[1]~8\ & VCC))
-- \I_ad5441_interface_1|count_1[2]~10\ = CARRY((\I_ad5441_interface_1|count_1\(2) & !\I_ad5441_interface_1|count_1[1]~8\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \I_ad5441_interface_1|count_1\(2),
	datad => VCC,
	cin => \I_ad5441_interface_1|count_1[1]~8\,
	combout => \I_ad5441_interface_1|count_1[2]~9_combout\,
	cout => \I_ad5441_interface_1|count_1[2]~10\);

-- Location: FF_X7_Y39_N21
\I_ad5441_interface_1|count_1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKY2~inputclkctrl_outclk\,
	d => \I_ad5441_interface_1|count_1[2]~9_combout\,
	sclr => \I_ad5441_interface_1|ALT_INV_next_state~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_ad5441_interface_1|count_1\(2));

-- Location: LCCOMB_X7_Y39_N22
\I_ad5441_interface_1|count_1[3]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_ad5441_interface_1|count_1[3]~11_combout\ = (\I_ad5441_interface_1|count_1\(3) & (!\I_ad5441_interface_1|count_1[2]~10\)) # (!\I_ad5441_interface_1|count_1\(3) & ((\I_ad5441_interface_1|count_1[2]~10\) # (GND)))
-- \I_ad5441_interface_1|count_1[3]~12\ = CARRY((!\I_ad5441_interface_1|count_1[2]~10\) # (!\I_ad5441_interface_1|count_1\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \I_ad5441_interface_1|count_1\(3),
	datad => VCC,
	cin => \I_ad5441_interface_1|count_1[2]~10\,
	combout => \I_ad5441_interface_1|count_1[3]~11_combout\,
	cout => \I_ad5441_interface_1|count_1[3]~12\);

-- Location: FF_X7_Y39_N23
\I_ad5441_interface_1|count_1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKY2~inputclkctrl_outclk\,
	d => \I_ad5441_interface_1|count_1[3]~11_combout\,
	sclr => \I_ad5441_interface_1|ALT_INV_next_state~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_ad5441_interface_1|count_1\(3));

-- Location: LCCOMB_X7_Y39_N24
\I_ad5441_interface_1|count_1[4]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_ad5441_interface_1|count_1[4]~13_combout\ = \I_ad5441_interface_1|count_1[3]~12\ $ (!\I_ad5441_interface_1|count_1\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \I_ad5441_interface_1|count_1\(4),
	cin => \I_ad5441_interface_1|count_1[3]~12\,
	combout => \I_ad5441_interface_1|count_1[4]~13_combout\);

-- Location: FF_X7_Y39_N25
\I_ad5441_interface_1|count_1[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKY2~inputclkctrl_outclk\,
	d => \I_ad5441_interface_1|count_1[4]~13_combout\,
	sclr => \I_ad5441_interface_1|ALT_INV_next_state~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_ad5441_interface_1|count_1\(4));

-- Location: LCCOMB_X7_Y39_N8
\I_ad5441_interface_1|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_ad5441_interface_1|Equal0~0_combout\ = (((\I_ad5441_interface_1|count_1\(3)) # (!\I_ad5441_interface_1|count_1\(2))) # (!\I_ad5441_interface_1|count_1\(1))) # (!\I_ad5441_interface_1|count_1\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I_ad5441_interface_1|count_1\(0),
	datab => \I_ad5441_interface_1|count_1\(1),
	datac => \I_ad5441_interface_1|count_1\(3),
	datad => \I_ad5441_interface_1|count_1\(2),
	combout => \I_ad5441_interface_1|Equal0~0_combout\);

-- Location: LCCOMB_X7_Y39_N30
\I_ad5441_interface_1|next_state~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_ad5441_interface_1|next_state~6_combout\ = (\I_ad5441_interface_1|next_state.data_transfer~q\ & (\reset~combout\ & ((\I_ad5441_interface_1|Equal0~0_combout\) # (!\I_ad5441_interface_1|count_1\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I_ad5441_interface_1|next_state.data_transfer~q\,
	datab => \I_ad5441_interface_1|count_1\(4),
	datac => \I_ad5441_interface_1|Equal0~0_combout\,
	datad => \reset~combout\,
	combout => \I_ad5441_interface_1|next_state~6_combout\);

-- Location: LCCOMB_X7_Y39_N6
\I_ad5441_interface_1|next_state~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_ad5441_interface_1|next_state~7_combout\ = (\I_ad5441_interface_1|next_state~6_combout\) # ((!\I_ad5441_interface_1|next_state.idle~q\ & (\I_ads8330_interface|data_val~q\ & \reset~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I_ad5441_interface_1|next_state.idle~q\,
	datab => \I_ads8330_interface|data_val~q\,
	datac => \I_ad5441_interface_1|next_state~6_combout\,
	datad => \reset~combout\,
	combout => \I_ad5441_interface_1|next_state~7_combout\);

-- Location: FF_X7_Y39_N7
\I_ad5441_interface_1|next_state.data_transfer\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKY2~inputclkctrl_outclk\,
	d => \I_ad5441_interface_1|next_state~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_ad5441_interface_1|next_state.data_transfer~q\);

-- Location: LCCOMB_X7_Y39_N26
\I_ad5441_interface_1|next_state~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_ad5441_interface_1|next_state~5_combout\ = (\I_ad5441_interface_1|next_state.data_transfer~q\ & (\I_ad5441_interface_1|count_1\(4) & (!\I_ad5441_interface_1|Equal0~0_combout\ & \reset~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I_ad5441_interface_1|next_state.data_transfer~q\,
	datab => \I_ad5441_interface_1|count_1\(4),
	datac => \I_ad5441_interface_1|Equal0~0_combout\,
	datad => \reset~combout\,
	combout => \I_ad5441_interface_1|next_state~5_combout\);

-- Location: FF_X7_Y39_N27
\I_ad5441_interface_1|next_state.issue_ld\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKY2~inputclkctrl_outclk\,
	d => \I_ad5441_interface_1|next_state~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_ad5441_interface_1|next_state.issue_ld~q\);

-- Location: LCCOMB_X8_Y39_N4
\I_ad5441_interface_1|dac_ld_n_t~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_ad5441_interface_1|dac_ld_n_t~0_combout\ = (\sw_0_deb~q\) # ((!\I_power_on_reset|reset_t~q\) # (!\I_ad5441_interface_1|next_state.issue_ld~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sw_0_deb~q\,
	datac => \I_ad5441_interface_1|next_state.issue_ld~q\,
	datad => \I_power_on_reset|reset_t~q\,
	combout => \I_ad5441_interface_1|dac_ld_n_t~0_combout\);

-- Location: FF_X8_Y39_N5
\I_ad5441_interface_1|dac_ld_n_t\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKY2~inputclkctrl_outclk\,
	d => \I_ad5441_interface_1|dac_ld_n_t~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_ad5441_interface_1|dac_ld_n_t~q\);

-- Location: FF_X8_Y39_N7
\I_ad5441_interface_2|dac_ld_n_t\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKY2~inputclkctrl_outclk\,
	asdata => \I_ad5441_interface_1|dac_ld_n_t~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_ad5441_interface_2|dac_ld_n_t~q\);

-- Location: FF_X8_Y39_N21
\I_ad5441_interface_3|dac_ld_n_t\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKY2~inputclkctrl_outclk\,
	asdata => \I_ad5441_interface_1|dac_ld_n_t~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_ad5441_interface_3|dac_ld_n_t~q\);

-- Location: LCCOMB_X8_Y39_N10
\I_ad5441_interface_4|dac_ld_n_t~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_ad5441_interface_4|dac_ld_n_t~feeder_combout\ = \I_ad5441_interface_1|dac_ld_n_t~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \I_ad5441_interface_1|dac_ld_n_t~0_combout\,
	combout => \I_ad5441_interface_4|dac_ld_n_t~feeder_combout\);

-- Location: FF_X8_Y39_N11
\I_ad5441_interface_4|dac_ld_n_t\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKY2~inputclkctrl_outclk\,
	d => \I_ad5441_interface_4|dac_ld_n_t~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_ad5441_interface_4|dac_ld_n_t~q\);

-- Location: LCCOMB_X7_Y39_N2
\I_ad5441_interface_5|dac_ld_n_t~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_ad5441_interface_5|dac_ld_n_t~feeder_combout\ = \I_ad5441_interface_1|dac_ld_n_t~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \I_ad5441_interface_1|dac_ld_n_t~0_combout\,
	combout => \I_ad5441_interface_5|dac_ld_n_t~feeder_combout\);

-- Location: FF_X7_Y39_N3
\I_ad5441_interface_5|dac_ld_n_t\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKY2~inputclkctrl_outclk\,
	d => \I_ad5441_interface_5|dac_ld_n_t~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_ad5441_interface_5|dac_ld_n_t~q\);

-- Location: LCCOMB_X7_Y39_N0
\I_ad5441_interface_6|dac_ld_n_t~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_ad5441_interface_6|dac_ld_n_t~feeder_combout\ = \I_ad5441_interface_1|dac_ld_n_t~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \I_ad5441_interface_1|dac_ld_n_t~0_combout\,
	combout => \I_ad5441_interface_6|dac_ld_n_t~feeder_combout\);

-- Location: FF_X7_Y39_N1
\I_ad5441_interface_6|dac_ld_n_t\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKY2~inputclkctrl_outclk\,
	d => \I_ad5441_interface_6|dac_ld_n_t~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_ad5441_interface_6|dac_ld_n_t~q\);

-- Location: LCCOMB_X8_Y39_N26
\I_ads8330_interface|adc_data~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_ads8330_interface|adc_data~1_combout\ = (\I_ads8330_interface|next_state.idle~q\ & (!\I_ads8330_interface|next_state.wait_state~q\ & (\I_ads8330_interface|adc_data\(0) & \reset~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I_ads8330_interface|next_state.idle~q\,
	datab => \I_ads8330_interface|next_state.wait_state~q\,
	datac => \I_ads8330_interface|adc_data\(0),
	datad => \reset~combout\,
	combout => \I_ads8330_interface|adc_data~1_combout\);

-- Location: IOIBUF_X0_Y40_N1
\AD_SDO~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AD_SDO,
	o => \AD_SDO~input_o\);

-- Location: LCCOMB_X7_Y39_N28
\I_ads8330_interface|adc_data_t~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_ads8330_interface|adc_data_t~0_combout\ = (\I_ads8330_interface|next_state.data_transfer~q\ & ((\I_ads8330_interface|sclk_t~q\ & (\AD_SDO~input_o\)) # (!\I_ads8330_interface|sclk_t~q\ & ((\I_ads8330_interface|adc_data_t\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I_ads8330_interface|next_state.data_transfer~q\,
	datab => \I_ads8330_interface|sclk_t~q\,
	datac => \AD_SDO~input_o\,
	datad => \I_ads8330_interface|adc_data_t\(0),
	combout => \I_ads8330_interface|adc_data_t~0_combout\);

-- Location: LCCOMB_X7_Y39_N12
\I_ads8330_interface|adc_data_t~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_ads8330_interface|adc_data_t~1_combout\ = (\reset~combout\ & ((\I_ads8330_interface|adc_data_t~0_combout\) # ((\I_ads8330_interface|next_state.wait_state~q\ & \I_ads8330_interface|adc_data_t\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~combout\,
	datab => \I_ads8330_interface|next_state.wait_state~q\,
	datac => \I_ads8330_interface|adc_data_t\(0),
	datad => \I_ads8330_interface|adc_data_t~0_combout\,
	combout => \I_ads8330_interface|adc_data_t~1_combout\);

-- Location: FF_X7_Y39_N13
\I_ads8330_interface|adc_data_t[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKY2~inputclkctrl_outclk\,
	d => \I_ads8330_interface|adc_data_t~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_ads8330_interface|adc_data_t\(0));

-- Location: LCCOMB_X8_Y39_N24
\I_ads8330_interface|adc_data~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_ads8330_interface|adc_data~0_combout\ = (\I_ads8330_interface|adc_data_t\(0) & (\I_ads8330_interface|next_state.wait_state~q\ & (\I_ads8330_interface|Equal2~1_combout\ & \reset~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I_ads8330_interface|adc_data_t\(0),
	datab => \I_ads8330_interface|next_state.wait_state~q\,
	datac => \I_ads8330_interface|Equal2~1_combout\,
	datad => \reset~combout\,
	combout => \I_ads8330_interface|adc_data~0_combout\);

-- Location: LCCOMB_X8_Y39_N30
\I_ads8330_interface|adc_data~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_ads8330_interface|adc_data~2_combout\ = (\I_ads8330_interface|adc_data~1_combout\) # ((\I_ads8330_interface|adc_data~0_combout\) # ((\I_ads8330_interface|next_state~15_combout\ & \I_ads8330_interface|adc_data\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I_ads8330_interface|adc_data~1_combout\,
	datab => \I_ads8330_interface|next_state~15_combout\,
	datac => \I_ads8330_interface|adc_data\(0),
	datad => \I_ads8330_interface|adc_data~0_combout\,
	combout => \I_ads8330_interface|adc_data~2_combout\);

-- Location: FF_X8_Y39_N31
\I_ads8330_interface|adc_data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKY2~inputclkctrl_outclk\,
	d => \I_ads8330_interface|adc_data~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_ads8330_interface|adc_data\(0));

-- Location: LCCOMB_X8_Y39_N12
\adc_data_fd~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc_data_fd~0_combout\ = (\I_ads8330_interface|data_val~q\ & ((\reset~combout\ & (\I_ads8330_interface|adc_data\(0))) # (!\reset~combout\ & ((\adc_data_fd~q\))))) # (!\I_ads8330_interface|data_val~q\ & (((\adc_data_fd~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I_ads8330_interface|adc_data\(0),
	datab => \I_ads8330_interface|data_val~q\,
	datac => \adc_data_fd~q\,
	datad => \reset~combout\,
	combout => \adc_data_fd~0_combout\);

-- Location: FF_X8_Y39_N13
adc_data_fd : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKY2~inputclkctrl_outclk\,
	d => \adc_data_fd~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adc_data_fd~q\);

-- Location: LCCOMB_X8_Y39_N2
\status~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \status~1_combout\ = ((\I_ads8330_interface|data_val~q\) # (\sw_0_deb~q\)) # (!\I_power_on_reset|reset_t~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I_power_on_reset|reset_t~q\,
	datab => \I_ads8330_interface|data_val~q\,
	datad => \sw_0_deb~q\,
	combout => \status~1_combout\);

-- Location: FF_X8_Y39_N3
init_flag : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKY2~inputclkctrl_outclk\,
	asdata => \reset~combout\,
	sload => VCC,
	ena => \status~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \init_flag~q\);

-- Location: LCCOMB_X8_Y39_N28
\status~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \status~0_combout\ = (\init_flag~q\ & (\reset~combout\ & (\adc_data_fd~q\ $ (\I_ads8330_interface|adc_data\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_data_fd~q\,
	datab => \init_flag~q\,
	datac => \I_ads8330_interface|adc_data\(0),
	datad => \reset~combout\,
	combout => \status~0_combout\);

-- Location: FF_X8_Y39_N29
status : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKY2~inputclkctrl_outclk\,
	d => \status~0_combout\,
	ena => \status~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \status~q\);

ww_AD_CONVST <= \AD_CONVST~output_o\;

ww_AD_SCLK <= \AD_SCLK~output_o\;

ww_AD_CS <= \AD_CS~output_o\;

ww_AD_SDI <= \AD_SDI~output_o\;

ww_DA_CLK <= \DA_CLK~output_o\;

ww_DA1_LD <= \DA1_LD~output_o\;

ww_DA1_SRI <= \DA1_SRI~output_o\;

ww_DA2_LD <= \DA2_LD~output_o\;

ww_DA2_SRI <= \DA2_SRI~output_o\;

ww_DA3_LD <= \DA3_LD~output_o\;

ww_DA3_SRI <= \DA3_SRI~output_o\;

ww_DA4_LD <= \DA4_LD~output_o\;

ww_DA4_SRI <= \DA4_SRI~output_o\;

ww_DA5_LD <= \DA5_LD~output_o\;

ww_DA5_SRI <= \DA5_SRI~output_o\;

ww_DA6_LD <= \DA6_LD~output_o\;

ww_DA6_SRI <= \DA6_SRI~output_o\;

ww_LED(0) <= \LED[0]~output_o\;

ww_LED(1) <= \LED[1]~output_o\;

ww_LED(2) <= \LED[2]~output_o\;

ww_LED(3) <= \LED[3]~output_o\;
END structure;


