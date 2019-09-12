library ieee;
use ieee.std_logic_1164.all;

entity gt2_tb is
end entity;

architecture testbench of gt2_tb is
    signal a, b : std_logic_vector (1 downto 0);
    signal q    : std_logic;
begin

    uut: entity work.gt2(sop)
                port map (a => a, b => b, q => q);

    tb: process
        type pattern is record
            a, b : std_logic_vector (1 downto 0);
            q    : std_logic;
        end record;

        type patterns is array (natural range <>) of pattern;

        -- Double-quotes are used for std_logic_vector literals!
        constant stimuli : patterns :=
          (("00", "00", '0'),
           ("00", "01", '0'),
           ("00", "11", '0'),
           ("00", "10", '0'),
           ("01", "00", '1'),
           ("01", "01", '0'),
           ("01", "11", '0'),
           ("01", "10", '0'),
           ("11", "00", '1'),
           ("11", "01", '1'),
           ("11", "11", '0'),
           ("11", "10", '1'),
           ("10", "00", '1'),
           ("10", "01", '1'),
           ("10", "11", '0'),
           ("10", "10", '0'));
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
