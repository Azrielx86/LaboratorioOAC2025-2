library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.STD_LOGIC_ARITH.all;
use IEEE.STD_LOGIC_UNSIGNED.all;

entity logica is
  port (
    vf         : in std_logic;
    qsel       : in std_logic;
    carga      : out std_logic;
    incrementa : out std_logic
  );
end logica;

architecture Behavioral of logica is
  signal xor_result : std_logic := '0';

begin
  process (vf, qsel)
  begin
    xor_result <= vf xor qsel;
    carga      <= not xor_result;
    incrementa <= xor_result;
  end process;
end Behavioral;
