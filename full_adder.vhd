library ieee;
use ieee.std_logic_1164.all;

entity full_adder is
port(
	A , B, C_IN : in std_logic;
	C_OUT, SUM : out std_logic);

end full_adder;

architecture data_flow of full_adder is
begin
	C_OUT <= ((A xor B) and C_IN) or (A and B);
	SUM <= (A xor B) xor c_IN;
end data_flow;