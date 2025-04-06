library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;

entity regint is
  port (
    vectb  : in std_logic; --! $\neg{vect}$
    in_dir : in std_logic_vector(3 downto 0); --! Only to the "simulation".
    int    : in std_logic;
    dir    : out std_logic_vector(3 downto 0) --! Output direction.
  );
end entity;

architecture arqregint of regint is
  signal next_dir : std_logic_vector(3 downto 0) := "0000";
begin
  process (in_dir, vectb, int)
  begin
    if vectb = '1' then
      if in_dir = "0111" then -- 7
        if int = '1' then
          next_dir <= "0111";
        else
          next_dir <= "1000";
        end if;
      elsif in_dir = "1001" then -- 9
        if int = '1' then
          next_dir <= "1001";
        else
          next_dir <= "1010";
        end if;
        -- if in_dir = "0111" and int = '1' then -- 7
        --   next_dir <= "0111";
        -- elsif in_dir = "0111" and int = '0' then
        --   next_dir <= "1000";
        -- elsif in_dir = "1001" and int = '1' then -- 9
        --   next_dir <= "1001";
        -- elsif in_dir = "1001" and int = '0' then
        --   next_dir <= "1010";
      else
        next_dir <= "0000";
      end if;
    else
      next_dir <= "ZZZZ";
    end if;
  end process;
  dir <= next_dir;
end architecture;
