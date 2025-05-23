--Bibliotecas
library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity GateDemo is
	port( SW : in std_logic_vector(1 downto 0);
			LEDR : out std_logic_vector(0 downto 0)
		);
end GateDemo;

architecture Shell of GateDemo is
begin
	system_core : entity work.NAND2Gate(Structural)
									port map(input0 => SW(0),
												input1 => SW(1),
												output => LEDR(0));
end Shell;