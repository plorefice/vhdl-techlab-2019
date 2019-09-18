library ieee;
use ieee.std_logic_1164.all;

entity clk_div_tb is
end entity;

architecture testbench of clk_div_tb is
    constant DIV   : integer := 32;
    constant N     : integer := 128;

    constant T_in  : time := 40 ns;
    constant T_out : time := T_in * DIV;

    signal clk_in, clk_out, rst : std_logic := '0';
    signal running : boolean := true;
begin

    uut: entity work.clk_div
         generic map (DIV)
         port map (clk_in, rst, clk_out);

    -- Simulate input clock
    clk_in <= not clk_in after T_in / 2 when running else '0';

    -- Clock rst in the first phase
    rst <= '1', '0' after T_in / 4;

    -- Stop after N rising edges of the output clock
    running <= false after T_out * N;

    -- Monitor the output clock edges
    process (clk_out, running)
        variable edges : integer := 0;
    begin
        -- When the simulation stops, the number of rising edges of clk_out must be N
        if (running = false) then
            assert edges = N
                report "Expected " & integer'image(N) & " edges, got " & integer'image(edges)
                severity failure;
        elsif (rising_edge(clk_out)) then
            edges := edges + 1;
        end if;
    end process;

end architecture;
