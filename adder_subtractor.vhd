library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity adder_subtractor is
generic ( N : integer := 10 );
	port(ADD_SUB: in std_logic;
	INPUT_A: in std_logic_vector(N-1 downto 0);
	INPUT_B : in std_logic_vector(N-1 downto 0);
	SUM: out std_logic_vector(N-1 downto 0) 
	);
end adder_subtractor;

architecture data_flow of adder_subtractor is
	component full_adder
		port( A , B, C_IN: in std_logic;
		C_OUT, SUM : out std_logic);
	end component;
	signal CARRY_OUT : std_logic_vector(N downto 0);
begin
	CARRY_OUT(0) <= ADD_SUB;
	adder: for i in 0 to N-1 generate
	adder: full_adder
		port map( INPUT_A(i), INPUT_B(i) xor ADD_SUB, CARRY_OUT(i), CARRY_OUT(i+1), SUM(i));
	end generate;
end data_flow;