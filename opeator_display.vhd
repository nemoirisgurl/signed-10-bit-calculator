library ieee;
use ieee.std_logic_1164.all;

entity operator_display is
	port(OPERATOR: in std_logic_vector(1 downto 0);
		  SYM_SIGN       : out std_logic_vector(6 downto 0);
        SYM_TEN_GRAND  : out std_logic_vector(6 downto 0);
        SYM_GRAND      : out std_logic_vector(6 downto 0);
        SYM_HUNDREDS   : out std_logic_vector(6 downto 0);
        SYM_TENS       : out std_logic_vector(6 downto 0);
        SYM_UNITS      : out std_logic_vector(6 downto 0)
		  );
end operator_display;

architecture behavioral of operator_display is
	begin
		process(OPERATOR)
		begin
			SYM_SIGN, SYM_TEN_GRAND, SYM_GRAND, SYM_HUNDREDS, SYM_TENS, SYM_UNITS <= "1111111";
			
			case OPERATOR
				when "00" =>
					SYM_SIGN <= "0111111";
					SYM_TEN_GRAND <= "0111010";
					SYM_GRAND <= "0111111";
				when "01" =>
					SYM_SIGN <= "0001111";
					SYM_TEN_GRAND <= "1001111";
				when "10" =>
					SYM_SIGN <= "0111111";
					SYM_TEN_GRAND <= "0111111";
				when "11" =>
					SYM_SIGN <= "0111001";
					SYM_TEN_GRAND <= "0111111";
				when others =>
					null;
			end case;
	end process;
end behavioral;