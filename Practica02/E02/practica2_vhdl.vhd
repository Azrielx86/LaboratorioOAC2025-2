library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.STD_LOGIC_ARITH.all;
use IEEE.STD_LOGIC_UNSIGNED.all;

entity main is
  port (
    CLK   : in std_logic;
    RESET : in std_logic;
    E     : in std_logic_vector(1 downto 0);
    S     : out std_logic_vector(1 downto 0);
    Q_OUT : out std_logic_vector(1 downto 0)
  );
end main;

architecture Behavioral of main is
  signal EDO_PRES : std_logic_vector(1 downto 0) := "00";
  signal EDO_SIG  : std_logic_vector(1 downto 0) := "00";
  signal SALIDA   : std_logic_vector(1 downto 0) := "11";
  signal CLK_DIV  : std_logic                    := '0';
begin

  div_freq_motor : entity work.divisor(arqdivf)
    port map
      (CLK, CLK_DIV);

  process (CLK_DIV, RESET, E, EDO_PRES, EDO_SIG, SALIDA)
  begin
    if reset = '0' then
      EDO_SIG <= "00";
      SALIDA  <= "11";
    elsif rising_edge (CLK_DIV) then
      case EDO_PRES is
        when "00" =>
          if E = "00" then
            EDO_SIG <= "01";
            SALIDA  <= "11";
          elsif E = "01" then
            EDO_SIG <= "01";
            SALIDA  <= "11";
          elsif E = "10" then
            EDO_SIG <= "01";
            SALIDA  <= "11";
          else
            EDO_SIG <= "01";
            SALIDA  <= "11";
          end if;
        when "01" =>
          if E = "00" then
            EDO_SIG <= "10";
            SALIDA  <= "01";
          elsif E = "01" then
            EDO_SIG <= "00";
            SALIDA  <= "01";
          elsif E = "10" then
            EDO_SIG <= "01";
            SALIDA  <= "01";
          else
            EDO_SIG <= "01";
            SALIDA  <= "01";
          end if;
        when "10" =>
          if E = "00" then
            EDO_SIG <= "11";
            SALIDA  <= "11";
          elsif E = "01" then
            EDO_SIG <= "11";
            SALIDA  <= "10";
          elsif E = "10" then
            EDO_SIG <= "11";
            SALIDA  <= "10";
          else
            EDO_SIG <= "11";
            SALIDA  <= "10";
          end if;
        when "11" =>
          if E = "00" then
            EDO_SIG <= "11";
            SALIDA  <= "00";
          elsif E = "01" then
            EDO_SIG <= "10";
            SALIDA  <= "00";
          elsif E = "10" then
            EDO_SIG <= "11";
            SALIDA  <= "00";
          else
            EDO_SIG <= "00";
            SALIDA  <= "00";
          end if;
      end case;
    end if;
    EDO_PRES <= EDO_SIG;
    S        <= SALIDA;
    Q_OUT    <= EDO_PRES;
  end process;
end Behavioral;