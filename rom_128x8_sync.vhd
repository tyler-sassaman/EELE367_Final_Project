library IEEE;
use IEEE.std_logic_1164.all; 

entity rom_128x8_sync is 
	port(clock	 : in	std_logic;
	     address	 : in   std_logic_vector(7 downto 0);
	     data_out	 : out  std_logic_vector(7 downto 0));  	
end entity;

architecture rom_128x8_sync_arch of rom_128x8_sync is

	-- Internal Signal Decleration
	signal rom_data_out : std_logic_vector(7 downto 0);

	begin

	data_out <= rom_data_out;

end architecture;
