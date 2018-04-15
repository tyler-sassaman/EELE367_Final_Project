library IEEE;
use IEEE.std_logic_1164.all; 
use IEEE.numeric_std.all;

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
	signal ALU_result	: std_logic_vector(7 downto 0);
	signal NZVC		: std_logic_vector(3 downto 0);
	signal Bus1		: std_logic_vector(7 downto 0);
	signal Bus2 		: std_logic_vector(7 downto 0);
	signal PC		: std_logic_vector(7 downto 0);
	signal A		: std_logic_vector(7 downto 0);
	signal B		: std_logic_vector(7 downto 0);
	signal MAR		: std_logic_vector(7 downto 0);
	signal PC_uns		: unsigned(7 downto 0);

	begin

	-- Component Instantiation
	data_path_ALU : alu port map(ALU_Sel => ALU_Select, A => A, B => B, ALU_Result => ALU_result, NZVC => NZVC);

	MUX_BUS1 : process (Bus1_Sel, PC, A, B)
		begin
		case(Bus1_Sel) is
			when "00" => Bus1 <= PC;
		        when "01" => Bus1 <= A;
			when "10" => Bus1 <= B;
			when others => Bus1 <= x"00";
		end case;
	end process;

	MUX_BUS2 : process (Bus2_Sel, ALU_Result, Bus1, from_memory)
		begin
		case(Bus2_Sel) is
			when "00" => Bus2 <= ALU_Result;
		        when "01" => Bus2 <= Bus1;
			when "10" => Bus2 <= from_memory;
			when others => Bus2 <= x"00";
		end case;
	end process;

	address <= MAR;
	to_memory <= Bus1;

	INSTRUCTION_REGISTER : process (clock, reset)
		begin
		if(reset = '1') then
			IR <= x"00";
		elsif(rising_edge(clock)) then
			if(IR_Load = '1') then
				IR <= Bus2;
			end if;
		end if;
	end process;

	MEMORY_ADDRESS_REGISTER : process (clock, reset)
		begin
		if(reset = '1') then
			MAR <= x"00";
		elsif(rising_edge(clock)) then
			if(MAR_Load = '1') then
				MAR <= Bus2;
			end if;
		end if;
	end process;

	PROGRAM_COUNTER : process (clock, reset)
		begin
		if(reset = '0') then
			PC_uns <= x"00";
		elsif(rising_edge(clock)) then
			if(PC_Load = '1') then
				PC_uns <= unsigned(Bus2);
			elsif(PC_Inc = '1') then
				PC_uns <= PC_uns + 1;
			end if;
		end if;
	end process;
	PC <= std_logic_vector(PC_uns);

	A_REGISTER : process (clock, reset)
		begin
		if(reset = '1') then
			A <= x"00";
		elsif(rising_edge(clock)) then
			if(A_Load = '1') then
				A <= Bus2;
			end if;
		end if;
	end process;

	B_REGISTER : process (clock, reset)
		begin
		if(reset = '1') then
			B <= x"00";
		elsif(rising_edge(clock)) then
			if(B_Load = '1') then
				B <= Bus2;
			end if;
		end if;
	end process;

	CONDITION_CODE_REGISTER : process (clock, reset)
		begin
		if(reset = '1') then
			CCR_Result <= x"0";
		elsif(rising_edge(clock)) then
			if(CCR_Load = '1') then
				CCR_Result <= NZVC;
			end if;
		end if;
	end process;

end architecture;
