library ieee;
use ieee.std_logic_1164.all;

entity demo_tb is
end entity;

architecture testbench of demo_tb is
    constant T : time := 1 ms;

    signal clk_1khz, reset, pause : std_logic := '0';
    signal kw4_as : std_logic_vector(3 downto 0);
    signal kw4_ks : std_logic_vector(6 downto 0);
    signal running : boolean := true;
begin

  uut:
    entity work.demo
        port map (clk_1khz, reset, pause, kw4_as, kw4_ks);

    clk_1khz <= not clk_1khz after T / 2 when running else '0';

    reset <= '1',
             '0' after T / 4,
             '1' after 15_000 ms,
             '0' after 15_500 ms;

    pause <= '0',
             '1' after 15_400 ms,
             '0' after 16_100 ms;

    running <= false after 20_000 ms;

end architecture;
