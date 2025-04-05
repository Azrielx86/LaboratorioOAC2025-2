library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity memory is
  port (
    direction : in std_logic_vector(3 downto 0);
    prueba    : out std_logic_vector(1 downto 0);
    vf        : out std_logic;
    mi        : out std_logic_vector(1 downto 0);
    liga      : out std_logic_vector(3 downto 0);
    salidas_t : out std_logic_vector(5 downto 0);
    salidas_f : out std_logic_vector(5 downto 0)
  );
end entity;

-- Convención carta ASM: En cada rombo, si no hay un valor de entrada,
-- se asignan desde 0 en sentido antihorario.
-- Estados: {EST00, EST01, ... EST14}
-- Entradas:
--    X     : 00
--    Y     : 01
--    INT   : 10
--    Q_aux : 11 - '0'
-- Salidas: {s_5, ..., s_0}
-- VF Debe ser igual al valor de la rama con el salto condicional.

architecture arqmem of memory is
begin
  process (direction)
  begin
    case direction is
      when "0000" => -- Paso contiguo - 00
        prueba    <= "11";
        vf        <= '0';
        mi        <= "00";
        liga      <= "0001";
        salidas_t <= "000001";
        salidas_f <= "000001";
      when "0001" => -- Salto condicional - 01, n+1 con 0
        prueba    <= "00";
        vf        <= '1';
        mi        <= "01";
        liga      <= "0111";
        salidas_t <= "001111";
        salidas_f <= "001111";
      when "0010" => -- Paso contiguo - 00
        prueba    <= "11";
        vf        <= '1';
        mi        <= "00";
        liga      <= "0011";
        salidas_t <= "000011";
        salidas_f <= "000011";
      when "0011" => -- Paso contiguo - 00
        prueba    <= "11";
        vf        <= 'Z';
        mi        <= "00";
        liga      <= "0100";
        salidas_t <= "001010";
        salidas_f <= "001010";
      when others =>
        prueba    <= "00";
        vf        <= '0';
        mi        <= "00";
        liga      <= "0000";
        salidas_t <= "000000";
        salidas_f <= "000000";
    end case;
  end process;
end architecture;