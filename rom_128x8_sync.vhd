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

	-- Constant Declerations
	constant LDA_IMM  : std_logic_vector(7 downto 0) := x"86";
	constant LDA_DIR  : std_logic_vector(7 downto 0) := x"87";
	constant LDB_IMM  : std_logic_vector(7 downto 0) := x"88";
	constant LDB_DIR  : std_logic_vector(7 downto 0) := x"89";
	constant STA_DIR  : std_logic_vector(7 downto 0) := x"96";
	constant STB_DIR  : std_logic_vector(7 downto 0) := x"97";
	constant ADD_AB   : std_logic_vector(7 downto 0) := x"42";
	constant SUB_AB   : std_logic_vector(7 downto 0) := x"43";
	constant AND_AB   : std_logic_vector(7 downto 0) := x"44";
	constant OR_AB    : std_logic_vector(7 downto 0) := x"45";
	constant INCA     : std_logic_vector(7 downto 0) := x"46";
	constant INCB     : std_logic_vector(7 downto 0) := x"47";
	constant DECA     : std_logic_vector(7 downto 0) := x"48";
	constant DeCB     : std_logic_vector(7 downto 0) := x"49";
	constant BRA 	  : std_logic_vector(7 downto 0) := x"20";
	constant BMI	  : std_logic_vector(7 downto 0) := x"21";
	constant BPL	  : std_logic_vector(7 downto 0) := x"22";
	constant BEQ	  : std_logic_vector(7 downto 0) := x"23";
	constant BNE 	  : std_logic_vector(7 downto 0) := x"24";
	constant BVS 	  : std_logic_vector(7 downto 0) := x"25";


	---------------------------------------------------
        --         Program the computer here             --
	--------------------------------------------------- 
	constant ROM 	  : rom_type := ( 0 => LDA_DIR,
					  1 => x"F0",
					  2 => BRA,
					  3 => x"00",
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

end architecture;
