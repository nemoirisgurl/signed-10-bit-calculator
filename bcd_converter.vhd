library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity bcd_converter is
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
end bcd_converter;

architecture converter of bcd_converter is
   signal INT : integer := 0;
   signal TEN_GRAND, GRAND, HUNDREDS, TENS, ONES : integer range 0 to 9 := 0;
	begin
		process(BINARY, OVERFLOW)
		begin
			if OVERFLOW = '1' then
			   BCD_SIGN <= "1100"; 
            BCD_TEN_GRAND <= "1100";
            BCD_GRAND <= "1100";
            BCD_HUNDREDS <= "1100";
            BCD_TENS <= "1100";
            BCD_UNITS <= "1100";
			else
				INT <= to_integer(BINARY);
				if INT < 0 then
					BCD_SIGN <= "1010";
					INT <= -INT;
				else
					BCD_SIGN <= "1111";
				end if;
			
	
				TEN_GRAND <= INT / 10000;
				GRAND <= INT/1000 mod 10;
				HUNDREDS <= INT/100 mod 10;
				TENS <= INT/10 mod 10;
				ONES <= INT mod 10;
				
	         BCD_TEN_GRAND <= std_logic_vector(to_unsigned(TEN_GRAND, 4));
            BCD_GRAND     <= std_logic_vector(to_unsigned(GRAND, 4));
            BCD_HUNDREDS  <= std_logic_vector(to_unsigned(HUNDREDS, 4));
            BCD_TENS      <= std_logic_vector(to_unsigned(TENS, 4));
            BCD_UNITS     <= std_logic_vector(to_unsigned(ONES, 4));
			end if;
		end process;
end converter;
	
	
