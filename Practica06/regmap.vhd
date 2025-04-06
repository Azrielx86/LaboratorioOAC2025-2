library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;

entity regmap is
  port (
    mapb       : in std_logic; --! $\neg{map}$
    in_dir     : in std_logic_vector(3 downto 0); --! Only to the "simulation".
    map_inputs : in std_logic_vector(1 downto 0);
    dir        : out std_logic_vector(3 downto 0) --! Output direction.
  );
end entity;

architecture arqregmap of regmap is
  signal next_dir : std_logic_vector(3 downto 0) := "0000";
begin

  process (map_inputs, in_dir, mapb)
  begin
    if mapb = '1' then
      if in_dir = "0100" then
        case map_inputs is
          when "00"   => next_dir   <= "0101";
          when "01"   => next_dir   <= "1001";
          when "10"   => next_dir   <= "1011";
          when others => next_dir <= "0101";
        end case;
      elsif in_dir = "1011" then
        case map_inputs is
          when "00"   => next_dir   <= "1100";
          when "01"   => next_dir   <= "1101";
          when "10"   => next_dir   <= "1110";
          when others => next_dir <= "1100";
        end case;
      else
        next_dir <= "0000";
      end if;
    else
      next_dir <= "ZZZZ";
    end if;
  end process;
  dir <= next_dir;
end architecture;