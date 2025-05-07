library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.STD_LOGIC_ARITH.all;
use IEEE.STD_LOGIC_UNSIGNED.all;

entity divisor is
  port (
    clk     : in std_logic;
    div_clk : out std_logic
  );
end divisor;

architecture arqdivf of divisor is
begin
  process (clk)
    variable cuenta : std_logic_vector (27 downto 0) := X"0000000";
  begin
    if rising_edge (clk) then
      if cuenta = X"2000000" then
        cuenta := X"0000000";
      else
        cuenta := cuenta + 1;
      end if;
    end if;
    div_clk <= cuenta (25);
  end process;
end arqdivf;