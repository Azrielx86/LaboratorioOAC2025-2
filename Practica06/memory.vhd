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
    pl        : in std_logic;
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
  signal liga_tmp : std_logic_vector(3 downto 0) := "0000";
begin
  process (pl, liga_tmp)
  begin
    if pl = '1' then
      liga <= liga_tmp;
    else
      liga <= "ZZZZ";
    end if;
  end process;

  process (direction)
  begin
    case direction is
      when "0000" => -- E00 Paso contiguo - 00
        prueba    <= "00";
        vf        <= '0';
        mi        <= "00";
        liga_tmp  <= "0000";
        salidas_t <= "000001";
        salidas_f <= "000001";
      when "0001" => -- E01 Salto condicional - 01, n+1 con 0
        prueba    <= "00";
        vf        <= '1';
        mi        <= "01";
        liga_tmp  <= "0111"; -- E7
        salidas_t <= "011111";
        salidas_f <= "101111";
      when "0010" => -- E02 Paso contiguo - 00
        prueba    <= "00";
        vf        <= '0';
        mi        <= "00";
        liga_tmp  <= "0000";
        salidas_t <= "000011";
        salidas_f <= "000011";
      when "0011" => -- E03 Paso contiguo - 00
        prueba    <= "00";
        vf        <= '0';
        mi        <= "00";
        liga_tmp  <= "0000";
        salidas_t <= "001010";
        salidas_f <= "001010";
      when "0100" => -- E04
        prueba    <= "00";
        vf        <= '0';
        mi        <= "10";
        liga_tmp  <= "ZZZZ";
        salidas_t <= "010000";
        salidas_f <= "010000";
      when "0101" => -- E05
        prueba    <= "01";
        vf        <= '0';
        mi        <= "01";
        liga_tmp  <= "1010";
        salidas_t <= "110010";
        salidas_f <= "010010";
      when "0110" => -- E6
        prueba    <= "11";
        vf        <= '1';
        mi        <= "01";
        liga_tmp  <= "0010";
        salidas_t <= "001001";
        salidas_f <= "001001";
      when "0111" => -- E7
        prueba    <= "10";
        vf        <= '0';
        mi        <= "11";
        liga_tmp  <= "ZZZZ";
        salidas_t <= "010001";
        salidas_f <= "010000";
      when "1000" => -- E8
        prueba    <= "11";
        vf        <= '1';
        mi        <= "01";
        liga_tmp  <= "0001";
        salidas_t <= "100000";
        salidas_f <= "100000";
      when "1001" => -- E9
        prueba    <= "10";
        vf        <= '0';
        mi        <= "11";
        liga_tmp  <= "ZZZZ";
        salidas_t <= "101011";
        salidas_f <= "001010";
      when "1010" => -- E10
        prueba    <= "11";
        vf        <= '1';
        mi        <= "01";
        liga_tmp  <= "0000";
        salidas_t <= "000000";
        salidas_f <= "000000";
      when "1011" => -- E11
        prueba    <= "00";
        vf        <= '0';
        mi        <= "10";
        liga_tmp  <= "ZZZZ";
        salidas_t <= "000100";
        salidas_f <= "000100";
      when "1100" => -- E12
        prueba    <= "11";
        vf        <= '1';
        mi        <= "01";
        liga_tmp  <= "0000";
        salidas_t <= "000100";
        salidas_f <= "000100";
      when "1101" => -- E13
        prueba    <= "11";
        vf        <= '1';
        mi        <= "01";
        liga_tmp  <= "0000";
        salidas_t <= "101000";
        salidas_f <= "101000";
      when "1110" => -- E14
        prueba    <= "11";
        vf        <= '1';
        mi        <= "01";
        liga_tmp  <= "0000";
        salidas_t <= "010011";
        salidas_f <= "010011";
      when others =>
        prueba    <= "00";
        vf        <= '0';
        mi        <= "00";
        liga_tmp  <= "0000";
        salidas_t <= "000000";
        salidas_f <= "000000";
    end case;
  end process;
end architecture;