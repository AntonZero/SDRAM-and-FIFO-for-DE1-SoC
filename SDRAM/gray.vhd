library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.all;


entity grc is
port(
CLKGR: in std_logic;
binary: in std_logic_vector (8 downto 0);
gray: out std_logic_vector(8 downto 0)
);
end grc;

architecture  main of grc is
begin

process(binary)
begin
if rising_edge(clkgr)then
	gray(8)<=binary(8);
	gray(7)<=binary(8)XOR binary(7);
	gray(6)<=binary(7)XOR binary(6); 
	gray(5)<=binary(6)XOR binary(5); 
	gray(4)<=binary(5)XOR binary(4); 
	gray(3)<=binary(4)XOR binary(3); 
	gray(2)<=binary(3)XOR binary(2); 
	gray(1)<=binary(2)XOR binary(1);
	gray(0)<=binary(1)XOR binary(0); 
end if;
end process;
end main;