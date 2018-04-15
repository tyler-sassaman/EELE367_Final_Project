library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all; 

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

	type state_type is (S_FETCH_0, S_FETCH_1, S_FETCH_2,
			    S_DECODE_3,
			    S_LDA_IMM_4, S_LDA_IMM_5, S_LDA_IMM_6,
			    S_LDA_DIR_4, S_LDA_DIR_5, S_LDA_DIR_6, S_LDA_DIR_7,
			    S_STA_DIR_4, S_STA_DIR_5, S_STA_DIR_6, S_STA_DIR_7, S_STA_DIR_8,
			    S_ADD_AB_4,
			    S_BRA_4, S_BRA_5, S_BRA_6,
			    S_BEQ_4, S_BEQ_5, S_BEQ_6, S_BEQ_7);

	-- Internal Signal Decleration
	signal current_state, next_state : state_type;

	begin

	STATE_MEMORY : process (clock, reset)
		begin
		if(reset = '0') then
			current_state <= S_FETCH_0;
		elsif(rising_edge(clock)) then
			current_state <= next_state;
		end if;
	end process;

	NEXT_STATE_LOGIC : process (current_state, IR, CCR_Result)
		begin
		if(current_state = S_FETCH_0) then
			next_state <= S_FETCH_1;
		elsif(current_state = S_FETCH_1) then
			next_state <= S_FETCH_2;
		elsif(current_state = S_FETCH_2) then
			next_state <= S_DECODE_3;
		elsif(current_state = S_DECODE_3) then
			-- select execution path
			if(IR = x"86") then
				next_state <= S_LDA_IMM_4;		-- Load Immediate
			elsif(IR = x"87") then
				next_state <= S_LDA_DIR_4;		-- Load Direct
			elsif(IR = x"96") then
				next_state <= S_STA_DIR_4;		-- Store A Direct
			elsif(IR = x"42") then
				next_state <= S_ADD_AB_4;		-- Add A and B
			elsif(IR = x"20") then
				next_state <= S_BRA_4;			-- Branch Always
			elsif(IR = x"23" and CCR_Result(2) = '1') then
				next_state <= S_BEQ_4;			-- BEQ and Z = 1
			elsif(IR = x"23" and CCR_Result(2) = '0') then
				next_state <= S_BEQ_7;			-- BEQ and Z = 0
			else 
				next_state <= S_FETCH_0;		-- Start over
			end if;
		-- add paths for each instruction here
		end if;
 	end process;

	OUTPUT_LOGIC : process (current_state)
		begin
		case (current_state) is
			when S_FETCH_0 => -- Put PC onto MAR to read OPCODE
				IR_Load <= '0';
				MAR_Load <= '1';
				PC_Load <= '0';
				PC_Inc <= '0';
				A_Load <= '0';
				B_Load <= '0';
				ALU_Select <= "000";
				CCR_Load <= '0';
				Bus1_Sel <= "00"; -- "00" = PC, "01" = A, "10" = B
				Bus2_Sel <= "01"; -- "00" = ALU_Result, "01" = Bus1, "10" = from_memory
				writeEn <= '0';

			when S_FETCH_1 => -- Increment PC
				IR_Load <= '0';
				MAR_Load <= '0';
				PC_Load <= '0';
				PC_Inc <= '1';
				A_Load <= '0';
				B_Load <= '0';
				ALU_Select <= "000";
				CCR_Load <= '0';
				Bus1_Sel <= "00"; -- "00" = PC, "01" = A, "10" = B
				Bus2_Sel <= "00"; -- "00" = ALU_Result, "01" = Bus1, "10" = from_memory
				writeEn <= '0';

			when S_FETCH_2 => 
			when S_DECODE_3 => 
			when S_LDA_IMM_4 => 
			when S_LDA_IMM_5 => 
			when S_LDA_IMM_6 => 
			when S_LDA_DIR_4 => 
			when S_LDA_DIR_5 => 
			when S_LDA_DIR_6 => 
			when S_LDA_DIR_7 => 
			when S_STA_DIR_4 => 			
			when S_STA_DIR_5 => 
			when S_STA_DIR_6 => 
			when S_STA_DIR_7 => 
			when S_STA_DIR_8 => 
			when S_ADD_AB_4 => 
			when S_BRA_4 => 
			when S_BRA_5 => 
			when S_BRA_6 => 
			when S_BEQ_4 => 
			when S_BEQ_5  => 
			when S_BEQ_6  => 
			when S_BEQ_7  => 
		end case;
	end process;
 
end architecture;
