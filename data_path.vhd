library IEEE;
use IEEE.std_logic_1164.all; 

entity data_path is 
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
end entity;

architecture data_path_arch of data_path is
	-- Component Decleration
	component alu is
		port(ALU_Sel	: in  std_logic_vector(2 downto 0);  	
	     	     A, B	: in  std_logic_vector(7 downto 0);
             	     ALU_Result : out std_logic_vector(7 downto 0);
	     	     NZVC	: out std_logic_vector(3 downto 0));
	end component;

	-- Internal Signal Decleration
	signal dp_A, dp_B	: std_logic_vector(7 downto 0);
	signal dp_ALU_result	: std_logic_vector(7 downto 0);
	signal dp_NZVC		: std_logic_vector(3 downto 0);
	signal dp_IR		: std_logic_vector(7 downto 0);
	signal dp_CCR_Result	: std_logic_vector(3 downto 0);
	signal dp_to_memory	: std_logic_vector(7 downto 0);
	signal dp_address	: std_logic_vector(7 downto 0);

	begin

	-- Component Instantiation
	data_path_ALU : alu port map(ALU_Sel => ALU_Select, A => dp_A, B => dp_B, ALU_Result => dp_ALU_result, NZVC => dp_NZVC);

	IR         <= dp_IR;
	CCR_Result <= dp_CCR_Result;
	to_memory  <= dp_to_memory;
	address    <= dp_address;

end architecture;
