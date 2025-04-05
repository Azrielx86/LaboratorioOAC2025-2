library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.STD_LOGIC_ARITH.all;
use IEEE.STD_LOGIC_UNSIGNED.all;

entity main is
  port (
    clk     : in std_logic;
    reset   : in std_logic;
    inputs  : in std_logic_vector(2 downto 0);
    outputs : out std_logic_vector(5 downto 0);
    estados : out std_logic_vector(2 downto 0)
  );
end main;

architecture arqmain of main is
  -- signal clk_low    : std_logic                    := '0';
  signal direccion : std_logic_vector(3 downto 0) := "0000";
  signal prueba    : std_logic_vector(1 downto 0) := "00";
  signal liga      : std_logic_vector(3 downto 0) := "0000";
  signal mi        : std_logic_vector(1 downto 0) := "00";
  signal vf        : std_logic                    := '0';
  signal salidas_t : std_logic_vector(5 downto 0) := "000000";
  signal salidas_f : std_logic_vector(5 downto 0) := "000000";

  signal cc    : std_logic := '0';
  signal mapb  : std_logic := '0';
  signal plb   : std_logic := '0';
  signal vectb : std_logic := '0';

  signal dir : std_logic_vector(3 downto 0) := "0000";

  -- signal incrementa : std_logic                    := '0';
  -- signal carga      : std_logic                    := '0';

  -- Entradas
  signal x    : std_logic := '0';
  signal y    : std_logic := '0';
  signal int  : std_logic := '0';
  signal qsel : std_logic := '0';
begin
  memory_inst : entity work.memory
    port map
    (
      direction => direccion,
      prueba    => prueba,
      vf        => vf,
      mi        => mi,
      liga      => liga,
      salidas_t => salidas_t,
      salidas_f => salidas_f
    );

  mux_inputs_inst : entity work.mux_inputs
    port map
    (
      prueba => prueba,
      x      => x,
      y      => y,
      int    => int,
      qsel   => qsel
    );

  regmap_inst : entity work.regmap
    port map
    (
      mapb   => mapb,
      in_dir => direccion,
      dir    => dir
    );

  secuenciador_inst : entity work.secuenciador
    generic map(
      dir_size    => 3,
      default_dir => "0000"
    )
    port map
    (
      clk      => clk,
      reset    => reset,
      cc       => cc,
      dir      => dir,
      next_dir => direccion,
      i_ctrl   => mi,
      plb      => plb,
      mapb     => mapb,
      vectb    => vectb
    );

  process (qsel, vf)
  begin
    cc <= qsel xnor vf;
  end process;
end arqmain;
