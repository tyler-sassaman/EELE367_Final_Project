library IEEE;
use IEEE.std_logic_1164.all; 

entity rw_96x8_sync is 
	port(clock	 : in	std_logic;
	     writeEn	 : in   std_logic;
	     data_in	 : in   std_logic_vector(7 downto 0);
	     address	 : in   std_logic_vector(7 downto 0);
	     data_out	 : out  std_logic_vector(7 downto 0));  	
end entity;

architecture rw_96x8_sync_arch of rw_96x8_sync is

	-- Internal Signal Decleration
	signal rw_data_out : std_logic_vector(7 downto 0);

	begin

	data_out <= rw_data_out;

end architecture;