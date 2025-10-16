library ieee;
use ieee.std_logic_1164.all;

entity bcd_7_segment is
    port (
        CLK : in std_logic;
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
end bcd_7_segment;

architecture rtl of bcd_7_segment is
    function bcd_to_7seg(bcd : std_logic_vector(3 downto 0)) return std_logic_vector is
        variable seg : std_logic_vector(6 downto 0);
    begin
        case bcd is --gfedcba active low
            when "0000" => seg := "1000000"; -- 0
            when "0001" => seg := "1111001"; -- 1
            when "0010" => seg := "0100100"; -- 2
            when "0011" => seg := "0110000"; -- 3
            when "0100" => seg := "0011001"; -- 4
            when "0101" => seg := "0010010"; -- 5
            when "0110" => seg := "0000010"; -- 6
            when "0111" => seg := "1111000"; -- 7
            when "1000" => seg := "0000000"; -- 8
            when "1001" => seg := "0010000"; -- 9
            when "1010" => seg := "0111111"; -- '-' (เฉพาะ segment g)
				when "1011" => seg := "1001111"; -- '|'
            when "1100" => seg := "0001110"; -- 'F'
            when "1111" => seg := "1111111"; -- blank
				when others => seg := "1111111"; -- blank
        end case;
        return seg;
    end function;

begin
    process(CLK)
    begin
        if rising_edge(CLK) then
            SEVEN_SEG_SIGN       <= bcd_to_7seg(BCD_SIGN);
            SEVEN_SEG_TEN_GRAND  <= bcd_to_7seg(BCD_TEN_GRAND);
            SEVEN_SEG_GRAND      <= bcd_to_7seg(BCD_GRAND);
            SEVEN_SEG_HUNDREDS   <= bcd_to_7seg(BCD_HUNDREDS);
            SEVEN_SEG_TENS       <= bcd_to_7seg(BCD_TENS);
            SEVEN_SEG_UNITS      <= bcd_to_7seg(BCD_UNITS);
        end if;
    end process;
end rtl;
