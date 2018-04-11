library IEEE;
use IEEE.std_logic_1164.all; 

entity computer is 
	port(clock          : in   std_logic;
             reset          : in   std_logic;
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

architecture computer_arch of computer is
	-- Component Decleration
	component cpu is
		port(clock	 : in	std_logic;
	     	     reset	 : in	std_logic;
	     	     from_memory : in	std_logic_vector(7 downto 0);
	     	     writeEn	 : out 	std_logic;
	     	     to_memory	 : out  std_logic_vector(7 downto 0);
	     	     address	 : out  std_logic_vector(7 downto 0)); 
	end component;

	component memory is
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
	end component;
	
	-- Signal Decleration 

	signal my_address     : std_logic_vector(7 downto 0);  -- to connect the addresses
	signal my_write       : std_logic; 		       -- to connect the write enable
	signal my_clocl	      : std_logic;		       -- to connect the clocks ??
	signal my_reset       : std_logic;		       -- to connect the resets ??
	signal my_memory      : std_logic_vector(7 downto 0);  -- to connect the to_memory to data_in
        signal my_data        : std_logic_vector(7 downto 0);  -- to connect from_memory to data_out
	signal my_port_in_00  :  std_logic_vector (7 downto 0);
	signal my_port_in_01  :  std_logic_vector (7 downto 0);
	signal my_port_in_02  :  std_logic_vector (7 downto 0);
	signal my_port_in_03  :  std_logic_vector (7 downto 0);
	signal my_port_in_04  :  std_logic_vector (7 downto 0);
	signal my_port_in_05  :  std_logic_vector (7 downto 0);
	signal my_port_in_06  :  std_logic_vector (7 downto 0);
	signal my_port_in_07  :  std_logic_vector (7 downto 0);
	signal my_port_in_08  :  std_logic_vector (7 downto 0);
	signal my_port_in_09  :  std_logic_vector (7 downto 0);
	signal my_port_in_10  :  std_logic_vector (7 downto 0);
	signal my_port_in_11  :  std_logic_vector (7 downto 0);
	signal my_port_in_12  :  std_logic_vector (7 downto 0);
	signal my_port_in_13  :  std_logic_vector (7 downto 0);
	signal my_port_in_14  :  std_logic_vector (7 downto 0);
	signal my_port_in_15  :  std_logic_vector (7 downto 0);
	signal my_port_out_00  :  std_logic_vector (7 downto 0);
	signal my_port_out_01  :  std_logic_vector (7 downto 0);
	signal my_port_out_02  :  std_logic_vector (7 downto 0);
	signal my_port_out_03  :  std_logic_vector (7 downto 0);
	signal my_port_out_04  :  std_logic_vector (7 downto 0);
	signal my_port_out_05  :  std_logic_vector (7 downto 0);
	signal my_port_out_06  :  std_logic_vector (7 downto 0);
	signal my_port_out_07  :  std_logic_vector (7 downto 0);
	signal my_port_out_08  :  std_logic_vector (7 downto 0);
	signal my_port_out_09  :  std_logic_vector (7 downto 0);
	signal my_port_out_10  :  std_logic_vector (7 downto 0);
	signal my_port_out_11  :  std_logic_vector (7 downto 0);
	signal my_port_out_12  :  std_logic_vector (7 downto 0);
	signal my_port_out_13  :  std_logic_vector (7 downto 0);
	signal my_port_out_14  :  std_logic_vector (7 downto 0);
	signal my_port_out_15  :  std_logic_vector (7 downto 0);

	begin

	-- Instantiate the Components
	CPU_Part : cpu port map(clock => clock, reset => reset, from_memory => my_data, writeEn => my_write, to_memory => my_memory, address => my_address);
	Memory_part : memory port map(clock	 => clock,
	     	    		      reset	 => reset,
	     	    		      address	 => my_address,
	     	    		      writeEn	 => my_write,
	     	    		      data_in	 => my_memory,
	     	    		      data_out	 => my_data,
	     	    		      port_in_00 => my_port_in_00,
             	    		      port_in_01 => my_port_in_01,
             	    		      port_in_02 => my_port_in_02,
             	    		      port_in_03 => my_port_in_03,
             	    		      port_in_04 => my_port_in_04,
             	    		      port_in_05 => my_port_in_05,
             	    		      port_in_06 => my_port_in_06,              
             	    		      port_in_07 => my_port_in_07,
             	    		      port_in_08 => my_port_in_08,
             	    		      port_in_09 => my_port_in_09,
             	    		      port_in_10 => my_port_in_10,
             	    		      port_in_11 => my_port_in_11,
             	    		      port_in_12 => my_port_in_12,
             	    		      port_in_13 => my_port_in_13,
             	    		      port_in_14 => my_port_in_14,
             	    		      port_in_15 => my_port_in_15,                                                            
             	    		      port_out_00 => my_port_out_00,
             	    		      port_out_01 => my_port_out_01,
             	    		      port_out_02 => my_port_out_02,
             	    		      port_out_03 => my_port_out_03,
             	    		      port_out_04 => my_port_out_04,
             	    		      port_out_05 => my_port_out_05,
             	    		      port_out_06 => my_port_out_06,
             	    		      port_out_07 => my_port_out_07,
             	    		      port_out_08 => my_port_out_08,
             	    		      port_out_09 => my_port_out_09,
             	    		      port_out_10 => my_port_out_10,
             	    		      port_out_11 => my_port_out_11,
             	    		      port_out_12 => my_port_out_12,
             	    		      port_out_13 => my_port_out_13,
             	    		      port_out_14 => my_port_out_14,
             	    		      port_out_15 => my_port_out_15);

end architecture;