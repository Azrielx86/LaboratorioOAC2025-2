library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.STD_LOGIC_ARITH.all;
use IEEE.STD_LOGIC_UNSIGNED.all;

entity mux_inputs is
  port (
    prueba : std_logic_vector(2 downto 0);
    v      : in std_logic;
    w      : in std_logic;
    x      : in std_logic;
    z      : in std_logic;
    qsel   : out std_logic
  );
end mux_inputs;

-- Estados: {EST0, EST1, ... EST6}
-- Entradas:
--    V     : 000
--    W     : 001
--    X     : 010
--    Z     : 011
--    Q_aux : 100
-- Salidas: {s_3, s_2, s_1, s_0}

architecture arqmuxin of mux_inputs is
begin
  process (prueba, v, w, x, z)
  begin
    case prueba is
      when "000" =>
        qsel <= v;
      when "001" =>
        qsel <= w;
      when "010" =>
        qsel <= x;
      when "011" =>
        qsel <= z;
      when "100" =>
        qsel <= '0'; -- Q_aux
      when others =>
        qsel <= '0';
    end case;
  end process;
end arqmuxin;
