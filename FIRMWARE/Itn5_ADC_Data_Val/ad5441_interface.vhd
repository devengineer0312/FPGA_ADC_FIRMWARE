--////////////////////////////////////////////////////////////////////////////////
-- Company			: Power Clusters
-- Engineer			: Loganathan N
-- 
-- Create Date		: 08:39:14 07/13/2020 
-- Design Name		: 
-- Module Name		: ad5441_interface 
-- Project Name		: adc_dac_interface
-- Target Devices	: 
-- Tool versions	: 
-- Description		: This module is used to configure the AD5441 single channel DAC.
--					  DAC resolution is 12 bit.
-- Dependencies		: 
--
-- Revision			: 
-- Additional Comments: 
--////////////////////////////////////////////////////////////////////////////////

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity ad5441_interface is
port (
	clokc_50MHz	: in  std_logic;
	reset		: in  std_logic;
	dac_data    : in  std_logic_vector(11 downto 0);
	data_val	: in  std_logic;
	dac_clk		: out std_logic;
	dac_ld_n	: out std_logic;
	dac_sri		: out std_logic);
end ad5441_interface;

architecture Behavioral of ad5441_interface is

type state is (idle, data_transfer, issue_ld);
signal next_state : state := idle;

signal count_1	  : std_logic_vector(6 downto 0);

signal dac_data_t : std_logic_vector(12 downto 1);
signal count_2 	  : integer range 0 to 15;

signal count_3	  : std_logic_vector(1 downto 0);

signal dac_clk_t  : std_logic;
signal dac_ld_n_t : std_logic;
signal dac_sri_t  : std_logic;

begin

dac_clk  <= dac_clk_t;
dac_ld_n <= dac_ld_n_t;
dac_sri  <= dac_sri_t;

process(clokc_50MHz)
begin
	if(rising_edge(clokc_50MHz)) then
		if(reset = '1') then
			dac_clk_t  <= '1';
			dac_ld_n_t <= '1';
			dac_sri_t  <= '0';
			dac_data_t <= (others => '0');
			count_1    <= (others => '0');
			count_2	   <= 12;
			count_3    <= "00";
			next_state <= idle;
		else
		
			case next_state is
				
				when idle =>
					dac_clk_t  <= '1';
					dac_ld_n_t <= '1';
					dac_sri_t  <= '0';
					dac_data_t <= dac_data;
					count_1	   <= (others => '0');
					count_2	   <= 12;
					count_3    <= "00";
					
					if(data_val = '1') then
						next_state <= data_transfer;
					else
						next_state <= idle;
					end if;
					
				when data_transfer =>
					
					dac_ld_n_t <= '1';
					
					if(count_3 = "00") then
						count_3   <= "10";
						dac_clk_t <= not dac_clk_t;
					else
						count_3   <= count_3 - '1';
						dac_clk_t <= dac_clk_t;
					end if;
					
					-- Change the data on the dac_sri lane while dac_clk falling edge
					if(dac_clk_t = '1' and count_3 = "00") then
						dac_sri_t <= dac_data_t(count_2);
						count_2	  <= count_2 - 1;
					else
						dac_sri_t <= dac_sri_t;
						count_2	  <= count_2;
					end if;
					
					if(count_1 = "100" & x"6") then
						count_1    <= (others => '0');
						next_state <= issue_ld;
					else
						count_1    <= count_1 + '1';
						next_state <= data_transfer;
					end if;
					
				when issue_ld =>
					-- Issue LD pulse to load the shift register data to DAC
					dac_clk_t  <= '1';
					dac_sri_t  <= '0';
					dac_data_t <= (others => '0');
					count_2	   <= 12;
					count_3	   <= "00";
					
					if(count_1 = "000" & x"1") then
						count_1	   <= count_1 + '1';
						dac_ld_n_t <= '0';
						next_state <= issue_ld;
					elsif(count_1 = "000" & x"4") then
						count_1	   <= (others => '0');
						dac_ld_n_t <= '1';
						next_state <= idle;
					else
						count_1	   <= count_1 + '1';
						dac_ld_n_t <= dac_ld_n_t;
						next_state <= issue_ld;
					end if;
						
				when others =>
					next_state <= idle;
					
			end case;
			
		end if;
	end if;

end process;
end Behavioral;

