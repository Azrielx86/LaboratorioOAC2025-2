library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity registro is
  port (
    clk        : in std_logic;
    reset      : in std_logic;
    x, y, z    : in std_logic;
    next_state : in std_logic_vector(2 downto 0);
    direction  : out std_logic_vector(5 downto 0)
  );
end entity;

architecture behavioral of registro is
  signal present_state : std_logic_vector(2 downto 0) := "000";
begin
  process (clk, reset, x, y, z, next_state)
  begin
    if reset = '0' then
      present_state <= "000";
    elsif rising_edge(clk) then
      present_state <= next_state;
    end if;
    direction <= present_state & x & y & z;
  end process;
end architecture;