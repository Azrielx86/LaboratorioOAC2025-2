
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity main_tb is
end;

architecture bench of main_tb is
  -- Clock period
  -- constant clk_period : time := 5 ns;
  -- Generics
  -- Ports
  signal clk     : std_logic;
  signal reset   : std_logic;
  signal inputs  : std_logic_vector(2 downto 0);
  signal outputs : std_logic_vector(5 downto 0);
  signal estados : std_logic_vector(3 downto 0);

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
begin

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
      mapb   => mapb,
      in_dir => direccion,
      dir    => buffer_dir
    );

  regint_inst : entity work.regint
    port map
    (
      vectb  => vectb,
      in_dir => direccion,
      int    => qsel,
      dir    => buffer_dir
    );

  secuenciador_inst : entity work.secuenciador
    -- generic map(
    --   dir_size    => 3,
    --   default_dir => "0000"
    -- )
    port map
    (
      clk      => clk,
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

  process (direccion)
  begin
    estados <= direccion;
  end process;

  x   <= inputs(0);
  y   <= inputs(1);
  int <= inputs(2);

  process
  begin
    reset  <= '0';
    inputs <= "000";
    wait for 20 ps;
    reset <= '1';
    wait for 3 ps;
    inputs <= "001";
    wait for 30 ps;
    inputs <= "010";
    wait;
  end process;

  process
  begin
    while now < 500 ms loop
      clk <= '0';
      wait for 1 ps;
      clk <= '1';
      wait for 1 ps;
    end loop;
    wait;
  end process;

end;