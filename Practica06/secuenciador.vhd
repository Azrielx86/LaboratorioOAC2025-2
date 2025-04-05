library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.STD_LOGIC_ARITH.all;
use IEEE.STD_LOGIC_UNSIGNED.all;

entity secuenciador is
  generic (
    dir_size    : integer := 3;
    default_dir : std_logic_vector := "0000"
  );
  port (
    clk      : in std_logic;
    reset    : in std_logic;
    cc       : in std_logic;
    dir      : in std_logic_vector(dir_size downto 0);
    next_dir : out std_logic_vector(dir_size downto 0);
    i_ctrl   : in std_logic_vector(1 downto 0);
    plb      : out std_logic;
    mapb     : out std_logic;
    vectb    : out std_logic
  );
end entity;

architecture seq_arch of secuenciador is
  signal selector   : std_logic := '0';
  signal tmp_pl     : std_logic := '0';
  signal tmp_map    : std_logic := '0';
  signal tmp_vect   : std_logic := '0';
  signal edo_actual : std_logic_vector(dir_size downto 0);
  signal reg_upc : std_logic_vector(dir_size downto 0);
  signal inc : std_logic_vector(dir_size downto 0);
begin
  process (clk, reset)
  begin
    if rising_edge(clk) then
      if reset = '0' then
        reg_upc <= default_dir;
      else
        reg_upc <= inc;
      end if;
    end if;
  end process;

  process (edo_actual)
  begin
    inc <= edo_actual + 1;
  end process;

  logica_interna : process (cc, i_ctrl)
  begin
    case i_ctrl & not cc is
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

  mux : process (selector, dir, reg_upc)
  begin
    if selector = '0' then
      edo_actual <= reg_upc;
    else
      edo_actual <= dir;
    end if;
  end process;

  next_dir <= edo_actual;
  plb      <= not tmp_pl;
  mapb     <= not tmp_map;
  vectb    <= not tmp_vect;
end architecture;