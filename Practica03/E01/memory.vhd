library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity memory is
  port (
    direction : in std_logic_vector(5 downto 0); --! 
    outputs   : out std_logic_vector(5 downto 0);
    liga      : out std_logic_vector(2 downto 0)
  );
end entity;

architecture behavioral of memory is

begin

  process (direction)
  begin
    case direction is
        -- Estado 0
        -- Casos x = 0
        --     v
      when "000000" =>
        liga    <= "001";
        outputs <= "010011";
      when "000001" =>
        liga    <= "001";
        outputs <= "010011";
      when "000010" =>
        liga    <= "001";
        outputs <= "010011";
      when "000011" =>
        liga    <= "001";
        outputs <= "010011";
        -- Casos x = 1
      when "000100" =>
        liga    <= "010";
        outputs <= "000111";
      when "000101" =>
        liga    <= "010";
        outputs <= "000111";
      when "000110" =>
        liga    <= "010";
        outputs <= "000111";
      when "000111" =>
        liga    <= "010";
        outputs <= "000111";

        -- Estado 1
      when "001000" =>
        liga    <= "011";
        outputs <= "001000";
      when "001001" =>
        liga    <= "011";
        outputs <= "001000";
      when "001010" =>
        liga    <= "011";
        outputs <= "001000";
      when "001011" =>
        liga    <= "011";
        outputs <= "001000";
      when "001100" =>
        liga    <= "011";
        outputs <= "001000";
      when "001101" =>
        liga    <= "011";
        outputs <= "001000";
      when "001110" =>
        liga    <= "011";
        outputs <= "001000";
      when "001111" =>
        liga    <= "011";
        outputs <= "001000";

        -- Estado 2
      when "010000" =>
        liga    <= "100";
        outputs <= "100001";
      when "010001" =>
        liga    <= "100";
        outputs <= "100001";
      when "010010" => -- y = 1
        liga    <= "010";
        outputs <= "100001";
      when "010011" => -- y = 1
        liga    <= "010";
        outputs <= "100001";
      when "010100" =>
        liga    <= "100";
        outputs <= "100001";
      when "010101" =>
        liga    <= "100";
        outputs <= "100001";
      when "010110" => -- y = 1
        liga    <= "010";
        outputs <= "100001";
      when "010111" => -- y = 1
        liga    <= "010";
        outputs <= "100001";
        -- Estdo 3
      when "011000" =>
        liga    <= "001";
        outputs <= "101000";
      when "011001" =>
        liga    <= "001";
        outputs <= "101010";
      when "011010" =>
        liga    <= "001";
        outputs <= "101000";
      when "011011" =>
        liga    <= "001";
        outputs <= "101010";
      when "011100" =>
        liga    <= "001";
        outputs <= "101000";
      when "011101" =>
        liga    <= "001";
        outputs <= "101010";
      when "011110" =>
        liga    <= "001";
        outputs <= "101000";
      when "011111" =>
        liga    <= "001";
        outputs <= "101010";

        -- Estado 4
      when "100000" =>
        liga    <= "000";
        outputs <= "010000";
      when "100001" =>
        liga    <= "000";
        outputs <= "010000";
      when "100010" =>
        liga    <= "000";
        outputs <= "010000";
      when "100011" =>
        liga    <= "000";
        outputs <= "010000";
      when "100100" =>
        liga    <= "000";
        outputs <= "010000";
      when "100101" =>
        liga    <= "000";
        outputs <= "010000";
      when "100110" =>
        liga    <= "000";
        outputs <= "010000";
      when "100111" =>
        liga    <= "000";
        outputs <= "010000";

      when others =>
        liga    <= "000";
        outputs <= "000011";

    end case;
  end process;

end architecture;