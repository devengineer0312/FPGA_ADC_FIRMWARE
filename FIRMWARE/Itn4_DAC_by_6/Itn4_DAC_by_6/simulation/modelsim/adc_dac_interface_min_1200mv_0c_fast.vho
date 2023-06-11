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

-- DATE "07/21/2020 17:52:51"

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
	AD_CONVST : BUFFER std_logic;
	AD_SCLK : BUFFER std_logic;
	AD_CS : BUFFER std_logic;
	AD_SDI : BUFFER std_logic;
	AD_SDO : IN std_logic;
	DA_CLK : BUFFER std_logic;
	DA1_LD : BUFFER std_logic;
	DA1_SRI : BUFFER std_logic;
	DA2_LD : BUFFER std_logic;
	DA2_SRI : BUFFER std_logic;
	DA3_LD : BUFFER std_logic;
	DA3_SRI : BUFFER std_logic;
	DA4_LD : BUFFER std_logic;
	DA4_SRI : BUFFER std_logic;
	DA5_LD : BUFFER std_logic;
	DA5_SRI : BUFFER std_logic;
	DA6_LD : BUFFER std_logic;
	DA6_SRI : BUFFER std_logic;
	LED : BUFFER std_logic_vector(3 DOWNTO 0)
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
SIGNAL \sw_0_deb~feeder_combout\ : std_logic;
SIGNAL \sw_0_deb~q\ : std_logic;
SIGNAL \I_ads8330_interface|count_1[0]~7_combout\ : std_logic;
SIGNAL \reset~combout\ : std_logic;
SIGNAL \I_ads8330_interface|next_state.idle~0_combout\ : std_logic;
SIGNAL \I_ads8330_interface|next_state.idle~q\ : std_logic;
SIGNAL \I_ads8330_interface|count_1[2]~16\ : std_logic;
SIGNAL \I_ads8330_interface|count_1[3]~17_combout\ : std_logic;
SIGNAL \I_ads8330_interface|count_1[3]~18\ : std_logic;
SIGNAL \I_ads8330_interface|count_1[4]~19_combout\ : std_logic;
SIGNAL \I_ads8330_interface|count_1[4]~20\ : std_logic;
SIGNAL \I_ads8330_interface|count_1[5]~21_combout\ : std_logic;
SIGNAL \I_ads8330_interface|Equal0~0_combout\ : std_logic;
SIGNAL \I_ads8330_interface|next_state~8_combout\ : std_logic;
SIGNAL \I_ads8330_interface|next_state.issue_cs~q\ : std_logic;
SIGNAL \I_ads8330_interface|count_1[1]~11_combout\ : std_logic;
SIGNAL \I_ads8330_interface|Equal1~0_combout\ : std_logic;
SIGNAL \I_ads8330_interface|Selector41~0_combout\ : std_logic;
SIGNAL \I_ads8330_interface|next_state.data_transfer~q\ : std_logic;
SIGNAL \I_ads8330_interface|Equal2~0_combout\ : std_logic;
SIGNAL \I_ads8330_interface|Equal2~1_combout\ : std_logic;
SIGNAL \I_ads8330_interface|Selector42~0_combout\ : std_logic;
SIGNAL \I_ads8330_interface|next_state.wait_state~q\ : std_logic;
SIGNAL \I_ads8330_interface|count_1[1]~12_combout\ : std_logic;
SIGNAL \I_ads8330_interface|count_1[1]~13_combout\ : std_logic;
SIGNAL \I_ads8330_interface|count_1[1]~14_combout\ : std_logic;
SIGNAL \I_ads8330_interface|count_1[0]~8\ : std_logic;
SIGNAL \I_ads8330_interface|count_1[1]~9_combout\ : std_logic;
SIGNAL \I_ads8330_interface|count_1[1]~10\ : std_logic;
SIGNAL \I_ads8330_interface|count_1[2]~15_combout\ : std_logic;
SIGNAL \I_ads8330_interface|Equal0~1_combout\ : std_logic;
SIGNAL \I_ads8330_interface|Selector39~0_combout\ : std_logic;
SIGNAL \I_ads8330_interface|Selector40~0_combout\ : std_logic;
SIGNAL \I_ads8330_interface|next_state.issue_convst~q\ : std_logic;
SIGNAL \I_ads8330_interface|next_state~7_combout\ : std_logic;
SIGNAL \I_ads8330_interface|convst_n_t~q\ : std_logic;
SIGNAL \I_ads8330_interface|sclk_t~1_combout\ : std_logic;
SIGNAL \I_ads8330_interface|sclk_t~q\ : std_logic;
SIGNAL \I_ads8330_interface|cs_n_t~1_combout\ : std_logic;
SIGNAL \I_ads8330_interface|cs_n_t~q\ : std_logic;
SIGNAL \I_ads8330_interface|count_2[0]~5_combout\ : std_logic;
SIGNAL \I_ads8330_interface|count_2[0]~15_combout\ : std_logic;
SIGNAL \I_ads8330_interface|count_2[0]~16_combout\ : std_logic;
SIGNAL \I_ads8330_interface|count_2[0]~6\ : std_logic;
SIGNAL \I_ads8330_interface|count_2[1]~7_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \I_ads8330_interface|count_2[1]~8\ : std_logic;
SIGNAL \I_ads8330_interface|count_2[2]~9_combout\ : std_logic;
SIGNAL \I_ads8330_interface|count_2[2]~10\ : std_logic;
SIGNAL \I_ads8330_interface|count_2[3]~11_combout\ : std_logic;
SIGNAL \I_ads8330_interface|sdi_t~0_combout\ : std_logic;
SIGNAL \I_ads8330_interface|count_2[3]~12\ : std_logic;
SIGNAL \I_ads8330_interface|count_2[4]~13_combout\ : std_logic;
SIGNAL \I_ads8330_interface|sdi_t~1_combout\ : std_logic;
SIGNAL \I_ads8330_interface|sdi_t~q\ : std_logic;
SIGNAL \I_ad5441_interface_1|Add2~0_combout\ : std_logic;
SIGNAL \I_ad5441_interface_1|Equal2~0_combout\ : std_logic;
SIGNAL \I_ad5441_interface_1|Equal3~0_combout\ : std_logic;
SIGNAL \I_ad5441_interface_1|Equal1~0_combout\ : std_logic;
SIGNAL \I_ad5441_interface_1|Selector20~0_combout\ : std_logic;
SIGNAL \I_ad5441_interface_1|Selector18~0_combout\ : std_logic;
SIGNAL \I_ad5441_interface_1|Add2~1\ : std_logic;
SIGNAL \I_ad5441_interface_1|Add2~2_combout\ : std_logic;
SIGNAL \I_ad5441_interface_1|Selector17~0_combout\ : std_logic;
SIGNAL \I_ad5441_interface_1|Add2~3\ : std_logic;
SIGNAL \I_ad5441_interface_1|Add2~4_combout\ : std_logic;
SIGNAL \I_ad5441_interface_1|Selector16~0_combout\ : std_logic;
SIGNAL \I_ad5441_interface_1|Add2~5\ : std_logic;
SIGNAL \I_ad5441_interface_1|Add2~6_combout\ : std_logic;
SIGNAL \I_ad5441_interface_1|Selector15~0_combout\ : std_logic;
SIGNAL \I_ad5441_interface_1|Add2~7\ : std_logic;
SIGNAL \I_ad5441_interface_1|Add2~8_combout\ : std_logic;
SIGNAL \I_ad5441_interface_1|Selector14~0_combout\ : std_logic;
SIGNAL \I_ad5441_interface_1|Add2~9\ : std_logic;
SIGNAL \I_ad5441_interface_1|Add2~10_combout\ : std_logic;
SIGNAL \I_ad5441_interface_1|Selector13~0_combout\ : std_logic;
SIGNAL \I_ad5441_interface_1|Add2~11\ : std_logic;
SIGNAL \I_ad5441_interface_1|Add2~12_combout\ : std_logic;
SIGNAL \I_ad5441_interface_1|Selector12~0_combout\ : std_logic;
SIGNAL \I_ad5441_interface_1|Equal3~1_combout\ : std_logic;
SIGNAL \I_ad5441_interface_1|next_state~7_combout\ : std_logic;
SIGNAL \I_ad5441_interface_1|next_state.idle~q\ : std_logic;
SIGNAL \I_ad5441_interface_1|Selector20~1_combout\ : std_logic;
SIGNAL \I_ad5441_interface_1|next_state.data_transfer~q\ : std_logic;
SIGNAL \I_ad5441_interface_1|Selector21~0_combout\ : std_logic;
SIGNAL \I_ad5441_interface_1|next_state.issue_ld~q\ : std_logic;
SIGNAL \I_ad5441_interface_1|Equal2~1_combout\ : std_logic;
SIGNAL \I_ad5441_interface_1|Equal2~2_combout\ : std_logic;
SIGNAL \I_ad5441_interface_1|dac_ld_n_t~1_combout\ : std_logic;
SIGNAL \I_ad5441_interface_1|dac_ld_n_t~q\ : std_logic;
SIGNAL \I_ad5441_interface_1|count_3~1_combout\ : std_logic;
SIGNAL \I_ad5441_interface_1|count_3~0_combout\ : std_logic;
SIGNAL \I_ad5441_interface_1|dac_clk_t~1_combout\ : std_logic;
SIGNAL \I_ad5441_interface_1|dac_clk_t~q\ : std_logic;
SIGNAL \I_ad5441_interface_1|dac_sri_t~0_combout\ : std_logic;
SIGNAL \I_ad5441_interface_1|count_2~7_combout\ : std_logic;
SIGNAL \I_ad5441_interface_1|count_2[0]~9_combout\ : std_logic;
SIGNAL \I_ad5441_interface_1|count_2~6_combout\ : std_logic;
SIGNAL \I_ad5441_interface_1|count_3~2_combout\ : std_logic;
SIGNAL \I_ad5441_interface_1|count_2~8_combout\ : std_logic;
SIGNAL \I_ad5441_interface_1|Add1~0_combout\ : std_logic;
SIGNAL \I_ad5441_interface_1|count_2~10_combout\ : std_logic;
SIGNAL \I_ads8330_interface|Selector25~0_combout\ : std_logic;
SIGNAL \I_ads8330_interface|Selector22~1_combout\ : std_logic;
SIGNAL \I_ads8330_interface|Selector22~0_combout\ : std_logic;
SIGNAL \AD_SDO~input_o\ : std_logic;
SIGNAL \I_ads8330_interface|Selector22~2_combout\ : std_logic;
SIGNAL \I_ads8330_interface|Selector21~0_combout\ : std_logic;
SIGNAL \I_ads8330_interface|Selector20~0_combout\ : std_logic;
SIGNAL \I_ads8330_interface|Selector19~0_combout\ : std_logic;
SIGNAL \I_ads8330_interface|Selector18~0_combout\ : std_logic;
SIGNAL \I_ads8330_interface|Selector17~0_combout\ : std_logic;
SIGNAL \I_ads8330_interface|Selector16~0_combout\ : std_logic;
SIGNAL \I_ads8330_interface|Selector15~0_combout\ : std_logic;
SIGNAL \I_ads8330_interface|Selector14~0_combout\ : std_logic;
SIGNAL \I_ads8330_interface|Selector13~0_combout\ : std_logic;
SIGNAL \I_ads8330_interface|Selector12~0_combout\ : std_logic;
SIGNAL \I_ads8330_interface|Selector11~0_combout\ : std_logic;
SIGNAL \I_ads8330_interface|Selector10~0_combout\ : std_logic;
SIGNAL \I_ads8330_interface|Selector9~0_combout\ : std_logic;
SIGNAL \I_ads8330_interface|Selector8~0_combout\ : std_logic;
SIGNAL \I_ads8330_interface|Selector7~0_combout\ : std_logic;
SIGNAL \I_ads8330_interface|Selector6~0_combout\ : std_logic;
SIGNAL \I_ads8330_interface|Selector23~0_combout\ : std_logic;
SIGNAL \dac_data_ch0~12_combout\ : std_logic;
SIGNAL \I_ads8330_interface|data_val~0_combout\ : std_logic;
SIGNAL \I_ads8330_interface|data_val~q\ : std_logic;
SIGNAL \I_ads8330_interface|Selector39~1_combout\ : std_logic;
SIGNAL \dac_data_ch0[0]~1_combout\ : std_logic;
SIGNAL \I_ad5441_interface_1|Selector0~0_combout\ : std_logic;
SIGNAL \I_ad5441_interface_1|Mux0~7_combout\ : std_logic;
SIGNAL \I_ads8330_interface|Selector24~0_combout\ : std_logic;
SIGNAL \dac_data_ch0~4_combout\ : std_logic;
SIGNAL \I_ad5441_interface_1|Selector1~0_combout\ : std_logic;
SIGNAL \I_ads8330_interface|Selector27~0_combout\ : std_logic;
SIGNAL \dac_data_ch0~3_combout\ : std_logic;
SIGNAL \I_ad5441_interface_1|Selector4~0_combout\ : std_logic;
SIGNAL \I_ads8330_interface|Selector26~0_combout\ : std_logic;
SIGNAL \dac_data_ch0~2_combout\ : std_logic;
SIGNAL \I_ad5441_interface_1|Selector3~0_combout\ : std_logic;
SIGNAL \I_ad5441_interface_1|Mux0~0_combout\ : std_logic;
SIGNAL \I_ads8330_interface|Selector25~1_combout\ : std_logic;
SIGNAL \dac_data_ch0~0_combout\ : std_logic;
SIGNAL \I_ad5441_interface_1|Selector2~0_combout\ : std_logic;
SIGNAL \I_ad5441_interface_1|Mux0~1_combout\ : std_logic;
SIGNAL \I_ads8330_interface|Selector33~0_combout\ : std_logic;
SIGNAL \dac_data_ch0~11_combout\ : std_logic;
SIGNAL \I_ad5441_interface_1|Selector10~0_combout\ : std_logic;
SIGNAL \I_ads8330_interface|Selector32~0_combout\ : std_logic;
SIGNAL \dac_data_ch0~9_combout\ : std_logic;
SIGNAL \I_ad5441_interface_1|Selector9~0_combout\ : std_logic;
SIGNAL \I_ads8330_interface|Selector34~0_combout\ : std_logic;
SIGNAL \dac_data_ch0~10_combout\ : std_logic;
SIGNAL \I_ad5441_interface_1|Selector11~0_combout\ : std_logic;
SIGNAL \I_ad5441_interface_1|Mux0~4_combout\ : std_logic;
SIGNAL \I_ad5441_interface_1|Mux0~5_combout\ : std_logic;
SIGNAL \I_ads8330_interface|Selector28~0_combout\ : std_logic;
SIGNAL \dac_data_ch0~8_combout\ : std_logic;
SIGNAL \I_ad5441_interface_1|Selector5~0_combout\ : std_logic;
SIGNAL \I_ads8330_interface|Selector29~0_combout\ : std_logic;
SIGNAL \dac_data_ch0~5_combout\ : std_logic;
SIGNAL \I_ad5441_interface_1|Selector6~0_combout\ : std_logic;
SIGNAL \I_ads8330_interface|Selector31~0_combout\ : std_logic;
SIGNAL \dac_data_ch0~7_combout\ : std_logic;
SIGNAL \I_ad5441_interface_1|Selector8~0_combout\ : std_logic;
SIGNAL \I_ads8330_interface|Selector30~0_combout\ : std_logic;
SIGNAL \dac_data_ch0~6_combout\ : std_logic;
SIGNAL \I_ad5441_interface_1|Selector7~0_combout\ : std_logic;
SIGNAL \I_ad5441_interface_1|Mux0~2_combout\ : std_logic;
SIGNAL \I_ad5441_interface_1|Mux0~3_combout\ : std_logic;
SIGNAL \I_ad5441_interface_1|Mux0~6_combout\ : std_logic;
SIGNAL \I_ad5441_interface_1|Mux0~8_combout\ : std_logic;
SIGNAL \I_ad5441_interface_1|dac_sri_t~1_combout\ : std_logic;
SIGNAL \I_ad5441_interface_1|dac_sri_t~q\ : std_logic;
SIGNAL \I_ad5441_interface_2|Selector21~0_combout\ : std_logic;
SIGNAL \I_ad5441_interface_2|next_state.issue_ld~q\ : std_logic;
SIGNAL \I_ad5441_interface_2|Selector20~0_combout\ : std_logic;
SIGNAL \I_ad5441_interface_2|Add2~0_combout\ : std_logic;
SIGNAL \I_ad5441_interface_2|Selector18~0_combout\ : std_logic;
SIGNAL \I_ad5441_interface_2|Add2~1\ : std_logic;
SIGNAL \I_ad5441_interface_2|Add2~3\ : std_logic;
SIGNAL \I_ad5441_interface_2|Add2~4_combout\ : std_logic;
SIGNAL \I_ad5441_interface_2|Selector16~0_combout\ : std_logic;
SIGNAL \I_ad5441_interface_2|Equal3~0_combout\ : std_logic;
SIGNAL \process_4~0_combout\ : std_logic;
SIGNAL \dac_data_val_ch1~q\ : std_logic;
SIGNAL \I_ad5441_interface_2|Selector19~0_combout\ : std_logic;
SIGNAL \I_ad5441_interface_2|next_state~5_combout\ : std_logic;
SIGNAL \I_ad5441_interface_2|next_state.idle~q\ : std_logic;
SIGNAL \I_ad5441_interface_2|Add2~5\ : std_logic;
SIGNAL \I_ad5441_interface_2|Add2~6_combout\ : std_logic;
SIGNAL \I_ad5441_interface_2|Selector15~0_combout\ : std_logic;
SIGNAL \I_ad5441_interface_2|Add2~7\ : std_logic;
SIGNAL \I_ad5441_interface_2|Add2~8_combout\ : std_logic;
SIGNAL \I_ad5441_interface_2|Selector14~0_combout\ : std_logic;
SIGNAL \I_ad5441_interface_2|Add2~9\ : std_logic;
SIGNAL \I_ad5441_interface_2|Add2~10_combout\ : std_logic;
SIGNAL \I_ad5441_interface_2|Selector13~0_combout\ : std_logic;
SIGNAL \I_ad5441_interface_2|Add2~11\ : std_logic;
SIGNAL \I_ad5441_interface_2|Add2~12_combout\ : std_logic;
SIGNAL \I_ad5441_interface_2|Selector12~0_combout\ : std_logic;
SIGNAL \I_ad5441_interface_2|Equal2~0_combout\ : std_logic;
SIGNAL \I_ad5441_interface_2|Equal1~0_combout\ : std_logic;
SIGNAL \I_ad5441_interface_2|Selector20~1_combout\ : std_logic;
SIGNAL \I_ad5441_interface_2|next_state.data_transfer~q\ : std_logic;
SIGNAL \I_ad5441_interface_2|Add2~2_combout\ : std_logic;
SIGNAL \I_ad5441_interface_2|Selector17~0_combout\ : std_logic;
SIGNAL \I_ad5441_interface_2|Equal3~1_combout\ : std_logic;
SIGNAL \I_ad5441_interface_2|Equal2~1_combout\ : std_logic;
SIGNAL \I_ad5441_interface_2|Equal2~2_combout\ : std_logic;
SIGNAL \I_ad5441_interface_2|dac_ld_n_t~1_combout\ : std_logic;
SIGNAL \I_ad5441_interface_2|dac_ld_n_t~q\ : std_logic;
SIGNAL \I_ad5441_interface_2|count_3~1_combout\ : std_logic;
SIGNAL \I_ad5441_interface_2|count_3~0_combout\ : std_logic;
SIGNAL \I_ad5441_interface_2|dac_clk_t~1_combout\ : std_logic;
SIGNAL \I_ad5441_interface_2|dac_clk_t~q\ : std_logic;
SIGNAL \I_ad5441_interface_2|process_0~0_combout\ : std_logic;
SIGNAL \I_ad5441_interface_2|count_2~7_combout\ : std_logic;
SIGNAL \I_ad5441_interface_2|count_2[0]~feeder_combout\ : std_logic;
SIGNAL \I_ad5441_interface_2|count_2[3]~8_combout\ : std_logic;
SIGNAL \I_ad5441_interface_2|count_2~6_combout\ : std_logic;
SIGNAL \I_ad5441_interface_2|Add1~1_combout\ : std_logic;
SIGNAL \I_ad5441_interface_2|count_2~10_combout\ : std_logic;
SIGNAL \I_ad5441_interface_2|Add1~0_combout\ : std_logic;
SIGNAL \I_ad5441_interface_2|count_2~9_combout\ : std_logic;
SIGNAL \I_ad5441_interface_2|Selector0~0_combout\ : std_logic;
SIGNAL \I_ad5441_interface_2|Mux0~7_combout\ : std_logic;
SIGNAL \I_ad5441_interface_2|Selector10~0_combout\ : std_logic;
SIGNAL \I_ad5441_interface_2|Selector9~0_combout\ : std_logic;
SIGNAL \I_ad5441_interface_2|Selector11~0_combout\ : std_logic;
SIGNAL \I_ad5441_interface_2|Mux0~4_combout\ : std_logic;
SIGNAL \I_ad5441_interface_2|Mux0~5_combout\ : std_logic;
SIGNAL \I_ad5441_interface_2|Selector6~0_combout\ : std_logic;
SIGNAL \I_ad5441_interface_2|Selector5~0_combout\ : std_logic;
SIGNAL \I_ad5441_interface_2|Selector7~0_combout\ : std_logic;
SIGNAL \I_ad5441_interface_2|Selector8~0_combout\ : std_logic;
SIGNAL \I_ad5441_interface_2|Mux0~2_combout\ : std_logic;
SIGNAL \I_ad5441_interface_2|Mux0~3_combout\ : std_logic;
SIGNAL \I_ad5441_interface_2|Mux0~6_combout\ : std_logic;
SIGNAL \I_ad5441_interface_2|Selector2~0_combout\ : std_logic;
SIGNAL \I_ad5441_interface_2|Selector1~0_combout\ : std_logic;
SIGNAL \I_ad5441_interface_2|Selector4~0_combout\ : std_logic;
SIGNAL \I_ad5441_interface_2|Selector3~0_combout\ : std_logic;
SIGNAL \I_ad5441_interface_2|Mux0~0_combout\ : std_logic;
SIGNAL \I_ad5441_interface_2|Mux0~1_combout\ : std_logic;
SIGNAL \I_ad5441_interface_2|Mux0~8_combout\ : std_logic;
SIGNAL \I_ad5441_interface_2|dac_sri_t~0_combout\ : std_logic;
SIGNAL \I_ad5441_interface_2|dac_sri_t~q\ : std_logic;
SIGNAL \dac_data_ch1~11_combout\ : std_logic;
SIGNAL \init_flag~0_combout\ : std_logic;
SIGNAL \I_ad5441_interface_4|Selector0~0_combout\ : std_logic;
SIGNAL \I_ad5441_interface_4|Mux0~7_combout\ : std_logic;
SIGNAL \dac_data_ch1~10_combout\ : std_logic;
SIGNAL \I_ad5441_interface_4|Selector10~0_combout\ : std_logic;
SIGNAL \dac_data_ch1~8_combout\ : std_logic;
SIGNAL \I_ad5441_interface_4|Selector9~0_combout\ : std_logic;
SIGNAL \dac_data_ch1~9_combout\ : std_logic;
SIGNAL \I_ad5441_interface_4|Selector11~0_combout\ : std_logic;
SIGNAL \I_ad5441_interface_4|Mux0~4_combout\ : std_logic;
SIGNAL \I_ad5441_interface_4|Mux0~5_combout\ : std_logic;
SIGNAL \dac_data_ch1~7_combout\ : std_logic;
SIGNAL \I_ad5441_interface_4|Selector5~0_combout\ : std_logic;
SIGNAL \dac_data_ch1~4_combout\ : std_logic;
SIGNAL \I_ad5441_interface_4|Selector7~0_combout\ : std_logic;
SIGNAL \dac_data_ch1~6_combout\ : std_logic;
SIGNAL \I_ad5441_interface_4|Selector8~0_combout\ : std_logic;
SIGNAL \dac_data_ch1~5_combout\ : std_logic;
SIGNAL \I_ad5441_interface_4|Selector6~0_combout\ : std_logic;
SIGNAL \I_ad5441_interface_4|Mux0~2_combout\ : std_logic;
SIGNAL \I_ad5441_interface_4|Mux0~3_combout\ : std_logic;
SIGNAL \I_ad5441_interface_4|Mux0~6_combout\ : std_logic;
SIGNAL \dac_data_ch1~0_combout\ : std_logic;
SIGNAL \I_ad5441_interface_4|Selector2~0_combout\ : std_logic;
SIGNAL \dac_data_ch1~3_combout\ : std_logic;
SIGNAL \I_ad5441_interface_4|Selector1~0_combout\ : std_logic;
SIGNAL \dac_data_ch1~2_combout\ : std_logic;
SIGNAL \I_ad5441_interface_4|Selector4~0_combout\ : std_logic;
SIGNAL \dac_data_ch1~1_combout\ : std_logic;
SIGNAL \I_ad5441_interface_4|Selector3~0_combout\ : std_logic;
SIGNAL \I_ad5441_interface_4|Mux0~0_combout\ : std_logic;
SIGNAL \I_ad5441_interface_4|Mux0~1_combout\ : std_logic;
SIGNAL \I_ad5441_interface_4|Mux0~8_combout\ : std_logic;
SIGNAL \I_ad5441_interface_4|dac_sri_t~0_combout\ : std_logic;
SIGNAL \I_ad5441_interface_4|dac_sri_t~q\ : std_logic;
SIGNAL \adc_data_fd~0_combout\ : std_logic;
SIGNAL \adc_data_fd~q\ : std_logic;
SIGNAL \init_flag~1_combout\ : std_logic;
SIGNAL \init_flag~q\ : std_logic;
SIGNAL \status_0~0_combout\ : std_logic;
SIGNAL \status_0~q\ : std_logic;
SIGNAL \status_1~0_combout\ : std_logic;
SIGNAL \status_1~1_combout\ : std_logic;
SIGNAL \status_1~q\ : std_logic;
SIGNAL \status_2~0_combout\ : std_logic;
SIGNAL \status_2~q\ : std_logic;
SIGNAL \I_ad5441_interface_1|dac_data_t\ : std_logic_vector(12 DOWNTO 1);
SIGNAL \I_ad5441_interface_1|count_3\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \I_ad5441_interface_1|count_2\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \I_ad5441_interface_1|count_1\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \I_ad5441_interface_2|dac_data_t\ : std_logic_vector(12 DOWNTO 1);
SIGNAL \I_power_on_reset|count\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \I_ad5441_interface_2|count_2\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \I_ad5441_interface_4|dac_data_t\ : std_logic_vector(12 DOWNTO 1);
SIGNAL \I_ads8330_interface|count_1\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \I_ad5441_interface_2|count_3\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \I_ads8330_interface|adc_data\ : std_logic_vector(16 DOWNTO 0);
SIGNAL \I_ads8330_interface|count_2\ : std_logic_vector(4 DOWNTO 0);
SIGNAL dac_data_ch0 : std_logic_vector(11 DOWNTO 0);
SIGNAL dac_data_ch1 : std_logic_vector(11 DOWNTO 0);
SIGNAL \I_ad5441_interface_2|count_1\ : std_logic_vector(6 DOWNTO 0);
SIGNAL sw_0_shift : std_logic_vector(4 DOWNTO 0);
SIGNAL temp_count : std_logic_vector(22 DOWNTO 0);
SIGNAL \I_ads8330_interface|adc_data_t\ : std_logic_vector(16 DOWNTO 0);
SIGNAL \ALT_INV_dac_data_ch0[0]~1_combout\ : std_logic;
SIGNAL \I_ads8330_interface|ALT_INV_next_state.wait_state~q\ : std_logic;
SIGNAL \I_ad5441_interface_2|ALT_INV_next_state.data_transfer~q\ : std_logic;
SIGNAL \I_ad5441_interface_1|ALT_INV_next_state.data_transfer~q\ : std_logic;
SIGNAL \I_ads8330_interface|ALT_INV_next_state.data_transfer~q\ : std_logic;

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
\ALT_INV_dac_data_ch0[0]~1_combout\ <= NOT \dac_data_ch0[0]~1_combout\;
\I_ads8330_interface|ALT_INV_next_state.wait_state~q\ <= NOT \I_ads8330_interface|next_state.wait_state~q\;
\I_ad5441_interface_2|ALT_INV_next_state.data_transfer~q\ <= NOT \I_ad5441_interface_2|next_state.data_transfer~q\;
\I_ad5441_interface_1|ALT_INV_next_state.data_transfer~q\ <= NOT \I_ad5441_interface_1|next_state.data_transfer~q\;
\I_ads8330_interface|ALT_INV_next_state.data_transfer~q\ <= NOT \I_ads8330_interface|next_state.data_transfer~q\;

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
	i => \I_ad5441_interface_1|dac_ld_n_t~q\,
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
	i => \I_ad5441_interface_1|dac_clk_t~q\,
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
	i => \I_ad5441_interface_1|dac_sri_t~q\,
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
	i => \I_ad5441_interface_2|dac_sri_t~q\,
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
	i => \I_ad5441_interface_2|dac_ld_n_t~q\,
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
	i => \I_ad5441_interface_2|dac_sri_t~q\,
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
	i => \I_ad5441_interface_2|dac_ld_n_t~q\,
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
	i => \I_ad5441_interface_4|dac_sri_t~q\,
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
	i => \I_ad5441_interface_2|dac_ld_n_t~q\,
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
	i => \I_ad5441_interface_4|dac_sri_t~q\,
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
	i => \I_ad5441_interface_2|dac_ld_n_t~q\,
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
	i => \I_ad5441_interface_4|dac_sri_t~q\,
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
	i => \status_0~q\,
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
	i => \status_1~q\,
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
	i => \status_2~q\,
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

-- Location: LCCOMB_X52_Y30_N14
\I_power_on_reset|count[0]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_power_on_reset|count[0]~45_combout\ = \I_power_on_reset|LessThan0~3_combout\ $ (\I_power_on_reset|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \I_power_on_reset|LessThan0~3_combout\,
	datac => \I_power_on_reset|count\(0),
	combout => \I_power_on_reset|count[0]~45_combout\);

-- Location: FF_X52_Y30_N15
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

-- Location: LCCOMB_X53_Y30_N2
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

-- Location: FF_X53_Y30_N3
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

-- Location: LCCOMB_X53_Y30_N4
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

-- Location: FF_X53_Y30_N5
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

-- Location: LCCOMB_X53_Y30_N6
\I_power_on_reset|count[3]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_power_on_reset|count[3]~19_combout\ = (\I_power_on_reset|count\(3) & (\I_power_on_reset|count[2]~18\ $ (GND))) # (!\I_power_on_reset|count\(3) & (!\I_power_on_reset|count[2]~18\ & VCC))
-- \I_power_on_reset|count[3]~20\ = CARRY((\I_power_on_reset|count\(3) & !\I_power_on_reset|count[2]~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \I_power_on_reset|count\(3),
	datad => VCC,
	cin => \I_power_on_reset|count[2]~18\,
	combout => \I_power_on_reset|count[3]~19_combout\,
	cout => \I_power_on_reset|count[3]~20\);

-- Location: FF_X53_Y30_N7
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

-- Location: LCCOMB_X53_Y30_N8
\I_power_on_reset|count[4]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_power_on_reset|count[4]~21_combout\ = (\I_power_on_reset|count\(4) & (!\I_power_on_reset|count[3]~20\)) # (!\I_power_on_reset|count\(4) & ((\I_power_on_reset|count[3]~20\) # (GND)))
-- \I_power_on_reset|count[4]~22\ = CARRY((!\I_power_on_reset|count[3]~20\) # (!\I_power_on_reset|count\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \I_power_on_reset|count\(4),
	datad => VCC,
	cin => \I_power_on_reset|count[3]~20\,
	combout => \I_power_on_reset|count[4]~21_combout\,
	cout => \I_power_on_reset|count[4]~22\);

-- Location: FF_X53_Y30_N9
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

-- Location: LCCOMB_X53_Y30_N10
\I_power_on_reset|count[5]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_power_on_reset|count[5]~23_combout\ = (\I_power_on_reset|count\(5) & (\I_power_on_reset|count[4]~22\ $ (GND))) # (!\I_power_on_reset|count\(5) & (!\I_power_on_reset|count[4]~22\ & VCC))
-- \I_power_on_reset|count[5]~24\ = CARRY((\I_power_on_reset|count\(5) & !\I_power_on_reset|count[4]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \I_power_on_reset|count\(5),
	datad => VCC,
	cin => \I_power_on_reset|count[4]~22\,
	combout => \I_power_on_reset|count[5]~23_combout\,
	cout => \I_power_on_reset|count[5]~24\);

-- Location: FF_X53_Y30_N11
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

-- Location: LCCOMB_X53_Y30_N12
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

-- Location: FF_X53_Y30_N13
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

-- Location: LCCOMB_X53_Y30_N14
\I_power_on_reset|count[7]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_power_on_reset|count[7]~27_combout\ = (\I_power_on_reset|count\(7) & (\I_power_on_reset|count[6]~26\ $ (GND))) # (!\I_power_on_reset|count\(7) & (!\I_power_on_reset|count[6]~26\ & VCC))
-- \I_power_on_reset|count[7]~28\ = CARRY((\I_power_on_reset|count\(7) & !\I_power_on_reset|count[6]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \I_power_on_reset|count\(7),
	datad => VCC,
	cin => \I_power_on_reset|count[6]~26\,
	combout => \I_power_on_reset|count[7]~27_combout\,
	cout => \I_power_on_reset|count[7]~28\);

-- Location: FF_X53_Y30_N15
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

-- Location: LCCOMB_X53_Y30_N16
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

-- Location: FF_X53_Y30_N17
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

-- Location: LCCOMB_X53_Y30_N18
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

-- Location: FF_X53_Y30_N19
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

-- Location: LCCOMB_X53_Y30_N20
\I_power_on_reset|count[10]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_power_on_reset|count[10]~33_combout\ = (\I_power_on_reset|count\(10) & (!\I_power_on_reset|count[9]~32\)) # (!\I_power_on_reset|count\(10) & ((\I_power_on_reset|count[9]~32\) # (GND)))
-- \I_power_on_reset|count[10]~34\ = CARRY((!\I_power_on_reset|count[9]~32\) # (!\I_power_on_reset|count\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \I_power_on_reset|count\(10),
	datad => VCC,
	cin => \I_power_on_reset|count[9]~32\,
	combout => \I_power_on_reset|count[10]~33_combout\,
	cout => \I_power_on_reset|count[10]~34\);

-- Location: FF_X53_Y30_N21
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

-- Location: LCCOMB_X53_Y30_N22
\I_power_on_reset|count[11]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_power_on_reset|count[11]~35_combout\ = (\I_power_on_reset|count\(11) & (\I_power_on_reset|count[10]~34\ $ (GND))) # (!\I_power_on_reset|count\(11) & (!\I_power_on_reset|count[10]~34\ & VCC))
-- \I_power_on_reset|count[11]~36\ = CARRY((\I_power_on_reset|count\(11) & !\I_power_on_reset|count[10]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \I_power_on_reset|count\(11),
	datad => VCC,
	cin => \I_power_on_reset|count[10]~34\,
	combout => \I_power_on_reset|count[11]~35_combout\,
	cout => \I_power_on_reset|count[11]~36\);

-- Location: FF_X53_Y30_N23
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

-- Location: LCCOMB_X53_Y30_N24
\I_power_on_reset|count[12]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_power_on_reset|count[12]~37_combout\ = (\I_power_on_reset|count\(12) & (!\I_power_on_reset|count[11]~36\)) # (!\I_power_on_reset|count\(12) & ((\I_power_on_reset|count[11]~36\) # (GND)))
-- \I_power_on_reset|count[12]~38\ = CARRY((!\I_power_on_reset|count[11]~36\) # (!\I_power_on_reset|count\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \I_power_on_reset|count\(12),
	datad => VCC,
	cin => \I_power_on_reset|count[11]~36\,
	combout => \I_power_on_reset|count[12]~37_combout\,
	cout => \I_power_on_reset|count[12]~38\);

-- Location: FF_X53_Y30_N25
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

-- Location: LCCOMB_X53_Y30_N26
\I_power_on_reset|count[13]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_power_on_reset|count[13]~39_combout\ = (\I_power_on_reset|count\(13) & (\I_power_on_reset|count[12]~38\ $ (GND))) # (!\I_power_on_reset|count\(13) & (!\I_power_on_reset|count[12]~38\ & VCC))
-- \I_power_on_reset|count[13]~40\ = CARRY((\I_power_on_reset|count\(13) & !\I_power_on_reset|count[12]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \I_power_on_reset|count\(13),
	datad => VCC,
	cin => \I_power_on_reset|count[12]~38\,
	combout => \I_power_on_reset|count[13]~39_combout\,
	cout => \I_power_on_reset|count[13]~40\);

-- Location: FF_X53_Y30_N27
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

-- Location: LCCOMB_X53_Y30_N28
\I_power_on_reset|count[14]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_power_on_reset|count[14]~41_combout\ = (\I_power_on_reset|count\(14) & (!\I_power_on_reset|count[13]~40\)) # (!\I_power_on_reset|count\(14) & ((\I_power_on_reset|count[13]~40\) # (GND)))
-- \I_power_on_reset|count[14]~42\ = CARRY((!\I_power_on_reset|count[13]~40\) # (!\I_power_on_reset|count\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \I_power_on_reset|count\(14),
	datad => VCC,
	cin => \I_power_on_reset|count[13]~40\,
	combout => \I_power_on_reset|count[14]~41_combout\,
	cout => \I_power_on_reset|count[14]~42\);

-- Location: FF_X53_Y30_N29
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

-- Location: LCCOMB_X53_Y30_N30
\I_power_on_reset|count[15]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_power_on_reset|count[15]~43_combout\ = \I_power_on_reset|count\(15) $ (!\I_power_on_reset|count[14]~42\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \I_power_on_reset|count\(15),
	cin => \I_power_on_reset|count[14]~42\,
	combout => \I_power_on_reset|count[15]~43_combout\);

-- Location: FF_X53_Y30_N31
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

-- Location: LCCOMB_X54_Y30_N30
\I_power_on_reset|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_power_on_reset|LessThan0~2_combout\ = (!\I_power_on_reset|count\(13) & (!\I_power_on_reset|count\(11) & (!\I_power_on_reset|count\(12) & !\I_power_on_reset|count\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I_power_on_reset|count\(13),
	datab => \I_power_on_reset|count\(11),
	datac => \I_power_on_reset|count\(12),
	datad => \I_power_on_reset|count\(10),
	combout => \I_power_on_reset|LessThan0~2_combout\);

-- Location: LCCOMB_X52_Y30_N2
\I_power_on_reset|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_power_on_reset|LessThan0~0_combout\ = (!\I_power_on_reset|count\(7) & (((!\I_power_on_reset|count\(5) & !\I_power_on_reset|count\(4))) # (!\I_power_on_reset|count\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I_power_on_reset|count\(5),
	datab => \I_power_on_reset|count\(7),
	datac => \I_power_on_reset|count\(6),
	datad => \I_power_on_reset|count\(4),
	combout => \I_power_on_reset|LessThan0~0_combout\);

-- Location: LCCOMB_X52_Y30_N8
\I_power_on_reset|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_power_on_reset|LessThan0~1_combout\ = ((\I_power_on_reset|LessThan0~0_combout\) # (!\I_power_on_reset|count\(8))) # (!\I_power_on_reset|count\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \I_power_on_reset|count\(9),
	datac => \I_power_on_reset|count\(8),
	datad => \I_power_on_reset|LessThan0~0_combout\,
	combout => \I_power_on_reset|LessThan0~1_combout\);

-- Location: LCCOMB_X53_Y30_N0
\I_power_on_reset|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_power_on_reset|LessThan0~3_combout\ = (((\I_power_on_reset|LessThan0~2_combout\ & \I_power_on_reset|LessThan0~1_combout\)) # (!\I_power_on_reset|count\(14))) # (!\I_power_on_reset|count\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I_power_on_reset|count\(15),
	datab => \I_power_on_reset|count\(14),
	datac => \I_power_on_reset|LessThan0~2_combout\,
	datad => \I_power_on_reset|LessThan0~1_combout\,
	combout => \I_power_on_reset|LessThan0~3_combout\);

-- Location: LCCOMB_X52_Y30_N0
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

-- Location: FF_X52_Y30_N1
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

-- Location: LCCOMB_X50_Y33_N24
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

-- Location: LCCOMB_X49_Y34_N4
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

-- Location: FF_X49_Y34_N5
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

-- Location: LCCOMB_X49_Y34_N10
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

-- Location: FF_X49_Y34_N11
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

-- Location: LCCOMB_X49_Y34_N12
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

-- Location: FF_X49_Y34_N13
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

-- Location: LCCOMB_X49_Y34_N14
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

-- Location: FF_X49_Y34_N15
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

-- Location: LCCOMB_X49_Y34_N16
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

-- Location: FF_X49_Y34_N17
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

-- Location: LCCOMB_X49_Y34_N18
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

-- Location: FF_X49_Y34_N19
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

-- Location: LCCOMB_X49_Y34_N20
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

-- Location: FF_X49_Y34_N21
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

-- Location: LCCOMB_X49_Y34_N22
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

-- Location: FF_X49_Y34_N23
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

-- Location: LCCOMB_X49_Y34_N24
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

-- Location: FF_X49_Y34_N25
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

-- Location: LCCOMB_X49_Y34_N26
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

-- Location: FF_X49_Y34_N27
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

-- Location: LCCOMB_X49_Y34_N28
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

-- Location: FF_X49_Y34_N29
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

-- Location: LCCOMB_X49_Y34_N30
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

-- Location: FF_X49_Y34_N31
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

-- Location: LCCOMB_X49_Y33_N0
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

-- Location: FF_X49_Y33_N1
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

-- Location: LCCOMB_X49_Y33_N2
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

-- Location: FF_X49_Y33_N3
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

-- Location: LCCOMB_X49_Y33_N4
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

-- Location: FF_X49_Y33_N5
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

-- Location: LCCOMB_X49_Y33_N6
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

-- Location: FF_X49_Y33_N7
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

-- Location: LCCOMB_X49_Y33_N8
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

-- Location: FF_X49_Y33_N9
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

-- Location: LCCOMB_X49_Y33_N10
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

-- Location: FF_X49_Y33_N11
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

-- Location: LCCOMB_X49_Y33_N12
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

-- Location: FF_X49_Y33_N13
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

-- Location: LCCOMB_X49_Y33_N14
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

-- Location: FF_X49_Y33_N15
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

-- Location: LCCOMB_X49_Y33_N16
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

-- Location: FF_X49_Y33_N17
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

-- Location: LCCOMB_X49_Y33_N18
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

-- Location: FF_X49_Y33_N19
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

-- Location: LCCOMB_X49_Y33_N20
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

-- Location: FF_X49_Y33_N21
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

-- Location: LCCOMB_X50_Y33_N12
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

-- Location: FF_X50_Y33_N13
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

-- Location: FF_X50_Y33_N15
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

-- Location: LCCOMB_X50_Y33_N14
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

-- Location: FF_X50_Y33_N25
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

-- Location: LCCOMB_X50_Y33_N8
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

-- Location: FF_X50_Y33_N9
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

-- Location: LCCOMB_X50_Y33_N26
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

-- Location: FF_X50_Y33_N27
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

-- Location: LCCOMB_X50_Y33_N22
\sw_0_shift[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sw_0_shift[3]~feeder_combout\ = sw_0_shift(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => sw_0_shift(2),
	combout => \sw_0_shift[3]~feeder_combout\);

-- Location: FF_X50_Y33_N23
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

-- Location: FF_X50_Y33_N17
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

-- Location: LCCOMB_X50_Y33_N16
\sw_0_deb~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sw_0_deb~0_combout\ = (sw_0_shift(3) & ((\sw_0_deb~q\) # ((sw_0_shift(0) & sw_0_shift(4))))) # (!sw_0_shift(3) & (\sw_0_deb~q\ & ((sw_0_shift(0)) # (sw_0_shift(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sw_0_shift(3),
	datab => sw_0_shift(0),
	datac => sw_0_shift(4),
	datad => \sw_0_deb~q\,
	combout => \sw_0_deb~0_combout\);

-- Location: LCCOMB_X50_Y33_N30
\sw_0_deb~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sw_0_deb~1_combout\ = (\sw_0_deb~q\ & ((sw_0_shift(1)) # ((sw_0_shift(2)) # (\sw_0_deb~0_combout\)))) # (!\sw_0_deb~q\ & (sw_0_shift(1) & (sw_0_shift(2) & \sw_0_deb~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw_0_deb~q\,
	datab => sw_0_shift(1),
	datac => sw_0_shift(2),
	datad => \sw_0_deb~0_combout\,
	combout => \sw_0_deb~1_combout\);

-- Location: LCCOMB_X51_Y30_N6
\sw_0_deb~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \sw_0_deb~feeder_combout\ = \sw_0_deb~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sw_0_deb~1_combout\,
	combout => \sw_0_deb~feeder_combout\);

-- Location: FF_X51_Y30_N7
sw_0_deb : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKY2~inputclkctrl_outclk\,
	d => \sw_0_deb~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sw_0_deb~q\);

-- Location: LCCOMB_X53_Y31_N12
\I_ads8330_interface|count_1[0]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_ads8330_interface|count_1[0]~7_combout\ = \I_ads8330_interface|count_1\(0) $ (VCC)
-- \I_ads8330_interface|count_1[0]~8\ = CARRY(\I_ads8330_interface|count_1\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I_ads8330_interface|count_1\(0),
	datad => VCC,
	combout => \I_ads8330_interface|count_1[0]~7_combout\,
	cout => \I_ads8330_interface|count_1[0]~8\);

-- Location: LCCOMB_X52_Y30_N10
reset : cycloneive_lcell_comb
-- Equation(s):
-- \reset~combout\ = (\sw_0_deb~q\) # (!\I_power_on_reset|reset_t~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sw_0_deb~q\,
	datad => \I_power_on_reset|reset_t~q\,
	combout => \reset~combout\);

-- Location: LCCOMB_X54_Y31_N4
\I_ads8330_interface|next_state.idle~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_ads8330_interface|next_state.idle~0_combout\ = !\reset~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \reset~combout\,
	combout => \I_ads8330_interface|next_state.idle~0_combout\);

-- Location: FF_X54_Y31_N5
\I_ads8330_interface|next_state.idle\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKY2~inputclkctrl_outclk\,
	d => \I_ads8330_interface|next_state.idle~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_ads8330_interface|next_state.idle~q\);

-- Location: LCCOMB_X53_Y31_N16
\I_ads8330_interface|count_1[2]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_ads8330_interface|count_1[2]~15_combout\ = (\I_ads8330_interface|count_1\(2) & (\I_ads8330_interface|count_1[1]~10\ $ (GND))) # (!\I_ads8330_interface|count_1\(2) & (!\I_ads8330_interface|count_1[1]~10\ & VCC))
-- \I_ads8330_interface|count_1[2]~16\ = CARRY((\I_ads8330_interface|count_1\(2) & !\I_ads8330_interface|count_1[1]~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \I_ads8330_interface|count_1\(2),
	datad => VCC,
	cin => \I_ads8330_interface|count_1[1]~10\,
	combout => \I_ads8330_interface|count_1[2]~15_combout\,
	cout => \I_ads8330_interface|count_1[2]~16\);

-- Location: LCCOMB_X53_Y31_N18
\I_ads8330_interface|count_1[3]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_ads8330_interface|count_1[3]~17_combout\ = (\I_ads8330_interface|count_1\(3) & (!\I_ads8330_interface|count_1[2]~16\)) # (!\I_ads8330_interface|count_1\(3) & ((\I_ads8330_interface|count_1[2]~16\) # (GND)))
-- \I_ads8330_interface|count_1[3]~18\ = CARRY((!\I_ads8330_interface|count_1[2]~16\) # (!\I_ads8330_interface|count_1\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \I_ads8330_interface|count_1\(3),
	datad => VCC,
	cin => \I_ads8330_interface|count_1[2]~16\,
	combout => \I_ads8330_interface|count_1[3]~17_combout\,
	cout => \I_ads8330_interface|count_1[3]~18\);

-- Location: FF_X53_Y31_N19
\I_ads8330_interface|count_1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKY2~inputclkctrl_outclk\,
	d => \I_ads8330_interface|count_1[3]~17_combout\,
	sclr => \I_ads8330_interface|count_1[1]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_ads8330_interface|count_1\(3));

-- Location: LCCOMB_X53_Y31_N20
\I_ads8330_interface|count_1[4]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_ads8330_interface|count_1[4]~19_combout\ = (\I_ads8330_interface|count_1\(4) & (\I_ads8330_interface|count_1[3]~18\ $ (GND))) # (!\I_ads8330_interface|count_1\(4) & (!\I_ads8330_interface|count_1[3]~18\ & VCC))
-- \I_ads8330_interface|count_1[4]~20\ = CARRY((\I_ads8330_interface|count_1\(4) & !\I_ads8330_interface|count_1[3]~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \I_ads8330_interface|count_1\(4),
	datad => VCC,
	cin => \I_ads8330_interface|count_1[3]~18\,
	combout => \I_ads8330_interface|count_1[4]~19_combout\,
	cout => \I_ads8330_interface|count_1[4]~20\);

-- Location: FF_X53_Y31_N21
\I_ads8330_interface|count_1[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKY2~inputclkctrl_outclk\,
	d => \I_ads8330_interface|count_1[4]~19_combout\,
	sclr => \I_ads8330_interface|count_1[1]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_ads8330_interface|count_1\(4));

-- Location: LCCOMB_X53_Y31_N22
\I_ads8330_interface|count_1[5]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_ads8330_interface|count_1[5]~21_combout\ = \I_ads8330_interface|count_1\(5) $ (\I_ads8330_interface|count_1[4]~20\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \I_ads8330_interface|count_1\(5),
	cin => \I_ads8330_interface|count_1[4]~20\,
	combout => \I_ads8330_interface|count_1[5]~21_combout\);

-- Location: FF_X53_Y31_N23
\I_ads8330_interface|count_1[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKY2~inputclkctrl_outclk\,
	d => \I_ads8330_interface|count_1[5]~21_combout\,
	sclr => \I_ads8330_interface|count_1[1]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_ads8330_interface|count_1\(5));

-- Location: LCCOMB_X53_Y31_N24
\I_ads8330_interface|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_ads8330_interface|Equal0~0_combout\ = (\I_ads8330_interface|count_1\(0) & (!\I_ads8330_interface|count_1\(4) & (!\I_ads8330_interface|count_1\(1) & !\I_ads8330_interface|count_1\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I_ads8330_interface|count_1\(0),
	datab => \I_ads8330_interface|count_1\(4),
	datac => \I_ads8330_interface|count_1\(1),
	datad => \I_ads8330_interface|count_1\(3),
	combout => \I_ads8330_interface|Equal0~0_combout\);

-- Location: LCCOMB_X49_Y31_N2
\I_ads8330_interface|next_state~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_ads8330_interface|next_state~8_combout\ = (\I_ads8330_interface|count_1\(2) & (!\I_ads8330_interface|count_1\(5) & (!\I_ads8330_interface|next_state~7_combout\ & \I_ads8330_interface|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I_ads8330_interface|count_1\(2),
	datab => \I_ads8330_interface|count_1\(5),
	datac => \I_ads8330_interface|next_state~7_combout\,
	datad => \I_ads8330_interface|Equal0~0_combout\,
	combout => \I_ads8330_interface|next_state~8_combout\);

-- Location: FF_X49_Y31_N3
\I_ads8330_interface|next_state.issue_cs\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKY2~inputclkctrl_outclk\,
	d => \I_ads8330_interface|next_state~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_ads8330_interface|next_state.issue_cs~q\);

-- Location: LCCOMB_X53_Y31_N8
\I_ads8330_interface|count_1[1]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_ads8330_interface|count_1[1]~11_combout\ = ((\I_ads8330_interface|next_state.issue_cs~q\) # ((\sw_0_deb~q\) # (!\I_power_on_reset|reset_t~q\))) # (!\I_ads8330_interface|next_state.idle~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I_ads8330_interface|next_state.idle~q\,
	datab => \I_ads8330_interface|next_state.issue_cs~q\,
	datac => \sw_0_deb~q\,
	datad => \I_power_on_reset|reset_t~q\,
	combout => \I_ads8330_interface|count_1[1]~11_combout\);

-- Location: LCCOMB_X49_Y31_N28
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

-- Location: LCCOMB_X49_Y31_N6
\I_ads8330_interface|Selector41~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_ads8330_interface|Selector41~0_combout\ = (\I_ads8330_interface|next_state.issue_cs~q\) # ((\I_ads8330_interface|next_state.data_transfer~q\ & !\I_ads8330_interface|Equal1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \I_ads8330_interface|next_state.issue_cs~q\,
	datac => \I_ads8330_interface|next_state.data_transfer~q\,
	datad => \I_ads8330_interface|Equal1~0_combout\,
	combout => \I_ads8330_interface|Selector41~0_combout\);

-- Location: FF_X49_Y31_N7
\I_ads8330_interface|next_state.data_transfer\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKY2~inputclkctrl_outclk\,
	d => \I_ads8330_interface|Selector41~0_combout\,
	sclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_ads8330_interface|next_state.data_transfer~q\);

-- Location: LCCOMB_X53_Y31_N0
\I_ads8330_interface|Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_ads8330_interface|Equal2~0_combout\ = (!\I_ads8330_interface|count_1\(0) & (!\I_ads8330_interface|count_1\(4) & (!\I_ads8330_interface|count_1\(1) & !\I_ads8330_interface|count_1\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I_ads8330_interface|count_1\(0),
	datab => \I_ads8330_interface|count_1\(4),
	datac => \I_ads8330_interface|count_1\(1),
	datad => \I_ads8330_interface|count_1\(2),
	combout => \I_ads8330_interface|Equal2~0_combout\);

-- Location: LCCOMB_X53_Y31_N4
\I_ads8330_interface|Equal2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_ads8330_interface|Equal2~1_combout\ = (\I_ads8330_interface|count_1\(3) & (!\I_ads8330_interface|count_1\(5) & \I_ads8330_interface|Equal2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \I_ads8330_interface|count_1\(3),
	datac => \I_ads8330_interface|count_1\(5),
	datad => \I_ads8330_interface|Equal2~0_combout\,
	combout => \I_ads8330_interface|Equal2~1_combout\);

-- Location: LCCOMB_X49_Y31_N12
\I_ads8330_interface|Selector42~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_ads8330_interface|Selector42~0_combout\ = (\I_ads8330_interface|next_state.data_transfer~q\ & ((\I_ads8330_interface|Equal1~0_combout\) # ((!\I_ads8330_interface|Equal2~1_combout\ & \I_ads8330_interface|next_state.wait_state~q\)))) # 
-- (!\I_ads8330_interface|next_state.data_transfer~q\ & (!\I_ads8330_interface|Equal2~1_combout\ & (\I_ads8330_interface|next_state.wait_state~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I_ads8330_interface|next_state.data_transfer~q\,
	datab => \I_ads8330_interface|Equal2~1_combout\,
	datac => \I_ads8330_interface|next_state.wait_state~q\,
	datad => \I_ads8330_interface|Equal1~0_combout\,
	combout => \I_ads8330_interface|Selector42~0_combout\);

-- Location: FF_X49_Y31_N13
\I_ads8330_interface|next_state.wait_state\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKY2~inputclkctrl_outclk\,
	d => \I_ads8330_interface|Selector42~0_combout\,
	sclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_ads8330_interface|next_state.wait_state~q\);

-- Location: LCCOMB_X53_Y31_N6
\I_ads8330_interface|count_1[1]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_ads8330_interface|count_1[1]~12_combout\ = (\I_ads8330_interface|count_1\(5) & (!\I_ads8330_interface|count_1\(2) & ((!\I_ads8330_interface|next_state.wait_state~q\)))) # (!\I_ads8330_interface|count_1\(5) & (((\I_ads8330_interface|count_1\(3) & 
-- \I_ads8330_interface|next_state.wait_state~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I_ads8330_interface|count_1\(2),
	datab => \I_ads8330_interface|count_1\(3),
	datac => \I_ads8330_interface|count_1\(5),
	datad => \I_ads8330_interface|next_state.wait_state~q\,
	combout => \I_ads8330_interface|count_1[1]~12_combout\);

-- Location: LCCOMB_X53_Y31_N28
\I_ads8330_interface|count_1[1]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_ads8330_interface|count_1[1]~13_combout\ = (\I_ads8330_interface|count_1[1]~12_combout\ & ((\I_ads8330_interface|next_state.wait_state~q\ & (\I_ads8330_interface|Equal2~0_combout\)) # (!\I_ads8330_interface|next_state.wait_state~q\ & 
-- ((\I_ads8330_interface|Equal0~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I_ads8330_interface|next_state.wait_state~q\,
	datab => \I_ads8330_interface|Equal2~0_combout\,
	datac => \I_ads8330_interface|Equal0~0_combout\,
	datad => \I_ads8330_interface|count_1[1]~12_combout\,
	combout => \I_ads8330_interface|count_1[1]~13_combout\);

-- Location: LCCOMB_X53_Y31_N10
\I_ads8330_interface|count_1[1]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_ads8330_interface|count_1[1]~14_combout\ = (\I_ads8330_interface|count_1[1]~11_combout\) # ((\I_ads8330_interface|next_state.issue_convst~q\ & (\I_ads8330_interface|Equal0~1_combout\)) # (!\I_ads8330_interface|next_state.issue_convst~q\ & 
-- ((\I_ads8330_interface|count_1[1]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I_ads8330_interface|Equal0~1_combout\,
	datab => \I_ads8330_interface|next_state.issue_convst~q\,
	datac => \I_ads8330_interface|count_1[1]~11_combout\,
	datad => \I_ads8330_interface|count_1[1]~13_combout\,
	combout => \I_ads8330_interface|count_1[1]~14_combout\);

-- Location: FF_X53_Y31_N13
\I_ads8330_interface|count_1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKY2~inputclkctrl_outclk\,
	d => \I_ads8330_interface|count_1[0]~7_combout\,
	sclr => \I_ads8330_interface|count_1[1]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_ads8330_interface|count_1\(0));

-- Location: LCCOMB_X53_Y31_N14
\I_ads8330_interface|count_1[1]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_ads8330_interface|count_1[1]~9_combout\ = (\I_ads8330_interface|count_1\(1) & (!\I_ads8330_interface|count_1[0]~8\)) # (!\I_ads8330_interface|count_1\(1) & ((\I_ads8330_interface|count_1[0]~8\) # (GND)))
-- \I_ads8330_interface|count_1[1]~10\ = CARRY((!\I_ads8330_interface|count_1[0]~8\) # (!\I_ads8330_interface|count_1\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \I_ads8330_interface|count_1\(1),
	datad => VCC,
	cin => \I_ads8330_interface|count_1[0]~8\,
	combout => \I_ads8330_interface|count_1[1]~9_combout\,
	cout => \I_ads8330_interface|count_1[1]~10\);

-- Location: FF_X53_Y31_N15
\I_ads8330_interface|count_1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKY2~inputclkctrl_outclk\,
	d => \I_ads8330_interface|count_1[1]~9_combout\,
	sclr => \I_ads8330_interface|count_1[1]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_ads8330_interface|count_1\(1));

-- Location: FF_X53_Y31_N17
\I_ads8330_interface|count_1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKY2~inputclkctrl_outclk\,
	d => \I_ads8330_interface|count_1[2]~15_combout\,
	sclr => \I_ads8330_interface|count_1[1]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_ads8330_interface|count_1\(2));

-- Location: LCCOMB_X53_Y31_N26
\I_ads8330_interface|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_ads8330_interface|Equal0~1_combout\ = (\I_ads8330_interface|count_1\(2) & (!\I_ads8330_interface|count_1\(5) & \I_ads8330_interface|Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \I_ads8330_interface|count_1\(2),
	datac => \I_ads8330_interface|count_1\(5),
	datad => \I_ads8330_interface|Equal0~0_combout\,
	combout => \I_ads8330_interface|Equal0~1_combout\);

-- Location: LCCOMB_X53_Y31_N2
\I_ads8330_interface|Selector39~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_ads8330_interface|Selector39~0_combout\ = (\I_ads8330_interface|next_state.wait_state~q\ & (\I_ads8330_interface|Equal2~0_combout\ & (!\I_ads8330_interface|count_1\(5) & \I_ads8330_interface|count_1\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I_ads8330_interface|next_state.wait_state~q\,
	datab => \I_ads8330_interface|Equal2~0_combout\,
	datac => \I_ads8330_interface|count_1\(5),
	datad => \I_ads8330_interface|count_1\(3),
	combout => \I_ads8330_interface|Selector39~0_combout\);

-- Location: LCCOMB_X54_Y31_N16
\I_ads8330_interface|Selector40~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_ads8330_interface|Selector40~0_combout\ = ((\I_ads8330_interface|Selector39~0_combout\) # ((!\I_ads8330_interface|Equal0~1_combout\ & \I_ads8330_interface|next_state.issue_convst~q\))) # (!\I_ads8330_interface|next_state.idle~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I_ads8330_interface|Equal0~1_combout\,
	datab => \I_ads8330_interface|next_state.idle~q\,
	datac => \I_ads8330_interface|next_state.issue_convst~q\,
	datad => \I_ads8330_interface|Selector39~0_combout\,
	combout => \I_ads8330_interface|Selector40~0_combout\);

-- Location: FF_X54_Y31_N17
\I_ads8330_interface|next_state.issue_convst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKY2~inputclkctrl_outclk\,
	d => \I_ads8330_interface|Selector40~0_combout\,
	sclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_ads8330_interface|next_state.issue_convst~q\);

-- Location: LCCOMB_X49_Y31_N22
\I_ads8330_interface|next_state~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_ads8330_interface|next_state~7_combout\ = ((\sw_0_deb~q\) # (!\I_ads8330_interface|next_state.issue_convst~q\)) # (!\I_power_on_reset|reset_t~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I_power_on_reset|reset_t~q\,
	datac => \sw_0_deb~q\,
	datad => \I_ads8330_interface|next_state.issue_convst~q\,
	combout => \I_ads8330_interface|next_state~7_combout\);

-- Location: FF_X49_Y31_N23
\I_ads8330_interface|convst_n_t\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKY2~inputclkctrl_outclk\,
	d => \I_ads8330_interface|next_state~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_ads8330_interface|convst_n_t~q\);

-- Location: LCCOMB_X49_Y31_N8
\I_ads8330_interface|sclk_t~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_ads8330_interface|sclk_t~1_combout\ = (!\I_ads8330_interface|sclk_t~q\ & \I_ads8330_interface|next_state.data_transfer~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \I_ads8330_interface|sclk_t~q\,
	datad => \I_ads8330_interface|next_state.data_transfer~q\,
	combout => \I_ads8330_interface|sclk_t~1_combout\);

-- Location: FF_X49_Y31_N9
\I_ads8330_interface|sclk_t\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKY2~inputclkctrl_outclk\,
	d => \I_ads8330_interface|sclk_t~1_combout\,
	sclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_ads8330_interface|sclk_t~q\);

-- Location: LCCOMB_X49_Y31_N20
\I_ads8330_interface|cs_n_t~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_ads8330_interface|cs_n_t~1_combout\ = (\sw_0_deb~q\) # (((!\I_ads8330_interface|next_state.data_transfer~q\ & !\I_ads8330_interface|next_state.issue_cs~q\)) # (!\I_power_on_reset|reset_t~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I_ads8330_interface|next_state.data_transfer~q\,
	datab => \I_ads8330_interface|next_state.issue_cs~q\,
	datac => \sw_0_deb~q\,
	datad => \I_power_on_reset|reset_t~q\,
	combout => \I_ads8330_interface|cs_n_t~1_combout\);

-- Location: FF_X49_Y31_N21
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

-- Location: LCCOMB_X48_Y31_N0
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

-- Location: LCCOMB_X48_Y31_N12
\I_ads8330_interface|count_2[0]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_ads8330_interface|count_2[0]~15_combout\ = ((\sw_0_deb~q\) # (!\I_power_on_reset|reset_t~q\)) # (!\I_ads8330_interface|next_state.data_transfer~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I_ads8330_interface|next_state.data_transfer~q\,
	datac => \I_power_on_reset|reset_t~q\,
	datad => \sw_0_deb~q\,
	combout => \I_ads8330_interface|count_2[0]~15_combout\);

-- Location: LCCOMB_X48_Y31_N18
\I_ads8330_interface|count_2[0]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_ads8330_interface|count_2[0]~16_combout\ = (((\sw_0_deb~q\) # (!\I_power_on_reset|reset_t~q\)) # (!\I_ads8330_interface|sclk_t~q\)) # (!\I_ads8330_interface|next_state.data_transfer~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I_ads8330_interface|next_state.data_transfer~q\,
	datab => \I_ads8330_interface|sclk_t~q\,
	datac => \I_power_on_reset|reset_t~q\,
	datad => \sw_0_deb~q\,
	combout => \I_ads8330_interface|count_2[0]~16_combout\);

-- Location: FF_X48_Y31_N1
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
	sload => \I_ads8330_interface|count_2[0]~15_combout\,
	ena => \I_ads8330_interface|count_2[0]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_ads8330_interface|count_2\(0));

-- Location: LCCOMB_X48_Y31_N2
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

-- Location: LCCOMB_X49_Y33_N30
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

-- Location: FF_X48_Y31_N3
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
	sload => \I_ads8330_interface|count_2[0]~15_combout\,
	ena => \I_ads8330_interface|count_2[0]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_ads8330_interface|count_2\(1));

-- Location: LCCOMB_X48_Y31_N4
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

-- Location: FF_X48_Y31_N5
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
	sload => \I_ads8330_interface|count_2[0]~15_combout\,
	ena => \I_ads8330_interface|count_2[0]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_ads8330_interface|count_2\(2));

-- Location: LCCOMB_X48_Y31_N6
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

-- Location: FF_X48_Y31_N7
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
	sload => \I_ads8330_interface|count_2[0]~15_combout\,
	ena => \I_ads8330_interface|count_2[0]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_ads8330_interface|count_2\(3));

-- Location: LCCOMB_X48_Y31_N26
\I_ads8330_interface|sdi_t~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_ads8330_interface|sdi_t~0_combout\ = (\I_ads8330_interface|count_2\(3) & (\I_ads8330_interface|count_2\(1) & (\I_ads8330_interface|count_2\(2) & !\I_ads8330_interface|count_2\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I_ads8330_interface|count_2\(3),
	datab => \I_ads8330_interface|count_2\(1),
	datac => \I_ads8330_interface|count_2\(2),
	datad => \I_ads8330_interface|count_2\(0),
	combout => \I_ads8330_interface|sdi_t~0_combout\);

-- Location: LCCOMB_X48_Y31_N8
\I_ads8330_interface|count_2[4]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_ads8330_interface|count_2[4]~13_combout\ = \I_ads8330_interface|count_2\(4) $ (\I_ads8330_interface|count_2[3]~12\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \I_ads8330_interface|count_2\(4),
	cin => \I_ads8330_interface|count_2[3]~12\,
	combout => \I_ads8330_interface|count_2[4]~13_combout\);

-- Location: FF_X48_Y31_N9
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
	sload => \I_ads8330_interface|count_2[0]~15_combout\,
	ena => \I_ads8330_interface|count_2[0]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_ads8330_interface|count_2\(4));

-- Location: LCCOMB_X48_Y33_N4
\I_ads8330_interface|sdi_t~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_ads8330_interface|sdi_t~1_combout\ = (\I_ads8330_interface|sclk_t~q\ & (((\I_ads8330_interface|sdi_t~q\)))) # (!\I_ads8330_interface|sclk_t~q\ & ((\I_ads8330_interface|sdi_t~0_combout\) # ((\I_ads8330_interface|count_2\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I_ads8330_interface|sdi_t~0_combout\,
	datab => \I_ads8330_interface|sclk_t~q\,
	datac => \I_ads8330_interface|sdi_t~q\,
	datad => \I_ads8330_interface|count_2\(4),
	combout => \I_ads8330_interface|sdi_t~1_combout\);

-- Location: FF_X48_Y33_N5
\I_ads8330_interface|sdi_t\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKY2~inputclkctrl_outclk\,
	d => \I_ads8330_interface|sdi_t~1_combout\,
	asdata => \~GND~combout\,
	sclr => \reset~combout\,
	sload => \I_ads8330_interface|ALT_INV_next_state.data_transfer~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_ads8330_interface|sdi_t~q\);

-- Location: LCCOMB_X48_Y29_N2
\I_ad5441_interface_1|Add2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_ad5441_interface_1|Add2~0_combout\ = \I_ad5441_interface_1|count_1\(0) $ (VCC)
-- \I_ad5441_interface_1|Add2~1\ = CARRY(\I_ad5441_interface_1|count_1\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \I_ad5441_interface_1|count_1\(0),
	datad => VCC,
	combout => \I_ad5441_interface_1|Add2~0_combout\,
	cout => \I_ad5441_interface_1|Add2~1\);

-- Location: LCCOMB_X48_Y29_N16
\I_ad5441_interface_1|Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_ad5441_interface_1|Equal2~0_combout\ = (!\I_ad5441_interface_1|count_1\(5) & (!\I_ad5441_interface_1|count_1\(3) & !\I_ad5441_interface_1|count_1\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I_ad5441_interface_1|count_1\(5),
	datac => \I_ad5441_interface_1|count_1\(3),
	datad => \I_ad5441_interface_1|count_1\(4),
	combout => \I_ad5441_interface_1|Equal2~0_combout\);

-- Location: LCCOMB_X49_Y29_N2
\I_ad5441_interface_1|Equal3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_ad5441_interface_1|Equal3~0_combout\ = (!\I_ad5441_interface_1|count_1\(0) & \I_ad5441_interface_1|count_1\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \I_ad5441_interface_1|count_1\(0),
	datad => \I_ad5441_interface_1|count_1\(2),
	combout => \I_ad5441_interface_1|Equal3~0_combout\);

-- Location: LCCOMB_X49_Y29_N6
\I_ad5441_interface_1|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_ad5441_interface_1|Equal1~0_combout\ = (\I_ad5441_interface_1|count_1\(6) & (\I_ad5441_interface_1|count_1\(1) & (\I_ad5441_interface_1|Equal2~0_combout\ & \I_ad5441_interface_1|Equal3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I_ad5441_interface_1|count_1\(6),
	datab => \I_ad5441_interface_1|count_1\(1),
	datac => \I_ad5441_interface_1|Equal2~0_combout\,
	datad => \I_ad5441_interface_1|Equal3~0_combout\,
	combout => \I_ad5441_interface_1|Equal1~0_combout\);

-- Location: LCCOMB_X48_Y29_N18
\I_ad5441_interface_1|Selector20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_ad5441_interface_1|Selector20~0_combout\ = (\I_ad5441_interface_1|next_state.data_transfer~q\ & !\I_ad5441_interface_1|Equal1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \I_ad5441_interface_1|next_state.data_transfer~q\,
	datad => \I_ad5441_interface_1|Equal1~0_combout\,
	combout => \I_ad5441_interface_1|Selector20~0_combout\);

-- Location: LCCOMB_X48_Y29_N0
\I_ad5441_interface_1|Selector18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_ad5441_interface_1|Selector18~0_combout\ = (\I_ad5441_interface_1|Add2~0_combout\ & ((\I_ad5441_interface_1|Selector20~0_combout\) # ((!\I_ad5441_interface_1|Equal3~1_combout\ & \I_ad5441_interface_1|next_state.issue_ld~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I_ad5441_interface_1|Add2~0_combout\,
	datab => \I_ad5441_interface_1|Equal3~1_combout\,
	datac => \I_ad5441_interface_1|next_state.issue_ld~q\,
	datad => \I_ad5441_interface_1|Selector20~0_combout\,
	combout => \I_ad5441_interface_1|Selector18~0_combout\);

-- Location: FF_X48_Y29_N1
\I_ad5441_interface_1|count_1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKY2~inputclkctrl_outclk\,
	d => \I_ad5441_interface_1|Selector18~0_combout\,
	sclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_ad5441_interface_1|count_1\(0));

-- Location: LCCOMB_X48_Y29_N4
\I_ad5441_interface_1|Add2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_ad5441_interface_1|Add2~2_combout\ = (\I_ad5441_interface_1|count_1\(1) & (!\I_ad5441_interface_1|Add2~1\)) # (!\I_ad5441_interface_1|count_1\(1) & ((\I_ad5441_interface_1|Add2~1\) # (GND)))
-- \I_ad5441_interface_1|Add2~3\ = CARRY((!\I_ad5441_interface_1|Add2~1\) # (!\I_ad5441_interface_1|count_1\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \I_ad5441_interface_1|count_1\(1),
	datad => VCC,
	cin => \I_ad5441_interface_1|Add2~1\,
	combout => \I_ad5441_interface_1|Add2~2_combout\,
	cout => \I_ad5441_interface_1|Add2~3\);

-- Location: LCCOMB_X48_Y29_N22
\I_ad5441_interface_1|Selector17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_ad5441_interface_1|Selector17~0_combout\ = (\I_ad5441_interface_1|Add2~2_combout\ & ((\I_ad5441_interface_1|next_state.issue_ld~q\) # ((\I_ad5441_interface_1|next_state.data_transfer~q\ & !\I_ad5441_interface_1|Equal1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I_ad5441_interface_1|next_state.data_transfer~q\,
	datab => \I_ad5441_interface_1|Add2~2_combout\,
	datac => \I_ad5441_interface_1|next_state.issue_ld~q\,
	datad => \I_ad5441_interface_1|Equal1~0_combout\,
	combout => \I_ad5441_interface_1|Selector17~0_combout\);

-- Location: FF_X48_Y29_N23
\I_ad5441_interface_1|count_1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKY2~inputclkctrl_outclk\,
	d => \I_ad5441_interface_1|Selector17~0_combout\,
	sclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_ad5441_interface_1|count_1\(1));

-- Location: LCCOMB_X48_Y29_N6
\I_ad5441_interface_1|Add2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_ad5441_interface_1|Add2~4_combout\ = (\I_ad5441_interface_1|count_1\(2) & (\I_ad5441_interface_1|Add2~3\ $ (GND))) # (!\I_ad5441_interface_1|count_1\(2) & (!\I_ad5441_interface_1|Add2~3\ & VCC))
-- \I_ad5441_interface_1|Add2~5\ = CARRY((\I_ad5441_interface_1|count_1\(2) & !\I_ad5441_interface_1|Add2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \I_ad5441_interface_1|count_1\(2),
	datad => VCC,
	cin => \I_ad5441_interface_1|Add2~3\,
	combout => \I_ad5441_interface_1|Add2~4_combout\,
	cout => \I_ad5441_interface_1|Add2~5\);

-- Location: LCCOMB_X48_Y29_N24
\I_ad5441_interface_1|Selector16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_ad5441_interface_1|Selector16~0_combout\ = (\I_ad5441_interface_1|Add2~4_combout\ & ((\I_ad5441_interface_1|Selector20~0_combout\) # ((!\I_ad5441_interface_1|Equal3~1_combout\ & \I_ad5441_interface_1|next_state.issue_ld~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I_ad5441_interface_1|Add2~4_combout\,
	datab => \I_ad5441_interface_1|Equal3~1_combout\,
	datac => \I_ad5441_interface_1|next_state.issue_ld~q\,
	datad => \I_ad5441_interface_1|Selector20~0_combout\,
	combout => \I_ad5441_interface_1|Selector16~0_combout\);

-- Location: FF_X48_Y29_N25
\I_ad5441_interface_1|count_1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKY2~inputclkctrl_outclk\,
	d => \I_ad5441_interface_1|Selector16~0_combout\,
	sclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_ad5441_interface_1|count_1\(2));

-- Location: LCCOMB_X48_Y29_N8
\I_ad5441_interface_1|Add2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_ad5441_interface_1|Add2~6_combout\ = (\I_ad5441_interface_1|count_1\(3) & (!\I_ad5441_interface_1|Add2~5\)) # (!\I_ad5441_interface_1|count_1\(3) & ((\I_ad5441_interface_1|Add2~5\) # (GND)))
-- \I_ad5441_interface_1|Add2~7\ = CARRY((!\I_ad5441_interface_1|Add2~5\) # (!\I_ad5441_interface_1|count_1\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \I_ad5441_interface_1|count_1\(3),
	datad => VCC,
	cin => \I_ad5441_interface_1|Add2~5\,
	combout => \I_ad5441_interface_1|Add2~6_combout\,
	cout => \I_ad5441_interface_1|Add2~7\);

-- Location: LCCOMB_X48_Y29_N30
\I_ad5441_interface_1|Selector15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_ad5441_interface_1|Selector15~0_combout\ = (\I_ad5441_interface_1|next_state.idle~q\ & \I_ad5441_interface_1|Add2~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \I_ad5441_interface_1|next_state.idle~q\,
	datac => \I_ad5441_interface_1|Add2~6_combout\,
	combout => \I_ad5441_interface_1|Selector15~0_combout\);

-- Location: FF_X48_Y29_N31
\I_ad5441_interface_1|count_1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKY2~inputclkctrl_outclk\,
	d => \I_ad5441_interface_1|Selector15~0_combout\,
	sclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_ad5441_interface_1|count_1\(3));

-- Location: LCCOMB_X48_Y29_N10
\I_ad5441_interface_1|Add2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_ad5441_interface_1|Add2~8_combout\ = (\I_ad5441_interface_1|count_1\(4) & (\I_ad5441_interface_1|Add2~7\ $ (GND))) # (!\I_ad5441_interface_1|count_1\(4) & (!\I_ad5441_interface_1|Add2~7\ & VCC))
-- \I_ad5441_interface_1|Add2~9\ = CARRY((\I_ad5441_interface_1|count_1\(4) & !\I_ad5441_interface_1|Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \I_ad5441_interface_1|count_1\(4),
	datad => VCC,
	cin => \I_ad5441_interface_1|Add2~7\,
	combout => \I_ad5441_interface_1|Add2~8_combout\,
	cout => \I_ad5441_interface_1|Add2~9\);

-- Location: LCCOMB_X48_Y29_N28
\I_ad5441_interface_1|Selector14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_ad5441_interface_1|Selector14~0_combout\ = (\I_ad5441_interface_1|next_state.idle~q\ & \I_ad5441_interface_1|Add2~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \I_ad5441_interface_1|next_state.idle~q\,
	datad => \I_ad5441_interface_1|Add2~8_combout\,
	combout => \I_ad5441_interface_1|Selector14~0_combout\);

-- Location: FF_X48_Y29_N29
\I_ad5441_interface_1|count_1[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKY2~inputclkctrl_outclk\,
	d => \I_ad5441_interface_1|Selector14~0_combout\,
	sclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_ad5441_interface_1|count_1\(4));

-- Location: LCCOMB_X48_Y29_N12
\I_ad5441_interface_1|Add2~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_ad5441_interface_1|Add2~10_combout\ = (\I_ad5441_interface_1|count_1\(5) & (!\I_ad5441_interface_1|Add2~9\)) # (!\I_ad5441_interface_1|count_1\(5) & ((\I_ad5441_interface_1|Add2~9\) # (GND)))
-- \I_ad5441_interface_1|Add2~11\ = CARRY((!\I_ad5441_interface_1|Add2~9\) # (!\I_ad5441_interface_1|count_1\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \I_ad5441_interface_1|count_1\(5),
	datad => VCC,
	cin => \I_ad5441_interface_1|Add2~9\,
	combout => \I_ad5441_interface_1|Add2~10_combout\,
	cout => \I_ad5441_interface_1|Add2~11\);

-- Location: LCCOMB_X48_Y29_N26
\I_ad5441_interface_1|Selector13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_ad5441_interface_1|Selector13~0_combout\ = (\I_ad5441_interface_1|next_state.idle~q\ & \I_ad5441_interface_1|Add2~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \I_ad5441_interface_1|next_state.idle~q\,
	datad => \I_ad5441_interface_1|Add2~10_combout\,
	combout => \I_ad5441_interface_1|Selector13~0_combout\);

-- Location: FF_X48_Y29_N27
\I_ad5441_interface_1|count_1[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKY2~inputclkctrl_outclk\,
	d => \I_ad5441_interface_1|Selector13~0_combout\,
	sclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_ad5441_interface_1|count_1\(5));

-- Location: LCCOMB_X48_Y29_N14
\I_ad5441_interface_1|Add2~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_ad5441_interface_1|Add2~12_combout\ = \I_ad5441_interface_1|Add2~11\ $ (!\I_ad5441_interface_1|count_1\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \I_ad5441_interface_1|count_1\(6),
	cin => \I_ad5441_interface_1|Add2~11\,
	combout => \I_ad5441_interface_1|Add2~12_combout\);

-- Location: LCCOMB_X48_Y29_N20
\I_ad5441_interface_1|Selector12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_ad5441_interface_1|Selector12~0_combout\ = (\I_ad5441_interface_1|Add2~12_combout\ & ((\I_ad5441_interface_1|next_state.issue_ld~q\) # ((\I_ad5441_interface_1|next_state.data_transfer~q\ & !\I_ad5441_interface_1|Equal1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I_ad5441_interface_1|next_state.data_transfer~q\,
	datab => \I_ad5441_interface_1|next_state.issue_ld~q\,
	datac => \I_ad5441_interface_1|Add2~12_combout\,
	datad => \I_ad5441_interface_1|Equal1~0_combout\,
	combout => \I_ad5441_interface_1|Selector12~0_combout\);

-- Location: FF_X48_Y29_N21
\I_ad5441_interface_1|count_1[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKY2~inputclkctrl_outclk\,
	d => \I_ad5441_interface_1|Selector12~0_combout\,
	sclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_ad5441_interface_1|count_1\(6));

-- Location: LCCOMB_X49_Y29_N8
\I_ad5441_interface_1|Equal3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_ad5441_interface_1|Equal3~1_combout\ = (!\I_ad5441_interface_1|count_1\(6) & (!\I_ad5441_interface_1|count_1\(1) & (\I_ad5441_interface_1|Equal2~0_combout\ & \I_ad5441_interface_1|Equal3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I_ad5441_interface_1|count_1\(6),
	datab => \I_ad5441_interface_1|count_1\(1),
	datac => \I_ad5441_interface_1|Equal2~0_combout\,
	datad => \I_ad5441_interface_1|Equal3~0_combout\,
	combout => \I_ad5441_interface_1|Equal3~1_combout\);

-- Location: LCCOMB_X49_Y29_N0
\I_ad5441_interface_1|next_state~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_ad5441_interface_1|next_state~7_combout\ = (!\sw_0_deb~q\ & (\I_power_on_reset|reset_t~q\ & ((!\I_ad5441_interface_1|Equal3~1_combout\) # (!\I_ad5441_interface_1|next_state.issue_ld~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I_ad5441_interface_1|next_state.issue_ld~q\,
	datab => \sw_0_deb~q\,
	datac => \I_ad5441_interface_1|Equal3~1_combout\,
	datad => \I_power_on_reset|reset_t~q\,
	combout => \I_ad5441_interface_1|next_state~7_combout\);

-- Location: FF_X49_Y29_N1
\I_ad5441_interface_1|next_state.idle\ : dffeas
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
	q => \I_ad5441_interface_1|next_state.idle~q\);

-- Location: LCCOMB_X49_Y30_N24
\I_ad5441_interface_1|Selector20~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_ad5441_interface_1|Selector20~1_combout\ = ((\I_ad5441_interface_1|next_state.data_transfer~q\ & !\I_ad5441_interface_1|Equal1~0_combout\)) # (!\I_ad5441_interface_1|next_state.idle~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \I_ad5441_interface_1|next_state.idle~q\,
	datac => \I_ad5441_interface_1|next_state.data_transfer~q\,
	datad => \I_ad5441_interface_1|Equal1~0_combout\,
	combout => \I_ad5441_interface_1|Selector20~1_combout\);

-- Location: FF_X49_Y30_N25
\I_ad5441_interface_1|next_state.data_transfer\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKY2~inputclkctrl_outclk\,
	d => \I_ad5441_interface_1|Selector20~1_combout\,
	sclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_ad5441_interface_1|next_state.data_transfer~q\);

-- Location: LCCOMB_X50_Y29_N12
\I_ad5441_interface_1|Selector21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_ad5441_interface_1|Selector21~0_combout\ = (\I_ad5441_interface_1|next_state.data_transfer~q\ & ((\I_ad5441_interface_1|Equal1~0_combout\) # ((\I_ad5441_interface_1|next_state.issue_ld~q\ & !\I_ad5441_interface_1|Equal3~1_combout\)))) # 
-- (!\I_ad5441_interface_1|next_state.data_transfer~q\ & (((\I_ad5441_interface_1|next_state.issue_ld~q\ & !\I_ad5441_interface_1|Equal3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I_ad5441_interface_1|next_state.data_transfer~q\,
	datab => \I_ad5441_interface_1|Equal1~0_combout\,
	datac => \I_ad5441_interface_1|next_state.issue_ld~q\,
	datad => \I_ad5441_interface_1|Equal3~1_combout\,
	combout => \I_ad5441_interface_1|Selector21~0_combout\);

-- Location: FF_X50_Y29_N13
\I_ad5441_interface_1|next_state.issue_ld\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKY2~inputclkctrl_outclk\,
	d => \I_ad5441_interface_1|Selector21~0_combout\,
	sclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_ad5441_interface_1|next_state.issue_ld~q\);

-- Location: LCCOMB_X49_Y29_N10
\I_ad5441_interface_1|Equal2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_ad5441_interface_1|Equal2~1_combout\ = (\I_ad5441_interface_1|count_1\(0) & !\I_ad5441_interface_1|count_1\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \I_ad5441_interface_1|count_1\(0),
	datad => \I_ad5441_interface_1|count_1\(2),
	combout => \I_ad5441_interface_1|Equal2~1_combout\);

-- Location: LCCOMB_X49_Y29_N28
\I_ad5441_interface_1|Equal2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_ad5441_interface_1|Equal2~2_combout\ = (\I_ad5441_interface_1|Equal2~1_combout\ & (!\I_ad5441_interface_1|count_1\(1) & (\I_ad5441_interface_1|Equal2~0_combout\ & !\I_ad5441_interface_1|count_1\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I_ad5441_interface_1|Equal2~1_combout\,
	datab => \I_ad5441_interface_1|count_1\(1),
	datac => \I_ad5441_interface_1|Equal2~0_combout\,
	datad => \I_ad5441_interface_1|count_1\(6),
	combout => \I_ad5441_interface_1|Equal2~2_combout\);

-- Location: LCCOMB_X49_Y29_N4
\I_ad5441_interface_1|dac_ld_n_t~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_ad5441_interface_1|dac_ld_n_t~1_combout\ = ((!\I_ad5441_interface_1|Equal2~2_combout\ & ((\I_ad5441_interface_1|Equal3~1_combout\) # (\I_ad5441_interface_1|dac_ld_n_t~q\)))) # (!\I_ad5441_interface_1|next_state.issue_ld~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I_ad5441_interface_1|next_state.issue_ld~q\,
	datab => \I_ad5441_interface_1|Equal3~1_combout\,
	datac => \I_ad5441_interface_1|dac_ld_n_t~q\,
	datad => \I_ad5441_interface_1|Equal2~2_combout\,
	combout => \I_ad5441_interface_1|dac_ld_n_t~1_combout\);

-- Location: FF_X49_Y29_N5
\I_ad5441_interface_1|dac_ld_n_t\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKY2~inputclkctrl_outclk\,
	d => \I_ad5441_interface_1|dac_ld_n_t~1_combout\,
	asdata => VCC,
	sload => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_ad5441_interface_1|dac_ld_n_t~q\);

-- Location: LCCOMB_X48_Y30_N12
\I_ad5441_interface_1|count_3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_ad5441_interface_1|count_3~1_combout\ = (\I_ad5441_interface_1|count_3\(1) & (\I_ad5441_interface_1|next_state.data_transfer~q\ & (!\I_ad5441_interface_1|count_3\(0) & !\reset~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I_ad5441_interface_1|count_3\(1),
	datab => \I_ad5441_interface_1|next_state.data_transfer~q\,
	datac => \I_ad5441_interface_1|count_3\(0),
	datad => \reset~combout\,
	combout => \I_ad5441_interface_1|count_3~1_combout\);

-- Location: FF_X48_Y30_N13
\I_ad5441_interface_1|count_3[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKY2~inputclkctrl_outclk\,
	d => \I_ad5441_interface_1|count_3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_ad5441_interface_1|count_3\(0));

-- Location: LCCOMB_X48_Y30_N22
\I_ad5441_interface_1|count_3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_ad5441_interface_1|count_3~0_combout\ = (\I_ad5441_interface_1|next_state.data_transfer~q\ & (!\reset~combout\ & (\I_ad5441_interface_1|count_3\(0) $ (!\I_ad5441_interface_1|count_3\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I_ad5441_interface_1|count_3\(0),
	datab => \I_ad5441_interface_1|next_state.data_transfer~q\,
	datac => \I_ad5441_interface_1|count_3\(1),
	datad => \reset~combout\,
	combout => \I_ad5441_interface_1|count_3~0_combout\);

-- Location: FF_X48_Y30_N23
\I_ad5441_interface_1|count_3[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKY2~inputclkctrl_outclk\,
	d => \I_ad5441_interface_1|count_3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_ad5441_interface_1|count_3\(1));

-- Location: LCCOMB_X50_Y30_N16
\I_ad5441_interface_1|dac_clk_t~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_ad5441_interface_1|dac_clk_t~1_combout\ = (\I_ad5441_interface_1|dac_clk_t~q\ $ (((!\I_ad5441_interface_1|count_3\(1) & !\I_ad5441_interface_1|count_3\(0))))) # (!\I_ad5441_interface_1|next_state.data_transfer~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I_ad5441_interface_1|count_3\(1),
	datab => \I_ad5441_interface_1|count_3\(0),
	datac => \I_ad5441_interface_1|dac_clk_t~q\,
	datad => \I_ad5441_interface_1|next_state.data_transfer~q\,
	combout => \I_ad5441_interface_1|dac_clk_t~1_combout\);

-- Location: FF_X50_Y30_N17
\I_ad5441_interface_1|dac_clk_t\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKY2~inputclkctrl_outclk\,
	d => \I_ad5441_interface_1|dac_clk_t~1_combout\,
	asdata => VCC,
	sload => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_ad5441_interface_1|dac_clk_t~q\);

-- Location: LCCOMB_X48_Y30_N20
\I_ad5441_interface_1|dac_sri_t~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_ad5441_interface_1|dac_sri_t~0_combout\ = (!\I_ad5441_interface_1|count_3\(0) & (!\I_ad5441_interface_1|count_3\(1) & \I_ad5441_interface_1|dac_clk_t~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I_ad5441_interface_1|count_3\(0),
	datac => \I_ad5441_interface_1|count_3\(1),
	datad => \I_ad5441_interface_1|dac_clk_t~q\,
	combout => \I_ad5441_interface_1|dac_sri_t~0_combout\);

-- Location: LCCOMB_X48_Y30_N16
\I_ad5441_interface_1|count_2~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_ad5441_interface_1|count_2~7_combout\ = (!\sw_0_deb~q\ & (\I_power_on_reset|reset_t~q\ & (!\I_ad5441_interface_1|count_2\(0) & \I_ad5441_interface_1|next_state.data_transfer~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw_0_deb~q\,
	datab => \I_power_on_reset|reset_t~q\,
	datac => \I_ad5441_interface_1|count_2\(0),
	datad => \I_ad5441_interface_1|next_state.data_transfer~q\,
	combout => \I_ad5441_interface_1|count_2~7_combout\);

-- Location: LCCOMB_X48_Y30_N26
\I_ad5441_interface_1|count_2[0]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_ad5441_interface_1|count_2[0]~9_combout\ = (\sw_0_deb~q\) # (((\I_ad5441_interface_1|dac_sri_t~0_combout\) # (!\I_power_on_reset|reset_t~q\)) # (!\I_ad5441_interface_1|next_state.data_transfer~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw_0_deb~q\,
	datab => \I_ad5441_interface_1|next_state.data_transfer~q\,
	datac => \I_power_on_reset|reset_t~q\,
	datad => \I_ad5441_interface_1|dac_sri_t~0_combout\,
	combout => \I_ad5441_interface_1|count_2[0]~9_combout\);

-- Location: FF_X48_Y30_N17
\I_ad5441_interface_1|count_2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKY2~inputclkctrl_outclk\,
	d => \I_ad5441_interface_1|count_2~7_combout\,
	ena => \I_ad5441_interface_1|count_2[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_ad5441_interface_1|count_2\(0));

-- Location: LCCOMB_X48_Y30_N14
\I_ad5441_interface_1|count_2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_ad5441_interface_1|count_2~6_combout\ = (\I_ad5441_interface_1|next_state.data_transfer~q\ & (!\reset~combout\ & (\I_ad5441_interface_1|count_2\(0) $ (!\I_ad5441_interface_1|count_2\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I_ad5441_interface_1|count_2\(0),
	datab => \I_ad5441_interface_1|next_state.data_transfer~q\,
	datac => \I_ad5441_interface_1|count_2\(1),
	datad => \reset~combout\,
	combout => \I_ad5441_interface_1|count_2~6_combout\);

-- Location: FF_X48_Y30_N15
\I_ad5441_interface_1|count_2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKY2~inputclkctrl_outclk\,
	d => \I_ad5441_interface_1|count_2~6_combout\,
	ena => \I_ad5441_interface_1|count_2[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_ad5441_interface_1|count_2\(1));

-- Location: LCCOMB_X48_Y30_N2
\I_ad5441_interface_1|count_3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_ad5441_interface_1|count_3~2_combout\ = (!\sw_0_deb~q\ & (\I_power_on_reset|reset_t~q\ & \I_ad5441_interface_1|next_state.data_transfer~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw_0_deb~q\,
	datac => \I_power_on_reset|reset_t~q\,
	datad => \I_ad5441_interface_1|next_state.data_transfer~q\,
	combout => \I_ad5441_interface_1|count_3~2_combout\);

-- Location: LCCOMB_X48_Y30_N24
\I_ad5441_interface_1|count_2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_ad5441_interface_1|count_2~8_combout\ = (\I_ad5441_interface_1|count_2\(2) $ (((!\I_ad5441_interface_1|count_2\(1) & !\I_ad5441_interface_1|count_2\(0))))) # (!\I_ad5441_interface_1|count_3~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I_ad5441_interface_1|count_2\(1),
	datab => \I_ad5441_interface_1|count_2\(0),
	datac => \I_ad5441_interface_1|count_2\(2),
	datad => \I_ad5441_interface_1|count_3~2_combout\,
	combout => \I_ad5441_interface_1|count_2~8_combout\);

-- Location: FF_X48_Y30_N25
\I_ad5441_interface_1|count_2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKY2~inputclkctrl_outclk\,
	d => \I_ad5441_interface_1|count_2~8_combout\,
	ena => \I_ad5441_interface_1|count_2[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_ad5441_interface_1|count_2\(2));

-- Location: LCCOMB_X48_Y30_N28
\I_ad5441_interface_1|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_ad5441_interface_1|Add1~0_combout\ = \I_ad5441_interface_1|count_2\(3) $ (((\I_ad5441_interface_1|count_2\(1)) # ((\I_ad5441_interface_1|count_2\(0)) # (\I_ad5441_interface_1|count_2\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I_ad5441_interface_1|count_2\(3),
	datab => \I_ad5441_interface_1|count_2\(1),
	datac => \I_ad5441_interface_1|count_2\(0),
	datad => \I_ad5441_interface_1|count_2\(2),
	combout => \I_ad5441_interface_1|Add1~0_combout\);

-- Location: LCCOMB_X48_Y30_N30
\I_ad5441_interface_1|count_2~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_ad5441_interface_1|count_2~10_combout\ = (\sw_0_deb~q\) # (((!\I_ad5441_interface_1|Add1~0_combout\) # (!\I_power_on_reset|reset_t~q\)) # (!\I_ad5441_interface_1|next_state.data_transfer~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw_0_deb~q\,
	datab => \I_ad5441_interface_1|next_state.data_transfer~q\,
	datac => \I_power_on_reset|reset_t~q\,
	datad => \I_ad5441_interface_1|Add1~0_combout\,
	combout => \I_ad5441_interface_1|count_2~10_combout\);

-- Location: FF_X48_Y30_N31
\I_ad5441_interface_1|count_2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKY2~inputclkctrl_outclk\,
	d => \I_ad5441_interface_1|count_2~10_combout\,
	ena => \I_ad5441_interface_1|count_2[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_ad5441_interface_1|count_2\(3));

-- Location: LCCOMB_X53_Y31_N30
\I_ads8330_interface|Selector25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_ads8330_interface|Selector25~0_combout\ = (\I_ads8330_interface|next_state.wait_state~q\ & (!\I_ads8330_interface|Equal2~1_combout\)) # (!\I_ads8330_interface|next_state.wait_state~q\ & ((\I_ads8330_interface|next_state.idle~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I_ads8330_interface|next_state.wait_state~q\,
	datac => \I_ads8330_interface|Equal2~1_combout\,
	datad => \I_ads8330_interface|next_state.idle~q\,
	combout => \I_ads8330_interface|Selector25~0_combout\);

-- Location: LCCOMB_X49_Y31_N24
\I_ads8330_interface|Selector22~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_ads8330_interface|Selector22~1_combout\ = (\I_ads8330_interface|next_state.wait_state~q\) # ((!\I_ads8330_interface|sclk_t~q\ & \I_ads8330_interface|next_state.data_transfer~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I_ads8330_interface|next_state.wait_state~q\,
	datac => \I_ads8330_interface|sclk_t~q\,
	datad => \I_ads8330_interface|next_state.data_transfer~q\,
	combout => \I_ads8330_interface|Selector22~1_combout\);

-- Location: LCCOMB_X49_Y31_N26
\I_ads8330_interface|Selector22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_ads8330_interface|Selector22~0_combout\ = (\I_ads8330_interface|sclk_t~q\ & \I_ads8330_interface|next_state.data_transfer~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \I_ads8330_interface|sclk_t~q\,
	datad => \I_ads8330_interface|next_state.data_transfer~q\,
	combout => \I_ads8330_interface|Selector22~0_combout\);

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

-- Location: LCCOMB_X54_Y31_N20
\I_ads8330_interface|Selector22~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_ads8330_interface|Selector22~2_combout\ = (\I_ads8330_interface|Selector22~0_combout\ & ((\AD_SDO~input_o\) # ((\I_ads8330_interface|Selector22~1_combout\ & \I_ads8330_interface|adc_data_t\(0))))) # (!\I_ads8330_interface|Selector22~0_combout\ & 
-- (\I_ads8330_interface|Selector22~1_combout\ & (\I_ads8330_interface|adc_data_t\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I_ads8330_interface|Selector22~0_combout\,
	datab => \I_ads8330_interface|Selector22~1_combout\,
	datac => \I_ads8330_interface|adc_data_t\(0),
	datad => \AD_SDO~input_o\,
	combout => \I_ads8330_interface|Selector22~2_combout\);

-- Location: FF_X54_Y31_N21
\I_ads8330_interface|adc_data_t[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKY2~inputclkctrl_outclk\,
	d => \I_ads8330_interface|Selector22~2_combout\,
	sclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_ads8330_interface|adc_data_t\(0));

-- Location: LCCOMB_X54_Y31_N6
\I_ads8330_interface|Selector21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_ads8330_interface|Selector21~0_combout\ = (\I_ads8330_interface|Selector22~0_combout\ & ((\I_ads8330_interface|adc_data_t\(0)) # ((\I_ads8330_interface|adc_data_t\(1) & \I_ads8330_interface|Selector22~1_combout\)))) # 
-- (!\I_ads8330_interface|Selector22~0_combout\ & (((\I_ads8330_interface|adc_data_t\(1) & \I_ads8330_interface|Selector22~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I_ads8330_interface|Selector22~0_combout\,
	datab => \I_ads8330_interface|adc_data_t\(0),
	datac => \I_ads8330_interface|adc_data_t\(1),
	datad => \I_ads8330_interface|Selector22~1_combout\,
	combout => \I_ads8330_interface|Selector21~0_combout\);

-- Location: FF_X54_Y31_N7
\I_ads8330_interface|adc_data_t[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKY2~inputclkctrl_outclk\,
	d => \I_ads8330_interface|Selector21~0_combout\,
	sclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_ads8330_interface|adc_data_t\(1));

-- Location: LCCOMB_X54_Y31_N24
\I_ads8330_interface|Selector20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_ads8330_interface|Selector20~0_combout\ = (\I_ads8330_interface|Selector22~0_combout\ & ((\I_ads8330_interface|adc_data_t\(1)) # ((\I_ads8330_interface|Selector22~1_combout\ & \I_ads8330_interface|adc_data_t\(2))))) # 
-- (!\I_ads8330_interface|Selector22~0_combout\ & (\I_ads8330_interface|Selector22~1_combout\ & (\I_ads8330_interface|adc_data_t\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I_ads8330_interface|Selector22~0_combout\,
	datab => \I_ads8330_interface|Selector22~1_combout\,
	datac => \I_ads8330_interface|adc_data_t\(2),
	datad => \I_ads8330_interface|adc_data_t\(1),
	combout => \I_ads8330_interface|Selector20~0_combout\);

-- Location: FF_X54_Y31_N25
\I_ads8330_interface|adc_data_t[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKY2~inputclkctrl_outclk\,
	d => \I_ads8330_interface|Selector20~0_combout\,
	sclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_ads8330_interface|adc_data_t\(2));

-- Location: LCCOMB_X54_Y31_N2
\I_ads8330_interface|Selector19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_ads8330_interface|Selector19~0_combout\ = (\I_ads8330_interface|Selector22~0_combout\ & ((\I_ads8330_interface|adc_data_t\(2)) # ((\I_ads8330_interface|adc_data_t\(3) & \I_ads8330_interface|Selector22~1_combout\)))) # 
-- (!\I_ads8330_interface|Selector22~0_combout\ & (((\I_ads8330_interface|adc_data_t\(3) & \I_ads8330_interface|Selector22~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I_ads8330_interface|Selector22~0_combout\,
	datab => \I_ads8330_interface|adc_data_t\(2),
	datac => \I_ads8330_interface|adc_data_t\(3),
	datad => \I_ads8330_interface|Selector22~1_combout\,
	combout => \I_ads8330_interface|Selector19~0_combout\);

-- Location: FF_X54_Y31_N3
\I_ads8330_interface|adc_data_t[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKY2~inputclkctrl_outclk\,
	d => \I_ads8330_interface|Selector19~0_combout\,
	sclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_ads8330_interface|adc_data_t\(3));

-- Location: LCCOMB_X54_Y31_N28
\I_ads8330_interface|Selector18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_ads8330_interface|Selector18~0_combout\ = (\I_ads8330_interface|Selector22~0_combout\ & ((\I_ads8330_interface|adc_data_t\(3)) # ((\I_ads8330_interface|adc_data_t\(4) & \I_ads8330_interface|Selector22~1_combout\)))) # 
-- (!\I_ads8330_interface|Selector22~0_combout\ & (((\I_ads8330_interface|adc_data_t\(4) & \I_ads8330_interface|Selector22~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I_ads8330_interface|Selector22~0_combout\,
	datab => \I_ads8330_interface|adc_data_t\(3),
	datac => \I_ads8330_interface|adc_data_t\(4),
	datad => \I_ads8330_interface|Selector22~1_combout\,
	combout => \I_ads8330_interface|Selector18~0_combout\);

-- Location: FF_X54_Y31_N29
\I_ads8330_interface|adc_data_t[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKY2~inputclkctrl_outclk\,
	d => \I_ads8330_interface|Selector18~0_combout\,
	sclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_ads8330_interface|adc_data_t\(4));

-- Location: LCCOMB_X54_Y31_N22
\I_ads8330_interface|Selector17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_ads8330_interface|Selector17~0_combout\ = (\I_ads8330_interface|Selector22~0_combout\ & ((\I_ads8330_interface|adc_data_t\(4)) # ((\I_ads8330_interface|adc_data_t\(5) & \I_ads8330_interface|Selector22~1_combout\)))) # 
-- (!\I_ads8330_interface|Selector22~0_combout\ & (((\I_ads8330_interface|adc_data_t\(5) & \I_ads8330_interface|Selector22~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I_ads8330_interface|Selector22~0_combout\,
	datab => \I_ads8330_interface|adc_data_t\(4),
	datac => \I_ads8330_interface|adc_data_t\(5),
	datad => \I_ads8330_interface|Selector22~1_combout\,
	combout => \I_ads8330_interface|Selector17~0_combout\);

-- Location: FF_X54_Y31_N23
\I_ads8330_interface|adc_data_t[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKY2~inputclkctrl_outclk\,
	d => \I_ads8330_interface|Selector17~0_combout\,
	sclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_ads8330_interface|adc_data_t\(5));

-- Location: LCCOMB_X52_Y31_N14
\I_ads8330_interface|Selector16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_ads8330_interface|Selector16~0_combout\ = (\I_ads8330_interface|Selector22~1_combout\ & ((\I_ads8330_interface|adc_data_t\(6)) # ((\I_ads8330_interface|adc_data_t\(5) & \I_ads8330_interface|Selector22~0_combout\)))) # 
-- (!\I_ads8330_interface|Selector22~1_combout\ & (\I_ads8330_interface|adc_data_t\(5) & ((\I_ads8330_interface|Selector22~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I_ads8330_interface|Selector22~1_combout\,
	datab => \I_ads8330_interface|adc_data_t\(5),
	datac => \I_ads8330_interface|adc_data_t\(6),
	datad => \I_ads8330_interface|Selector22~0_combout\,
	combout => \I_ads8330_interface|Selector16~0_combout\);

-- Location: FF_X52_Y31_N15
\I_ads8330_interface|adc_data_t[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKY2~inputclkctrl_outclk\,
	d => \I_ads8330_interface|Selector16~0_combout\,
	sclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_ads8330_interface|adc_data_t\(6));

-- Location: LCCOMB_X52_Y31_N12
\I_ads8330_interface|Selector15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_ads8330_interface|Selector15~0_combout\ = (\I_ads8330_interface|Selector22~1_combout\ & ((\I_ads8330_interface|adc_data_t\(7)) # ((\I_ads8330_interface|adc_data_t\(6) & \I_ads8330_interface|Selector22~0_combout\)))) # 
-- (!\I_ads8330_interface|Selector22~1_combout\ & (\I_ads8330_interface|adc_data_t\(6) & ((\I_ads8330_interface|Selector22~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I_ads8330_interface|Selector22~1_combout\,
	datab => \I_ads8330_interface|adc_data_t\(6),
	datac => \I_ads8330_interface|adc_data_t\(7),
	datad => \I_ads8330_interface|Selector22~0_combout\,
	combout => \I_ads8330_interface|Selector15~0_combout\);

-- Location: FF_X52_Y31_N13
\I_ads8330_interface|adc_data_t[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKY2~inputclkctrl_outclk\,
	d => \I_ads8330_interface|Selector15~0_combout\,
	sclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_ads8330_interface|adc_data_t\(7));

-- Location: LCCOMB_X52_Y31_N10
\I_ads8330_interface|Selector14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_ads8330_interface|Selector14~0_combout\ = (\I_ads8330_interface|Selector22~1_combout\ & ((\I_ads8330_interface|adc_data_t\(8)) # ((\I_ads8330_interface|adc_data_t\(7) & \I_ads8330_interface|Selector22~0_combout\)))) # 
-- (!\I_ads8330_interface|Selector22~1_combout\ & (\I_ads8330_interface|adc_data_t\(7) & ((\I_ads8330_interface|Selector22~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I_ads8330_interface|Selector22~1_combout\,
	datab => \I_ads8330_interface|adc_data_t\(7),
	datac => \I_ads8330_interface|adc_data_t\(8),
	datad => \I_ads8330_interface|Selector22~0_combout\,
	combout => \I_ads8330_interface|Selector14~0_combout\);

-- Location: FF_X52_Y31_N11
\I_ads8330_interface|adc_data_t[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKY2~inputclkctrl_outclk\,
	d => \I_ads8330_interface|Selector14~0_combout\,
	sclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_ads8330_interface|adc_data_t\(8));

-- Location: LCCOMB_X52_Y31_N28
\I_ads8330_interface|Selector13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_ads8330_interface|Selector13~0_combout\ = (\I_ads8330_interface|Selector22~1_combout\ & ((\I_ads8330_interface|adc_data_t\(9)) # ((\I_ads8330_interface|Selector22~0_combout\ & \I_ads8330_interface|adc_data_t\(8))))) # 
-- (!\I_ads8330_interface|Selector22~1_combout\ & (\I_ads8330_interface|Selector22~0_combout\ & ((\I_ads8330_interface|adc_data_t\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I_ads8330_interface|Selector22~1_combout\,
	datab => \I_ads8330_interface|Selector22~0_combout\,
	datac => \I_ads8330_interface|adc_data_t\(9),
	datad => \I_ads8330_interface|adc_data_t\(8),
	combout => \I_ads8330_interface|Selector13~0_combout\);

-- Location: FF_X52_Y31_N29
\I_ads8330_interface|adc_data_t[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKY2~inputclkctrl_outclk\,
	d => \I_ads8330_interface|Selector13~0_combout\,
	sclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_ads8330_interface|adc_data_t\(9));

-- Location: LCCOMB_X52_Y29_N6
\I_ads8330_interface|Selector12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_ads8330_interface|Selector12~0_combout\ = (\I_ads8330_interface|Selector22~1_combout\ & ((\I_ads8330_interface|adc_data_t\(10)) # ((\I_ads8330_interface|Selector22~0_combout\ & \I_ads8330_interface|adc_data_t\(9))))) # 
-- (!\I_ads8330_interface|Selector22~1_combout\ & (\I_ads8330_interface|Selector22~0_combout\ & ((\I_ads8330_interface|adc_data_t\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I_ads8330_interface|Selector22~1_combout\,
	datab => \I_ads8330_interface|Selector22~0_combout\,
	datac => \I_ads8330_interface|adc_data_t\(10),
	datad => \I_ads8330_interface|adc_data_t\(9),
	combout => \I_ads8330_interface|Selector12~0_combout\);

-- Location: FF_X52_Y29_N7
\I_ads8330_interface|adc_data_t[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKY2~inputclkctrl_outclk\,
	d => \I_ads8330_interface|Selector12~0_combout\,
	sclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_ads8330_interface|adc_data_t\(10));

-- Location: LCCOMB_X52_Y30_N18
\I_ads8330_interface|Selector11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_ads8330_interface|Selector11~0_combout\ = (\I_ads8330_interface|Selector22~0_combout\ & ((\I_ads8330_interface|adc_data_t\(10)) # ((\I_ads8330_interface|adc_data_t\(11) & \I_ads8330_interface|Selector22~1_combout\)))) # 
-- (!\I_ads8330_interface|Selector22~0_combout\ & (((\I_ads8330_interface|adc_data_t\(11) & \I_ads8330_interface|Selector22~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I_ads8330_interface|Selector22~0_combout\,
	datab => \I_ads8330_interface|adc_data_t\(10),
	datac => \I_ads8330_interface|adc_data_t\(11),
	datad => \I_ads8330_interface|Selector22~1_combout\,
	combout => \I_ads8330_interface|Selector11~0_combout\);

-- Location: FF_X52_Y30_N19
\I_ads8330_interface|adc_data_t[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKY2~inputclkctrl_outclk\,
	d => \I_ads8330_interface|Selector11~0_combout\,
	sclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_ads8330_interface|adc_data_t\(11));

-- Location: LCCOMB_X52_Y30_N24
\I_ads8330_interface|Selector10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_ads8330_interface|Selector10~0_combout\ = (\I_ads8330_interface|Selector22~0_combout\ & ((\I_ads8330_interface|adc_data_t\(11)) # ((\I_ads8330_interface|adc_data_t\(12) & \I_ads8330_interface|Selector22~1_combout\)))) # 
-- (!\I_ads8330_interface|Selector22~0_combout\ & (((\I_ads8330_interface|adc_data_t\(12) & \I_ads8330_interface|Selector22~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I_ads8330_interface|Selector22~0_combout\,
	datab => \I_ads8330_interface|adc_data_t\(11),
	datac => \I_ads8330_interface|adc_data_t\(12),
	datad => \I_ads8330_interface|Selector22~1_combout\,
	combout => \I_ads8330_interface|Selector10~0_combout\);

-- Location: FF_X52_Y30_N25
\I_ads8330_interface|adc_data_t[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKY2~inputclkctrl_outclk\,
	d => \I_ads8330_interface|Selector10~0_combout\,
	sclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_ads8330_interface|adc_data_t\(12));

-- Location: LCCOMB_X52_Y30_N26
\I_ads8330_interface|Selector9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_ads8330_interface|Selector9~0_combout\ = (\I_ads8330_interface|Selector22~0_combout\ & ((\I_ads8330_interface|adc_data_t\(12)) # ((\I_ads8330_interface|adc_data_t\(13) & \I_ads8330_interface|Selector22~1_combout\)))) # 
-- (!\I_ads8330_interface|Selector22~0_combout\ & (((\I_ads8330_interface|adc_data_t\(13) & \I_ads8330_interface|Selector22~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I_ads8330_interface|Selector22~0_combout\,
	datab => \I_ads8330_interface|adc_data_t\(12),
	datac => \I_ads8330_interface|adc_data_t\(13),
	datad => \I_ads8330_interface|Selector22~1_combout\,
	combout => \I_ads8330_interface|Selector9~0_combout\);

-- Location: FF_X52_Y30_N27
\I_ads8330_interface|adc_data_t[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKY2~inputclkctrl_outclk\,
	d => \I_ads8330_interface|Selector9~0_combout\,
	sclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_ads8330_interface|adc_data_t\(13));

-- Location: LCCOMB_X52_Y31_N4
\I_ads8330_interface|Selector8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_ads8330_interface|Selector8~0_combout\ = (\I_ads8330_interface|Selector22~1_combout\ & ((\I_ads8330_interface|adc_data_t\(14)) # ((\I_ads8330_interface|adc_data_t\(13) & \I_ads8330_interface|Selector22~0_combout\)))) # 
-- (!\I_ads8330_interface|Selector22~1_combout\ & (\I_ads8330_interface|adc_data_t\(13) & ((\I_ads8330_interface|Selector22~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I_ads8330_interface|Selector22~1_combout\,
	datab => \I_ads8330_interface|adc_data_t\(13),
	datac => \I_ads8330_interface|adc_data_t\(14),
	datad => \I_ads8330_interface|Selector22~0_combout\,
	combout => \I_ads8330_interface|Selector8~0_combout\);

-- Location: FF_X52_Y31_N5
\I_ads8330_interface|adc_data_t[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKY2~inputclkctrl_outclk\,
	d => \I_ads8330_interface|Selector8~0_combout\,
	sclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_ads8330_interface|adc_data_t\(14));

-- Location: LCCOMB_X52_Y31_N22
\I_ads8330_interface|Selector7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_ads8330_interface|Selector7~0_combout\ = (\I_ads8330_interface|Selector22~1_combout\ & ((\I_ads8330_interface|adc_data_t\(15)) # ((\I_ads8330_interface|adc_data_t\(14) & \I_ads8330_interface|Selector22~0_combout\)))) # 
-- (!\I_ads8330_interface|Selector22~1_combout\ & (\I_ads8330_interface|adc_data_t\(14) & ((\I_ads8330_interface|Selector22~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I_ads8330_interface|Selector22~1_combout\,
	datab => \I_ads8330_interface|adc_data_t\(14),
	datac => \I_ads8330_interface|adc_data_t\(15),
	datad => \I_ads8330_interface|Selector22~0_combout\,
	combout => \I_ads8330_interface|Selector7~0_combout\);

-- Location: FF_X52_Y31_N23
\I_ads8330_interface|adc_data_t[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKY2~inputclkctrl_outclk\,
	d => \I_ads8330_interface|Selector7~0_combout\,
	sclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_ads8330_interface|adc_data_t\(15));

-- Location: LCCOMB_X52_Y31_N24
\I_ads8330_interface|Selector6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_ads8330_interface|Selector6~0_combout\ = (\I_ads8330_interface|adc_data_t\(15) & ((\I_ads8330_interface|Selector22~0_combout\) # ((\I_ads8330_interface|adc_data_t\(16) & \I_ads8330_interface|Selector22~1_combout\)))) # 
-- (!\I_ads8330_interface|adc_data_t\(15) & (((\I_ads8330_interface|adc_data_t\(16) & \I_ads8330_interface|Selector22~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I_ads8330_interface|adc_data_t\(15),
	datab => \I_ads8330_interface|Selector22~0_combout\,
	datac => \I_ads8330_interface|adc_data_t\(16),
	datad => \I_ads8330_interface|Selector22~1_combout\,
	combout => \I_ads8330_interface|Selector6~0_combout\);

-- Location: FF_X52_Y31_N25
\I_ads8330_interface|adc_data_t[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKY2~inputclkctrl_outclk\,
	d => \I_ads8330_interface|Selector6~0_combout\,
	sclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_ads8330_interface|adc_data_t\(16));

-- Location: LCCOMB_X52_Y31_N18
\I_ads8330_interface|Selector23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_ads8330_interface|Selector23~0_combout\ = (\I_ads8330_interface|Selector25~0_combout\ & ((\I_ads8330_interface|adc_data\(16)) # ((\I_ads8330_interface|adc_data_t\(16) & \I_ads8330_interface|Selector39~0_combout\)))) # 
-- (!\I_ads8330_interface|Selector25~0_combout\ & (\I_ads8330_interface|adc_data_t\(16) & ((\I_ads8330_interface|Selector39~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I_ads8330_interface|Selector25~0_combout\,
	datab => \I_ads8330_interface|adc_data_t\(16),
	datac => \I_ads8330_interface|adc_data\(16),
	datad => \I_ads8330_interface|Selector39~0_combout\,
	combout => \I_ads8330_interface|Selector23~0_combout\);

-- Location: FF_X52_Y31_N19
\I_ads8330_interface|adc_data[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKY2~inputclkctrl_outclk\,
	d => \I_ads8330_interface|Selector23~0_combout\,
	sclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_ads8330_interface|adc_data\(16));

-- Location: LCCOMB_X50_Y31_N16
\dac_data_ch0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac_data_ch0~12_combout\ = (\I_power_on_reset|reset_t~q\ & (!\sw_0_deb~q\ & \I_ads8330_interface|adc_data\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \I_power_on_reset|reset_t~q\,
	datac => \sw_0_deb~q\,
	datad => \I_ads8330_interface|adc_data\(16),
	combout => \dac_data_ch0~12_combout\);

-- Location: LCCOMB_X51_Y30_N16
\I_ads8330_interface|data_val~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_ads8330_interface|data_val~0_combout\ = (\I_ads8330_interface|data_val~q\) # ((!\I_ads8330_interface|count_1\(5) & (\I_ads8330_interface|count_1\(3) & \I_ads8330_interface|Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I_ads8330_interface|count_1\(5),
	datab => \I_ads8330_interface|count_1\(3),
	datac => \I_ads8330_interface|data_val~q\,
	datad => \I_ads8330_interface|Equal2~0_combout\,
	combout => \I_ads8330_interface|data_val~0_combout\);

-- Location: FF_X51_Y30_N17
\I_ads8330_interface|data_val\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKY2~inputclkctrl_outclk\,
	d => \I_ads8330_interface|data_val~0_combout\,
	asdata => \~GND~combout\,
	sclr => \reset~combout\,
	sload => \I_ads8330_interface|ALT_INV_next_state.wait_state~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_ads8330_interface|data_val~q\);

-- Location: LCCOMB_X54_Y31_N30
\I_ads8330_interface|Selector39~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_ads8330_interface|Selector39~1_combout\ = (\I_ads8330_interface|Selector39~0_combout\ & ((\I_ads8330_interface|adc_data_t\(0)) # ((\I_ads8330_interface|adc_data\(0) & \I_ads8330_interface|Selector25~0_combout\)))) # 
-- (!\I_ads8330_interface|Selector39~0_combout\ & (((\I_ads8330_interface|adc_data\(0) & \I_ads8330_interface|Selector25~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I_ads8330_interface|Selector39~0_combout\,
	datab => \I_ads8330_interface|adc_data_t\(0),
	datac => \I_ads8330_interface|adc_data\(0),
	datad => \I_ads8330_interface|Selector25~0_combout\,
	combout => \I_ads8330_interface|Selector39~1_combout\);

-- Location: FF_X54_Y31_N31
\I_ads8330_interface|adc_data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKY2~inputclkctrl_outclk\,
	d => \I_ads8330_interface|Selector39~1_combout\,
	sclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_ads8330_interface|adc_data\(0));

-- Location: LCCOMB_X51_Y31_N22
\dac_data_ch0[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac_data_ch0[0]~1_combout\ = (\I_power_on_reset|reset_t~q\ & (!\sw_0_deb~q\ & ((\I_ads8330_interface|adc_data\(0)) # (!\I_ads8330_interface|data_val~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I_ads8330_interface|data_val~q\,
	datab => \I_power_on_reset|reset_t~q\,
	datac => \I_ads8330_interface|adc_data\(0),
	datad => \sw_0_deb~q\,
	combout => \dac_data_ch0[0]~1_combout\);

-- Location: FF_X50_Y31_N17
\dac_data_ch0[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKY2~inputclkctrl_outclk\,
	d => \dac_data_ch0~12_combout\,
	ena => \ALT_INV_dac_data_ch0[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dac_data_ch0(11));

-- Location: LCCOMB_X52_Y30_N22
\I_ad5441_interface_1|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_ad5441_interface_1|Selector0~0_combout\ = (\I_ad5441_interface_1|next_state.idle~q\ & (\I_ad5441_interface_1|next_state.data_transfer~q\ & (\I_ad5441_interface_1|dac_data_t\(12)))) # (!\I_ad5441_interface_1|next_state.idle~q\ & ((dac_data_ch0(11)) # 
-- ((\I_ad5441_interface_1|next_state.data_transfer~q\ & \I_ad5441_interface_1|dac_data_t\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I_ad5441_interface_1|next_state.idle~q\,
	datab => \I_ad5441_interface_1|next_state.data_transfer~q\,
	datac => \I_ad5441_interface_1|dac_data_t\(12),
	datad => dac_data_ch0(11),
	combout => \I_ad5441_interface_1|Selector0~0_combout\);

-- Location: FF_X52_Y30_N23
\I_ad5441_interface_1|dac_data_t[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKY2~inputclkctrl_outclk\,
	d => \I_ad5441_interface_1|Selector0~0_combout\,
	sclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_ad5441_interface_1|dac_data_t\(12));

-- Location: LCCOMB_X48_Y30_N0
\I_ad5441_interface_1|Mux0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_ad5441_interface_1|Mux0~7_combout\ = (!\I_ad5441_interface_1|count_2\(0) & (!\I_ad5441_interface_1|count_2\(1) & \I_ad5441_interface_1|dac_data_t\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \I_ad5441_interface_1|count_2\(0),
	datac => \I_ad5441_interface_1|count_2\(1),
	datad => \I_ad5441_interface_1|dac_data_t\(12),
	combout => \I_ad5441_interface_1|Mux0~7_combout\);

-- Location: LCCOMB_X51_Y31_N28
\I_ads8330_interface|Selector24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_ads8330_interface|Selector24~0_combout\ = (\I_ads8330_interface|adc_data_t\(15) & ((\I_ads8330_interface|Selector39~0_combout\) # ((\I_ads8330_interface|adc_data\(15) & \I_ads8330_interface|Selector25~0_combout\)))) # 
-- (!\I_ads8330_interface|adc_data_t\(15) & (((\I_ads8330_interface|adc_data\(15) & \I_ads8330_interface|Selector25~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I_ads8330_interface|adc_data_t\(15),
	datab => \I_ads8330_interface|Selector39~0_combout\,
	datac => \I_ads8330_interface|adc_data\(15),
	datad => \I_ads8330_interface|Selector25~0_combout\,
	combout => \I_ads8330_interface|Selector24~0_combout\);

-- Location: FF_X51_Y31_N29
\I_ads8330_interface|adc_data[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKY2~inputclkctrl_outclk\,
	d => \I_ads8330_interface|Selector24~0_combout\,
	sclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_ads8330_interface|adc_data\(15));

-- Location: LCCOMB_X50_Y31_N8
\dac_data_ch0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac_data_ch0~4_combout\ = (\I_power_on_reset|reset_t~q\ & (!\sw_0_deb~q\ & \I_ads8330_interface|adc_data\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \I_power_on_reset|reset_t~q\,
	datac => \sw_0_deb~q\,
	datad => \I_ads8330_interface|adc_data\(15),
	combout => \dac_data_ch0~4_combout\);

-- Location: FF_X50_Y31_N9
\dac_data_ch0[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKY2~inputclkctrl_outclk\,
	d => \dac_data_ch0~4_combout\,
	ena => \ALT_INV_dac_data_ch0[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dac_data_ch0(10));

-- Location: LCCOMB_X49_Y30_N4
\I_ad5441_interface_1|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_ad5441_interface_1|Selector1~0_combout\ = (\I_ad5441_interface_1|next_state.data_transfer~q\ & ((\I_ad5441_interface_1|dac_data_t\(11)) # ((!\I_ad5441_interface_1|next_state.idle~q\ & dac_data_ch0(10))))) # 
-- (!\I_ad5441_interface_1|next_state.data_transfer~q\ & (!\I_ad5441_interface_1|next_state.idle~q\ & ((dac_data_ch0(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I_ad5441_interface_1|next_state.data_transfer~q\,
	datab => \I_ad5441_interface_1|next_state.idle~q\,
	datac => \I_ad5441_interface_1|dac_data_t\(11),
	datad => dac_data_ch0(10),
	combout => \I_ad5441_interface_1|Selector1~0_combout\);

-- Location: FF_X49_Y30_N5
\I_ad5441_interface_1|dac_data_t[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKY2~inputclkctrl_outclk\,
	d => \I_ad5441_interface_1|Selector1~0_combout\,
	sclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_ad5441_interface_1|dac_data_t\(11));

-- Location: LCCOMB_X52_Y31_N2
\I_ads8330_interface|Selector27~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_ads8330_interface|Selector27~0_combout\ = (\I_ads8330_interface|Selector25~0_combout\ & ((\I_ads8330_interface|adc_data\(12)) # ((\I_ads8330_interface|adc_data_t\(12) & \I_ads8330_interface|Selector39~0_combout\)))) # 
-- (!\I_ads8330_interface|Selector25~0_combout\ & (\I_ads8330_interface|adc_data_t\(12) & ((\I_ads8330_interface|Selector39~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I_ads8330_interface|Selector25~0_combout\,
	datab => \I_ads8330_interface|adc_data_t\(12),
	datac => \I_ads8330_interface|adc_data\(12),
	datad => \I_ads8330_interface|Selector39~0_combout\,
	combout => \I_ads8330_interface|Selector27~0_combout\);

-- Location: FF_X52_Y31_N3
\I_ads8330_interface|adc_data[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKY2~inputclkctrl_outclk\,
	d => \I_ads8330_interface|Selector27~0_combout\,
	sclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_ads8330_interface|adc_data\(12));

-- Location: LCCOMB_X50_Y31_N18
\dac_data_ch0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac_data_ch0~3_combout\ = (\I_ads8330_interface|adc_data\(12) & (!\sw_0_deb~q\ & \I_power_on_reset|reset_t~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \I_ads8330_interface|adc_data\(12),
	datac => \sw_0_deb~q\,
	datad => \I_power_on_reset|reset_t~q\,
	combout => \dac_data_ch0~3_combout\);

-- Location: FF_X50_Y31_N19
\dac_data_ch0[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKY2~inputclkctrl_outclk\,
	d => \dac_data_ch0~3_combout\,
	ena => \ALT_INV_dac_data_ch0[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dac_data_ch0(7));

-- Location: LCCOMB_X49_Y30_N26
\I_ad5441_interface_1|Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_ad5441_interface_1|Selector4~0_combout\ = (dac_data_ch0(7) & (((\I_ad5441_interface_1|next_state.data_transfer~q\ & \I_ad5441_interface_1|dac_data_t\(8))) # (!\I_ad5441_interface_1|next_state.idle~q\))) # (!dac_data_ch0(7) & 
-- (\I_ad5441_interface_1|next_state.data_transfer~q\ & (\I_ad5441_interface_1|dac_data_t\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dac_data_ch0(7),
	datab => \I_ad5441_interface_1|next_state.data_transfer~q\,
	datac => \I_ad5441_interface_1|dac_data_t\(8),
	datad => \I_ad5441_interface_1|next_state.idle~q\,
	combout => \I_ad5441_interface_1|Selector4~0_combout\);

-- Location: FF_X49_Y30_N27
\I_ad5441_interface_1|dac_data_t[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKY2~inputclkctrl_outclk\,
	d => \I_ad5441_interface_1|Selector4~0_combout\,
	sclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_ad5441_interface_1|dac_data_t\(8));

-- Location: LCCOMB_X52_Y31_N16
\I_ads8330_interface|Selector26~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_ads8330_interface|Selector26~0_combout\ = (\I_ads8330_interface|Selector25~0_combout\ & ((\I_ads8330_interface|adc_data\(13)) # ((\I_ads8330_interface|adc_data_t\(13) & \I_ads8330_interface|Selector39~0_combout\)))) # 
-- (!\I_ads8330_interface|Selector25~0_combout\ & (\I_ads8330_interface|adc_data_t\(13) & ((\I_ads8330_interface|Selector39~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I_ads8330_interface|Selector25~0_combout\,
	datab => \I_ads8330_interface|adc_data_t\(13),
	datac => \I_ads8330_interface|adc_data\(13),
	datad => \I_ads8330_interface|Selector39~0_combout\,
	combout => \I_ads8330_interface|Selector26~0_combout\);

-- Location: FF_X52_Y31_N17
\I_ads8330_interface|adc_data[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKY2~inputclkctrl_outclk\,
	d => \I_ads8330_interface|Selector26~0_combout\,
	sclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_ads8330_interface|adc_data\(13));

-- Location: LCCOMB_X50_Y31_N4
\dac_data_ch0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac_data_ch0~2_combout\ = (\I_ads8330_interface|adc_data\(13) & (!\sw_0_deb~q\ & \I_power_on_reset|reset_t~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I_ads8330_interface|adc_data\(13),
	datac => \sw_0_deb~q\,
	datad => \I_power_on_reset|reset_t~q\,
	combout => \dac_data_ch0~2_combout\);

-- Location: FF_X50_Y31_N5
\dac_data_ch0[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKY2~inputclkctrl_outclk\,
	d => \dac_data_ch0~2_combout\,
	ena => \ALT_INV_dac_data_ch0[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dac_data_ch0(8));

-- Location: LCCOMB_X49_Y30_N28
\I_ad5441_interface_1|Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_ad5441_interface_1|Selector3~0_combout\ = (dac_data_ch0(8) & (((\I_ad5441_interface_1|dac_data_t\(9) & \I_ad5441_interface_1|next_state.data_transfer~q\)) # (!\I_ad5441_interface_1|next_state.idle~q\))) # (!dac_data_ch0(8) & 
-- (((\I_ad5441_interface_1|dac_data_t\(9) & \I_ad5441_interface_1|next_state.data_transfer~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dac_data_ch0(8),
	datab => \I_ad5441_interface_1|next_state.idle~q\,
	datac => \I_ad5441_interface_1|dac_data_t\(9),
	datad => \I_ad5441_interface_1|next_state.data_transfer~q\,
	combout => \I_ad5441_interface_1|Selector3~0_combout\);

-- Location: FF_X49_Y30_N29
\I_ad5441_interface_1|dac_data_t[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKY2~inputclkctrl_outclk\,
	d => \I_ad5441_interface_1|Selector3~0_combout\,
	sclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_ad5441_interface_1|dac_data_t\(9));

-- Location: LCCOMB_X49_Y30_N8
\I_ad5441_interface_1|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_ad5441_interface_1|Mux0~0_combout\ = (\I_ad5441_interface_1|count_2\(0) & (((\I_ad5441_interface_1|dac_data_t\(9)) # (\I_ad5441_interface_1|count_2\(1))))) # (!\I_ad5441_interface_1|count_2\(0) & (\I_ad5441_interface_1|dac_data_t\(8) & 
-- ((!\I_ad5441_interface_1|count_2\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I_ad5441_interface_1|dac_data_t\(8),
	datab => \I_ad5441_interface_1|dac_data_t\(9),
	datac => \I_ad5441_interface_1|count_2\(0),
	datad => \I_ad5441_interface_1|count_2\(1),
	combout => \I_ad5441_interface_1|Mux0~0_combout\);

-- Location: LCCOMB_X51_Y31_N2
\I_ads8330_interface|Selector25~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_ads8330_interface|Selector25~1_combout\ = (\I_ads8330_interface|adc_data_t\(14) & ((\I_ads8330_interface|Selector39~0_combout\) # ((\I_ads8330_interface|adc_data\(14) & \I_ads8330_interface|Selector25~0_combout\)))) # 
-- (!\I_ads8330_interface|adc_data_t\(14) & (((\I_ads8330_interface|adc_data\(14) & \I_ads8330_interface|Selector25~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I_ads8330_interface|adc_data_t\(14),
	datab => \I_ads8330_interface|Selector39~0_combout\,
	datac => \I_ads8330_interface|adc_data\(14),
	datad => \I_ads8330_interface|Selector25~0_combout\,
	combout => \I_ads8330_interface|Selector25~1_combout\);

-- Location: FF_X51_Y31_N3
\I_ads8330_interface|adc_data[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKY2~inputclkctrl_outclk\,
	d => \I_ads8330_interface|Selector25~1_combout\,
	sclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_ads8330_interface|adc_data\(14));

-- Location: LCCOMB_X50_Y31_N30
\dac_data_ch0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac_data_ch0~0_combout\ = (\I_power_on_reset|reset_t~q\ & (!\sw_0_deb~q\ & \I_ads8330_interface|adc_data\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \I_power_on_reset|reset_t~q\,
	datac => \sw_0_deb~q\,
	datad => \I_ads8330_interface|adc_data\(14),
	combout => \dac_data_ch0~0_combout\);

-- Location: FF_X50_Y31_N31
\dac_data_ch0[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKY2~inputclkctrl_outclk\,
	d => \dac_data_ch0~0_combout\,
	ena => \ALT_INV_dac_data_ch0[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dac_data_ch0(9));

-- Location: LCCOMB_X49_Y30_N2
\I_ad5441_interface_1|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_ad5441_interface_1|Selector2~0_combout\ = (\I_ad5441_interface_1|next_state.data_transfer~q\ & ((\I_ad5441_interface_1|dac_data_t\(10)) # ((dac_data_ch0(9) & !\I_ad5441_interface_1|next_state.idle~q\)))) # 
-- (!\I_ad5441_interface_1|next_state.data_transfer~q\ & (dac_data_ch0(9) & ((!\I_ad5441_interface_1|next_state.idle~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I_ad5441_interface_1|next_state.data_transfer~q\,
	datab => dac_data_ch0(9),
	datac => \I_ad5441_interface_1|dac_data_t\(10),
	datad => \I_ad5441_interface_1|next_state.idle~q\,
	combout => \I_ad5441_interface_1|Selector2~0_combout\);

-- Location: FF_X49_Y30_N3
\I_ad5441_interface_1|dac_data_t[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKY2~inputclkctrl_outclk\,
	d => \I_ad5441_interface_1|Selector2~0_combout\,
	sclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_ad5441_interface_1|dac_data_t\(10));

-- Location: LCCOMB_X49_Y30_N14
\I_ad5441_interface_1|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_ad5441_interface_1|Mux0~1_combout\ = (\I_ad5441_interface_1|count_2\(1) & ((\I_ad5441_interface_1|Mux0~0_combout\ & (\I_ad5441_interface_1|dac_data_t\(11))) # (!\I_ad5441_interface_1|Mux0~0_combout\ & ((\I_ad5441_interface_1|dac_data_t\(10)))))) # 
-- (!\I_ad5441_interface_1|count_2\(1) & (((\I_ad5441_interface_1|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I_ad5441_interface_1|count_2\(1),
	datab => \I_ad5441_interface_1|dac_data_t\(11),
	datac => \I_ad5441_interface_1|Mux0~0_combout\,
	datad => \I_ad5441_interface_1|dac_data_t\(10),
	combout => \I_ad5441_interface_1|Mux0~1_combout\);

-- Location: LCCOMB_X52_Y31_N0
\I_ads8330_interface|Selector33~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_ads8330_interface|Selector33~0_combout\ = (\I_ads8330_interface|Selector25~0_combout\ & ((\I_ads8330_interface|adc_data\(6)) # ((\I_ads8330_interface|adc_data_t\(6) & \I_ads8330_interface|Selector39~0_combout\)))) # 
-- (!\I_ads8330_interface|Selector25~0_combout\ & (\I_ads8330_interface|adc_data_t\(6) & ((\I_ads8330_interface|Selector39~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I_ads8330_interface|Selector25~0_combout\,
	datab => \I_ads8330_interface|adc_data_t\(6),
	datac => \I_ads8330_interface|adc_data\(6),
	datad => \I_ads8330_interface|Selector39~0_combout\,
	combout => \I_ads8330_interface|Selector33~0_combout\);

-- Location: FF_X52_Y31_N1
\I_ads8330_interface|adc_data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKY2~inputclkctrl_outclk\,
	d => \I_ads8330_interface|Selector33~0_combout\,
	sclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_ads8330_interface|adc_data\(6));

-- Location: LCCOMB_X50_Y31_N26
\dac_data_ch0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac_data_ch0~11_combout\ = (\I_ads8330_interface|adc_data\(6) & (!\sw_0_deb~q\ & \I_power_on_reset|reset_t~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \I_ads8330_interface|adc_data\(6),
	datac => \sw_0_deb~q\,
	datad => \I_power_on_reset|reset_t~q\,
	combout => \dac_data_ch0~11_combout\);

-- Location: FF_X50_Y31_N27
\dac_data_ch0[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKY2~inputclkctrl_outclk\,
	d => \dac_data_ch0~11_combout\,
	ena => \ALT_INV_dac_data_ch0[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dac_data_ch0(1));

-- Location: LCCOMB_X49_Y30_N30
\I_ad5441_interface_1|Selector10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_ad5441_interface_1|Selector10~0_combout\ = (dac_data_ch0(1) & (((\I_ad5441_interface_1|next_state.data_transfer~q\ & \I_ad5441_interface_1|dac_data_t\(2))) # (!\I_ad5441_interface_1|next_state.idle~q\))) # (!dac_data_ch0(1) & 
-- (\I_ad5441_interface_1|next_state.data_transfer~q\ & (\I_ad5441_interface_1|dac_data_t\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dac_data_ch0(1),
	datab => \I_ad5441_interface_1|next_state.data_transfer~q\,
	datac => \I_ad5441_interface_1|dac_data_t\(2),
	datad => \I_ad5441_interface_1|next_state.idle~q\,
	combout => \I_ad5441_interface_1|Selector10~0_combout\);

-- Location: FF_X49_Y30_N31
\I_ad5441_interface_1|dac_data_t[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKY2~inputclkctrl_outclk\,
	d => \I_ad5441_interface_1|Selector10~0_combout\,
	sclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_ad5441_interface_1|dac_data_t\(2));

-- Location: LCCOMB_X52_Y31_N8
\I_ads8330_interface|Selector32~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_ads8330_interface|Selector32~0_combout\ = (\I_ads8330_interface|Selector25~0_combout\ & ((\I_ads8330_interface|adc_data\(7)) # ((\I_ads8330_interface|adc_data_t\(7) & \I_ads8330_interface|Selector39~0_combout\)))) # 
-- (!\I_ads8330_interface|Selector25~0_combout\ & (\I_ads8330_interface|adc_data_t\(7) & ((\I_ads8330_interface|Selector39~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I_ads8330_interface|Selector25~0_combout\,
	datab => \I_ads8330_interface|adc_data_t\(7),
	datac => \I_ads8330_interface|adc_data\(7),
	datad => \I_ads8330_interface|Selector39~0_combout\,
	combout => \I_ads8330_interface|Selector32~0_combout\);

-- Location: FF_X52_Y31_N9
\I_ads8330_interface|adc_data[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKY2~inputclkctrl_outclk\,
	d => \I_ads8330_interface|Selector32~0_combout\,
	sclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_ads8330_interface|adc_data\(7));

-- Location: LCCOMB_X50_Y31_N10
\dac_data_ch0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac_data_ch0~9_combout\ = (\I_power_on_reset|reset_t~q\ & (!\sw_0_deb~q\ & \I_ads8330_interface|adc_data\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \I_power_on_reset|reset_t~q\,
	datac => \sw_0_deb~q\,
	datad => \I_ads8330_interface|adc_data\(7),
	combout => \dac_data_ch0~9_combout\);

-- Location: FF_X50_Y31_N11
\dac_data_ch0[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKY2~inputclkctrl_outclk\,
	d => \dac_data_ch0~9_combout\,
	ena => \ALT_INV_dac_data_ch0[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dac_data_ch0(2));

-- Location: LCCOMB_X49_Y30_N6
\I_ad5441_interface_1|Selector9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_ad5441_interface_1|Selector9~0_combout\ = (dac_data_ch0(2) & (((\I_ad5441_interface_1|dac_data_t\(3) & \I_ad5441_interface_1|next_state.data_transfer~q\)) # (!\I_ad5441_interface_1|next_state.idle~q\))) # (!dac_data_ch0(2) & 
-- (((\I_ad5441_interface_1|dac_data_t\(3) & \I_ad5441_interface_1|next_state.data_transfer~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dac_data_ch0(2),
	datab => \I_ad5441_interface_1|next_state.idle~q\,
	datac => \I_ad5441_interface_1|dac_data_t\(3),
	datad => \I_ad5441_interface_1|next_state.data_transfer~q\,
	combout => \I_ad5441_interface_1|Selector9~0_combout\);

-- Location: FF_X49_Y30_N7
\I_ad5441_interface_1|dac_data_t[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKY2~inputclkctrl_outclk\,
	d => \I_ad5441_interface_1|Selector9~0_combout\,
	sclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_ad5441_interface_1|dac_data_t\(3));

-- Location: LCCOMB_X52_Y31_N30
\I_ads8330_interface|Selector34~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_ads8330_interface|Selector34~0_combout\ = (\I_ads8330_interface|Selector25~0_combout\ & ((\I_ads8330_interface|adc_data\(5)) # ((\I_ads8330_interface|adc_data_t\(5) & \I_ads8330_interface|Selector39~0_combout\)))) # 
-- (!\I_ads8330_interface|Selector25~0_combout\ & (\I_ads8330_interface|adc_data_t\(5) & ((\I_ads8330_interface|Selector39~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I_ads8330_interface|Selector25~0_combout\,
	datab => \I_ads8330_interface|adc_data_t\(5),
	datac => \I_ads8330_interface|adc_data\(5),
	datad => \I_ads8330_interface|Selector39~0_combout\,
	combout => \I_ads8330_interface|Selector34~0_combout\);

-- Location: FF_X52_Y31_N31
\I_ads8330_interface|adc_data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKY2~inputclkctrl_outclk\,
	d => \I_ads8330_interface|Selector34~0_combout\,
	sclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_ads8330_interface|adc_data\(5));

-- Location: LCCOMB_X50_Y31_N0
\dac_data_ch0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac_data_ch0~10_combout\ = (!\sw_0_deb~q\ & (\I_ads8330_interface|adc_data\(5) & \I_power_on_reset|reset_t~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sw_0_deb~q\,
	datac => \I_ads8330_interface|adc_data\(5),
	datad => \I_power_on_reset|reset_t~q\,
	combout => \dac_data_ch0~10_combout\);

-- Location: FF_X50_Y31_N1
\dac_data_ch0[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKY2~inputclkctrl_outclk\,
	d => \dac_data_ch0~10_combout\,
	ena => \ALT_INV_dac_data_ch0[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dac_data_ch0(0));

-- Location: LCCOMB_X49_Y30_N16
\I_ad5441_interface_1|Selector11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_ad5441_interface_1|Selector11~0_combout\ = (dac_data_ch0(0) & (((\I_ad5441_interface_1|next_state.data_transfer~q\ & \I_ad5441_interface_1|dac_data_t\(1))) # (!\I_ad5441_interface_1|next_state.idle~q\))) # (!dac_data_ch0(0) & 
-- (\I_ad5441_interface_1|next_state.data_transfer~q\ & (\I_ad5441_interface_1|dac_data_t\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dac_data_ch0(0),
	datab => \I_ad5441_interface_1|next_state.data_transfer~q\,
	datac => \I_ad5441_interface_1|dac_data_t\(1),
	datad => \I_ad5441_interface_1|next_state.idle~q\,
	combout => \I_ad5441_interface_1|Selector11~0_combout\);

-- Location: FF_X49_Y30_N17
\I_ad5441_interface_1|dac_data_t[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKY2~inputclkctrl_outclk\,
	d => \I_ad5441_interface_1|Selector11~0_combout\,
	sclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_ad5441_interface_1|dac_data_t\(1));

-- Location: LCCOMB_X48_Y30_N18
\I_ad5441_interface_1|Mux0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_ad5441_interface_1|Mux0~4_combout\ = (\I_ad5441_interface_1|count_2\(0) & ((\I_ad5441_interface_1|count_2\(1) & (\I_ad5441_interface_1|dac_data_t\(3))) # (!\I_ad5441_interface_1|count_2\(1) & ((\I_ad5441_interface_1|dac_data_t\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I_ad5441_interface_1|dac_data_t\(3),
	datab => \I_ad5441_interface_1|count_2\(0),
	datac => \I_ad5441_interface_1|count_2\(1),
	datad => \I_ad5441_interface_1|dac_data_t\(1),
	combout => \I_ad5441_interface_1|Mux0~4_combout\);

-- Location: LCCOMB_X48_Y30_N4
\I_ad5441_interface_1|Mux0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_ad5441_interface_1|Mux0~5_combout\ = (\I_ad5441_interface_1|Mux0~4_combout\) # ((\I_ad5441_interface_1|dac_data_t\(2) & (!\I_ad5441_interface_1|count_2\(0) & \I_ad5441_interface_1|count_2\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I_ad5441_interface_1|dac_data_t\(2),
	datab => \I_ad5441_interface_1|count_2\(0),
	datac => \I_ad5441_interface_1|count_2\(1),
	datad => \I_ad5441_interface_1|Mux0~4_combout\,
	combout => \I_ad5441_interface_1|Mux0~5_combout\);

-- Location: LCCOMB_X52_Y30_N12
\I_ads8330_interface|Selector28~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_ads8330_interface|Selector28~0_combout\ = (\I_ads8330_interface|Selector39~0_combout\ & ((\I_ads8330_interface|adc_data_t\(11)) # ((\I_ads8330_interface|Selector25~0_combout\ & \I_ads8330_interface|adc_data\(11))))) # 
-- (!\I_ads8330_interface|Selector39~0_combout\ & (\I_ads8330_interface|Selector25~0_combout\ & (\I_ads8330_interface|adc_data\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I_ads8330_interface|Selector39~0_combout\,
	datab => \I_ads8330_interface|Selector25~0_combout\,
	datac => \I_ads8330_interface|adc_data\(11),
	datad => \I_ads8330_interface|adc_data_t\(11),
	combout => \I_ads8330_interface|Selector28~0_combout\);

-- Location: FF_X52_Y30_N13
\I_ads8330_interface|adc_data[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKY2~inputclkctrl_outclk\,
	d => \I_ads8330_interface|Selector28~0_combout\,
	sclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_ads8330_interface|adc_data\(11));

-- Location: LCCOMB_X50_Y31_N28
\dac_data_ch0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac_data_ch0~8_combout\ = (\I_ads8330_interface|adc_data\(11) & (!\sw_0_deb~q\ & \I_power_on_reset|reset_t~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I_ads8330_interface|adc_data\(11),
	datac => \sw_0_deb~q\,
	datad => \I_power_on_reset|reset_t~q\,
	combout => \dac_data_ch0~8_combout\);

-- Location: FF_X50_Y31_N29
\dac_data_ch0[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKY2~inputclkctrl_outclk\,
	d => \dac_data_ch0~8_combout\,
	ena => \ALT_INV_dac_data_ch0[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dac_data_ch0(6));

-- Location: LCCOMB_X49_Y30_N20
\I_ad5441_interface_1|Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_ad5441_interface_1|Selector5~0_combout\ = (dac_data_ch0(6) & (((\I_ad5441_interface_1|next_state.data_transfer~q\ & \I_ad5441_interface_1|dac_data_t\(7))) # (!\I_ad5441_interface_1|next_state.idle~q\))) # (!dac_data_ch0(6) & 
-- (\I_ad5441_interface_1|next_state.data_transfer~q\ & (\I_ad5441_interface_1|dac_data_t\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dac_data_ch0(6),
	datab => \I_ad5441_interface_1|next_state.data_transfer~q\,
	datac => \I_ad5441_interface_1|dac_data_t\(7),
	datad => \I_ad5441_interface_1|next_state.idle~q\,
	combout => \I_ad5441_interface_1|Selector5~0_combout\);

-- Location: FF_X49_Y30_N21
\I_ad5441_interface_1|dac_data_t[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKY2~inputclkctrl_outclk\,
	d => \I_ad5441_interface_1|Selector5~0_combout\,
	sclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_ad5441_interface_1|dac_data_t\(7));

-- Location: LCCOMB_X52_Y29_N28
\I_ads8330_interface|Selector29~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_ads8330_interface|Selector29~0_combout\ = (\I_ads8330_interface|adc_data_t\(10) & ((\I_ads8330_interface|Selector39~0_combout\) # ((\I_ads8330_interface|adc_data\(10) & \I_ads8330_interface|Selector25~0_combout\)))) # 
-- (!\I_ads8330_interface|adc_data_t\(10) & (((\I_ads8330_interface|adc_data\(10) & \I_ads8330_interface|Selector25~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I_ads8330_interface|adc_data_t\(10),
	datab => \I_ads8330_interface|Selector39~0_combout\,
	datac => \I_ads8330_interface|adc_data\(10),
	datad => \I_ads8330_interface|Selector25~0_combout\,
	combout => \I_ads8330_interface|Selector29~0_combout\);

-- Location: FF_X52_Y29_N29
\I_ads8330_interface|adc_data[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKY2~inputclkctrl_outclk\,
	d => \I_ads8330_interface|Selector29~0_combout\,
	sclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_ads8330_interface|adc_data\(10));

-- Location: LCCOMB_X50_Y31_N14
\dac_data_ch0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac_data_ch0~5_combout\ = (\I_ads8330_interface|adc_data\(10) & (!\sw_0_deb~q\ & \I_power_on_reset|reset_t~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I_ads8330_interface|adc_data\(10),
	datab => \sw_0_deb~q\,
	datad => \I_power_on_reset|reset_t~q\,
	combout => \dac_data_ch0~5_combout\);

-- Location: FF_X50_Y31_N15
\dac_data_ch0[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKY2~inputclkctrl_outclk\,
	d => \dac_data_ch0~5_combout\,
	ena => \ALT_INV_dac_data_ch0[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dac_data_ch0(5));

-- Location: LCCOMB_X49_Y30_N22
\I_ad5441_interface_1|Selector6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_ad5441_interface_1|Selector6~0_combout\ = (dac_data_ch0(5) & (((\I_ad5441_interface_1|next_state.data_transfer~q\ & \I_ad5441_interface_1|dac_data_t\(6))) # (!\I_ad5441_interface_1|next_state.idle~q\))) # (!dac_data_ch0(5) & 
-- (\I_ad5441_interface_1|next_state.data_transfer~q\ & (\I_ad5441_interface_1|dac_data_t\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dac_data_ch0(5),
	datab => \I_ad5441_interface_1|next_state.data_transfer~q\,
	datac => \I_ad5441_interface_1|dac_data_t\(6),
	datad => \I_ad5441_interface_1|next_state.idle~q\,
	combout => \I_ad5441_interface_1|Selector6~0_combout\);

-- Location: FF_X49_Y30_N23
\I_ad5441_interface_1|dac_data_t[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKY2~inputclkctrl_outclk\,
	d => \I_ad5441_interface_1|Selector6~0_combout\,
	sclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_ad5441_interface_1|dac_data_t\(6));

-- Location: LCCOMB_X52_Y31_N26
\I_ads8330_interface|Selector31~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_ads8330_interface|Selector31~0_combout\ = (\I_ads8330_interface|Selector25~0_combout\ & ((\I_ads8330_interface|adc_data\(8)) # ((\I_ads8330_interface|adc_data_t\(8) & \I_ads8330_interface|Selector39~0_combout\)))) # 
-- (!\I_ads8330_interface|Selector25~0_combout\ & (\I_ads8330_interface|adc_data_t\(8) & ((\I_ads8330_interface|Selector39~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I_ads8330_interface|Selector25~0_combout\,
	datab => \I_ads8330_interface|adc_data_t\(8),
	datac => \I_ads8330_interface|adc_data\(8),
	datad => \I_ads8330_interface|Selector39~0_combout\,
	combout => \I_ads8330_interface|Selector31~0_combout\);

-- Location: FF_X52_Y31_N27
\I_ads8330_interface|adc_data[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKY2~inputclkctrl_outclk\,
	d => \I_ads8330_interface|Selector31~0_combout\,
	sclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_ads8330_interface|adc_data\(8));

-- Location: LCCOMB_X50_Y31_N22
\dac_data_ch0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac_data_ch0~7_combout\ = (\I_power_on_reset|reset_t~q\ & (!\sw_0_deb~q\ & \I_ads8330_interface|adc_data\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \I_power_on_reset|reset_t~q\,
	datac => \sw_0_deb~q\,
	datad => \I_ads8330_interface|adc_data\(8),
	combout => \dac_data_ch0~7_combout\);

-- Location: FF_X50_Y31_N23
\dac_data_ch0[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKY2~inputclkctrl_outclk\,
	d => \dac_data_ch0~7_combout\,
	ena => \ALT_INV_dac_data_ch0[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dac_data_ch0(3));

-- Location: LCCOMB_X49_Y30_N10
\I_ad5441_interface_1|Selector8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_ad5441_interface_1|Selector8~0_combout\ = (dac_data_ch0(3) & (((\I_ad5441_interface_1|dac_data_t\(4) & \I_ad5441_interface_1|next_state.data_transfer~q\)) # (!\I_ad5441_interface_1|next_state.idle~q\))) # (!dac_data_ch0(3) & 
-- (((\I_ad5441_interface_1|dac_data_t\(4) & \I_ad5441_interface_1|next_state.data_transfer~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dac_data_ch0(3),
	datab => \I_ad5441_interface_1|next_state.idle~q\,
	datac => \I_ad5441_interface_1|dac_data_t\(4),
	datad => \I_ad5441_interface_1|next_state.data_transfer~q\,
	combout => \I_ad5441_interface_1|Selector8~0_combout\);

-- Location: FF_X49_Y30_N11
\I_ad5441_interface_1|dac_data_t[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKY2~inputclkctrl_outclk\,
	d => \I_ad5441_interface_1|Selector8~0_combout\,
	sclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_ad5441_interface_1|dac_data_t\(4));

-- Location: LCCOMB_X52_Y31_N20
\I_ads8330_interface|Selector30~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_ads8330_interface|Selector30~0_combout\ = (\I_ads8330_interface|Selector25~0_combout\ & ((\I_ads8330_interface|adc_data\(9)) # ((\I_ads8330_interface|adc_data_t\(9) & \I_ads8330_interface|Selector39~0_combout\)))) # 
-- (!\I_ads8330_interface|Selector25~0_combout\ & (\I_ads8330_interface|adc_data_t\(9) & ((\I_ads8330_interface|Selector39~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I_ads8330_interface|Selector25~0_combout\,
	datab => \I_ads8330_interface|adc_data_t\(9),
	datac => \I_ads8330_interface|adc_data\(9),
	datad => \I_ads8330_interface|Selector39~0_combout\,
	combout => \I_ads8330_interface|Selector30~0_combout\);

-- Location: FF_X52_Y31_N21
\I_ads8330_interface|adc_data[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKY2~inputclkctrl_outclk\,
	d => \I_ads8330_interface|Selector30~0_combout\,
	sclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_ads8330_interface|adc_data\(9));

-- Location: LCCOMB_X50_Y31_N24
\dac_data_ch0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac_data_ch0~6_combout\ = (\I_power_on_reset|reset_t~q\ & (!\sw_0_deb~q\ & \I_ads8330_interface|adc_data\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \I_power_on_reset|reset_t~q\,
	datac => \sw_0_deb~q\,
	datad => \I_ads8330_interface|adc_data\(9),
	combout => \dac_data_ch0~6_combout\);

-- Location: FF_X50_Y31_N25
\dac_data_ch0[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKY2~inputclkctrl_outclk\,
	d => \dac_data_ch0~6_combout\,
	ena => \ALT_INV_dac_data_ch0[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dac_data_ch0(4));

-- Location: LCCOMB_X49_Y30_N0
\I_ad5441_interface_1|Selector7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_ad5441_interface_1|Selector7~0_combout\ = (dac_data_ch0(4) & (((\I_ad5441_interface_1|next_state.data_transfer~q\ & \I_ad5441_interface_1|dac_data_t\(5))) # (!\I_ad5441_interface_1|next_state.idle~q\))) # (!dac_data_ch0(4) & 
-- (\I_ad5441_interface_1|next_state.data_transfer~q\ & (\I_ad5441_interface_1|dac_data_t\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dac_data_ch0(4),
	datab => \I_ad5441_interface_1|next_state.data_transfer~q\,
	datac => \I_ad5441_interface_1|dac_data_t\(5),
	datad => \I_ad5441_interface_1|next_state.idle~q\,
	combout => \I_ad5441_interface_1|Selector7~0_combout\);

-- Location: FF_X49_Y30_N1
\I_ad5441_interface_1|dac_data_t[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKY2~inputclkctrl_outclk\,
	d => \I_ad5441_interface_1|Selector7~0_combout\,
	sclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_ad5441_interface_1|dac_data_t\(5));

-- Location: LCCOMB_X49_Y30_N12
\I_ad5441_interface_1|Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_ad5441_interface_1|Mux0~2_combout\ = (\I_ad5441_interface_1|count_2\(0) & (((\I_ad5441_interface_1|dac_data_t\(5)) # (\I_ad5441_interface_1|count_2\(1))))) # (!\I_ad5441_interface_1|count_2\(0) & (\I_ad5441_interface_1|dac_data_t\(4) & 
-- ((!\I_ad5441_interface_1|count_2\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I_ad5441_interface_1|dac_data_t\(4),
	datab => \I_ad5441_interface_1|dac_data_t\(5),
	datac => \I_ad5441_interface_1|count_2\(0),
	datad => \I_ad5441_interface_1|count_2\(1),
	combout => \I_ad5441_interface_1|Mux0~2_combout\);

-- Location: LCCOMB_X49_Y30_N18
\I_ad5441_interface_1|Mux0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_ad5441_interface_1|Mux0~3_combout\ = (\I_ad5441_interface_1|count_2\(1) & ((\I_ad5441_interface_1|Mux0~2_combout\ & (\I_ad5441_interface_1|dac_data_t\(7))) # (!\I_ad5441_interface_1|Mux0~2_combout\ & ((\I_ad5441_interface_1|dac_data_t\(6)))))) # 
-- (!\I_ad5441_interface_1|count_2\(1) & (((\I_ad5441_interface_1|Mux0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I_ad5441_interface_1|count_2\(1),
	datab => \I_ad5441_interface_1|dac_data_t\(7),
	datac => \I_ad5441_interface_1|dac_data_t\(6),
	datad => \I_ad5441_interface_1|Mux0~2_combout\,
	combout => \I_ad5441_interface_1|Mux0~3_combout\);

-- Location: LCCOMB_X48_Y30_N6
\I_ad5441_interface_1|Mux0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_ad5441_interface_1|Mux0~6_combout\ = (\I_ad5441_interface_1|count_2\(3) & (\I_ad5441_interface_1|count_2\(2))) # (!\I_ad5441_interface_1|count_2\(3) & ((\I_ad5441_interface_1|count_2\(2) & ((\I_ad5441_interface_1|Mux0~3_combout\))) # 
-- (!\I_ad5441_interface_1|count_2\(2) & (\I_ad5441_interface_1|Mux0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I_ad5441_interface_1|count_2\(3),
	datab => \I_ad5441_interface_1|count_2\(2),
	datac => \I_ad5441_interface_1|Mux0~5_combout\,
	datad => \I_ad5441_interface_1|Mux0~3_combout\,
	combout => \I_ad5441_interface_1|Mux0~6_combout\);

-- Location: LCCOMB_X48_Y30_N10
\I_ad5441_interface_1|Mux0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_ad5441_interface_1|Mux0~8_combout\ = (\I_ad5441_interface_1|count_2\(3) & ((\I_ad5441_interface_1|Mux0~6_combout\ & (\I_ad5441_interface_1|Mux0~7_combout\)) # (!\I_ad5441_interface_1|Mux0~6_combout\ & ((\I_ad5441_interface_1|Mux0~1_combout\))))) # 
-- (!\I_ad5441_interface_1|count_2\(3) & (((\I_ad5441_interface_1|Mux0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I_ad5441_interface_1|count_2\(3),
	datab => \I_ad5441_interface_1|Mux0~7_combout\,
	datac => \I_ad5441_interface_1|Mux0~1_combout\,
	datad => \I_ad5441_interface_1|Mux0~6_combout\,
	combout => \I_ad5441_interface_1|Mux0~8_combout\);

-- Location: LCCOMB_X48_Y30_N8
\I_ad5441_interface_1|dac_sri_t~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_ad5441_interface_1|dac_sri_t~1_combout\ = (\I_ad5441_interface_1|dac_sri_t~0_combout\ & ((\I_ad5441_interface_1|Mux0~8_combout\))) # (!\I_ad5441_interface_1|dac_sri_t~0_combout\ & (\I_ad5441_interface_1|dac_sri_t~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \I_ad5441_interface_1|dac_sri_t~0_combout\,
	datac => \I_ad5441_interface_1|dac_sri_t~q\,
	datad => \I_ad5441_interface_1|Mux0~8_combout\,
	combout => \I_ad5441_interface_1|dac_sri_t~1_combout\);

-- Location: FF_X48_Y30_N9
\I_ad5441_interface_1|dac_sri_t\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKY2~inputclkctrl_outclk\,
	d => \I_ad5441_interface_1|dac_sri_t~1_combout\,
	asdata => \~GND~combout\,
	sclr => \reset~combout\,
	sload => \I_ad5441_interface_1|ALT_INV_next_state.data_transfer~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_ad5441_interface_1|dac_sri_t~q\);

-- Location: LCCOMB_X46_Y30_N24
\I_ad5441_interface_2|Selector21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_ad5441_interface_2|Selector21~0_combout\ = (\I_ad5441_interface_2|next_state.data_transfer~q\ & ((\I_ad5441_interface_2|Equal1~0_combout\) # ((!\I_ad5441_interface_2|Equal3~1_combout\ & \I_ad5441_interface_2|next_state.issue_ld~q\)))) # 
-- (!\I_ad5441_interface_2|next_state.data_transfer~q\ & (!\I_ad5441_interface_2|Equal3~1_combout\ & (\I_ad5441_interface_2|next_state.issue_ld~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I_ad5441_interface_2|next_state.data_transfer~q\,
	datab => \I_ad5441_interface_2|Equal3~1_combout\,
	datac => \I_ad5441_interface_2|next_state.issue_ld~q\,
	datad => \I_ad5441_interface_2|Equal1~0_combout\,
	combout => \I_ad5441_interface_2|Selector21~0_combout\);

-- Location: FF_X46_Y30_N25
\I_ad5441_interface_2|next_state.issue_ld\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKY2~inputclkctrl_outclk\,
	d => \I_ad5441_interface_2|Selector21~0_combout\,
	sclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_ad5441_interface_2|next_state.issue_ld~q\);

-- Location: LCCOMB_X45_Y30_N22
\I_ad5441_interface_2|Selector20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_ad5441_interface_2|Selector20~0_combout\ = (\I_ad5441_interface_2|next_state.data_transfer~q\ & !\I_ad5441_interface_2|Equal1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \I_ad5441_interface_2|next_state.data_transfer~q\,
	datad => \I_ad5441_interface_2|Equal1~0_combout\,
	combout => \I_ad5441_interface_2|Selector20~0_combout\);

-- Location: LCCOMB_X45_Y30_N2
\I_ad5441_interface_2|Add2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_ad5441_interface_2|Add2~0_combout\ = \I_ad5441_interface_2|count_1\(0) $ (VCC)
-- \I_ad5441_interface_2|Add2~1\ = CARRY(\I_ad5441_interface_2|count_1\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \I_ad5441_interface_2|count_1\(0),
	datad => VCC,
	combout => \I_ad5441_interface_2|Add2~0_combout\,
	cout => \I_ad5441_interface_2|Add2~1\);

-- Location: LCCOMB_X45_Y30_N0
\I_ad5441_interface_2|Selector18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_ad5441_interface_2|Selector18~0_combout\ = (\I_ad5441_interface_2|Add2~0_combout\ & ((\I_ad5441_interface_2|Selector20~0_combout\) # ((!\I_ad5441_interface_2|Equal3~1_combout\ & \I_ad5441_interface_2|next_state.issue_ld~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I_ad5441_interface_2|Equal3~1_combout\,
	datab => \I_ad5441_interface_2|next_state.issue_ld~q\,
	datac => \I_ad5441_interface_2|Selector20~0_combout\,
	datad => \I_ad5441_interface_2|Add2~0_combout\,
	combout => \I_ad5441_interface_2|Selector18~0_combout\);

-- Location: FF_X45_Y30_N1
\I_ad5441_interface_2|count_1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKY2~inputclkctrl_outclk\,
	d => \I_ad5441_interface_2|Selector18~0_combout\,
	sclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_ad5441_interface_2|count_1\(0));

-- Location: LCCOMB_X45_Y30_N4
\I_ad5441_interface_2|Add2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_ad5441_interface_2|Add2~2_combout\ = (\I_ad5441_interface_2|count_1\(1) & (!\I_ad5441_interface_2|Add2~1\)) # (!\I_ad5441_interface_2|count_1\(1) & ((\I_ad5441_interface_2|Add2~1\) # (GND)))
-- \I_ad5441_interface_2|Add2~3\ = CARRY((!\I_ad5441_interface_2|Add2~1\) # (!\I_ad5441_interface_2|count_1\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \I_ad5441_interface_2|count_1\(1),
	datad => VCC,
	cin => \I_ad5441_interface_2|Add2~1\,
	combout => \I_ad5441_interface_2|Add2~2_combout\,
	cout => \I_ad5441_interface_2|Add2~3\);

-- Location: LCCOMB_X45_Y30_N6
\I_ad5441_interface_2|Add2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_ad5441_interface_2|Add2~4_combout\ = (\I_ad5441_interface_2|count_1\(2) & (\I_ad5441_interface_2|Add2~3\ $ (GND))) # (!\I_ad5441_interface_2|count_1\(2) & (!\I_ad5441_interface_2|Add2~3\ & VCC))
-- \I_ad5441_interface_2|Add2~5\ = CARRY((\I_ad5441_interface_2|count_1\(2) & !\I_ad5441_interface_2|Add2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \I_ad5441_interface_2|count_1\(2),
	datad => VCC,
	cin => \I_ad5441_interface_2|Add2~3\,
	combout => \I_ad5441_interface_2|Add2~4_combout\,
	cout => \I_ad5441_interface_2|Add2~5\);

-- Location: LCCOMB_X45_Y30_N20
\I_ad5441_interface_2|Selector16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_ad5441_interface_2|Selector16~0_combout\ = (\I_ad5441_interface_2|Add2~4_combout\ & ((\I_ad5441_interface_2|Selector20~0_combout\) # ((\I_ad5441_interface_2|next_state.issue_ld~q\ & !\I_ad5441_interface_2|Equal3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I_ad5441_interface_2|Add2~4_combout\,
	datab => \I_ad5441_interface_2|next_state.issue_ld~q\,
	datac => \I_ad5441_interface_2|Selector20~0_combout\,
	datad => \I_ad5441_interface_2|Equal3~1_combout\,
	combout => \I_ad5441_interface_2|Selector16~0_combout\);

-- Location: FF_X45_Y30_N21
\I_ad5441_interface_2|count_1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKY2~inputclkctrl_outclk\,
	d => \I_ad5441_interface_2|Selector16~0_combout\,
	sclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_ad5441_interface_2|count_1\(2));

-- Location: LCCOMB_X46_Y30_N12
\I_ad5441_interface_2|Equal3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_ad5441_interface_2|Equal3~0_combout\ = (!\I_ad5441_interface_2|count_1\(0) & \I_ad5441_interface_2|count_1\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \I_ad5441_interface_2|count_1\(0),
	datad => \I_ad5441_interface_2|count_1\(2),
	combout => \I_ad5441_interface_2|Equal3~0_combout\);

-- Location: LCCOMB_X52_Y30_N6
\process_4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \process_4~0_combout\ = (\I_ads8330_interface|data_val~q\ & \I_ads8330_interface|adc_data\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I_ads8330_interface|data_val~q\,
	datac => \I_ads8330_interface|adc_data\(0),
	combout => \process_4~0_combout\);

-- Location: FF_X52_Y30_N7
dac_data_val_ch1 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKY2~inputclkctrl_outclk\,
	d => \process_4~0_combout\,
	sclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dac_data_val_ch1~q\);

-- Location: LCCOMB_X46_Y30_N14
\I_ad5441_interface_2|Selector19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_ad5441_interface_2|Selector19~0_combout\ = (!\dac_data_val_ch1~q\ & !\I_ad5441_interface_2|next_state.idle~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dac_data_val_ch1~q\,
	datad => \I_ad5441_interface_2|next_state.idle~q\,
	combout => \I_ad5441_interface_2|Selector19~0_combout\);

-- Location: LCCOMB_X46_Y30_N0
\I_ad5441_interface_2|next_state~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_ad5441_interface_2|next_state~5_combout\ = (!\reset~combout\ & (!\I_ad5441_interface_2|Selector19~0_combout\ & ((!\I_ad5441_interface_2|Equal3~1_combout\) # (!\I_ad5441_interface_2|next_state.issue_ld~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~combout\,
	datab => \I_ad5441_interface_2|next_state.issue_ld~q\,
	datac => \I_ad5441_interface_2|Selector19~0_combout\,
	datad => \I_ad5441_interface_2|Equal3~1_combout\,
	combout => \I_ad5441_interface_2|next_state~5_combout\);

-- Location: FF_X46_Y30_N1
\I_ad5441_interface_2|next_state.idle\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKY2~inputclkctrl_outclk\,
	d => \I_ad5441_interface_2|next_state~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_ad5441_interface_2|next_state.idle~q\);

-- Location: LCCOMB_X45_Y30_N8
\I_ad5441_interface_2|Add2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_ad5441_interface_2|Add2~6_combout\ = (\I_ad5441_interface_2|count_1\(3) & (!\I_ad5441_interface_2|Add2~5\)) # (!\I_ad5441_interface_2|count_1\(3) & ((\I_ad5441_interface_2|Add2~5\) # (GND)))
-- \I_ad5441_interface_2|Add2~7\ = CARRY((!\I_ad5441_interface_2|Add2~5\) # (!\I_ad5441_interface_2|count_1\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \I_ad5441_interface_2|count_1\(3),
	datad => VCC,
	cin => \I_ad5441_interface_2|Add2~5\,
	combout => \I_ad5441_interface_2|Add2~6_combout\,
	cout => \I_ad5441_interface_2|Add2~7\);

-- Location: LCCOMB_X45_Y30_N18
\I_ad5441_interface_2|Selector15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_ad5441_interface_2|Selector15~0_combout\ = (\I_ad5441_interface_2|next_state.idle~q\ & \I_ad5441_interface_2|Add2~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \I_ad5441_interface_2|next_state.idle~q\,
	datac => \I_ad5441_interface_2|Add2~6_combout\,
	combout => \I_ad5441_interface_2|Selector15~0_combout\);

-- Location: FF_X45_Y30_N19
\I_ad5441_interface_2|count_1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKY2~inputclkctrl_outclk\,
	d => \I_ad5441_interface_2|Selector15~0_combout\,
	sclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_ad5441_interface_2|count_1\(3));

-- Location: LCCOMB_X45_Y30_N10
\I_ad5441_interface_2|Add2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_ad5441_interface_2|Add2~8_combout\ = (\I_ad5441_interface_2|count_1\(4) & (\I_ad5441_interface_2|Add2~7\ $ (GND))) # (!\I_ad5441_interface_2|count_1\(4) & (!\I_ad5441_interface_2|Add2~7\ & VCC))
-- \I_ad5441_interface_2|Add2~9\ = CARRY((\I_ad5441_interface_2|count_1\(4) & !\I_ad5441_interface_2|Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \I_ad5441_interface_2|count_1\(4),
	datad => VCC,
	cin => \I_ad5441_interface_2|Add2~7\,
	combout => \I_ad5441_interface_2|Add2~8_combout\,
	cout => \I_ad5441_interface_2|Add2~9\);

-- Location: LCCOMB_X45_Y30_N28
\I_ad5441_interface_2|Selector14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_ad5441_interface_2|Selector14~0_combout\ = (\I_ad5441_interface_2|next_state.idle~q\ & \I_ad5441_interface_2|Add2~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \I_ad5441_interface_2|next_state.idle~q\,
	datad => \I_ad5441_interface_2|Add2~8_combout\,
	combout => \I_ad5441_interface_2|Selector14~0_combout\);

-- Location: FF_X45_Y30_N29
\I_ad5441_interface_2|count_1[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKY2~inputclkctrl_outclk\,
	d => \I_ad5441_interface_2|Selector14~0_combout\,
	sclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_ad5441_interface_2|count_1\(4));

-- Location: LCCOMB_X45_Y30_N12
\I_ad5441_interface_2|Add2~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_ad5441_interface_2|Add2~10_combout\ = (\I_ad5441_interface_2|count_1\(5) & (!\I_ad5441_interface_2|Add2~9\)) # (!\I_ad5441_interface_2|count_1\(5) & ((\I_ad5441_interface_2|Add2~9\) # (GND)))
-- \I_ad5441_interface_2|Add2~11\ = CARRY((!\I_ad5441_interface_2|Add2~9\) # (!\I_ad5441_interface_2|count_1\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \I_ad5441_interface_2|count_1\(5),
	datad => VCC,
	cin => \I_ad5441_interface_2|Add2~9\,
	combout => \I_ad5441_interface_2|Add2~10_combout\,
	cout => \I_ad5441_interface_2|Add2~11\);

-- Location: LCCOMB_X45_Y30_N30
\I_ad5441_interface_2|Selector13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_ad5441_interface_2|Selector13~0_combout\ = (\I_ad5441_interface_2|next_state.idle~q\ & \I_ad5441_interface_2|Add2~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \I_ad5441_interface_2|next_state.idle~q\,
	datad => \I_ad5441_interface_2|Add2~10_combout\,
	combout => \I_ad5441_interface_2|Selector13~0_combout\);

-- Location: FF_X45_Y30_N31
\I_ad5441_interface_2|count_1[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKY2~inputclkctrl_outclk\,
	d => \I_ad5441_interface_2|Selector13~0_combout\,
	sclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_ad5441_interface_2|count_1\(5));

-- Location: LCCOMB_X45_Y30_N14
\I_ad5441_interface_2|Add2~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_ad5441_interface_2|Add2~12_combout\ = \I_ad5441_interface_2|Add2~11\ $ (!\I_ad5441_interface_2|count_1\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \I_ad5441_interface_2|count_1\(6),
	cin => \I_ad5441_interface_2|Add2~11\,
	combout => \I_ad5441_interface_2|Add2~12_combout\);

-- Location: LCCOMB_X45_Y30_N16
\I_ad5441_interface_2|Selector12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_ad5441_interface_2|Selector12~0_combout\ = (\I_ad5441_interface_2|Add2~12_combout\ & ((\I_ad5441_interface_2|next_state.issue_ld~q\) # ((\I_ad5441_interface_2|next_state.data_transfer~q\ & !\I_ad5441_interface_2|Equal1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I_ad5441_interface_2|next_state.data_transfer~q\,
	datab => \I_ad5441_interface_2|next_state.issue_ld~q\,
	datac => \I_ad5441_interface_2|Add2~12_combout\,
	datad => \I_ad5441_interface_2|Equal1~0_combout\,
	combout => \I_ad5441_interface_2|Selector12~0_combout\);

-- Location: FF_X45_Y30_N17
\I_ad5441_interface_2|count_1[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKY2~inputclkctrl_outclk\,
	d => \I_ad5441_interface_2|Selector12~0_combout\,
	sclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_ad5441_interface_2|count_1\(6));

-- Location: LCCOMB_X45_Y30_N24
\I_ad5441_interface_2|Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_ad5441_interface_2|Equal2~0_combout\ = (!\I_ad5441_interface_2|count_1\(4) & (!\I_ad5441_interface_2|count_1\(5) & !\I_ad5441_interface_2|count_1\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \I_ad5441_interface_2|count_1\(4),
	datac => \I_ad5441_interface_2|count_1\(5),
	datad => \I_ad5441_interface_2|count_1\(3),
	combout => \I_ad5441_interface_2|Equal2~0_combout\);

-- Location: LCCOMB_X46_Y30_N6
\I_ad5441_interface_2|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_ad5441_interface_2|Equal1~0_combout\ = (\I_ad5441_interface_2|Equal3~0_combout\ & (\I_ad5441_interface_2|count_1\(6) & (\I_ad5441_interface_2|count_1\(1) & \I_ad5441_interface_2|Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I_ad5441_interface_2|Equal3~0_combout\,
	datab => \I_ad5441_interface_2|count_1\(6),
	datac => \I_ad5441_interface_2|count_1\(1),
	datad => \I_ad5441_interface_2|Equal2~0_combout\,
	combout => \I_ad5441_interface_2|Equal1~0_combout\);

-- Location: LCCOMB_X46_Y30_N30
\I_ad5441_interface_2|Selector20~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_ad5441_interface_2|Selector20~1_combout\ = (\I_ad5441_interface_2|Equal1~0_combout\ & (\dac_data_val_ch1~q\ & ((!\I_ad5441_interface_2|next_state.idle~q\)))) # (!\I_ad5441_interface_2|Equal1~0_combout\ & 
-- ((\I_ad5441_interface_2|next_state.data_transfer~q\) # ((\dac_data_val_ch1~q\ & !\I_ad5441_interface_2|next_state.idle~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I_ad5441_interface_2|Equal1~0_combout\,
	datab => \dac_data_val_ch1~q\,
	datac => \I_ad5441_interface_2|next_state.data_transfer~q\,
	datad => \I_ad5441_interface_2|next_state.idle~q\,
	combout => \I_ad5441_interface_2|Selector20~1_combout\);

-- Location: FF_X46_Y30_N31
\I_ad5441_interface_2|next_state.data_transfer\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKY2~inputclkctrl_outclk\,
	d => \I_ad5441_interface_2|Selector20~1_combout\,
	sclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_ad5441_interface_2|next_state.data_transfer~q\);

-- Location: LCCOMB_X45_Y30_N26
\I_ad5441_interface_2|Selector17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_ad5441_interface_2|Selector17~0_combout\ = (\I_ad5441_interface_2|Add2~2_combout\ & ((\I_ad5441_interface_2|next_state.issue_ld~q\) # ((\I_ad5441_interface_2|next_state.data_transfer~q\ & !\I_ad5441_interface_2|Equal1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I_ad5441_interface_2|next_state.data_transfer~q\,
	datab => \I_ad5441_interface_2|next_state.issue_ld~q\,
	datac => \I_ad5441_interface_2|Add2~2_combout\,
	datad => \I_ad5441_interface_2|Equal1~0_combout\,
	combout => \I_ad5441_interface_2|Selector17~0_combout\);

-- Location: FF_X45_Y30_N27
\I_ad5441_interface_2|count_1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKY2~inputclkctrl_outclk\,
	d => \I_ad5441_interface_2|Selector17~0_combout\,
	sclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_ad5441_interface_2|count_1\(1));

-- Location: LCCOMB_X46_Y30_N2
\I_ad5441_interface_2|Equal3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_ad5441_interface_2|Equal3~1_combout\ = (!\I_ad5441_interface_2|count_1\(1) & (\I_ad5441_interface_2|Equal2~0_combout\ & (!\I_ad5441_interface_2|count_1\(6) & \I_ad5441_interface_2|Equal3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I_ad5441_interface_2|count_1\(1),
	datab => \I_ad5441_interface_2|Equal2~0_combout\,
	datac => \I_ad5441_interface_2|count_1\(6),
	datad => \I_ad5441_interface_2|Equal3~0_combout\,
	combout => \I_ad5441_interface_2|Equal3~1_combout\);

-- Location: LCCOMB_X46_Y30_N28
\I_ad5441_interface_2|Equal2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_ad5441_interface_2|Equal2~1_combout\ = (\I_ad5441_interface_2|count_1\(0) & !\I_ad5441_interface_2|count_1\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \I_ad5441_interface_2|count_1\(0),
	datad => \I_ad5441_interface_2|count_1\(2),
	combout => \I_ad5441_interface_2|Equal2~1_combout\);

-- Location: LCCOMB_X50_Y30_N18
\I_ad5441_interface_2|Equal2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_ad5441_interface_2|Equal2~2_combout\ = (!\I_ad5441_interface_2|count_1\(6) & (!\I_ad5441_interface_2|count_1\(1) & (\I_ad5441_interface_2|Equal2~0_combout\ & \I_ad5441_interface_2|Equal2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I_ad5441_interface_2|count_1\(6),
	datab => \I_ad5441_interface_2|count_1\(1),
	datac => \I_ad5441_interface_2|Equal2~0_combout\,
	datad => \I_ad5441_interface_2|Equal2~1_combout\,
	combout => \I_ad5441_interface_2|Equal2~2_combout\);

-- Location: LCCOMB_X50_Y30_N14
\I_ad5441_interface_2|dac_ld_n_t~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_ad5441_interface_2|dac_ld_n_t~1_combout\ = ((!\I_ad5441_interface_2|Equal2~2_combout\ & ((\I_ad5441_interface_2|Equal3~1_combout\) # (\I_ad5441_interface_2|dac_ld_n_t~q\)))) # (!\I_ad5441_interface_2|next_state.issue_ld~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I_ad5441_interface_2|Equal3~1_combout\,
	datab => \I_ad5441_interface_2|next_state.issue_ld~q\,
	datac => \I_ad5441_interface_2|dac_ld_n_t~q\,
	datad => \I_ad5441_interface_2|Equal2~2_combout\,
	combout => \I_ad5441_interface_2|dac_ld_n_t~1_combout\);

-- Location: FF_X50_Y30_N15
\I_ad5441_interface_2|dac_ld_n_t\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKY2~inputclkctrl_outclk\,
	d => \I_ad5441_interface_2|dac_ld_n_t~1_combout\,
	asdata => VCC,
	sload => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_ad5441_interface_2|dac_ld_n_t~q\);

-- Location: LCCOMB_X50_Y30_N22
\I_ad5441_interface_2|count_3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_ad5441_interface_2|count_3~1_combout\ = (\I_ad5441_interface_2|next_state.data_transfer~q\ & (\I_ad5441_interface_2|count_3\(1) & (!\I_ad5441_interface_2|count_3\(0) & !\reset~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I_ad5441_interface_2|next_state.data_transfer~q\,
	datab => \I_ad5441_interface_2|count_3\(1),
	datac => \I_ad5441_interface_2|count_3\(0),
	datad => \reset~combout\,
	combout => \I_ad5441_interface_2|count_3~1_combout\);

-- Location: FF_X50_Y30_N23
\I_ad5441_interface_2|count_3[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKY2~inputclkctrl_outclk\,
	d => \I_ad5441_interface_2|count_3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_ad5441_interface_2|count_3\(0));

-- Location: LCCOMB_X50_Y30_N20
\I_ad5441_interface_2|count_3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_ad5441_interface_2|count_3~0_combout\ = (\I_ad5441_interface_2|next_state.data_transfer~q\ & (!\reset~combout\ & (\I_ad5441_interface_2|count_3\(0) $ (!\I_ad5441_interface_2|count_3\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I_ad5441_interface_2|count_3\(0),
	datab => \I_ad5441_interface_2|next_state.data_transfer~q\,
	datac => \I_ad5441_interface_2|count_3\(1),
	datad => \reset~combout\,
	combout => \I_ad5441_interface_2|count_3~0_combout\);

-- Location: FF_X50_Y30_N21
\I_ad5441_interface_2|count_3[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKY2~inputclkctrl_outclk\,
	d => \I_ad5441_interface_2|count_3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_ad5441_interface_2|count_3\(1));

-- Location: LCCOMB_X50_Y30_N24
\I_ad5441_interface_2|dac_clk_t~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_ad5441_interface_2|dac_clk_t~1_combout\ = (\I_ad5441_interface_2|dac_clk_t~q\ $ (((!\I_ad5441_interface_2|count_3\(0) & !\I_ad5441_interface_2|count_3\(1))))) # (!\I_ad5441_interface_2|next_state.data_transfer~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I_ad5441_interface_2|count_3\(0),
	datab => \I_ad5441_interface_2|count_3\(1),
	datac => \I_ad5441_interface_2|dac_clk_t~q\,
	datad => \I_ad5441_interface_2|next_state.data_transfer~q\,
	combout => \I_ad5441_interface_2|dac_clk_t~1_combout\);

-- Location: FF_X50_Y30_N25
\I_ad5441_interface_2|dac_clk_t\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKY2~inputclkctrl_outclk\,
	d => \I_ad5441_interface_2|dac_clk_t~1_combout\,
	asdata => VCC,
	sload => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_ad5441_interface_2|dac_clk_t~q\);

-- Location: LCCOMB_X50_Y30_N12
\I_ad5441_interface_2|process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_ad5441_interface_2|process_0~0_combout\ = (\I_ad5441_interface_2|count_3\(1)) # ((\I_ad5441_interface_2|count_3\(0)) # (!\I_ad5441_interface_2|dac_clk_t~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \I_ad5441_interface_2|count_3\(1),
	datac => \I_ad5441_interface_2|count_3\(0),
	datad => \I_ad5441_interface_2|dac_clk_t~q\,
	combout => \I_ad5441_interface_2|process_0~0_combout\);

-- Location: LCCOMB_X50_Y30_N26
\I_ad5441_interface_2|count_2~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_ad5441_interface_2|count_2~7_combout\ = (\I_ad5441_interface_2|next_state.data_transfer~q\ & (\I_power_on_reset|reset_t~q\ & (!\I_ad5441_interface_2|count_2\(0) & !\sw_0_deb~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I_ad5441_interface_2|next_state.data_transfer~q\,
	datab => \I_power_on_reset|reset_t~q\,
	datac => \I_ad5441_interface_2|count_2\(0),
	datad => \sw_0_deb~q\,
	combout => \I_ad5441_interface_2|count_2~7_combout\);

-- Location: LCCOMB_X50_Y31_N12
\I_ad5441_interface_2|count_2[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_ad5441_interface_2|count_2[0]~feeder_combout\ = \I_ad5441_interface_2|count_2~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \I_ad5441_interface_2|count_2~7_combout\,
	combout => \I_ad5441_interface_2|count_2[0]~feeder_combout\);

-- Location: LCCOMB_X50_Y30_N0
\I_ad5441_interface_2|count_2[3]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_ad5441_interface_2|count_2[3]~8_combout\ = (\sw_0_deb~q\) # (((!\I_ad5441_interface_2|process_0~0_combout\) # (!\I_ad5441_interface_2|next_state.data_transfer~q\)) # (!\I_power_on_reset|reset_t~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw_0_deb~q\,
	datab => \I_power_on_reset|reset_t~q\,
	datac => \I_ad5441_interface_2|next_state.data_transfer~q\,
	datad => \I_ad5441_interface_2|process_0~0_combout\,
	combout => \I_ad5441_interface_2|count_2[3]~8_combout\);

-- Location: FF_X50_Y31_N13
\I_ad5441_interface_2|count_2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKY2~inputclkctrl_outclk\,
	d => \I_ad5441_interface_2|count_2[0]~feeder_combout\,
	ena => \I_ad5441_interface_2|count_2[3]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_ad5441_interface_2|count_2\(0));

-- Location: LCCOMB_X51_Y29_N12
\I_ad5441_interface_2|count_2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_ad5441_interface_2|count_2~6_combout\ = (!\reset~combout\ & (\I_ad5441_interface_2|next_state.data_transfer~q\ & (\I_ad5441_interface_2|count_2\(1) $ (!\I_ad5441_interface_2|count_2\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~combout\,
	datab => \I_ad5441_interface_2|next_state.data_transfer~q\,
	datac => \I_ad5441_interface_2|count_2\(1),
	datad => \I_ad5441_interface_2|count_2\(0),
	combout => \I_ad5441_interface_2|count_2~6_combout\);

-- Location: FF_X51_Y29_N13
\I_ad5441_interface_2|count_2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKY2~inputclkctrl_outclk\,
	d => \I_ad5441_interface_2|count_2~6_combout\,
	ena => \I_ad5441_interface_2|count_2[3]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_ad5441_interface_2|count_2\(1));

-- Location: LCCOMB_X50_Y30_N10
\I_ad5441_interface_2|Add1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_ad5441_interface_2|Add1~1_combout\ = \I_ad5441_interface_2|count_2\(2) $ (((\I_ad5441_interface_2|count_2\(1)) # (\I_ad5441_interface_2|count_2\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I_ad5441_interface_2|count_2\(2),
	datab => \I_ad5441_interface_2|count_2\(1),
	datac => \I_ad5441_interface_2|count_2\(0),
	combout => \I_ad5441_interface_2|Add1~1_combout\);

-- Location: LCCOMB_X50_Y30_N30
\I_ad5441_interface_2|count_2~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_ad5441_interface_2|count_2~10_combout\ = (\sw_0_deb~q\) # (((!\I_ad5441_interface_2|Add1~1_combout\) # (!\I_power_on_reset|reset_t~q\)) # (!\I_ad5441_interface_2|next_state.data_transfer~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw_0_deb~q\,
	datab => \I_ad5441_interface_2|next_state.data_transfer~q\,
	datac => \I_power_on_reset|reset_t~q\,
	datad => \I_ad5441_interface_2|Add1~1_combout\,
	combout => \I_ad5441_interface_2|count_2~10_combout\);

-- Location: FF_X50_Y30_N31
\I_ad5441_interface_2|count_2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKY2~inputclkctrl_outclk\,
	d => \I_ad5441_interface_2|count_2~10_combout\,
	ena => \I_ad5441_interface_2|count_2[3]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_ad5441_interface_2|count_2\(2));

-- Location: LCCOMB_X50_Y30_N8
\I_ad5441_interface_2|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_ad5441_interface_2|Add1~0_combout\ = \I_ad5441_interface_2|count_2\(3) $ (((\I_ad5441_interface_2|count_2\(2)) # ((\I_ad5441_interface_2|count_2\(1)) # (\I_ad5441_interface_2|count_2\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I_ad5441_interface_2|count_2\(2),
	datab => \I_ad5441_interface_2|count_2\(1),
	datac => \I_ad5441_interface_2|count_2\(0),
	datad => \I_ad5441_interface_2|count_2\(3),
	combout => \I_ad5441_interface_2|Add1~0_combout\);

-- Location: LCCOMB_X50_Y30_N28
\I_ad5441_interface_2|count_2~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_ad5441_interface_2|count_2~9_combout\ = (((\sw_0_deb~q\) # (!\I_ad5441_interface_2|Add1~0_combout\)) # (!\I_power_on_reset|reset_t~q\)) # (!\I_ad5441_interface_2|next_state.data_transfer~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I_ad5441_interface_2|next_state.data_transfer~q\,
	datab => \I_power_on_reset|reset_t~q\,
	datac => \I_ad5441_interface_2|Add1~0_combout\,
	datad => \sw_0_deb~q\,
	combout => \I_ad5441_interface_2|count_2~9_combout\);

-- Location: FF_X50_Y30_N29
\I_ad5441_interface_2|count_2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKY2~inputclkctrl_outclk\,
	d => \I_ad5441_interface_2|count_2~9_combout\,
	ena => \I_ad5441_interface_2|count_2[3]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_ad5441_interface_2|count_2\(3));

-- Location: LCCOMB_X50_Y29_N0
\I_ad5441_interface_2|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_ad5441_interface_2|Selector0~0_combout\ = (\I_ad5441_interface_2|next_state.idle~q\ & (\I_ad5441_interface_2|next_state.data_transfer~q\ & (\I_ad5441_interface_2|dac_data_t\(12)))) # (!\I_ad5441_interface_2|next_state.idle~q\ & ((dac_data_ch0(11)) # 
-- ((\I_ad5441_interface_2|next_state.data_transfer~q\ & \I_ad5441_interface_2|dac_data_t\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I_ad5441_interface_2|next_state.idle~q\,
	datab => \I_ad5441_interface_2|next_state.data_transfer~q\,
	datac => \I_ad5441_interface_2|dac_data_t\(12),
	datad => dac_data_ch0(11),
	combout => \I_ad5441_interface_2|Selector0~0_combout\);

-- Location: FF_X50_Y29_N1
\I_ad5441_interface_2|dac_data_t[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKY2~inputclkctrl_outclk\,
	d => \I_ad5441_interface_2|Selector0~0_combout\,
	sclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_ad5441_interface_2|dac_data_t\(12));

-- Location: LCCOMB_X50_Y29_N22
\I_ad5441_interface_2|Mux0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_ad5441_interface_2|Mux0~7_combout\ = (\I_ad5441_interface_2|dac_data_t\(12) & (!\I_ad5441_interface_2|count_2\(1) & !\I_ad5441_interface_2|count_2\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \I_ad5441_interface_2|dac_data_t\(12),
	datac => \I_ad5441_interface_2|count_2\(1),
	datad => \I_ad5441_interface_2|count_2\(0),
	combout => \I_ad5441_interface_2|Mux0~7_combout\);

-- Location: LCCOMB_X52_Y29_N12
\I_ad5441_interface_2|Selector10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_ad5441_interface_2|Selector10~0_combout\ = (dac_data_ch0(1) & (((\I_ad5441_interface_2|next_state.data_transfer~q\ & \I_ad5441_interface_2|dac_data_t\(2))) # (!\I_ad5441_interface_2|next_state.idle~q\))) # (!dac_data_ch0(1) & 
-- (\I_ad5441_interface_2|next_state.data_transfer~q\ & (\I_ad5441_interface_2|dac_data_t\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dac_data_ch0(1),
	datab => \I_ad5441_interface_2|next_state.data_transfer~q\,
	datac => \I_ad5441_interface_2|dac_data_t\(2),
	datad => \I_ad5441_interface_2|next_state.idle~q\,
	combout => \I_ad5441_interface_2|Selector10~0_combout\);

-- Location: FF_X52_Y29_N13
\I_ad5441_interface_2|dac_data_t[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKY2~inputclkctrl_outclk\,
	d => \I_ad5441_interface_2|Selector10~0_combout\,
	sclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_ad5441_interface_2|dac_data_t\(2));

-- Location: LCCOMB_X50_Y29_N18
\I_ad5441_interface_2|Selector9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_ad5441_interface_2|Selector9~0_combout\ = (\I_ad5441_interface_2|next_state.idle~q\ & (\I_ad5441_interface_2|next_state.data_transfer~q\ & (\I_ad5441_interface_2|dac_data_t\(3)))) # (!\I_ad5441_interface_2|next_state.idle~q\ & ((dac_data_ch0(2)) # 
-- ((\I_ad5441_interface_2|next_state.data_transfer~q\ & \I_ad5441_interface_2|dac_data_t\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I_ad5441_interface_2|next_state.idle~q\,
	datab => \I_ad5441_interface_2|next_state.data_transfer~q\,
	datac => \I_ad5441_interface_2|dac_data_t\(3),
	datad => dac_data_ch0(2),
	combout => \I_ad5441_interface_2|Selector9~0_combout\);

-- Location: FF_X50_Y29_N19
\I_ad5441_interface_2|dac_data_t[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKY2~inputclkctrl_outclk\,
	d => \I_ad5441_interface_2|Selector9~0_combout\,
	sclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_ad5441_interface_2|dac_data_t\(3));

-- Location: LCCOMB_X52_Y29_N30
\I_ad5441_interface_2|Selector11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_ad5441_interface_2|Selector11~0_combout\ = (dac_data_ch0(0) & (((\I_ad5441_interface_2|next_state.data_transfer~q\ & \I_ad5441_interface_2|dac_data_t\(1))) # (!\I_ad5441_interface_2|next_state.idle~q\))) # (!dac_data_ch0(0) & 
-- (\I_ad5441_interface_2|next_state.data_transfer~q\ & (\I_ad5441_interface_2|dac_data_t\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dac_data_ch0(0),
	datab => \I_ad5441_interface_2|next_state.data_transfer~q\,
	datac => \I_ad5441_interface_2|dac_data_t\(1),
	datad => \I_ad5441_interface_2|next_state.idle~q\,
	combout => \I_ad5441_interface_2|Selector11~0_combout\);

-- Location: FF_X52_Y29_N31
\I_ad5441_interface_2|dac_data_t[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKY2~inputclkctrl_outclk\,
	d => \I_ad5441_interface_2|Selector11~0_combout\,
	sclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_ad5441_interface_2|dac_data_t\(1));

-- Location: LCCOMB_X51_Y29_N6
\I_ad5441_interface_2|Mux0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_ad5441_interface_2|Mux0~4_combout\ = (\I_ad5441_interface_2|count_2\(0) & ((\I_ad5441_interface_2|count_2\(1) & (\I_ad5441_interface_2|dac_data_t\(3))) # (!\I_ad5441_interface_2|count_2\(1) & ((\I_ad5441_interface_2|dac_data_t\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I_ad5441_interface_2|count_2\(1),
	datab => \I_ad5441_interface_2|dac_data_t\(3),
	datac => \I_ad5441_interface_2|dac_data_t\(1),
	datad => \I_ad5441_interface_2|count_2\(0),
	combout => \I_ad5441_interface_2|Mux0~4_combout\);

-- Location: LCCOMB_X51_Y29_N8
\I_ad5441_interface_2|Mux0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_ad5441_interface_2|Mux0~5_combout\ = (\I_ad5441_interface_2|Mux0~4_combout\) # ((\I_ad5441_interface_2|count_2\(1) & (!\I_ad5441_interface_2|count_2\(0) & \I_ad5441_interface_2|dac_data_t\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I_ad5441_interface_2|count_2\(1),
	datab => \I_ad5441_interface_2|count_2\(0),
	datac => \I_ad5441_interface_2|dac_data_t\(2),
	datad => \I_ad5441_interface_2|Mux0~4_combout\,
	combout => \I_ad5441_interface_2|Mux0~5_combout\);

-- Location: LCCOMB_X52_Y29_N16
\I_ad5441_interface_2|Selector6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_ad5441_interface_2|Selector6~0_combout\ = (dac_data_ch0(5) & (((\I_ad5441_interface_2|next_state.data_transfer~q\ & \I_ad5441_interface_2|dac_data_t\(6))) # (!\I_ad5441_interface_2|next_state.idle~q\))) # (!dac_data_ch0(5) & 
-- (\I_ad5441_interface_2|next_state.data_transfer~q\ & (\I_ad5441_interface_2|dac_data_t\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dac_data_ch0(5),
	datab => \I_ad5441_interface_2|next_state.data_transfer~q\,
	datac => \I_ad5441_interface_2|dac_data_t\(6),
	datad => \I_ad5441_interface_2|next_state.idle~q\,
	combout => \I_ad5441_interface_2|Selector6~0_combout\);

-- Location: FF_X52_Y29_N17
\I_ad5441_interface_2|dac_data_t[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKY2~inputclkctrl_outclk\,
	d => \I_ad5441_interface_2|Selector6~0_combout\,
	sclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_ad5441_interface_2|dac_data_t\(6));

-- Location: LCCOMB_X52_Y30_N20
\I_ad5441_interface_2|Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_ad5441_interface_2|Selector5~0_combout\ = (\I_ad5441_interface_2|next_state.idle~q\ & (\I_ad5441_interface_2|next_state.data_transfer~q\ & (\I_ad5441_interface_2|dac_data_t\(7)))) # (!\I_ad5441_interface_2|next_state.idle~q\ & ((dac_data_ch0(6)) # 
-- ((\I_ad5441_interface_2|next_state.data_transfer~q\ & \I_ad5441_interface_2|dac_data_t\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I_ad5441_interface_2|next_state.idle~q\,
	datab => \I_ad5441_interface_2|next_state.data_transfer~q\,
	datac => \I_ad5441_interface_2|dac_data_t\(7),
	datad => dac_data_ch0(6),
	combout => \I_ad5441_interface_2|Selector5~0_combout\);

-- Location: FF_X52_Y30_N21
\I_ad5441_interface_2|dac_data_t[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKY2~inputclkctrl_outclk\,
	d => \I_ad5441_interface_2|Selector5~0_combout\,
	sclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_ad5441_interface_2|dac_data_t\(7));

-- Location: LCCOMB_X52_Y29_N26
\I_ad5441_interface_2|Selector7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_ad5441_interface_2|Selector7~0_combout\ = (dac_data_ch0(4) & (((\I_ad5441_interface_2|next_state.data_transfer~q\ & \I_ad5441_interface_2|dac_data_t\(5))) # (!\I_ad5441_interface_2|next_state.idle~q\))) # (!dac_data_ch0(4) & 
-- (\I_ad5441_interface_2|next_state.data_transfer~q\ & (\I_ad5441_interface_2|dac_data_t\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dac_data_ch0(4),
	datab => \I_ad5441_interface_2|next_state.data_transfer~q\,
	datac => \I_ad5441_interface_2|dac_data_t\(5),
	datad => \I_ad5441_interface_2|next_state.idle~q\,
	combout => \I_ad5441_interface_2|Selector7~0_combout\);

-- Location: FF_X52_Y29_N27
\I_ad5441_interface_2|dac_data_t[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKY2~inputclkctrl_outclk\,
	d => \I_ad5441_interface_2|Selector7~0_combout\,
	sclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_ad5441_interface_2|dac_data_t\(5));

-- Location: LCCOMB_X52_Y29_N8
\I_ad5441_interface_2|Selector8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_ad5441_interface_2|Selector8~0_combout\ = (dac_data_ch0(3) & (((\I_ad5441_interface_2|next_state.data_transfer~q\ & \I_ad5441_interface_2|dac_data_t\(4))) # (!\I_ad5441_interface_2|next_state.idle~q\))) # (!dac_data_ch0(3) & 
-- (\I_ad5441_interface_2|next_state.data_transfer~q\ & (\I_ad5441_interface_2|dac_data_t\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dac_data_ch0(3),
	datab => \I_ad5441_interface_2|next_state.data_transfer~q\,
	datac => \I_ad5441_interface_2|dac_data_t\(4),
	datad => \I_ad5441_interface_2|next_state.idle~q\,
	combout => \I_ad5441_interface_2|Selector8~0_combout\);

-- Location: FF_X52_Y29_N9
\I_ad5441_interface_2|dac_data_t[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKY2~inputclkctrl_outclk\,
	d => \I_ad5441_interface_2|Selector8~0_combout\,
	sclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_ad5441_interface_2|dac_data_t\(4));

-- Location: LCCOMB_X51_Y29_N10
\I_ad5441_interface_2|Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_ad5441_interface_2|Mux0~2_combout\ = (\I_ad5441_interface_2|count_2\(1) & (((\I_ad5441_interface_2|count_2\(0))))) # (!\I_ad5441_interface_2|count_2\(1) & ((\I_ad5441_interface_2|count_2\(0) & (\I_ad5441_interface_2|dac_data_t\(5))) # 
-- (!\I_ad5441_interface_2|count_2\(0) & ((\I_ad5441_interface_2|dac_data_t\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I_ad5441_interface_2|count_2\(1),
	datab => \I_ad5441_interface_2|dac_data_t\(5),
	datac => \I_ad5441_interface_2|dac_data_t\(4),
	datad => \I_ad5441_interface_2|count_2\(0),
	combout => \I_ad5441_interface_2|Mux0~2_combout\);

-- Location: LCCOMB_X51_Y29_N28
\I_ad5441_interface_2|Mux0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_ad5441_interface_2|Mux0~3_combout\ = (\I_ad5441_interface_2|count_2\(1) & ((\I_ad5441_interface_2|Mux0~2_combout\ & ((\I_ad5441_interface_2|dac_data_t\(7)))) # (!\I_ad5441_interface_2|Mux0~2_combout\ & (\I_ad5441_interface_2|dac_data_t\(6))))) # 
-- (!\I_ad5441_interface_2|count_2\(1) & (((\I_ad5441_interface_2|Mux0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I_ad5441_interface_2|count_2\(1),
	datab => \I_ad5441_interface_2|dac_data_t\(6),
	datac => \I_ad5441_interface_2|dac_data_t\(7),
	datad => \I_ad5441_interface_2|Mux0~2_combout\,
	combout => \I_ad5441_interface_2|Mux0~3_combout\);

-- Location: LCCOMB_X51_Y29_N26
\I_ad5441_interface_2|Mux0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_ad5441_interface_2|Mux0~6_combout\ = (\I_ad5441_interface_2|count_2\(3) & (\I_ad5441_interface_2|count_2\(2))) # (!\I_ad5441_interface_2|count_2\(3) & ((\I_ad5441_interface_2|count_2\(2) & ((\I_ad5441_interface_2|Mux0~3_combout\))) # 
-- (!\I_ad5441_interface_2|count_2\(2) & (\I_ad5441_interface_2|Mux0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I_ad5441_interface_2|count_2\(3),
	datab => \I_ad5441_interface_2|count_2\(2),
	datac => \I_ad5441_interface_2|Mux0~5_combout\,
	datad => \I_ad5441_interface_2|Mux0~3_combout\,
	combout => \I_ad5441_interface_2|Mux0~6_combout\);

-- Location: LCCOMB_X50_Y29_N6
\I_ad5441_interface_2|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_ad5441_interface_2|Selector2~0_combout\ = (\I_ad5441_interface_2|next_state.idle~q\ & (\I_ad5441_interface_2|next_state.data_transfer~q\ & (\I_ad5441_interface_2|dac_data_t\(10)))) # (!\I_ad5441_interface_2|next_state.idle~q\ & ((dac_data_ch0(9)) # 
-- ((\I_ad5441_interface_2|next_state.data_transfer~q\ & \I_ad5441_interface_2|dac_data_t\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I_ad5441_interface_2|next_state.idle~q\,
	datab => \I_ad5441_interface_2|next_state.data_transfer~q\,
	datac => \I_ad5441_interface_2|dac_data_t\(10),
	datad => dac_data_ch0(9),
	combout => \I_ad5441_interface_2|Selector2~0_combout\);

-- Location: FF_X50_Y29_N7
\I_ad5441_interface_2|dac_data_t[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKY2~inputclkctrl_outclk\,
	d => \I_ad5441_interface_2|Selector2~0_combout\,
	sclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_ad5441_interface_2|dac_data_t\(10));

-- Location: LCCOMB_X50_Y29_N4
\I_ad5441_interface_2|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_ad5441_interface_2|Selector1~0_combout\ = (\I_ad5441_interface_2|next_state.idle~q\ & (\I_ad5441_interface_2|next_state.data_transfer~q\ & (\I_ad5441_interface_2|dac_data_t\(11)))) # (!\I_ad5441_interface_2|next_state.idle~q\ & ((dac_data_ch0(10)) # 
-- ((\I_ad5441_interface_2|next_state.data_transfer~q\ & \I_ad5441_interface_2|dac_data_t\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I_ad5441_interface_2|next_state.idle~q\,
	datab => \I_ad5441_interface_2|next_state.data_transfer~q\,
	datac => \I_ad5441_interface_2|dac_data_t\(11),
	datad => dac_data_ch0(10),
	combout => \I_ad5441_interface_2|Selector1~0_combout\);

-- Location: FF_X50_Y29_N5
\I_ad5441_interface_2|dac_data_t[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKY2~inputclkctrl_outclk\,
	d => \I_ad5441_interface_2|Selector1~0_combout\,
	sclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_ad5441_interface_2|dac_data_t\(11));

-- Location: LCCOMB_X50_Y29_N10
\I_ad5441_interface_2|Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_ad5441_interface_2|Selector4~0_combout\ = (\I_ad5441_interface_2|next_state.idle~q\ & (\I_ad5441_interface_2|next_state.data_transfer~q\ & (\I_ad5441_interface_2|dac_data_t\(8)))) # (!\I_ad5441_interface_2|next_state.idle~q\ & ((dac_data_ch0(7)) # 
-- ((\I_ad5441_interface_2|next_state.data_transfer~q\ & \I_ad5441_interface_2|dac_data_t\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I_ad5441_interface_2|next_state.idle~q\,
	datab => \I_ad5441_interface_2|next_state.data_transfer~q\,
	datac => \I_ad5441_interface_2|dac_data_t\(8),
	datad => dac_data_ch0(7),
	combout => \I_ad5441_interface_2|Selector4~0_combout\);

-- Location: FF_X50_Y29_N11
\I_ad5441_interface_2|dac_data_t[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKY2~inputclkctrl_outclk\,
	d => \I_ad5441_interface_2|Selector4~0_combout\,
	sclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_ad5441_interface_2|dac_data_t\(8));

-- Location: LCCOMB_X50_Y29_N16
\I_ad5441_interface_2|Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_ad5441_interface_2|Selector3~0_combout\ = (\I_ad5441_interface_2|next_state.idle~q\ & (\I_ad5441_interface_2|next_state.data_transfer~q\ & (\I_ad5441_interface_2|dac_data_t\(9)))) # (!\I_ad5441_interface_2|next_state.idle~q\ & ((dac_data_ch0(8)) # 
-- ((\I_ad5441_interface_2|next_state.data_transfer~q\ & \I_ad5441_interface_2|dac_data_t\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I_ad5441_interface_2|next_state.idle~q\,
	datab => \I_ad5441_interface_2|next_state.data_transfer~q\,
	datac => \I_ad5441_interface_2|dac_data_t\(9),
	datad => dac_data_ch0(8),
	combout => \I_ad5441_interface_2|Selector3~0_combout\);

-- Location: FF_X50_Y29_N17
\I_ad5441_interface_2|dac_data_t[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKY2~inputclkctrl_outclk\,
	d => \I_ad5441_interface_2|Selector3~0_combout\,
	sclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_ad5441_interface_2|dac_data_t\(9));

-- Location: LCCOMB_X50_Y29_N2
\I_ad5441_interface_2|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_ad5441_interface_2|Mux0~0_combout\ = (\I_ad5441_interface_2|count_2\(1) & (((\I_ad5441_interface_2|count_2\(0))))) # (!\I_ad5441_interface_2|count_2\(1) & ((\I_ad5441_interface_2|count_2\(0) & ((\I_ad5441_interface_2|dac_data_t\(9)))) # 
-- (!\I_ad5441_interface_2|count_2\(0) & (\I_ad5441_interface_2|dac_data_t\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I_ad5441_interface_2|dac_data_t\(8),
	datab => \I_ad5441_interface_2|dac_data_t\(9),
	datac => \I_ad5441_interface_2|count_2\(1),
	datad => \I_ad5441_interface_2|count_2\(0),
	combout => \I_ad5441_interface_2|Mux0~0_combout\);

-- Location: LCCOMB_X50_Y29_N8
\I_ad5441_interface_2|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_ad5441_interface_2|Mux0~1_combout\ = (\I_ad5441_interface_2|count_2\(1) & ((\I_ad5441_interface_2|Mux0~0_combout\ & ((\I_ad5441_interface_2|dac_data_t\(11)))) # (!\I_ad5441_interface_2|Mux0~0_combout\ & (\I_ad5441_interface_2|dac_data_t\(10))))) # 
-- (!\I_ad5441_interface_2|count_2\(1) & (((\I_ad5441_interface_2|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I_ad5441_interface_2|dac_data_t\(10),
	datab => \I_ad5441_interface_2|count_2\(1),
	datac => \I_ad5441_interface_2|dac_data_t\(11),
	datad => \I_ad5441_interface_2|Mux0~0_combout\,
	combout => \I_ad5441_interface_2|Mux0~1_combout\);

-- Location: LCCOMB_X51_Y29_N24
\I_ad5441_interface_2|Mux0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_ad5441_interface_2|Mux0~8_combout\ = (\I_ad5441_interface_2|count_2\(3) & ((\I_ad5441_interface_2|Mux0~6_combout\ & (\I_ad5441_interface_2|Mux0~7_combout\)) # (!\I_ad5441_interface_2|Mux0~6_combout\ & ((\I_ad5441_interface_2|Mux0~1_combout\))))) # 
-- (!\I_ad5441_interface_2|count_2\(3) & (((\I_ad5441_interface_2|Mux0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I_ad5441_interface_2|count_2\(3),
	datab => \I_ad5441_interface_2|Mux0~7_combout\,
	datac => \I_ad5441_interface_2|Mux0~6_combout\,
	datad => \I_ad5441_interface_2|Mux0~1_combout\,
	combout => \I_ad5441_interface_2|Mux0~8_combout\);

-- Location: LCCOMB_X51_Y29_N20
\I_ad5441_interface_2|dac_sri_t~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_ad5441_interface_2|dac_sri_t~0_combout\ = (\I_ad5441_interface_2|process_0~0_combout\ & (\I_ad5441_interface_2|dac_sri_t~q\)) # (!\I_ad5441_interface_2|process_0~0_combout\ & ((\I_ad5441_interface_2|Mux0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \I_ad5441_interface_2|process_0~0_combout\,
	datac => \I_ad5441_interface_2|dac_sri_t~q\,
	datad => \I_ad5441_interface_2|Mux0~8_combout\,
	combout => \I_ad5441_interface_2|dac_sri_t~0_combout\);

-- Location: FF_X51_Y29_N21
\I_ad5441_interface_2|dac_sri_t\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKY2~inputclkctrl_outclk\,
	d => \I_ad5441_interface_2|dac_sri_t~0_combout\,
	asdata => \~GND~combout\,
	sclr => \reset~combout\,
	sload => \I_ad5441_interface_2|ALT_INV_next_state.data_transfer~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_ad5441_interface_2|dac_sri_t~q\);

-- Location: LCCOMB_X51_Y31_N16
\dac_data_ch1~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac_data_ch1~11_combout\ = (\I_ads8330_interface|adc_data\(16) & \dac_data_ch0[0]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I_ads8330_interface|adc_data\(16),
	datac => \dac_data_ch0[0]~1_combout\,
	combout => \dac_data_ch1~11_combout\);

-- Location: LCCOMB_X52_Y30_N16
\init_flag~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \init_flag~0_combout\ = (\sw_0_deb~q\) # ((\I_ads8330_interface|data_val~q\) # (!\I_power_on_reset|reset_t~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sw_0_deb~q\,
	datac => \I_ads8330_interface|data_val~q\,
	datad => \I_power_on_reset|reset_t~q\,
	combout => \init_flag~0_combout\);

-- Location: FF_X51_Y31_N17
\dac_data_ch1[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKY2~inputclkctrl_outclk\,
	d => \dac_data_ch1~11_combout\,
	ena => \init_flag~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dac_data_ch1(11));

-- Location: LCCOMB_X51_Y31_N8
\I_ad5441_interface_4|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_ad5441_interface_4|Selector0~0_combout\ = (\I_ad5441_interface_2|next_state.idle~q\ & (((\I_ad5441_interface_4|dac_data_t\(12) & \I_ad5441_interface_2|next_state.data_transfer~q\)))) # (!\I_ad5441_interface_2|next_state.idle~q\ & ((dac_data_ch1(11)) # 
-- ((\I_ad5441_interface_4|dac_data_t\(12) & \I_ad5441_interface_2|next_state.data_transfer~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I_ad5441_interface_2|next_state.idle~q\,
	datab => dac_data_ch1(11),
	datac => \I_ad5441_interface_4|dac_data_t\(12),
	datad => \I_ad5441_interface_2|next_state.data_transfer~q\,
	combout => \I_ad5441_interface_4|Selector0~0_combout\);

-- Location: FF_X51_Y31_N9
\I_ad5441_interface_4|dac_data_t[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKY2~inputclkctrl_outclk\,
	d => \I_ad5441_interface_4|Selector0~0_combout\,
	sclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_ad5441_interface_4|dac_data_t\(12));

-- Location: LCCOMB_X51_Y29_N0
\I_ad5441_interface_4|Mux0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_ad5441_interface_4|Mux0~7_combout\ = (!\I_ad5441_interface_2|count_2\(1) & (\I_ad5441_interface_4|dac_data_t\(12) & !\I_ad5441_interface_2|count_2\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I_ad5441_interface_2|count_2\(1),
	datac => \I_ad5441_interface_4|dac_data_t\(12),
	datad => \I_ad5441_interface_2|count_2\(0),
	combout => \I_ad5441_interface_4|Mux0~7_combout\);

-- Location: LCCOMB_X51_Y30_N8
\dac_data_ch1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac_data_ch1~10_combout\ = (\dac_data_ch0[0]~1_combout\ & \I_ads8330_interface|adc_data\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dac_data_ch0[0]~1_combout\,
	datad => \I_ads8330_interface|adc_data\(6),
	combout => \dac_data_ch1~10_combout\);

-- Location: FF_X51_Y30_N9
\dac_data_ch1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKY2~inputclkctrl_outclk\,
	d => \dac_data_ch1~10_combout\,
	ena => \init_flag~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dac_data_ch1(1));

-- Location: LCCOMB_X52_Y29_N10
\I_ad5441_interface_4|Selector10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_ad5441_interface_4|Selector10~0_combout\ = (\I_ad5441_interface_2|next_state.data_transfer~q\ & ((\I_ad5441_interface_4|dac_data_t\(2)) # ((dac_data_ch1(1) & !\I_ad5441_interface_2|next_state.idle~q\)))) # 
-- (!\I_ad5441_interface_2|next_state.data_transfer~q\ & (dac_data_ch1(1) & ((!\I_ad5441_interface_2|next_state.idle~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I_ad5441_interface_2|next_state.data_transfer~q\,
	datab => dac_data_ch1(1),
	datac => \I_ad5441_interface_4|dac_data_t\(2),
	datad => \I_ad5441_interface_2|next_state.idle~q\,
	combout => \I_ad5441_interface_4|Selector10~0_combout\);

-- Location: FF_X52_Y29_N11
\I_ad5441_interface_4|dac_data_t[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKY2~inputclkctrl_outclk\,
	d => \I_ad5441_interface_4|Selector10~0_combout\,
	sclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_ad5441_interface_4|dac_data_t\(2));

-- Location: LCCOMB_X52_Y31_N6
\dac_data_ch1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac_data_ch1~8_combout\ = (\I_ads8330_interface|adc_data\(7) & \dac_data_ch0[0]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \I_ads8330_interface|adc_data\(7),
	datad => \dac_data_ch0[0]~1_combout\,
	combout => \dac_data_ch1~8_combout\);

-- Location: FF_X52_Y31_N7
\dac_data_ch1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKY2~inputclkctrl_outclk\,
	d => \dac_data_ch1~8_combout\,
	ena => \init_flag~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dac_data_ch1(2));

-- Location: LCCOMB_X52_Y29_N18
\I_ad5441_interface_4|Selector9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_ad5441_interface_4|Selector9~0_combout\ = (dac_data_ch1(2) & (((\I_ad5441_interface_2|next_state.data_transfer~q\ & \I_ad5441_interface_4|dac_data_t\(3))) # (!\I_ad5441_interface_2|next_state.idle~q\))) # (!dac_data_ch1(2) & 
-- (\I_ad5441_interface_2|next_state.data_transfer~q\ & (\I_ad5441_interface_4|dac_data_t\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dac_data_ch1(2),
	datab => \I_ad5441_interface_2|next_state.data_transfer~q\,
	datac => \I_ad5441_interface_4|dac_data_t\(3),
	datad => \I_ad5441_interface_2|next_state.idle~q\,
	combout => \I_ad5441_interface_4|Selector9~0_combout\);

-- Location: FF_X52_Y29_N19
\I_ad5441_interface_4|dac_data_t[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKY2~inputclkctrl_outclk\,
	d => \I_ad5441_interface_4|Selector9~0_combout\,
	sclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_ad5441_interface_4|dac_data_t\(3));

-- Location: LCCOMB_X52_Y30_N28
\dac_data_ch1~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac_data_ch1~9_combout\ = (\I_ads8330_interface|adc_data\(5) & \dac_data_ch0[0]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \I_ads8330_interface|adc_data\(5),
	datad => \dac_data_ch0[0]~1_combout\,
	combout => \dac_data_ch1~9_combout\);

-- Location: FF_X52_Y30_N29
\dac_data_ch1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKY2~inputclkctrl_outclk\,
	d => \dac_data_ch1~9_combout\,
	ena => \init_flag~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dac_data_ch1(0));

-- Location: LCCOMB_X52_Y29_N0
\I_ad5441_interface_4|Selector11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_ad5441_interface_4|Selector11~0_combout\ = (dac_data_ch1(0) & (((\I_ad5441_interface_2|next_state.data_transfer~q\ & \I_ad5441_interface_4|dac_data_t\(1))) # (!\I_ad5441_interface_2|next_state.idle~q\))) # (!dac_data_ch1(0) & 
-- (\I_ad5441_interface_2|next_state.data_transfer~q\ & (\I_ad5441_interface_4|dac_data_t\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dac_data_ch1(0),
	datab => \I_ad5441_interface_2|next_state.data_transfer~q\,
	datac => \I_ad5441_interface_4|dac_data_t\(1),
	datad => \I_ad5441_interface_2|next_state.idle~q\,
	combout => \I_ad5441_interface_4|Selector11~0_combout\);

-- Location: FF_X52_Y29_N1
\I_ad5441_interface_4|dac_data_t[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKY2~inputclkctrl_outclk\,
	d => \I_ad5441_interface_4|Selector11~0_combout\,
	sclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_ad5441_interface_4|dac_data_t\(1));

-- Location: LCCOMB_X51_Y29_N18
\I_ad5441_interface_4|Mux0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_ad5441_interface_4|Mux0~4_combout\ = (\I_ad5441_interface_2|count_2\(0) & ((\I_ad5441_interface_2|count_2\(1) & (\I_ad5441_interface_4|dac_data_t\(3))) # (!\I_ad5441_interface_2|count_2\(1) & ((\I_ad5441_interface_4|dac_data_t\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I_ad5441_interface_2|count_2\(1),
	datab => \I_ad5441_interface_4|dac_data_t\(3),
	datac => \I_ad5441_interface_4|dac_data_t\(1),
	datad => \I_ad5441_interface_2|count_2\(0),
	combout => \I_ad5441_interface_4|Mux0~4_combout\);

-- Location: LCCOMB_X51_Y29_N4
\I_ad5441_interface_4|Mux0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_ad5441_interface_4|Mux0~5_combout\ = (\I_ad5441_interface_4|Mux0~4_combout\) # ((\I_ad5441_interface_2|count_2\(1) & (!\I_ad5441_interface_2|count_2\(0) & \I_ad5441_interface_4|dac_data_t\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I_ad5441_interface_2|count_2\(1),
	datab => \I_ad5441_interface_2|count_2\(0),
	datac => \I_ad5441_interface_4|dac_data_t\(2),
	datad => \I_ad5441_interface_4|Mux0~4_combout\,
	combout => \I_ad5441_interface_4|Mux0~5_combout\);

-- Location: LCCOMB_X52_Y30_N30
\dac_data_ch1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac_data_ch1~7_combout\ = (\I_ads8330_interface|adc_data\(11) & \dac_data_ch0[0]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I_ads8330_interface|adc_data\(11),
	datad => \dac_data_ch0[0]~1_combout\,
	combout => \dac_data_ch1~7_combout\);

-- Location: FF_X52_Y30_N31
\dac_data_ch1[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKY2~inputclkctrl_outclk\,
	d => \dac_data_ch1~7_combout\,
	ena => \init_flag~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dac_data_ch1(6));

-- Location: LCCOMB_X52_Y29_N4
\I_ad5441_interface_4|Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_ad5441_interface_4|Selector5~0_combout\ = (dac_data_ch1(6) & (((\I_ad5441_interface_2|next_state.data_transfer~q\ & \I_ad5441_interface_4|dac_data_t\(7))) # (!\I_ad5441_interface_2|next_state.idle~q\))) # (!dac_data_ch1(6) & 
-- (\I_ad5441_interface_2|next_state.data_transfer~q\ & (\I_ad5441_interface_4|dac_data_t\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dac_data_ch1(6),
	datab => \I_ad5441_interface_2|next_state.data_transfer~q\,
	datac => \I_ad5441_interface_4|dac_data_t\(7),
	datad => \I_ad5441_interface_2|next_state.idle~q\,
	combout => \I_ad5441_interface_4|Selector5~0_combout\);

-- Location: FF_X52_Y29_N5
\I_ad5441_interface_4|dac_data_t[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKY2~inputclkctrl_outclk\,
	d => \I_ad5441_interface_4|Selector5~0_combout\,
	sclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_ad5441_interface_4|dac_data_t\(7));

-- Location: LCCOMB_X51_Y31_N6
\dac_data_ch1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac_data_ch1~4_combout\ = (\I_ads8330_interface|adc_data\(9) & \dac_data_ch0[0]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I_ads8330_interface|adc_data\(9),
	datac => \dac_data_ch0[0]~1_combout\,
	combout => \dac_data_ch1~4_combout\);

-- Location: FF_X51_Y31_N7
\dac_data_ch1[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKY2~inputclkctrl_outclk\,
	d => \dac_data_ch1~4_combout\,
	ena => \init_flag~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dac_data_ch1(4));

-- Location: LCCOMB_X52_Y29_N14
\I_ad5441_interface_4|Selector7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_ad5441_interface_4|Selector7~0_combout\ = (dac_data_ch1(4) & (((\I_ad5441_interface_2|next_state.data_transfer~q\ & \I_ad5441_interface_4|dac_data_t\(5))) # (!\I_ad5441_interface_2|next_state.idle~q\))) # (!dac_data_ch1(4) & 
-- (\I_ad5441_interface_2|next_state.data_transfer~q\ & (\I_ad5441_interface_4|dac_data_t\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dac_data_ch1(4),
	datab => \I_ad5441_interface_2|next_state.data_transfer~q\,
	datac => \I_ad5441_interface_4|dac_data_t\(5),
	datad => \I_ad5441_interface_2|next_state.idle~q\,
	combout => \I_ad5441_interface_4|Selector7~0_combout\);

-- Location: FF_X52_Y29_N15
\I_ad5441_interface_4|dac_data_t[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKY2~inputclkctrl_outclk\,
	d => \I_ad5441_interface_4|Selector7~0_combout\,
	sclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_ad5441_interface_4|dac_data_t\(5));

-- Location: LCCOMB_X51_Y30_N22
\dac_data_ch1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac_data_ch1~6_combout\ = (\I_ads8330_interface|adc_data\(8) & \dac_data_ch0[0]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \I_ads8330_interface|adc_data\(8),
	datac => \dac_data_ch0[0]~1_combout\,
	combout => \dac_data_ch1~6_combout\);

-- Location: FF_X51_Y30_N23
\dac_data_ch1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKY2~inputclkctrl_outclk\,
	d => \dac_data_ch1~6_combout\,
	ena => \init_flag~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dac_data_ch1(3));

-- Location: LCCOMB_X52_Y29_N22
\I_ad5441_interface_4|Selector8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_ad5441_interface_4|Selector8~0_combout\ = (dac_data_ch1(3) & (((\I_ad5441_interface_2|next_state.data_transfer~q\ & \I_ad5441_interface_4|dac_data_t\(4))) # (!\I_ad5441_interface_2|next_state.idle~q\))) # (!dac_data_ch1(3) & 
-- (\I_ad5441_interface_2|next_state.data_transfer~q\ & (\I_ad5441_interface_4|dac_data_t\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dac_data_ch1(3),
	datab => \I_ad5441_interface_2|next_state.data_transfer~q\,
	datac => \I_ad5441_interface_4|dac_data_t\(4),
	datad => \I_ad5441_interface_2|next_state.idle~q\,
	combout => \I_ad5441_interface_4|Selector8~0_combout\);

-- Location: FF_X52_Y29_N23
\I_ad5441_interface_4|dac_data_t[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKY2~inputclkctrl_outclk\,
	d => \I_ad5441_interface_4|Selector8~0_combout\,
	sclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_ad5441_interface_4|dac_data_t\(4));

-- Location: LCCOMB_X51_Y30_N4
\dac_data_ch1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac_data_ch1~5_combout\ = (\dac_data_ch0[0]~1_combout\ & \I_ads8330_interface|adc_data\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dac_data_ch0[0]~1_combout\,
	datad => \I_ads8330_interface|adc_data\(10),
	combout => \dac_data_ch1~5_combout\);

-- Location: FF_X51_Y30_N5
\dac_data_ch1[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKY2~inputclkctrl_outclk\,
	d => \dac_data_ch1~5_combout\,
	ena => \init_flag~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dac_data_ch1(5));

-- Location: LCCOMB_X52_Y29_N20
\I_ad5441_interface_4|Selector6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_ad5441_interface_4|Selector6~0_combout\ = (dac_data_ch1(5) & (((\I_ad5441_interface_2|next_state.data_transfer~q\ & \I_ad5441_interface_4|dac_data_t\(6))) # (!\I_ad5441_interface_2|next_state.idle~q\))) # (!dac_data_ch1(5) & 
-- (\I_ad5441_interface_2|next_state.data_transfer~q\ & (\I_ad5441_interface_4|dac_data_t\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dac_data_ch1(5),
	datab => \I_ad5441_interface_2|next_state.data_transfer~q\,
	datac => \I_ad5441_interface_4|dac_data_t\(6),
	datad => \I_ad5441_interface_2|next_state.idle~q\,
	combout => \I_ad5441_interface_4|Selector6~0_combout\);

-- Location: FF_X52_Y29_N21
\I_ad5441_interface_4|dac_data_t[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKY2~inputclkctrl_outclk\,
	d => \I_ad5441_interface_4|Selector6~0_combout\,
	sclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_ad5441_interface_4|dac_data_t\(6));

-- Location: LCCOMB_X51_Y29_N14
\I_ad5441_interface_4|Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_ad5441_interface_4|Mux0~2_combout\ = (\I_ad5441_interface_2|count_2\(1) & (((\I_ad5441_interface_4|dac_data_t\(6)) # (\I_ad5441_interface_2|count_2\(0))))) # (!\I_ad5441_interface_2|count_2\(1) & (\I_ad5441_interface_4|dac_data_t\(4) & 
-- ((!\I_ad5441_interface_2|count_2\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I_ad5441_interface_2|count_2\(1),
	datab => \I_ad5441_interface_4|dac_data_t\(4),
	datac => \I_ad5441_interface_4|dac_data_t\(6),
	datad => \I_ad5441_interface_2|count_2\(0),
	combout => \I_ad5441_interface_4|Mux0~2_combout\);

-- Location: LCCOMB_X51_Y29_N16
\I_ad5441_interface_4|Mux0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_ad5441_interface_4|Mux0~3_combout\ = (\I_ad5441_interface_4|Mux0~2_combout\ & ((\I_ad5441_interface_4|dac_data_t\(7)) # ((!\I_ad5441_interface_2|count_2\(0))))) # (!\I_ad5441_interface_4|Mux0~2_combout\ & (((\I_ad5441_interface_4|dac_data_t\(5) & 
-- \I_ad5441_interface_2|count_2\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I_ad5441_interface_4|dac_data_t\(7),
	datab => \I_ad5441_interface_4|dac_data_t\(5),
	datac => \I_ad5441_interface_4|Mux0~2_combout\,
	datad => \I_ad5441_interface_2|count_2\(0),
	combout => \I_ad5441_interface_4|Mux0~3_combout\);

-- Location: LCCOMB_X51_Y29_N22
\I_ad5441_interface_4|Mux0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_ad5441_interface_4|Mux0~6_combout\ = (\I_ad5441_interface_2|count_2\(3) & (\I_ad5441_interface_2|count_2\(2))) # (!\I_ad5441_interface_2|count_2\(3) & ((\I_ad5441_interface_2|count_2\(2) & ((\I_ad5441_interface_4|Mux0~3_combout\))) # 
-- (!\I_ad5441_interface_2|count_2\(2) & (\I_ad5441_interface_4|Mux0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I_ad5441_interface_2|count_2\(3),
	datab => \I_ad5441_interface_2|count_2\(2),
	datac => \I_ad5441_interface_4|Mux0~5_combout\,
	datad => \I_ad5441_interface_4|Mux0~3_combout\,
	combout => \I_ad5441_interface_4|Mux0~6_combout\);

-- Location: LCCOMB_X51_Y31_N18
\dac_data_ch1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac_data_ch1~0_combout\ = (\dac_data_ch0[0]~1_combout\ & \I_ads8330_interface|adc_data\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dac_data_ch0[0]~1_combout\,
	datad => \I_ads8330_interface|adc_data\(14),
	combout => \dac_data_ch1~0_combout\);

-- Location: FF_X51_Y31_N19
\dac_data_ch1[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKY2~inputclkctrl_outclk\,
	d => \dac_data_ch1~0_combout\,
	ena => \init_flag~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dac_data_ch1(9));

-- Location: LCCOMB_X51_Y31_N12
\I_ad5441_interface_4|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_ad5441_interface_4|Selector2~0_combout\ = (\I_ad5441_interface_2|next_state.idle~q\ & (((\I_ad5441_interface_4|dac_data_t\(10) & \I_ad5441_interface_2|next_state.data_transfer~q\)))) # (!\I_ad5441_interface_2|next_state.idle~q\ & ((dac_data_ch1(9)) # 
-- ((\I_ad5441_interface_4|dac_data_t\(10) & \I_ad5441_interface_2|next_state.data_transfer~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I_ad5441_interface_2|next_state.idle~q\,
	datab => dac_data_ch1(9),
	datac => \I_ad5441_interface_4|dac_data_t\(10),
	datad => \I_ad5441_interface_2|next_state.data_transfer~q\,
	combout => \I_ad5441_interface_4|Selector2~0_combout\);

-- Location: FF_X51_Y31_N13
\I_ad5441_interface_4|dac_data_t[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKY2~inputclkctrl_outclk\,
	d => \I_ad5441_interface_4|Selector2~0_combout\,
	sclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_ad5441_interface_4|dac_data_t\(10));

-- Location: LCCOMB_X51_Y31_N24
\dac_data_ch1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac_data_ch1~3_combout\ = (\dac_data_ch0[0]~1_combout\ & \I_ads8330_interface|adc_data\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dac_data_ch0[0]~1_combout\,
	datad => \I_ads8330_interface|adc_data\(15),
	combout => \dac_data_ch1~3_combout\);

-- Location: FF_X51_Y31_N25
\dac_data_ch1[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKY2~inputclkctrl_outclk\,
	d => \dac_data_ch1~3_combout\,
	ena => \init_flag~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dac_data_ch1(10));

-- Location: LCCOMB_X51_Y31_N26
\I_ad5441_interface_4|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_ad5441_interface_4|Selector1~0_combout\ = (\I_ad5441_interface_2|next_state.idle~q\ & (((\I_ad5441_interface_4|dac_data_t\(11) & \I_ad5441_interface_2|next_state.data_transfer~q\)))) # (!\I_ad5441_interface_2|next_state.idle~q\ & ((dac_data_ch1(10)) # 
-- ((\I_ad5441_interface_4|dac_data_t\(11) & \I_ad5441_interface_2|next_state.data_transfer~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I_ad5441_interface_2|next_state.idle~q\,
	datab => dac_data_ch1(10),
	datac => \I_ad5441_interface_4|dac_data_t\(11),
	datad => \I_ad5441_interface_2|next_state.data_transfer~q\,
	combout => \I_ad5441_interface_4|Selector1~0_combout\);

-- Location: FF_X51_Y31_N27
\I_ad5441_interface_4|dac_data_t[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKY2~inputclkctrl_outclk\,
	d => \I_ad5441_interface_4|Selector1~0_combout\,
	sclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_ad5441_interface_4|dac_data_t\(11));

-- Location: LCCOMB_X51_Y31_N14
\dac_data_ch1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac_data_ch1~2_combout\ = (\I_ads8330_interface|adc_data\(12) & \dac_data_ch0[0]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I_ads8330_interface|adc_data\(12),
	datac => \dac_data_ch0[0]~1_combout\,
	combout => \dac_data_ch1~2_combout\);

-- Location: FF_X51_Y31_N15
\dac_data_ch1[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKY2~inputclkctrl_outclk\,
	d => \dac_data_ch1~2_combout\,
	ena => \init_flag~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dac_data_ch1(7));

-- Location: LCCOMB_X51_Y31_N20
\I_ad5441_interface_4|Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_ad5441_interface_4|Selector4~0_combout\ = (\I_ad5441_interface_2|next_state.idle~q\ & (((\I_ad5441_interface_4|dac_data_t\(8) & \I_ad5441_interface_2|next_state.data_transfer~q\)))) # (!\I_ad5441_interface_2|next_state.idle~q\ & ((dac_data_ch1(7)) # 
-- ((\I_ad5441_interface_4|dac_data_t\(8) & \I_ad5441_interface_2|next_state.data_transfer~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I_ad5441_interface_2|next_state.idle~q\,
	datab => dac_data_ch1(7),
	datac => \I_ad5441_interface_4|dac_data_t\(8),
	datad => \I_ad5441_interface_2|next_state.data_transfer~q\,
	combout => \I_ad5441_interface_4|Selector4~0_combout\);

-- Location: FF_X51_Y31_N21
\I_ad5441_interface_4|dac_data_t[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKY2~inputclkctrl_outclk\,
	d => \I_ad5441_interface_4|Selector4~0_combout\,
	sclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_ad5441_interface_4|dac_data_t\(8));

-- Location: LCCOMB_X51_Y31_N0
\dac_data_ch1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dac_data_ch1~1_combout\ = (\dac_data_ch0[0]~1_combout\ & \I_ads8330_interface|adc_data\(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dac_data_ch0[0]~1_combout\,
	datad => \I_ads8330_interface|adc_data\(13),
	combout => \dac_data_ch1~1_combout\);

-- Location: FF_X51_Y31_N1
\dac_data_ch1[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKY2~inputclkctrl_outclk\,
	d => \dac_data_ch1~1_combout\,
	ena => \init_flag~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dac_data_ch1(8));

-- Location: LCCOMB_X51_Y31_N30
\I_ad5441_interface_4|Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_ad5441_interface_4|Selector3~0_combout\ = (\I_ad5441_interface_2|next_state.idle~q\ & (((\I_ad5441_interface_4|dac_data_t\(9) & \I_ad5441_interface_2|next_state.data_transfer~q\)))) # (!\I_ad5441_interface_2|next_state.idle~q\ & ((dac_data_ch1(8)) # 
-- ((\I_ad5441_interface_4|dac_data_t\(9) & \I_ad5441_interface_2|next_state.data_transfer~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I_ad5441_interface_2|next_state.idle~q\,
	datab => dac_data_ch1(8),
	datac => \I_ad5441_interface_4|dac_data_t\(9),
	datad => \I_ad5441_interface_2|next_state.data_transfer~q\,
	combout => \I_ad5441_interface_4|Selector3~0_combout\);

-- Location: FF_X51_Y31_N31
\I_ad5441_interface_4|dac_data_t[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKY2~inputclkctrl_outclk\,
	d => \I_ad5441_interface_4|Selector3~0_combout\,
	sclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_ad5441_interface_4|dac_data_t\(9));

-- Location: LCCOMB_X51_Y31_N10
\I_ad5441_interface_4|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_ad5441_interface_4|Mux0~0_combout\ = (\I_ad5441_interface_2|count_2\(0) & (((\I_ad5441_interface_4|dac_data_t\(9)) # (\I_ad5441_interface_2|count_2\(1))))) # (!\I_ad5441_interface_2|count_2\(0) & (\I_ad5441_interface_4|dac_data_t\(8) & 
-- ((!\I_ad5441_interface_2|count_2\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I_ad5441_interface_2|count_2\(0),
	datab => \I_ad5441_interface_4|dac_data_t\(8),
	datac => \I_ad5441_interface_4|dac_data_t\(9),
	datad => \I_ad5441_interface_2|count_2\(1),
	combout => \I_ad5441_interface_4|Mux0~0_combout\);

-- Location: LCCOMB_X51_Y31_N4
\I_ad5441_interface_4|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_ad5441_interface_4|Mux0~1_combout\ = (\I_ad5441_interface_2|count_2\(1) & ((\I_ad5441_interface_4|Mux0~0_combout\ & ((\I_ad5441_interface_4|dac_data_t\(11)))) # (!\I_ad5441_interface_4|Mux0~0_combout\ & (\I_ad5441_interface_4|dac_data_t\(10))))) # 
-- (!\I_ad5441_interface_2|count_2\(1) & (((\I_ad5441_interface_4|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I_ad5441_interface_2|count_2\(1),
	datab => \I_ad5441_interface_4|dac_data_t\(10),
	datac => \I_ad5441_interface_4|dac_data_t\(11),
	datad => \I_ad5441_interface_4|Mux0~0_combout\,
	combout => \I_ad5441_interface_4|Mux0~1_combout\);

-- Location: LCCOMB_X51_Y29_N2
\I_ad5441_interface_4|Mux0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_ad5441_interface_4|Mux0~8_combout\ = (\I_ad5441_interface_2|count_2\(3) & ((\I_ad5441_interface_4|Mux0~6_combout\ & (\I_ad5441_interface_4|Mux0~7_combout\)) # (!\I_ad5441_interface_4|Mux0~6_combout\ & ((\I_ad5441_interface_4|Mux0~1_combout\))))) # 
-- (!\I_ad5441_interface_2|count_2\(3) & (((\I_ad5441_interface_4|Mux0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I_ad5441_interface_2|count_2\(3),
	datab => \I_ad5441_interface_4|Mux0~7_combout\,
	datac => \I_ad5441_interface_4|Mux0~6_combout\,
	datad => \I_ad5441_interface_4|Mux0~1_combout\,
	combout => \I_ad5441_interface_4|Mux0~8_combout\);

-- Location: LCCOMB_X51_Y29_N30
\I_ad5441_interface_4|dac_sri_t~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_ad5441_interface_4|dac_sri_t~0_combout\ = (\I_ad5441_interface_2|process_0~0_combout\ & (\I_ad5441_interface_4|dac_sri_t~q\)) # (!\I_ad5441_interface_2|process_0~0_combout\ & ((\I_ad5441_interface_4|Mux0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \I_ad5441_interface_2|process_0~0_combout\,
	datac => \I_ad5441_interface_4|dac_sri_t~q\,
	datad => \I_ad5441_interface_4|Mux0~8_combout\,
	combout => \I_ad5441_interface_4|dac_sri_t~0_combout\);

-- Location: FF_X51_Y29_N31
\I_ad5441_interface_4|dac_sri_t\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKY2~inputclkctrl_outclk\,
	d => \I_ad5441_interface_4|dac_sri_t~0_combout\,
	asdata => \~GND~combout\,
	sclr => \reset~combout\,
	sload => \I_ad5441_interface_2|ALT_INV_next_state.data_transfer~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_ad5441_interface_4|dac_sri_t~q\);

-- Location: LCCOMB_X51_Y30_N26
\adc_data_fd~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adc_data_fd~0_combout\ = (\I_ads8330_interface|data_val~q\ & ((\reset~combout\ & (\adc_data_fd~q\)) # (!\reset~combout\ & ((\I_ads8330_interface|adc_data\(0)))))) # (!\I_ads8330_interface|data_val~q\ & (((\adc_data_fd~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I_ads8330_interface|data_val~q\,
	datab => \reset~combout\,
	datac => \adc_data_fd~q\,
	datad => \I_ads8330_interface|adc_data\(0),
	combout => \adc_data_fd~0_combout\);

-- Location: FF_X51_Y30_N27
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

-- Location: LCCOMB_X51_Y30_N28
\init_flag~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \init_flag~1_combout\ = !\reset~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~combout\,
	combout => \init_flag~1_combout\);

-- Location: FF_X51_Y30_N29
init_flag : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKY2~inputclkctrl_outclk\,
	d => \init_flag~1_combout\,
	ena => \init_flag~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \init_flag~q\);

-- Location: LCCOMB_X52_Y30_N4
\status_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \status_0~0_combout\ = (\init_flag~q\ & (\adc_data_fd~q\ $ (\I_ads8330_interface|adc_data\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adc_data_fd~q\,
	datab => \init_flag~q\,
	datac => \I_ads8330_interface|adc_data\(0),
	combout => \status_0~0_combout\);

-- Location: FF_X52_Y30_N5
status_0 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKY2~inputclkctrl_outclk\,
	d => \status_0~0_combout\,
	sclr => \reset~combout\,
	ena => \init_flag~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \status_0~q\);

-- Location: LCCOMB_X54_Y30_N0
\status_1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \status_1~0_combout\ = (\I_ads8330_interface|data_val~q\ & (\init_flag~q\ & (\I_ads8330_interface|adc_data\(0) $ (!\adc_data_fd~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I_ads8330_interface|data_val~q\,
	datab => \I_ads8330_interface|adc_data\(0),
	datac => \init_flag~q\,
	datad => \adc_data_fd~q\,
	combout => \status_1~0_combout\);

-- Location: LCCOMB_X54_Y30_N20
\status_1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \status_1~1_combout\ = (\status_1~0_combout\) # ((\status_1~q\ & ((\init_flag~q\) # (!\I_ads8330_interface|data_val~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \init_flag~q\,
	datab => \status_1~0_combout\,
	datac => \status_1~q\,
	datad => \I_ads8330_interface|data_val~q\,
	combout => \status_1~1_combout\);

-- Location: FF_X54_Y30_N21
status_1 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKY2~inputclkctrl_outclk\,
	d => \status_1~1_combout\,
	sclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \status_1~q\);

-- Location: LCCOMB_X54_Y30_N22
\status_2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \status_2~0_combout\ = \I_ads8330_interface|data_val~q\ $ (\status_2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I_ads8330_interface|data_val~q\,
	datac => \status_2~q\,
	combout => \status_2~0_combout\);

-- Location: FF_X54_Y30_N23
status_2 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLKY2~inputclkctrl_outclk\,
	d => \status_2~0_combout\,
	sclr => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \status_2~q\);

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


