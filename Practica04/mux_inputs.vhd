library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.STD_LOGIC_ARITH.all;
use IEEE.STD_LOGIC_UNSIGNED.all;

entity mux_inputs is
  port (
    x      : in std_logic;
    y      : in std_logic;
    z      : in std_logic;
    w      : in std_logic;
    qx     : in std_logic;
    prueba : in std_logic_vector(2 downto 0);
    valor  : out std_logic
  );
end mux_inputs;

architecture Behavioral of mux_inputs is
begin
  process (x, y, z, w, qx, prueba)
  begin
    case prueba is
      when "011"  => valor  <= w;
      when "000"  => valor  <= x;
      when "001"  => valor  <= y;
      when "010"  => valor  <= z;
      when "100"  => valor  <= qx;
      when others => valor <= '0';
    end case;
  end process;
end Behavioral;
