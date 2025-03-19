library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.STD_LOGIC_ARITH.all;
use IEEE.STD_LOGIC_UNSIGNED.all;

entity contador is
  port (
    reset, clk : in std_logic;
    liga       : in std_logic_vector(2 downto 0);
    incrementa : in std_logic;
    carga      : in std_logic;
    direccion  : out std_logic_vector(2 downto 0)
  );
end contador;

architecture arqcontador of contador is
  signal edo_pres : std_logic_vector(2 downto 0) := "000";
begin
  process (reset, clk, liga)
  begin
    if reset = '0' then
      edo_pres <= "000";
    elsif rising_edge(clk) then
      if incrementa <= '1' then
        edo_pres      <= edo_pres + 1;
      elsif carga = '1' then
        edo_pres <= liga;
      else
        edo_pres <= "000";
      end if;
    end if;
    direccion <= edo_pres;
  end process;
end arqcontador;
