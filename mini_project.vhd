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

architecture structural of mini_project is
component bcd_converter is
	generic (N :integer:= 10);
	port (BINARY: in signed((2*N)-1 downto 0);
			OVERFLOW: in std_logic;
			BCD_SIGN: out std_logic_vector(3 downto 0);
			BCD_TEN_GRAND: out std_logic_vector(3 downto 0);
			BCD_GRAND: out std_logic_vector(3 downto 0);
			BCD_HUNDREDS: out std_logic_vector(3 downto 0);
			BCD_TENS: out std_logic_vector(3 downto 0);
			BCD_UNITS: out std_logic_vector(3 downto 0)
			);
end component;

component bcd_7_segment is
	port (CLK : in std_logic;
         BCD_SIGN       : in std_logic_vector(3 downto 0);
         BCD_TEN_GRAND  : in std_logic_vector(3 downto 0);
         BCD_GRAND      : in std_logic_vector(3 downto 0);
         BCD_HUNDREDS   : in std_logic_vector(3 downto 0);
         BCD_TENS       : in std_logic_vector(3 downto 0);
         BCD_UNITS      : in std_logic_vector(3 downto 0);
         SEVEN_SEG_SIGN       : out std_logic_vector(6 downto 0);
         SEVEN_SEG_TEN_GRAND  : out std_logic_vector(6 downto 0);
         SEVEN_SEG_GRAND      : out std_logic_vector(6 downto 0);
         SEVEN_SEG_HUNDREDS   : out std_logic_vector(6 downto 0);
         SEVEN_SEG_TENS       : out std_logic_vector(6 downto 0);
         SEVEN_SEG_UNITS      : out std_logic_vector(6 downto 0)
			);
end component;

type state_type is (S0, S1, S2, S3, S4, S5, S6);
signal RESET: std_logic;
signal SIGN: std_logic;
signal OVERFLOW: Std_logic;
signal DATA_A: signed(2*N-1 downto 0);
signal DATA_B: signed(N-1 downto 0);
signal DATA_R: signed(2*N-1 downto 0);
signal OPERATOR: std_logic_vector(1 downto 0);
signal BCD_SIGN: std_logic_vector(3 downto 0);
signal BCD_TEN_GRAND: std_logic_vector(3 downto 0);
signal BCD_GRAND: std_logic_vector(3 downto 0);
signal BCD_HUNDREDS: std_logic_vector(3 downto 0);
signal BCD_TENS: std_logic_vector(3 downto 0);
signal BCD_UNITS: std_logic_vector(3 downto 0);
signal SEVEN_SEG_SIGN_STATIC: std_logic_vector(6 downto 0);
signal SEVEN_SEG_TEN_GRAND_STATIC: std_logic_vector(6 downto 0);
signal SEVEN_SEG_GRAND_STATIC: std_logic_vector(6 downto 0);
signal SEVEN_SEG_HUNDREDS_STATIC: std_logic_vector(6 downto 0);
signal SEVEN_SEG_TENS_STATIC: std_logic_vector(6 downto 0);
signal SEVEN_SEG_UNITS_STATIC: std_logic_vector(6 downto 0);
signal STATE: state_type := S0;
begin
	CA: bcd_converter
		generic map(N => N)
		port map(BINARY => DATA_A,
					OVERFLOW => '0',
					BCD_SIGN => BCD_SIGN,
					BCD_TEN_GRAND => BCD_TEN_GRAND,
					BCD_GRAND => BCD_GRAND,
					BCD_HUNDREDS => BCD_HUNDREDS,
					BCD_TENS => BCD_TENS,
					BCD_UNITS => BCD_UNITS
					);
	DISP: bcd_7_segment
		port map (CLK => CLK,
					 BCD_SIGN => BCD_SIGN,
                BCD_TEN_GRAND => BCD_TEN_GRAND,
                BCD_GRAND => BCD_GRAND,
                BCD_HUNDREDS => BCD_HUNDREDS,
                BCD_TENS => BCD_TENS,
                BCD_UNITS => BCD_UNITS,
                SEVEN_SEG_SIGN => SEVEN_SEG_SIGN_STATIC,
                SEVEN_SEG_TEN_GRAND => SEVEN_SEG_TEN_GRAND_STATIC,
                SEVEN_SEG_GRAND => SEVEN_SEG_GRAND_STATIC,
                SEVEN_SEG_HUNDREDS => SEVEN_SEG_HUNDREDS_STATIC,
                SEVEN_SEG_TENS => SEVEN_SEG_TENS_STATIC,
                SEVEN_SEG_UNITS => SEVEN_SEG_UNITS_STATIC
					);
	
	SEVEN_SEG_SIGN       <= "1001111" when STATE = S0 else SEVEN_SEG_SIGN_STATIC;  
	SEVEN_SEG_TEN_GRAND  <= "0101000" when STATE = S0 else SEVEN_SEG_TEN_GRAND_STATIC;   
	SEVEN_SEG_GRAND      <= "0001100" when STATE = S0 else SEVEN_SEG_GRAND_STATIC;  
	SEVEN_SEG_HUNDREDS   <= "1100011" when STATE = S0 else SEVEN_SEG_HUNDREDS_STATIC;   
	SEVEN_SEG_TENS       <= "0000111" when STATE = S0 else SEVEN_SEG_TENS_STATIC;   
	SEVEN_SEG_UNITS      <= "0010000" when STATE = S0 else SEVEN_SEG_UNITS_STATIC;
	
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
		elsif rising_edge(CLK) then
			case STATE is
				when S0 => --init/reset state 
				if START = '0' then
					STATE <= S1;
				end if;
				when S1 => --input A
				DATA_A <= resize(signed(INPUT_A), 2*N);
				if START = '0' then
					STATE <= S2;
				end if;
				when others => 
					STATE <= S0;
			end case;
		end if;
	end process;
end structural;