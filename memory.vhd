library IEEE;
use IEEE.std_logic_1164.all; 

entity memory is 
	port(clock	 : in	std_logic;
	     reset	 : in	std_logic;
	     address	 : in	std_logic_vector(7 downto 0);
	     writeEn	 : in 	std_logic;
	     data_in	 : in   std_logic_vector(7 downto 0);
	     data_out	 : out  std_logic_vector(7 downto 0);
	     port_in_00     : in   std_logic_vector (7 downto 0);
             port_in_01     : in   std_logic_vector (7 downto 0);
             port_in_02     : in   std_logic_vector (7 downto 0);
             port_in_03     : in   std_logic_vector (7 downto 0);
             port_in_04     : in   std_logic_vector (7 downto 0);
             port_in_05     : in   std_logic_vector (7 downto 0);
             port_in_06     : in   std_logic_vector (7 downto 0);               
             port_in_07     : in   std_logic_vector (7 downto 0);
             port_in_08     : in   std_logic_vector (7 downto 0);
             port_in_09     : in   std_logic_vector (7 downto 0);
             port_in_10     : in   std_logic_vector (7 downto 0);
             port_in_11     : in   std_logic_vector (7 downto 0);
             port_in_12     : in   std_logic_vector (7 downto 0);
             port_in_13     : in   std_logic_vector (7 downto 0);
             port_in_14     : in   std_logic_vector (7 downto 0);
             port_in_15     : in   std_logic_vector (7 downto 0);                                                                   
             port_out_00    : out  std_logic_vector (7 downto 0);
             port_out_01    : out  std_logic_vector (7 downto 0);
             port_out_02    : out  std_logic_vector (7 downto 0);
             port_out_03    : out  std_logic_vector (7 downto 0);
             port_out_04    : out  std_logic_vector (7 downto 0);
             port_out_05    : out  std_logic_vector (7 downto 0);
             port_out_06    : out  std_logic_vector (7 downto 0);
             port_out_07    : out  std_logic_vector (7 downto 0);
             port_out_08    : out  std_logic_vector (7 downto 0);
             port_out_09    : out  std_logic_vector (7 downto 0);
             port_out_10    : out  std_logic_vector (7 downto 0);
             port_out_11    : out  std_logic_vector (7 downto 0);
             port_out_12    : out  std_logic_vector (7 downto 0);
             port_out_13    : out  std_logic_vector (7 downto 0);
             port_out_14    : out  std_logic_vector (7 downto 0);
             port_out_15    : out  std_logic_vector (7 downto 0));  	
end entity;

architecture memory_arch of memory is
	-- Component Decleration
	component rom_128x8_sync is
		port(clock	 : in	std_logic;
	     	     address	 : in   std_logic_vector(7 downto 0);
	     	     data_out	 : out  std_logic_vector(7 downto 0)); 
	end component;	

	component rw_96x8_sync is 
		port(clock	 : in	std_logic;
	     	     writeEn	 : in   std_logic;
	     	     data_in	 : in   std_logic_vector(7 downto 0);
	     	     address	 : in   std_logic_vector(7 downto 0);
	     	     data_out	 : out  std_logic_vector(7 downto 0)); 
	end component;

	-- Internal Signal Decleratrions

	signal mem_port_out_00 : std_logic_vector (7 downto 0);
        signal mem_port_out_01 : std_logic_vector (7 downto 0);
	signal mem_port_out_02 : std_logic_vector (7 downto 0);
        signal mem_port_out_03 : std_logic_vector (7 downto 0);
	signal mem_port_out_04 : std_logic_vector (7 downto 0);
        signal mem_port_out_05 : std_logic_vector (7 downto 0);
	signal mem_port_out_06 : std_logic_vector (7 downto 0);
        signal mem_port_out_07 : std_logic_vector (7 downto 0);
	signal mem_port_out_08 : std_logic_vector (7 downto 0);
        signal mem_port_out_09 : std_logic_vector (7 downto 0);
	signal mem_port_out_10 : std_logic_vector (7 downto 0);
        signal mem_port_out_11 : std_logic_vector (7 downto 0);
	signal mem_port_out_12 : std_logic_vector (7 downto 0);
        signal mem_port_out_13 : std_logic_vector (7 downto 0);
	signal mem_port_out_14 : std_logic_vector (7 downto 0);
        signal mem_port_out_15 : std_logic_vector (7 downto 0);

	begin

	-- Component Instantiation
	mem_ROM : rom_128x8_sync port map(clock => clock, address => address, data_out => data_out);
	mem_RW 	: rw_96x8_sync port map (clock => clock, writeEn => writeEn, data_in => data_in, address => address, data_out => data_out);

	port_out_00 <= mem_port_out_00;
        port_out_01 <= mem_port_out_01;
        port_out_02 <= mem_port_out_02;
        port_out_03 <= mem_port_out_03;
        port_out_04 <= mem_port_out_04;
        port_out_05 <= mem_port_out_05;
        port_out_06 <= mem_port_out_06;
        port_out_07 <= mem_port_out_07;
        port_out_08 <= mem_port_out_08;
        port_out_09 <= mem_port_out_09;
        port_out_10 <= mem_port_out_10;
        port_out_11 <= mem_port_out_11;
        port_out_12 <= mem_port_out_12;
        port_out_13 <= mem_port_out_13;
        port_out_14 <= mem_port_out_14;
        port_out_15 <= mem_port_out_15;
	
end architecture;
