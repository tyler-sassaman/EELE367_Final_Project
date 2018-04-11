library IEEE;
use IEEE.std_logic_1164.all; 

entity control_unit is 
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
end entity;

architecture control_unit_arch of control_unit is

	-- Internal Signal Decleration
	signal cu_writeEn    : std_logic;
	signal cu_IR_Load    : std_logic;
	signal cu_MAR_Load   : std_logic;
	signal cu_PC_Load    : std_logic;
	signal cu_PC_Inc     : std_logic;
	signal cu_A_Load     : std_logic;
	signal cu_B_Load     : std_logic;
	signal cu_CCR_Load   : std_logic;
	signal cu_Bus2_Sel   : std_logic_vector(1 downto 0);
	signal cu_Bus1_Sel   : std_logic_vector(1 downto 0);
	signal cu_ALU_Select : std_logic_vector(2 downto 0);	

	begin

	writeEn    <= cu_writeEn;
	IR_Load    <= cu_IR_Load;
	MAR_Load   <= cu_MAR_Load;
	PC_Load    <= cu_PC_Load;
	PC_Inc     <= cu_PC_Inc;
	A_Load     <= cu_A_Load;
	B_Load     <= cu_B_Load;
	CCR_Load   <= cu_CCR_Load;
	Bus2_Sel   <= cu_Bus2_Sel;
	Bus1_Sel   <= cu_Bus2_Sel;
	ALU_Select <= cu_ALU_Select;

 
end architecture;
