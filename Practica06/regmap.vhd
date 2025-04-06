library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;

entity regmap is
  port (
    mapb   : in std_logic; --! $\neg{map}$
    in_dir : in std_logic_vector(3 downto 0); --! Only to the "simulation".
    dir    : out std_logic_vector(3 downto 0) --! Output direction.
  );
end entity;

architecture arqregmap of regmap is
  type reg_array is array (0 to 2) of std_logic_vector(3 downto 0);
  signal next_dir : std_logic_vector(3 downto 0) := "0000";

  signal branch_state4  : reg_array := (0 => "0101", 1 => "1001", 2 => "1011");
  signal branch_state11 : reg_array := (0 => "1100", 1 => "1101", 2 => "1110");
begin
  process (in_dir, branch_state11, branch_state4, mapb)
    variable idx : integer range 0 to 2 := 0;
  begin
    if mapb = '1' then
      if in_dir = "0100" then -- dir 4
        next_dir <= branch_state4(idx);
        idx := (idx + 1) mod 3;
      elsif in_dir = "1011" then -- dir 11
        next_dir <= branch_state11(idx);
        idx := (idx + 1) mod 3;
      else
        next_dir <= "0000";
      end if;
    else
      next_dir <= "ZZZZ";
    end if;
  end process;
  dir <= next_dir;
end architecture;