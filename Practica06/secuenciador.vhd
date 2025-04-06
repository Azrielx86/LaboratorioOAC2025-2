library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.STD_LOGIC_ARITH.all;
use IEEE.STD_LOGIC_UNSIGNED.all;

entity secuenciador is
  -- generic (
  --   dir_size    : integer          := 3;
  --   default_dir : std_logic_vector := "0000"
  -- );
  port (
    clk      : in std_logic;
    reset    : in std_logic;
    cc       : in std_logic;
    dir      : in std_logic_vector(3 downto 0);
    i_ctrl   : in std_logic_vector(1 downto 0);
    next_dir : out std_logic_vector(3 downto 0);
    plb      : out std_logic;
    mapb     : out std_logic;
    vectb    : out std_logic
  );
end entity;

architecture seq_arch of secuenciador is
  signal selector : std_logic                    := '0';
  signal tmp_pl   : std_logic                    := '0';
  signal tmp_map  : std_logic                    := '0';
  signal tmp_vect : std_logic                    := '0';
  signal dir_y    : std_logic_vector(3 downto 0) := "0000";
  signal edo_pres : std_logic_vector(3 downto 0) := "0000";
  signal icc      : std_logic_vector(2 downto 0) := "000";

begin

  process (clk, reset)
  begin
    if reset = '0' then
      edo_pres <= "0000";
    elsif rising_edge(clk) then
      if selector = '0' then
        dir_y <= edo_pres + 1;
        edo_pres <= edo_pres + 1;
      else
        edo_pres <= dir;
        dir_y <= dir;
      end if;
    end if;
  end process;

  logica_interna : process (icc)
  begin
    case icc is
        -- Paso contiguo
      when "000" =>
        selector <= '0';
        tmp_pl   <= '1';
        tmp_vect <= '1';
        tmp_map  <= '1';
      when "001" =>
        selector <= '0';
        tmp_pl   <= '1';
        tmp_vect <= '1';
        tmp_map  <= '1';
        -- Salto condicional
      when "010" =>
        selector <= '1';
        tmp_pl   <= '0';
        tmp_vect <= '1';
        tmp_map  <= '1';
      when "011" =>
        selector <= '0';
        tmp_pl   <= '0';
        tmp_vect <= '1';
        tmp_map  <= '1';
        -- Salto de transformación
      when "100" =>
        selector <= '1';
        tmp_pl   <= '1';
        tmp_vect <= '1';
        tmp_map  <= '0';
      when "101" =>
        selector <= '1';
        tmp_pl   <= '1';
        tmp_vect <= '1';
        tmp_map  <= '0';
        -- Salto de interrupción
      when "110" =>
        selector <= '1';
        tmp_pl   <= '1';
        tmp_vect <= '0';
        tmp_map  <= '1';
      when "111" =>
        selector <= '0';
        tmp_pl   <= '1';
        tmp_vect <= '0';
        tmp_map  <= '1';

      when others =>
        selector <= '0';
        tmp_pl   <= '1';
        tmp_vect <= '1';
        tmp_map  <= '1';
    end case;
  end process;

  icc      <= i_ctrl & not cc;
  next_dir <= dir_y;
  plb      <= not tmp_pl;
  mapb     <= not tmp_map;
  vectb    <= not tmp_vect;
end architecture;