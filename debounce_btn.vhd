library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity debounce_btn is
  generic (
    DEBOUNCE_TICKS : natural := 500000  -- ~10ms @ 50MHz
  );
  port (
    CLK   : in  std_logic;
    RST_N  : in  std_logic;  -- active-low reset
    BTN  : in  std_logic;  -- ปุ่ม active-low (ปล่อย=1, กด=0)
    PULSE  : out std_logic   -- พัลส์ 1 คล็อก เมื่อ "กดลง" (falling edge)
  );
end entity;

architecture rtl of debounce_btn is
  signal meta, sync  : std_logic := '1';
  signal db_level    : std_logic := '1';
  signal prev_level  : std_logic := '1';
  signal cnt         : unsigned(31 downto 0) := (others => '0');
begin
  process(CLK, RST_N)
  begin
    if RST_N = '0' then
      meta       <= '1';
      sync       <= '1';
      db_level   <= '1';
      prev_level <= '1';
      PULSE     <= '0';
      cnt        <= (others => '0');

    elsif rising_edge(CLK) then
      -- 2-FF synchronizer
      meta <= BTN;
      sync <= meta;

      -- Debounce counter
      if sync = db_level then
        cnt <= (others => '0');
      else
        if cnt = to_unsigned(DEBOUNCE_TICKS-1, cnt'length) then
          db_level <= sync;
          cnt      <= (others => '0');
        else
          cnt <= cnt + 1;
        end if;
      end if;

      -- One-shot pulse on rising edge (0 -> 1)
      if (prev_level = '0') and (db_level = '1') then
        PULSE <= '1';
      else
        PULSE <= '0';
      end if;

      -- remember last debounced level
      prev_level <= db_level;
    end if;
  end process;
end rtl;
