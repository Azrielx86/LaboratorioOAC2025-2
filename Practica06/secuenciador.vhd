library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.STD_LOGIC_ARITH.all;
use IEEE.STD_LOGIC_UNSIGNED.all;

entity secuenciador is
  generic (
    dir_size : integer
  );
  port (
    clk      : in std_logic;
    reset    : in std_logic;
    cc       : in std_logic;
    dir      : in std_logic_vector(dir_size downto 0);
    next_dir : out std_logic_vector(dir_size downto 0);
    i_ctrl   : in std_logic_vector(2 downto 0);
    n_pl     : out std_logic;
    n_map    : out std_logic;
    n_vect   : out std_logic
  );
end entity;

architecture seq_arch of secuenciador is
  signal selector : std_logic := '0';
  signal tmp_pl   : std_logic := '0';
  signal tmp_map  : std_logic := '0';
  signal tmp_vect : std_logic := '0';
begin
  logica_interna : process (cc, i_ctrl)
  begin
    case i_ctrl & not cc is
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
      when "010" =>
        selector <= '0';
        tmp_pl   <= '1';
        tmp_vect <= '1';
        tmp_map  <= '1';
        when "011" =>
        selector <= '0';
        tmp_pl   <= '1';
        tmp_vect <= '1';
        tmp_map  <= '1';
      when others => -- TODO : Default cases
        null;
    end case;
  end process;

  n_pl   <= not tmp_pl;
  n_map  <= not tmp_map;
  n_vect <= not n_vect;
end architecture;