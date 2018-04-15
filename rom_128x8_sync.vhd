library IEEE;
use IEEE.std_logic_1164.all; 
use IEEE.numeric_std.all;

entity rom_128x8_sync is 
	port(clock	 : in	std_logic;
	     address	 : in   std_logic_vector(7 downto 0);
	     data_out	 : out  std_logic_vector(7 downto 0));  	
end entity;

architecture rom_128x8_sync_arch of rom_128x8_sync is

	-- Internal Signal Decleration
	signal rom_data_out : std_logic_vector(7 downto 0);
	signal EN : std_logic;

	type rom_type is array ( 0 to 127) of std_logic_vector(7 downto 0);

	-- Constant Decleration
	constant LDA_IMM  : std_logic_vector(7 downto 0) := x"86";
	constant LDA_DIR  : std_logic_vector(7 downto 0) := x"87";
	constant STA_DIR  : std_logic_vector(7 downto 0) := x"96";
	constant BRA 	  : std_logic_vector(7 downto 0) := x"20";
	constant ROM 	  : rom_type := ( 0 => LDA_IMM,
					  1 => x"AA",
					  2 => STA_DIR,
			                  3 => x"E0",
					  4 => BRA,
					  5 => x"00",
					  others => x"00");
	
	begin

	enable : process (address)
		begin
		if((to_integer(unsigned(address)) >= 0) and (to_integer(unsigned(address)) <= 127)) then
			EN <= '1';
		else
			EN <= '0';
		end if;
	end process;	

	memory : process (clock)	
		begin
		if(rising_edge(clock)) then
			if(EN = '1') then
				data_out <= ROM(to_integer(unsigned(address)));
			end if;
		end if;
	end process;

	--data_out <= rom_data_out;

end architecture;
