library ieee;
use ieee.std_logic_1164.all;

entity cd74hc238_tb is
end entity;

architecture testbench of cd74hc238_tb is
    signal A, E : std_logic_vector (2 downto 0);
    signal Y    : std_logic_vector (7 downto 0);
begin

    uut: entity work.cd74hc238 (behavioral)
                port map (A => A, E => E, Y => Y);

    tb: process
        type pattern is record
            A, E : std_logic_vector (2 downto 0);
            Y    : std_logic_vector (7 downto 0);
        end record;

        type patterns is array (natural range <>) of pattern;

        constant stimuli : patterns :=
          (("000", "001", "00000001"),
           ("001", "001", "00000010"),
           ("010", "001", "00000100"),
           ("011", "001", "00001000"),
           ("100", "001", "00010000"),
           ("101", "001", "00100000"),
           ("110", "001", "01000000"),
           ("111", "001", "10000000"),
           ("000", "000", "00000000"),
           ("001", "010", "00000000"),
           ("010", "011", "00000000"),
           ("011", "100", "00000000"),
           ("000", "101", "00000000"),
           ("001", "110", "00000000"),
           ("010", "111", "00000000"));
    begin
        for i in stimuli'range loop
            A <= stimuli(i).A;
            E <= stimuli(i).E;

            wait for 1 ns;

            assert Y = stimuli(i).Y
                report "bad CD74HC238 value" severity error;
        end loop;

        assert false report "Simulation ended" severity note;
        wait;
    end process;

end architecture;
