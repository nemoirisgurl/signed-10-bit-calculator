library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity mini_project is
	generic (N :integer:= 10);
	port (CLK: in std_logic;
			RST_N: in std_logic;
			START: in std_logic;
			INPUT_A: in std_logic_vector(N-1 downto 0);
			INPUT_B: in std_logic_vector(N-1 downto 0);
			OP: in std_logic_vector(1 downto 0);
			DONE: out std_logic;
			SEVEN_SEG_SIGN: out std_logic_vector(6 downto 0);
			SEVEN_SEG_TEN_GRAND: out std_logic_vector(6 downto 0);
			SEVEN_SEG_GRAND: out std_logic_vector(6 downto 0);
			SEVEN_SEG_HUNDREDS: out std_logic_vector(6 downto 0);
			SEVEN_SEG_TENS: out std_logic_vector(6 downto 0);
			SEVEN_SEG_UNITS: out std_logic_vector(6 downto 0)
			);
end mini_project;

architecture Behavioral of mini_project is
type state_type is (S0, S1, S2, S3, S4, S5, S6);
signal RESET: std_logic;
signal SIGN: std_logic;
signal DATA_A: std_logic_vector(2*N-1 downto 0);
signal DATA_B: std_logic_vector(N-1 downto 0);
signal DATA_R: std_logic_vector(2*N-1 downto 0);
signal OPERATOR: std_logic_vector(1 downto 0);
signal STATE: state_type := S0;
begin
	process(CLK, RST_N)
	begin
		if RST_N = '0' then
			RESET <= '1';
			SIGN <= '0';
			DATA_A <= (others => '0');
			DATA_B <= (others => '0');
			OPERATOR <= "00";
			STATE <= S0;
			DONE <= '0';
         SEVEN_SEG_SIGN <= "1000000";
         SEVEN_SEG_TEN_GRAND <= "1000000";
         SEVEN_SEG_GRAND <= "1000000";
         SEVEN_SEG_HUNDREDS <= "1000000";
         SEVEN_SEG_TENS <= "1000000";
         SEVEN_SEG_UNITS <= "1000000";
		elsif rising_edge(CLK) then
			case STATE is
				when S0 => --init/reset state
				SEVEN_SEG_SIGN <= "1001111";
				SEVEN_SEG_TEN_GRAND <= "0101011";
				SEVEN_SEG_GRAND <= "0001100";
				SEVEN_SEG_HUNDREDS <= "1100011";
				SEVEN_SEG_TENS <= "0000111";
				SEVEN_SEG_UNITS <= "0001000";
				if START = '0' then
					STATE <= S1;
				end if;
				when others => 
					STATE <= S0;
			end case;
		end if;
	end process;
end Behavioral;