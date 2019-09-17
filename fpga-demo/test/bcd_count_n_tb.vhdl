library ieee;
use ieee.std_logic_1164.all;

entity bcd_count_4_tb is
end entity;

architecture testbench of bcd_count_4_tb is
    constant T : time := 40 ns;

    signal clk, rst, en : std_logic := '0';
    signal bcd : std_logic_vector(15 downto 0);
    signal running : boolean := true;
begin

    uut: entity work.bcd_count_4
            port map (clk  => clk,
                      rst  => rst,
                      en   => en,
                      bcd  => bcd);

    clk <= not clk after T / 2 when running else '0';
    rst <= '1', '0' after T / 4;
    en  <= '1';

    -- Stop after N rising edges of the output clock
    running <= false after T * 10395;

    -- Check that the counter has correctly reached its final value
    process (running)
    begin
        if (running = false) then
            assert bcd = X"0395"
                report "Unexpected counter value: " & to_string(bcd)
                severity failure;
        end if;
    end process;

end architecture;
