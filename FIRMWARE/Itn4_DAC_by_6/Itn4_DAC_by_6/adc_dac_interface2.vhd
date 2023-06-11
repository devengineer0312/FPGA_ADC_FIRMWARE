--////////////////////////////////////////////////////////////////////////////////
-- Company			: Power Clusters
-- Engineer			: Loganathan N
-- 
-- Create Date		: 08:39:14 07/13/2020 
-- Design Name		: 
-- Module Name		: adc_dac_interface 
-- Project Name		: adc_dac_interface
-- Target Devices	: 
-- Tool versions	: 
-- Description		: 
-- Dependencies		: 
--
-- Revision			: 
-- Additional Comments: 
--////////////////////////////////////////////////////////////////////////////////

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity adc_dac_interface is
port (
	-- Clock and RESET Signal --
	CLKY2		: in  std_logic;	-- G1
	SYS_RESET 	: in  std_logic;	-- E4
	
	-- ADS8330 Interface Signal --
	AD_CONVST 	: out std_logic;	-- E1
	AD_SCLK		: out std_logic;	-- E3
	AD_CS		: out std_logic;	-- C1
	AD_SDI		: out std_logic;	-- B2
	AD_SDO		: in  std_logic;	-- B1
	
	-- AD5441 Interface Signal --
	DA_CLK		: out std_logic;	-- Y17
	DA1_LD		: out std_logic;	-- AA17
	DA1_SRI		: out std_logic;	-- AB17
	DA2_LD		: out std_logic;	-- AA16
	DA2_SRI		: out std_logic;	-- AB16
	DA3_LD		: out std_logic;	-- W13
	DA3_SRI		: out std_logic;	-- W14
	DA4_LD		: out std_logic;	-- AA15
	DA4_SRI		: out std_logic;	-- AB15
	DA5_LD		: out std_logic;	-- AA14
	DA5_SRI		: out std_logic;	-- AB14
	DA6_LD		: out std_logic;	-- AA13
	DA6_SRI		: out std_logic;	-- AB13
	
	-- Debug Port Signal --
	LED			: out std_logic_vector(3 downto 0));	-- LED(3) - AA18, LED(2) - AB19, LED(1) - AA19, LED(0) - AB18
end adc_dac_interface;

architecture Behavioral of adc_dac_interface is

-- Component Declaration 

component power_on_reset
port ( 
	clock_50MHz : in  STD_LOGIC;
    reset 		: out STD_LOGIC);
end component;

component ads8330_interface
port (
	clock_50MHz	: in  std_logic;
	reset		: in  std_logic;
	convst_n	: out std_logic;
	sclk		: out std_logic;
	cs_n		: out std_logic;
	sdi			: out std_logic;
	sdo			: in  std_logic;
	adc_data	: out std_logic_vector(16 downto 0);
	data_val	: out std_logic);
end component;

component ad5441_interface
port (
	clokc_50MHz	: in  std_logic;
	reset		: in  std_logic;
	dac_data    : in  std_logic_vector(11 downto 0);
	data_val	: in  std_logic;
	dac_clk		: out std_logic;
	dac_ld_n	: out std_logic;
	dac_sri		: out std_logic);
end component;

signal int_reset : std_logic;
signal reset	 : std_logic;

signal adc_data  : std_logic_vector(16 downto 0);
signal data_val  : std_logic;

signal dac_data  : std_logic_vector(11 downto 0);

signal status      : std_logic;
signal init_flag   : std_logic;
signal adc_data_fd : std_logic;

begin

--LED <= "000" & status;
LED <= dac_data(11 downto 8);
-- Component Instantiation

I_power_on_reset : power_on_reset
port map ( 
	clock_50MHz => CLKY2,
    reset 		=> int_reset);

reset <= int_reset or (not SYS_RESET);
	
I_ads8330_interface : ads8330_interface
port map (
	clock_50MHz	=> CLKY2,
	reset		=> reset,
	convst_n	=> AD_CONVST,
	sclk		=> AD_SCLK,
	cs_n		=> AD_CS,
	sdi			=> AD_SDI,
	sdo			=> AD_SDO,
	adc_data	=> adc_data,
	data_val	=> data_val);

-- Use only Channel 0 of ADC data to drive the DAC
process(CLKY2)
begin
	if(rising_edge(CLKY2)) then
		if(reset = '1') then
			dac_data <= (others => '0');
		elsif(data_val = '1' and adc_data(0) = '0') then
			dac_data <= adc_data(16 downto 5);
		else
			dac_data <= dac_data;
		end if;
	end if;
end process;

-- Test to chek the Tag bit
process(CLKY2)
begin
	if(rising_edge(CLKY2)) then
		if(reset = '1') then
			status    <= '0';
			init_flag <= '0';
		elsif(data_val = '1') then
			init_flag   <= '1';
			if(init_flag = '0') then
				status      <= '0';
				adc_data_fd <= adc_data(0);
			else
				if(adc_data_fd = (not adc_data(0))) then
					status      <= '1';
					adc_data_fd <= adc_data(0);
				else
					status      <= '0';
					adc_data_fd <= adc_data(0);
				end if;
			end if;
		else
			status      <= status;
			init_flag	<= init_flag;
			adc_data_fd <= adc_data_fd;
		end if;
	end if;
end process;

I_ad5441_interface_1 : ad5441_interface
port map (
	clokc_50MHz	=> CLKY2,
	reset		=> reset,
	dac_data    => dac_data,
	data_val	=> data_val,
	dac_clk		=> DA_CLK,
	dac_ld_n	=> DA1_LD,
	dac_sri		=> DA1_SRI);

I_ad5441_interface_2 : ad5441_interface
port map (
	clokc_50MHz	=> CLKY2,
	reset		=> reset,
	dac_data    => dac_data,
	data_val	=> data_val,
	dac_clk		=> open,
	dac_ld_n	=> DA2_LD,
	dac_sri		=> DA2_SRI);

I_ad5441_interface_3 : ad5441_interface
port map (
	clokc_50MHz	=> CLKY2,
	reset		=> reset,
	dac_data    => dac_data,
	data_val	=> data_val,
	dac_clk		=> open,
	dac_ld_n	=> DA3_LD,
	dac_sri		=> DA3_SRI);

I_ad5441_interface_4 : ad5441_interface
port map (
	clokc_50MHz	=> CLKY2,
	reset		=> reset,
	dac_data    => dac_data,
	data_val	=> data_val,
	dac_clk		=> open,
	dac_ld_n	=> DA4_LD,
	dac_sri		=> DA4_SRI);

I_ad5441_interface_5 : ad5441_interface
port map (
	clokc_50MHz	=> CLKY2,
	reset		=> reset,
	dac_data    => dac_data,
	data_val	=> data_val,
	dac_clk		=> open,
	dac_ld_n	=> DA5_LD,
	dac_sri		=> DA5_SRI);

I_ad5441_interface_6 : ad5441_interface
port map (
	clokc_50MHz	=> CLKY2,
	reset		=> reset,
	dac_data    => dac_data,
	data_val	=> data_val,
	dac_clk		=> open,
	dac_ld_n	=> DA6_LD,
	dac_sri		=> DA6_SRI);
	
end Behavioral;

