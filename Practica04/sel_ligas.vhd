library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity sel_ligas is 
	Port (
		LF	: in std_logic_vector(2 downto 0);
		LV : in std_logic_vector(2 downto 0);
		sel : in std_logic;
		valor : out std_logic_vector(2 downto 0)
	);
end sel_ligas;

architecture Behavioral of sel_ligas is
begin
	process(LF, LV, sel)
	begin
		case sel is
			when '0' => valor <= LF;
			when '1' => valor <= LV;
			when others => valor <= "000";
		end case;
	end process;
end Behavioral;
