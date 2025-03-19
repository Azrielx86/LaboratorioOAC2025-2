library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.STD_LOGIC_ARITH.all;
use IEEE.STD_LOGIC_UNSIGNED.all;

entity main is
  port (
    clk     : in std_logic;
    reset   : in std_logic;
    inputs  : in std_logic_vector(3 downto 0);
    outputs : out std_logic_vector(3 downto 0);
    estados : out std_logic_vector(2 downto 0)
  );
end main;

architecture arqmain of main is
  signal clk_low       : std_logic                    := '0';
  signal direccion     : std_logic_vector(2 downto 0) := "000";
  signal prueba        : std_logic_vector(2 downto 0) := "000";
  signal liga          : std_logic_vector(2 downto 0) := "000";
  signal vf            : std_logic                    := '0';
  signal salidas_paso  : std_logic_vector(3 downto 0) := "0000";
  signal salidas_salto : std_logic_vector(3 downto 0) := "0000";
  signal incrementa    : std_logic                    := '0';
  signal carga         : std_logic                    := '0';

  -- Entradas
  signal v    : std_logic := '0';
  signal w    : std_logic := '0';
  signal x    : std_logic := '0';
  signal z    : std_logic := '0';
  signal qsel : std_logic := '0';

  -- salidas
begin
  clk_low <= clk;
  -- div_freq : entity work.divisor(arqdivf)
  --   port map
  --   (
  --     clk, clk_low
  --   );
  memory : entity work.memory(arqmem)
    port map
    (
      direccion, prueba, vf, liga, salidas_paso, salidas_salto
    );
  contador : entity work.contador(arqcontador)
    port map
    (
      reset, clk_low, liga, incrementa, carga, direccion
    );
  mux_inputs : entity work.mux_inputs
    port map
    (
      prueba,
      v,
      w,
      x,
      z,
      qsel
    );

  logica_inst : entity work.logica
    port map
    (
      vf,
      qsel,
      carga,
      incrementa
    );
  process (inputs, clk_low, direccion)
  begin
    v       <= inputs(0);
    w       <= inputs(1);
    x       <= inputs(2);
    z       <= inputs(3);
    estados <= direccion;
    if rising_edge(clk_low) then
      if carga = '1' then
        outputs <= salidas_salto;
      elsif incrementa = '1' then
        outputs <= salidas_paso;
      else
        outputs <= "0000";
      end if;
    end if;
  end process;
end arqmain;
