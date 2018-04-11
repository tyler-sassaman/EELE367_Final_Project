library IEEE;
use IEEE.std_logic_1164.all; 

entity cpu is 
	port(clock	 : in	std_logic;
	     reset	 : in	std_logic;
	     from_memory : in	std_logic_vector(7 downto 0);
	     writeEn	 : out 	std_logic;
	     to_memory	 : out  std_logic_vector(7 downto 0);
	     address	 : out  std_logic_vector(7 downto 0));  	
end entity;

architecture cpu_arch of cpu is
	-- Component Decleration
	component control_unit is
		port(clock	 : in	std_logic;
    	     	     reset	 : in   std_logic;
	     	     IR		 : in   std_logic_vector(7 downto 0);
	     	     CCR_Result  : in   std_logic_vector(3 downto 0);
	     	     writeEn     : out  std_logic;
	     	     IR_Load	 : out  std_logic;
	     	     MAR_Load	 : out  std_logic;
	     	     PC_Load	 : out  std_logic;
             	     PC_Inc      : out  std_logic;
             	     A_Load      : out  std_logic;
             	     B_Load      : out  std_logic;
             	     CCR_Load    : out  std_logic;
             	     Bus2_Sel    : out  std_logic_vector(1 downto 0);
             	     Bus1_Sel    : out  std_logic_vector(1 downto 0);
             	     ALU_Select  : out  std_logic_vector(2 downto 0));
	end component;

	component data_path is
		port(clock	 : in  std_logic;
    	     	     reset	 : in  std_logic;
	     	     IR_Load	 : in  std_logic;
	     	     MAR_Load	 : in  std_logic;
	     	     PC_Load	 : in  std_logic;
             	     PC_Inc      : in  std_logic;
             	     A_Load      : in  std_logic;
             	     B_Load      : in  std_logic;
             	     CCR_Load    : in  std_logic;
             	     Bus2_Sel    : in  std_logic_vector(1 downto 0);
             	     Bus1_Sel    : in  std_logic_vector(1 downto 0);
             	     ALU_Select  : in  std_logic_vector(2 downto 0);
	     	     from_memory : in  std_logic_vector(7 downto 0);
	     	     IR		 : out std_logic_vector(7 downto 0);
	     	     CCR_Result  : out std_logic_vector(3 downto 0);
             	     to_memory   : out std_logic_vector(7 downto 0);
             	     address     : out std_logic_vector(7 downto 0));
	end component;

	-- Internal Signal Decleration
	signal cpu_IR_load              : std_logic; 
	signal cpu_MAR_Load		: std_logic; 	
	signal cpu_PC_Load, cpu_PC_Inc  : std_logic;
	signal cpu_A_Load, cpu_B_Load   : std_logic;
	signal cpu_CCR_Load		: std_logic;
	signal cpu_IR			: std_logic_vector(7 downto 0);
	signal cpu_ALU_Sel		: std_logic_vector(2 downto 0);
	signal cpu_CCR_Result		: std_logic_vector(3 downto 0);
	signal cpu_Bus1_Sel, cpu_Bus2_Sel : std_logic_vector(1 downto 0);

	begin

	-- Component Instantiation
	CPU_control_unit : control_unit port map (clock	     => clock,
    	     	     			 reset	     => reset,
	     	     			 IR	     => cpu_IR,
	     	     			 CCR_Result  => cpu_CCR_Result,
	     	     			 writeEn     => writeEn,
	     	     			 IR_Load     => cpu_IR_Load,
	     	     			 MAR_Load    => cpu_MAR_Load,
	     	     			 PC_Load     => cpu_PC_Load,
             	     			 PC_Inc      => cpu_PC_Inc,
             	     			 A_Load      => cpu_A_Load,
             	     			 B_Load      => cpu_B_Load,
             	     			 CCR_Load    => cpu_CCR_Load,
             	     			 Bus2_Sel    => cpu_Bus2_Sel,
             	     			 Bus1_Sel    => cpu_Bus1_Sel,
             	     			 ALU_Select  => cpu_ALU_Sel);

	CPU_data_path : data_path port map(clock       => clock,
    	     	     			   reset       => reset,
	     	     			   IR_Load     => cpu_IR_Load,
	     	     			   MAR_Load    => cpu_MAR_Load,
	     	     			   PC_Load     => cpu_PC_Load,
             	     			   PC_Inc      => cpu_PC_Inc,
             	     			   A_Load      => cpu_A_Load,
             	     			   B_Load      => cpu_B_Load,
             	     			   CCR_Load    => cpu_CCR_Load,
             	     			   Bus2_Sel    => cpu_Bus2_Sel,
             	     			   Bus1_Sel    => cpu_Bus1_Sel,
             	     			   ALU_Select  => cpu_ALU_Sel,
	     	     			   from_memory => from_memory,
	     	     			   IR	       => cpu_IR,
	     	     			   CCR_Result  => cpu_CCR_Result,
             	     			   to_memory   => to_memory,
             	     			   address     => address);
end architecture;
