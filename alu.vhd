library IEEE;
use IEEE.std_logic_1164.all; 

entity alu is 
	port(ALU_Sel	: in  std_logic_vector(2 downto 0);  	
	     A, B	: in  std_logic_vector(7 downto 0);
             ALU_Result : out std_logic_vector(7 downto 0);
	     NZVC	: out std_logic_vector(3 downto 0));
end entity;

architecture alu_arch of alu is

	-- Internal Signal Decleration
	signal alu_ALU_Result : std_logic_vector(7 downto 0);
	signal alu_NZVC	      : std_logic_vector(3 downto 0);

	begin

	ALU_Result <= alu_ALU_Result;
	NZVC <= alu_NZVC;

end architecture;
