library ieee;
use ieee.std_logic_1164.all;

entity OR2_7Bits is
    Port (
        A : in std_logic_vector(6 downto 0);
        B : in std_logic_vector(6 downto 0);
        Y : out std_logic_vector(6 downto 0)
    );
end OR2_7Bits;

architecture Behavioral of OR2_7Bits is
begin
    Y <= A xor B;
end Behavioral;