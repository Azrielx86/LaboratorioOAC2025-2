library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.STD_LOGIC_ARITH.all;
use IEEE.STD_LOGIC_UNSIGNED.all;
entity regmap is
  port (
    clk        : in std_logic;
    rst        : in std_logic;
    mapb       : in std_logic; --! $\neg{map}$
    in_dir     : in std_logic_vector(3 downto 0); --! Only to the "simulation".
    dir        : out std_logic_vector(3 downto 0) --! Output direction.
  );
end entity;

architecture arqregmap of regmap is
  signal next_dir : std_logic_vector(3 downto 0) := "0000";
  signal inc_a    : std_logic_vector(1 downto 0) := "00";
  signal inc_b    : std_logic_vector(1 downto 0) := "00";
begin

  process (clk, rst, in_dir)
    variable tmp_a : std_logic_vector(1 downto 0) := "00";
    variable tmp_b : std_logic_vector(1 downto 0) := "00";
  begin
    if rst = '0' then
      tmp_a := "00";
      tmp_b := "00";
    elsif rising_edge(clk) then
      if in_dir = "0100" then
        -- tmp_a := tmp_a + 1;
        if tmp_a >= "10" then
          tmp_a := "10";
        else
          tmp_a := tmp_a + 1;
        end if;
      elsif in_dir = "1011" then
        -- tmp_b := tmp_b + 1;

        if tmp_b >= "10" then
          tmp_a := "00";
          tmp_b := "00";
        else
          tmp_b := tmp_b + 1;
        end if;

      end if;

    end if;
    inc_a <= tmp_a;
    inc_b <= tmp_b;
  end process;

  process (in_dir, mapb, inc_a, inc_b)
  begin
    if mapb = '1' then
      if in_dir = "0100" then
        case inc_a is
          when "00"   => next_dir   <= "0101";
          when "01"   => next_dir   <= "1001";
          when "10"   => next_dir   <= "1011";
          when others => next_dir <= "0101";
        end case;
      elsif in_dir = "1011" then
        case inc_b is
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