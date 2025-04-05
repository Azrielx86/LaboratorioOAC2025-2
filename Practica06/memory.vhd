library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity memory is
  port (
    direction : in std_logic_vector(3 downto 0);
    prueba    : out std_logic_vector(2 downto 0);
    vf        : out std_logic;
    mi        : out std_logic_vector(2 downto 0);
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
--    Q_aux : 10 - '0'
-- Salidas: {s_5, ..., s_0}

architecture arqmem of memory is
begin
  process (direction)
  begin
  end process;
end architecture;