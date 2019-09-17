library ieee;
use ieee.std_logic_1164.all;

entity dff_r_tb is
end entity;

architecture testbench of dff_r_tb is
    shared variable running : boolean := true; -- whether or not the simulation is still running

    constant T : time      := 40 ns; -- clock period
    signal clk : std_logic := '0';   -- initialization value, only allowed in simulations
    signal rst : std_logic := '1';
    signal d, q, qn : std_logic;
begin

    uut: entity work.dff_r (behavioral)
                port map (
                    d   => d,
                    clk => clk,
                    rst => rst,
                    q   => q,
                    qn  => qn
                );

    -- Model clock and reset behaviour outside of the testbench process
    clk <= not clk after T / 2 when running else '0';
    rst <= '1', '0' after T / 4;

    tb: process begin
        -- Wait for the simulation to run combinatorial logic
        wait for 1 ps;

        -- Let's start by asserting that the initial conditions are valid
        assert q = '0'  report "Q is not 0 during reset" severity failure;
        assert qn = '1' report "/Q is not 1 during reset" severity failure;

        -- Changing stuff during reset should not affect the flip-flop behavior
        d <= '1';
        wait for 1 ns;

        assert q = '0'  report "Q changed during reset" severity failure;
        assert qn = '1' report "/Q changed during reset" severity failure;

        -- Now we wait for the reset signal to go low
        -- and test that changes to the value of d are still ignored
        wait until falling_edge(rst);

        assert q = '0'  report "Q changed outside of clock front" severity failure;
        assert qn = '1' report "/Q changed outside of clock front" severity failure;

        -- Next, check that the flip-flop is actually positive-edge-triggered
        wait until rising_edge(clk);
        wait for 0 ns; -- wait for a delta cycle

        assert q = '1'  report "Q did not change on clock front" severity failure;
        assert qn = '0' report "/Q did not change on clock front" severity failure;

        -- Again, changing the D pin should have no effect
        d <= '0';
        wait for 1 ns;

        assert q = '1'  report "Q changed outside of clock front" severity failure;
        assert qn = '0' report "/Q changed outside of clock front" severity failure;

        -- Finally, make sure nothing happens on the clock's falling edge
        wait until falling_edge(clk);

        assert q = '1'  report "Q changed on falling clock front" severity failure;
        assert qn = '0' report "/Q changed on falling clock front" severity failure;

        -- Stop the simulation by stopping the clock
        running := false;
        wait;
    end process;

end architecture;
