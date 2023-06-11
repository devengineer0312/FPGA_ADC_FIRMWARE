--////////////////////////////////////////////////////////////////////////////////
-- Company			: Power Clusters
-- Engineer			: Loganathan N
-- 
-- Create Date		: 08:39:14 07/13/2020 
-- Design Name		: 
-- Module Name		: power_on_reset 
-- Project Name		: adc_dac_interface
-- Target Devices	: 
-- Tool versions	: 
-- Description		: This module is used to generate a power on reset signal for 1ms
-- Dependencies		: 
--
-- Revision			: 
-- Additional Comments: 
--////////////////////////////////////////////////////////////////////////////////
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity power_on_reset is
port ( 
	clock_50MHz : in  STD_LOGIC;
    reset 		: out STD_LOGIC);
end power_on_reset;

architecture Behavioral of power_on_reset is

signal count   : std_logic_vector(15 downto 0) := (others => '0');
signal reset_t : std_logic := '1';

begin

reset <= reset_t;

process(clock_50MHz)
begin
	if(rising_edge(clock_50MHz)) then
		if(count >= x"C350") then
			reset_t <= '0';
			count   <= count;
		else
			reset_t <= '1';
			count   <= count + '1';
		end if;
	end if;
end process;

end Behavioral;

