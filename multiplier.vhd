library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity multiplier is
  generic (N : integer := 10);
  port (
    CLK     : in  std_logic;
    RST_N   : in  std_logic;
    INPUT_A : in  std_logic_vector(N-1 downto 0);
    INPUT_B : in  std_logic_vector(N-1 downto 0);
    PRODUCT : out std_logic_vector(2*N-1 downto 0);
	 MUL_DONE : out std_logic
  );
end;

architecture behavioral of multiplier is
  type state_type is (IDLE, CALC, FINISH);
  signal state          : state_type := IDLE;

  signal MULTIPLICAND : unsigned(2*N-1 downto 0) := (others => '0'); -- |A|<<k
  signal MULTIPLIER   : unsigned(N-1 downto 0)   := (others => '0'); -- |B|>>k
  signal RESULT       : unsigned(2*N-1 downto 0) := (others => '0');
  signal SIGN       : std_logic := '0';
  signal BIT_CNT        : integer range 0 to N := 0;
begin
  process(CLK, RST_N)
	 variable a_ext, b_ext : signed(N downto 0);
  begin
    if RST_N = '0' then
      state          <= IDLE;
      MULTIPLICAND <= (others => '0');
      MULTIPLIER   <= (others => '0');
      RESULT        <= (others => '0');
      BIT_CNT        <= 0;
      SIGN       <= '0';
      PRODUCT        <= (others => '0');
		MUL_DONE <= '0';

    elsif rising_edge(CLK) then
		MUL_DONE <= '0';
      case state is
        when IDLE =>
			 a_ext := resize(signed(INPUT_A), N+1);
			 b_ext := resize(signed(INPUT_B), N+1);
          SIGN  <= a_ext(N) xor b_ext(N);
          MULTIPLICAND <= resize(unsigned(a_ext), 2*N);
          MULTIPLIER   <= unsigned(abs(b_ext))(N-1 downto 0); 
          RESULT       <= (others => '0');
          BIT_CNT        <= 0;
          state          <= CALC;

        when CALC =>
          if BIT_CNT < N then
            if MULTIPLIER(0) = '1' then         -- ← ใช้ LSB ของตัวคูณ
              RESULT  <= RESULT  + MULTIPLICAND;
            end if;
            MULTIPLICAND <= shift_left(MULTIPLICAND, 1);
            MULTIPLIER   <= shift_right(MULTIPLIER, 1);  -- ← ต้องเลื่อนขวาทุกคล็อก
            BIT_CNT        <= BIT_CNT + 1;
          else
            state <= FINISH;
          end if;

        when FINISH =>
          if SIGN = '1' then
            PRODUCT <= std_logic_vector(-signed(RESULT));
          else
            PRODUCT <= std_logic_vector( signed(RESULT));
          end if;
			 MUL_DONE <= '1';
          state <= IDLE;
      end case;
    end if;
  end process;
end architecture;
