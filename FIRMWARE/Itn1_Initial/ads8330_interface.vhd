--////////////////////////////////////////////////////////////////////////////////
-- Company			: Power Clusters
-- Engineer			: Loganathan N
-- 
-- Create Date		: 08:39:14 07/13/2020 
-- Design Name		: 
-- Module Name		: ads8330_interface 
-- Project Name		: adc_dac_interface
-- Target Devices	: 
-- Tool versions	: 
-- Description		: This module is used to configure the ADS8330 Dual channel Unipolar 
--					  ADC. ADC resolution is 16 bit unsigned format. Output adc_data is
--					  17 bit, where MSB 16 bit is digitized ADC data and the LSB is tag
--					  bit information ( 0 - Channel 0, 1 - Channel 1 )
-- Dependencies		: 
--
-- Revision			: 
-- Additional Comments: 
--////////////////////////////////////////////////////////////////////////////////

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity ads8330_interface is
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
end ads8330_interface;

architecture Behavioral of ads8330_interface is

type state is (idle, issue_convst, issue_cs, data_transfer, wait_state);
signal next_state : state := idle;

signal convst_n_t : std_logic;
signal sclk_t 	  : std_logic;
signal cs_n_t 	  : std_logic;
signal sdi_t  	  : std_logic;

signal count_1 	  : std_logic_vector(5 downto 0);

constant sdi_data : std_logic_vector(17 downto 1) := "11010000000000000"; -- CMR - 1101 (Read Data)
signal count_2	  : integer range 0 to 31;

signal adc_data_t : std_logic_vector(16 downto 0);
signal data_val_t : std_logic;

begin

convst_n <= convst_n_t;
sclk     <= sclk_t;
cs_n	 <= cs_n_t;
sdi  	 <= sdi_t;

process(clock_50MHz)
begin
	if(rising_edge(clock_50MHz)) then
		-- Iniitialization during the reset
		if(reset = '1') then
			convst_n_t <= '1';
			sclk_t	   <= '0';
			cs_n_t	   <= '1';
			sdi_t	   <= '0';
			count_1	   <= (others => '0');
			count_2	   <= 17;
			adc_data_t <= (others => '0');
			adc_data   <= (others => '0');
			data_val   <= '0';
			next_state <= idle;
		else
		
			case next_state is 
				
				when idle =>
					convst_n_t <= '1';
					sclk_t	   <= '0';
					cs_n_t	   <= '1';
					sdi_t	   <= '0';
					count_1	   <= (others => '0');
					count_2	   <= 17;
					adc_data_t <= (others => '0');
					adc_data   <= (others => '0');
					data_val   <= '0';
					next_state <= issue_convst;
					
				when issue_convst =>
					-- Issue convst_n signal for 120nS
					convst_n_t <= '0';
					sclk_t	   <= '0';
					cs_n_t	   <= '1';
					sdi_t	   <= '0';
					count_2	   <= 17;
					adc_data_t <= (others => '0');
					data_val   <= '0';
					
					if(count_1 = "000101") then
						count_1	   <= (others => '0');
						next_state <= issue_cs;
					else
						count_1	   <= count_1 + '1';
						next_state <= issue_convst;
					end if;
					
				when issue_cs =>
					-- Issue cs_n to ADS8330 and bring the convst_n to logic '1'
					convst_n_t <= '1';
					sclk_t	   <= '0';
					cs_n_t	   <= '0';
					sdi_t	   <= '0';
					count_1	   <= (others => '0');
					count_2	   <= 17;
					adc_data_t <= (others => '0');
					data_val   <= '0';
					next_state <= data_transfer;
				
				when data_transfer =>
					-- Transmit 17 SCLK cycles (25MHz)
					convst_n_t <= '1';
					sclk_t	   <= not sclk_t;
					cs_n_t	   <= '0';
					data_val   <= '0';
					
					-- Change the data on the sdi lane while sclk_t rising edge
					if(sclk_t = '0') then
						sdi_t <= sdi_data(count_2);
						count_2 <= count_2 - 1;
					else
						sdi_t <= sdi_t;
						count_2 <= count_2;
					end if;
					
					-- Latch the data on the sdo lane while sclk_t falling edge
					if(sclk_t = '1') then
						adc_data_t <= adc_data_t(15 downto 0) & sdo;
					else
						adc_data_t <= adc_data_t;
					end if;
					
					if(count_1 = "100001") then
						count_1	   <= (others => '0');
						next_state <= wait_state;
					else
						count_1	   <= count_1 + '1';
						next_state <= data_transfer;
					end if;
				
				when wait_state =>
					-- Wait state for the ADS8330 sampling time
					convst_n_t <= '1';
					sclk_t	   <= '0';
					cs_n_t	   <= '1';
					sdi_t	   <= '0';
					count_2	   <= 17;
					adc_data_t <= adc_data_t;
					
					if(count_1 = "001000") then
						count_1	   <= (others => '0');
						adc_data   <= adc_data_t;
						data_val   <= '1';
						next_state <= issue_convst;
					else
						count_1	   <= count_1 + '1';
						next_state <= wait_state;
					end if;
						
				when others =>
					next_state <= idle;
					
			end case;
		end if;
	end if;
end process;


end Behavioral;

