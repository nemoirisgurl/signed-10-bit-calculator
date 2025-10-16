library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity divider is
  generic (N : integer := 10);
  port (
    CLK       : in  std_logic;
    RST_N     : in  std_logic;
    DIVIDEND  : in  std_logic_vector(N-1 downto 0);  -- signed two's complement
    DIVISOR   : in  std_logic_vector(N-1 downto 0);  -- signed two's complement
    QUOTIENT  : out std_logic_vector(N-1 downto 0);  -- signed two's complement
    REMAINDER : out std_logic_vector(N-1 downto 0);  -- signed two's complement (sign = sign(DIVIDEND))
    ERROR     : out std_logic;                       -- '1' เมื่อหารด้วยศูนย์ (ค้างจนเริ่มรอบใหม่)
    DONE      : out std_logic                        -- พัลส์ 1 คล็อกเมื่อเสร็จ
  );
end divider;

architecture behavioral of divider is
  type state_type is (IDLE, CHECK_ZERO, PREP, SHIFT, ADD_SUB, WRITE_BIT, RESTORE, SIGNAPPLY, DONE_ST);
  signal state     : state_type := IDLE;

  signal A         : signed(N downto 0) := (others => '0');        -- remainder (กว้าง N+1)
  signal Q         : signed(N-1 downto 0) := (others => '0');      -- ระหว่างคำนวณเก็บ |quot|
  signal M         : signed(N-1 downto 0) := (others => '0');      -- |divisor|
  signal cnt       : integer range 0 to N := 0;

  signal sign_D    : std_logic := '0';
  signal sign_M    : std_logic := '0';
  signal sign_Q    : std_logic := '0';

  signal error_flag: std_logic := '0';
begin
  DONE  <= '1' when state = DONE_ST else '0';
  ERROR <= error_flag;

  process (CLK, RST_N)
    variable qv : signed(N-1 downto 0);
    variable rv : signed(N-1 downto 0);
	 variable D_ext : signed(N downto 0);
	 variable M_ext : signed(N downto 0);
  begin
    if RST_N = '0' then
      state      <= IDLE;
      A          <= (others => '0');
      Q          <= (others => '0');
      M          <= (others => '0');
      cnt        <= 0;
      sign_D     <= '0';
      sign_M     <= '0';
      sign_Q     <= '0';
      error_flag <= '0';
      QUOTIENT   <= (others => '0');
      REMAINDER  <= (others => '0');

    elsif rising_edge(CLK) then
      case state is
        when IDLE =>
          sign_D     <= DIVIDEND(N-1);
          sign_M     <= DIVISOR(N-1);
          sign_Q     <= DIVIDEND(N-1) xor DIVISOR(N-1);
          error_flag <= '0';
          state      <= CHECK_ZERO;

        when CHECK_ZERO =>
          if unsigned(DIVISOR) = 0 then
            error_flag <= '1';
            QUOTIENT   <= (others => '0');
            REMAINDER  <= (others => '0');
            state      <= DONE_ST;
          else
            state <= PREP;
          end if;

        when PREP =>
			  D_ext := resize(signed(DIVIDEND), N+1);
			  M_ext := resize(signed(DIVISOR),  N+1);
			  A   <= (others => '0');
			  Q   <= signed( unsigned(abs(D_ext))(N-1 downto 0) );
			  M   <= signed( unsigned(abs(M_ext))(N-1 downto 0) );
			  cnt   <= N;
			  state <= SHIFT;
        when SHIFT =>
          -- {A,Q} << 1 : A รับ MSB(Q), Q เติม '0'
          A <= signed( A(N-1 downto 0) & Q(N-1) );
          Q <= Q(N-2 downto 0) & '0';
          state <= ADD_SUB;

        when ADD_SUB =>
          -- A>=0 → A := A - M ; A<0 → A := A + M  (ขยาย M เป็น N+1 ด้วย resize)
          if A(N) = '0' then
            A <= A - resize(M, N+1);
          else
            A <= A + resize(M, N+1);
          end if;
          state <= WRITE_BIT;

        when WRITE_BIT =>
          -- Q0 := (A>=0) ? 1 : 0
          if A(N) = '0' then
            Q(0) <= '1';
          else
            Q(0) <= '0';
          end if;

          if cnt > 0 then
            cnt <= cnt - 1;
          end if;

          if cnt > 1 then
            state <= SHIFT;
          else
            state <= RESTORE;
          end if;

        when RESTORE =>
          -- restore รอบสุดท้ายถ้า A<0
          if A(N) = '1' then
            A <= A + resize(M, N+1);
          end if;
          state <= SIGNAPPLY;

        when SIGNAPPLY =>
          -- ใส่เครื่องหมายให้ผลลัพธ์จริง
          qv := Q;
          if sign_Q = '1' then
            qv := -qv;
          end if;

          rv := signed(A(N-1 downto 0));
          if sign_D = '1' then
            rv := -rv;
          end if;

          QUOTIENT  <= std_logic_vector(qv);
          REMAINDER <= std_logic_vector(rv);
          state     <= DONE_ST;

        when DONE_ST =>
          state <= IDLE;

        when others =>
          state <= IDLE;
      end case;
    end if;
  end process;
end behavioral;
