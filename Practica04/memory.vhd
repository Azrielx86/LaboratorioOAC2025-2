library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity memory is
  port (
    direction        : in std_logic_vector(2 downto 0);
    prueba           : out std_logic_vector(2 downto 0);
    liga_verdadera   : out std_logic_vector(2 downto 0);
    liga_falsa       : out std_logic_vector(2 downto 0);
    salida_verdadera : out std_logic_vector(4 downto 0);
    salida_falsa     : out std_logic_vector(4 downto 0)
  );
end entity;

architecture behavioral of memory is

begin

  process (direction)
  begin
    case direction is
      when "000" =>
        prueba           <= "001";
        liga_falsa       <= "001";
        liga_verdadera   <= "001";
        salida_falsa     <= "00011";
        salida_verdadera <= "00011";
      when "001" =>
        prueba           <= "010";
        liga_falsa       <= "010";
        liga_verdadera   <= "100";
        salida_falsa     <= "10000";
        salida_verdadera <= "10010";
      when "010" =>
        prueba           <= "100";
        liga_falsa       <= "011";
        liga_verdadera   <= "011";
        salida_falsa     <= "00011";
        salida_verdadera <= "00011";
      when "011" =>
        prueba           <= "000";
        liga_falsa       <= "101";
        liga_verdadera   <= "110";
        salida_falsa     <= "00101";
        salida_verdadera <= "00100";
      when "100" =>
        prueba           <= "011";
        liga_falsa       <= "001";
        liga_verdadera   <= "010";
        salida_falsa     <= "01000";
        salida_verdadera <= "01010";
      when "101" =>
        prueba           <= "101";
        liga_falsa       <= "011";
        liga_verdadera   <= "011";
        salida_falsa     <= "00010";
        salida_verdadera <= "00010";
      when "110" =>
        prueba           <= "001";
        liga_falsa       <= "101";
        liga_verdadera   <= "010";
        salida_falsa     <= "10011";
        salida_verdadera <= "11011";
      when others =>
        prueba           <= "100";
        liga_falsa       <= "000";
        liga_verdadera   <= "000";
        salida_falsa     <= "00000";
        salida_verdadera <= "00000";
    end case;
  end process;

end architecture;