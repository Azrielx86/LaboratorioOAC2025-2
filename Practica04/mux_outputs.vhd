library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.STD_LOGIC_ARITH.all;
use IEEE.STD_LOGIC_UNSIGNED.all;

entity mux_outputs is
  port (
    salida_falsa     : in std_logic_vector(4 downto 0);
    salida_verdadera : in std_logic_vector(4 downto 0);
    sel              : in std_logic;
    valor            : out std_logic_vector(4 downto 0)
  );
end mux_outputs;

architecture Behavioral of mux_outputs is
begin
  process (salida_falsa, salida_verdadera, sel)
  begin
    case sel is
      when '0'    => valor    <= salida_falsa;
      when '1'    => valor    <= salida_verdadera;
      when others => valor <= "00000";
    end case;
  end process;
end Behavioral;
