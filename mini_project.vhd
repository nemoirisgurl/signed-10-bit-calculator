library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity mini_project is
	generic (N :integer:= 10);
	port (CLK: in std_logic;
			RST_N: in std_logic;
			START: in std_logic;
			INPUT: in std_logic_vector(N-1 downto 0);
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

component operator_display is
	port(OPERATOR: in std_logic_vector(1 downto 0);
		  SYM_SIGN       : out std_logic_vector(6 downto 0);
        SYM_TEN_GRAND  : out std_logic_vector(6 downto 0);
        SYM_GRAND      : out std_logic_vector(6 downto 0);
        SYM_HUNDREDS   : out std_logic_vector(6 downto 0);
        SYM_TENS       : out std_logic_vector(6 downto 0);
        SYM_UNITS      : out std_logic_vector(6 downto 0)
		  );
end component;

component debounce_btn is
  generic (DEBOUNCE_TICKS : natural := 500000  -- ~10ms @ 50MHz
  );
  port (
    CLK   : in  std_logic;
    RST_N  : in  std_logic;  
    BTN  : in  std_logic;  
    PULSE  : out std_logic  
  );
end component;

component adder_subtractor is
	generic ( N : integer := 10 );
		port(ADD_SUB: in std_logic;
		INPUT_A: in std_logic_vector(N-1 downto 0);
		INPUT_B : in std_logic_vector(N-1 downto 0);
		SUM: out std_logic_vector(N-1 downto 0) 
		);
end component;

component multiplier is 
  generic (N : integer := 10);
  port (
    CLK     : in  std_logic;
    RST_N   : in  std_logic;
    INPUT_A : in  std_logic_vector(N-1 downto 0);
    INPUT_B : in  std_logic_vector(N-1 downto 0);
    PRODUCT : out std_logic_vector(2*N-1 downto 0)
  );
end component;

type state_type is (S0, S1, S2, S3, S4, S5, S6);
signal OVERFLOW: Std_logic;
signal PULSE: Std_logic := '0';
signal DATA_A: signed(N-1 downto 0);
signal DATA_B: signed(N-1 downto 0);
signal DATA_R: signed(2*N-1 downto 0);
signal ADD_RES: std_logic_vector(N-1 downto 0);
signal MUL_PRODUCT: std_logic_vector(2*N-1 downto 0);
signal ADD_SUB: std_logic;
signal OPERATOR: std_logic_vector(1 downto 0);
signal DISPLAY_TOGGLE : std_logic_vector(1 downto 0); -- "00"=Text,"01"=Operator Sign,"10"=NumINput,"11"=R
signal DISPLAY_DATA: signed(2*N-1 downto 0);
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
signal SYM_SIGN, SYM_TEN_GRAND, SYM_GRAND, SYM_HUNDREDS, SYM_TENS, SYM_UNITS: std_logic_vector(6 downto 0);
signal STATE: state_type := S0;
begin
	CONV_U: bcd_converter
		generic map(N => N)
		port map(BINARY => DISPLAY_DATA,
					OVERFLOW => OVERFLOW,
					BCD_SIGN => BCD_SIGN,
					BCD_TEN_GRAND => BCD_TEN_GRAND,
					BCD_GRAND => BCD_GRAND,
					BCD_HUNDREDS => BCD_HUNDREDS,
					BCD_TENS => BCD_TENS,
					BCD_UNITS => BCD_UNITS
					);
					
	NUM_DISP_U: bcd_7_segment
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
					
	DEBOUNCE_U: debounce_btn
		port map (CLK => CLK,
					 RST_N => RST_N,
					 BTN => START,
					 PULSE => PULSE
					 );
	
	SYMBOL_U: operator_display
		port map (OPERATOR => OPERATOR,
					 SYM_SIGN => SYM_SIGN,
					 SYM_TEN_GRAND => SYM_TEN_GRAND,
					 SYM_GRAND => SYM_GRAND,
					 SYM_HUNDREDS => SYM_HUNDREDS,
					 SYM_TENS => SYM_TENS,
					 SYM_UNITS => SYM_UNITS
					 );
					 
	ADD_SUB_U: adder_subtractor
		port map(ADD_SUB => ADD_SUB,
					INPUT_A => std_logic_vector(DATA_A),
					INPUT_B => std_logic_vector(DATA_B),
					SUM => ADD_RES
					);
		
	MULTI_U: multiplier
		port map (CLK => CLK,
					 RST_N => RST_N,
					 INPUT_A => std_logic_vector(DATA_A),
					 INPUT_B => std_logic_vector(DATA_B),
					 PRODUCT => MUL_PRODUCT
					);
		
	SEVEN_SEG_SIGN       <= "1001111" when STATE = S0 else --gfedcba
									"0001110" when STATE = S2 else
									SYM_SIGN when STATE = S3 else
									"1001111" when STATE = S4 else SEVEN_SEG_SIGN_STATIC;  
	SEVEN_SEG_TEN_GRAND  <= "0101011" when STATE = S0 else
	                        "1100011" when STATE = S2 else
									SYM_TEN_GRAND when STATE = S3 else
									"0101011" when STATE = S4 else SEVEN_SEG_TEN_GRAND_STATIC;   
	SEVEN_SEG_GRAND      <= "0001100" when STATE = S0 else
									"0101011" when STATE = S2 else 
									SYM_GRAND when STATE = S3 else
									"0001100" when STATE = S4 else SEVEN_SEG_GRAND_STATIC;  
	SEVEN_SEG_HUNDREDS   <= "1100011" when STATE = S0 else 
									"1000110" when STATE = S2 else
									SYM_HUNDREDS when STATE = S3 else	
									"1100011" when STATE = S4 else SEVEN_SEG_HUNDREDS_STATIC;   
	SEVEN_SEG_TENS       <= "0000111" when STATE = S0 else 
									"1111111" when STATE = S2 else
									SYM_TENS when STATE = S3 else
									"0000111" when STATE = S4 else SEVEN_SEG_TENS_STATIC;   
	SEVEN_SEG_UNITS      <= "0001000" when STATE = S0 else 
									"1111111" when STATE = S2 else
									SYM_UNITS when STATE = S3 else	
									"0000000" when STATE = S4 else SEVEN_SEG_UNITS_STATIC;
	DISPLAY_DATA <= resize(signed(INPUT), 2*N)when DISPLAY_TOGGLE = "10" else
						 DATA_R;
	ADD_SUB <= '1' when OPERATOR = "10" else
				  '0';
	OVERFLOW <= '1' when to_integer(DATA_R) < -99999 or to_integer(DATA_R) > 99999 else
					'0';
					
	process(CLK, RST_N)
	begin
		if RST_N = '0' then
			DATA_A <= (others => '0');
			DATA_B <= (others => '0');
			DATA_R <= (others => '0');
			OPERATOR <= "00";
			DISPLAY_TOGGLE <= "00";
			STATE <= S0;
			DONE <= '0';
		elsif rising_edge(CLK) then
			case STATE is
				when S0 => --init/reset state
				DISPLAY_TOGGLE <= "00";
				DONE <= '0';
				if PULSE = '1' then
					STATE <= S1;
				end if;
				when S1 => --display input A
				DISPLAY_TOGGLE <= "10";
				if PULSE = '1' then
					DATA_A <= signed(INPUT);
					STATE <= S2;
				end if;
				when S2 => --display Func
				DISPLAY_TOGGLE <= "00";
				if PULSE = '1' then
					STATE <= S3;
				end if;
				when S3 => --input operator
				DISPLAY_TOGGLE <= "01";
				if PULSE = '1' then
					OPERATOR <= INPUT(1 downto 0);
					STATE <= S4;
				end if;
				when S4 => --display InputB
				DISPLAY_TOGGLE <= "00";
				if PULSE = '1' then
					STATE <= S5;
				end if;
				when S5 => --display input B
				DISPLAY_TOGGLE <= "10";
				if PULSE = '1' then
					DATA_B <= signed(INPUT);
					STATE <= S6;
				end if;
				when S6 => --eval
					if OPERATOR = "11" or OPERATOR = "10" then -- +
						DATA_R <= resize(signed(ADD_RES), 2*N);
					elsif OPERATOR = "01" then
						DATA_R <= signed(MUL_PRODUCT);
					end if;
					DISPLAY_TOGGLE <= "11";
					DONE <= '1';
				when others => 
				STATE <= S0;
			end case;
		end if;
	end process;
end structural;