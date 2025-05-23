library IEEE;
use IEEE.std_logic_1164.all;

entity SeqDetFSM_Tb is

end SeqDetFSM_Tb;

architecture Stimulus of SeqDetFSM_Tb is

	signal s_x, s_rst, s_clk : std_logic;
	signal s_y : std_logic;
	
begin

	uut : entity work.SeqDetFSM(MealyArch)
						port map(clk => s_clk,
									rst => '0',
									x => s_x,
									y => s_y);
									
	process_clk :  process
						begin
							s_clk <= '0';
							wait for 10 ns;
							s_clk <= '1';
							wait for 10 ns;
						end process;
	process_stim : process
						begin
							s_x <= '0';
							wait for 20 ns;
							
							s_x <= '1';
							wait for 20 ns;
							s_x <= '0';
							wait for 20 ns;
							s_x <= '0';
							
							wait for 20 ns;
							s_x <= '1';
						
							wait for 20 ns;
							s_x <= '0';
							wait for 20 ns;
							s_x <= '0';
							wait for 20 ns;
							s_x <= '1';
							wait for 100 ns;
						end process;

end stimulus;