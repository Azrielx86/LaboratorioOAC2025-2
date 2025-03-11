library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity registro is 
	Port (
		reset, clk : in std_logic;
		edo_sig : in std_logic_vector(2 downto 0);
		direccion : out std_logic_vector(2 downto 0)
	);
end registro;

architecture Behavioral of registro is
signal edo_pres : std_logic_vector(2 downto 0) := "000";
begin
	process(reset, clk, edo_sig)
	begin
		if reset = '0' then edo_pres <= "000";
		elsif rising_edge(clk) then edo_pres <= edo_sig;
		end if;
		direccion <= edo_pres;
	end process;
end Behavioral;
