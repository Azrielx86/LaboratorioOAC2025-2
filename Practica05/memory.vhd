library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity memory is
  port (
    direction     : in std_logic_vector(2 downto 0);
    prueba        : out std_logic_vector(2 downto 0);
    vf            : out std_logic;
    liga          : out std_logic_vector(2 downto 0);
    salidas_paso  : out std_logic_vector(3 downto 0);
    salidas_salto : out std_logic_vector(3 downto 0)
  );
end entity;

-- Estados: {EST0, EST1, ... EST6}
-- Entradas:
--    V     : 000
--    W     : 001
--    X     : 010
--    Z     : 011
--    Q_aux : 100
-- Salidas: {s_3, s_2, s_1, s_0}

architecture arqmem of memory is
begin
  process (direction)
  begin
    case direction is
      when "000" => -- EST0
        prueba        <= "000";
        vf            <= '1';
        liga          <= "110";
        salidas_paso  <= "0011";
        salidas_salto <= "0101";
      when "001" => -- EST1
        prueba        <= "010";
        vf            <= '0';
        liga          <= "111";
        salidas_paso  <= "1011";
        salidas_salto <= "1000";
      when "010" => -- EST2
        prueba        <= "011";
        vf            <= '0';
        liga          <= "101";
        salidas_paso  <= "1111";
        salidas_salto <= "1010";
      when "011" => -- EST3
        prueba        <= "100";
        vf            <= '0';
        liga          <= "100";
        salidas_paso  <= "0101";
        salidas_salto <= "0101";
      when "100" => -- EST4
        prueba        <= "001";
        vf            <= '1';
        liga          <= "010";
        salidas_paso  <= "1111";
        salidas_salto <= "1111";
      when "101" => -- EST5
        prueba        <= "100";
        vf            <= '0';
        liga          <= "011";
        salidas_paso  <= "1011";
        salidas_salto <= "1011";
      when "110" => -- EST6
        prueba        <= "100";
        vf            <= '0';
        liga          <= "100";
        salidas_paso  <= "0101";
        salidas_salto <= "0101";
      when "111" => -- EST7
        prueba        <= "100";
        vf            <= '0';
        liga          <= "001";
        salidas_paso  <= "0000";
        salidas_salto <= "0000";
      when others =>
        prueba        <= "000";
        vf            <= '0';
        liga          <= "000";
        salidas_paso  <= "0000";
        salidas_salto <= "0000";
    end case;
  end process;

end architecture;