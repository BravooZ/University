library IEEE;
use IEEE.std_logic_1164.all;

entity ShiftRegister4 is

	port (clk : in std_logic;
			sin : in std_logic;
			dataOut : out std_logic_vector(3 downto 0));
			
end ShiftRegister4;

architecture Behavioral of ShiftRegister4 is

	signal s_shiftreg : std_logic_vector(3 downto 0);
	
begin
	process(clk)
	begin
		if(rising_edge(clk)) then
			s_shiftreg <= s_shiftreg(2 downto 0) & sin;
		end if;
	end process;
	
	dataOut <= s_shiftreg;
	
end Behavioral;