library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;

entity mux_inputs is
  port (
    prueba : std_logic_vector(1 downto 0);
    x      : in std_logic;
    y      : in std_logic;
    int    : in std_logic;
    qsel   : out std_logic
  );
end mux_inputs;

-- Entradas:
--    X     : 00
--    Y     : 01
--    INT   : 10
--    Q_aux : 11 - '0'

architecture arqmuxin of mux_inputs is
begin
  process (prueba, x, y, int)
  begin
    case prueba is
      when "00" =>
        qsel <= x;
      when "01" =>
        qsel <= y;
      when "10" =>
        qsel <= int;
      when "11" =>
        qsel <= '0'; -- Q_aux
      when others =>
        qsel <= '0';
    end case;
  end process;
end arqmuxin;
