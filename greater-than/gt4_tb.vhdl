library ieee;
use ieee.std_logic_1164.all;

entity gt4_tb is
end entity;

architecture testbench of gt4_tb is
    signal a, b : std_logic_vector (3 downto 0);
    signal q    : std_logic;
begin

    uut: entity work.gt4 (structural)
                port map (a => a, b => b, q => q);

    tb: process
        type pattern is record
            a, b : std_logic_vector (3 downto 0);
            q    : std_logic;
        end record;

        type patterns is array (natural range <>) of pattern;

        -- Double-quotes are used for std_logic_vector literals!
        constant stimuli : patterns :=
          (("0000", "0000", '0'),
           ("0001", "0000", '1'),
           ("0001", "0001", '0'),
           ("0001", "0010", '0'),
           ("0001", "0100", '0'),
           ("0100", "0000", '1'),
           ("0100", "0010", '1'),
           ("1000", "0100", '1'),
           ("1010", "1000", '1'),
           ("1010", "1010", '0'),
           ("1100", "1101", '0'),
           ("1100", "1011", '1'),
           ("1111", "1111", '0'));
    begin
        for i in stimuli'range loop
            a <= stimuli(i).a;
            b <= stimuli(i).b;

            wait for 1 ns;

            assert q = stimuli(i).q
                report "bad bit_eq value" severity error;
        end loop;

        assert false report "Simulation ended" severity note;
        wait;
    end process;

end architecture;
