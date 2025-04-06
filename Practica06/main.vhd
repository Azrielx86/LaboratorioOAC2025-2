library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;
entity main is
  port (
    clk        : in std_logic;
    reset      : in std_logic;
    inputs     : in std_logic_vector(2 downto 0);
    map_inputs : in std_logic_vector(1 downto 0);
    outputs    : out std_logic_vector(5 downto 0);
    -- estados : out std_logic_vector(3 downto 0)
    display1 : out std_logic_vector(6 downto 0);
    display2 : out std_logic_vector(6 downto 0)
  );
end main;

architecture arqmain of main is
  signal clk_low   : std_logic                    := '0';
  signal direccion : std_logic_vector(3 downto 0) := "0000"; --! aka Y
  signal prueba    : std_logic_vector(1 downto 0) := "00";
  signal mi        : std_logic_vector(1 downto 0) := "00";
  signal vf        : std_logic                    := '0';
  signal salidas_t : std_logic_vector(5 downto 0) := "000000";
  signal salidas_f : std_logic_vector(5 downto 0) := "000000";

  signal cc    : std_logic := '0';
  signal mapb  : std_logic := '0';
  signal plb   : std_logic := '0';
  signal vectb : std_logic := '0';

  signal buffer_dir : std_logic_vector(3 downto 0) := "0000"; --! aka dir

  -- Entradas
  signal x    : std_logic := '0';
  signal y    : std_logic := '0';
  signal int  : std_logic := '0';
  signal qsel : std_logic := '0';

  -- Display
  signal est_int    : integer := 0;
  signal bin_digits : std_logic_vector(27 downto 0);
begin
  -- clk_low <= clk;

  est_int <= to_integer(unsigned(direccion));

  divisor_inst : entity work.divisor
    port map
    (
      clk     => clk,
      div_clk => clk_low
    );

  bcd2ss7_inst : entity work.bcd2ss7
    port map
    (
      number => est_int,
      digits => bin_digits
    );

  digit1 : entity work.display
    port map
      (bin_digits(3 downto 0), display1);
  digit2 : entity work.display
    port map
      (bin_digits(7 downto 4), display2);

  memory_inst : entity work.memory
    port map
    (
      direction => direccion,
      prueba    => prueba,
      vf        => vf,
      mi        => mi,
      liga      => buffer_dir,
      pl        => plb,
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
      mapb       => mapb,
      in_dir     => direccion,
      map_inputs => map_inputs,
      dir        => buffer_dir
    );

  regint_inst : entity work.regint
    port map
    (
      vectb  => vectb,
      in_dir => direccion,
      int    => int,
      dir    => buffer_dir
    );

  secuenciador_inst : entity work.secuenciador
    -- generic map(
    --   dir_size    => 3,
    --   default_dir => "0000"
    -- )
    port map
    (
      clk      => clk_low,
      reset    => reset,
      cc       => cc,
      dir      => buffer_dir,
      next_dir => direccion,
      i_ctrl   => mi,
      plb      => plb,
      mapb     => mapb,
      vectb    => vectb
    );

  process (qsel, vf)
  begin
    cc <= qsel xor vf;
  end process;

  process (cc, salidas_f, salidas_t)
  begin
    if cc = '1' then
      outputs <= salidas_f;
    else
      outputs <= salidas_t;
    end if;
  end process;

  x   <= inputs(0);
  y   <= inputs(1);
  int <= inputs(2);
end arqmain;
