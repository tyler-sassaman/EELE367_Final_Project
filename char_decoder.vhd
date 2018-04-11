library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity char_decoder is
	port(BIN_IN  : in  std_logic_vector (3 downto 0);
	     HEX_OUT : out std_logic_vector (6 downto 0));
end entity;

architecture char_decoder_arch of char_decoder is

	begin
	
	-- Logic for the 7 segment decoder display
	process (BIN_IN)
		begin
		if   (BIN_IN = "0000") then HEX_OUT <= "1000000"; -- 0
		elsif(BIN_IN = "0001") then HEX_OUT <= "1111001"; -- 1
		elsif(BIN_IN = "0010") then HEX_OUT <= "0100100"; -- 2
		elsif(BIN_IN = "0011") then HEX_OUT <= "0110000"; -- 3

		elsif(BIN_IN = "0100") then HEX_OUT <= "0011001"; -- 4
		elsif(BIN_IN = "0101") then HEX_OUT <= "0010010"; -- 5
		elsif(BIN_IN = "0110") then HEX_OUT <= "0000010"; -- 6
		elsif(BIN_IN = "0111") then HEX_OUT <= "1111000"; -- 7

		elsif(BIN_IN = "1000") then HEX_OUT <= "0000000"; -- 8
		elsif(BIN_IN = "1001") then HEX_OUT <= "0010000"; -- 9
		elsif(BIN_IN = "1010") then HEX_OUT <= "0001000"; -- a
		elsif(BIN_IN = "1011") then HEX_OUT <= "0000011"; -- b

		elsif(BIN_IN = "1100") then HEX_OUT <= "0100111"; -- c
		elsif(BIN_IN = "1101") then HEX_OUT <= "0100001"; -- d
		elsif(BIN_IN = "1110") then HEX_OUT <= "0000110"; -- e
		elsif(BIN_IN = "1111") then HEX_OUT <= "0001110"; -- f

		else  HEX_OUT <= "0000000"; -- blank (all other input cases)
		end if;

	end process;
	
end architecture;