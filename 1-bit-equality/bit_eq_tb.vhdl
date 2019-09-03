library ieee;
use ieee.std_logic_1164.all;

-- Usually, a testbench entity does not have any external ports.
entity bit_eq_tb is
end entity;

architecture testbench of bit_eq_tb is
    -- Declare internal signals before the `begin` of the architecture block.
    signal a, b, q: std_logic;
begin
    -- `uut` stands for Unit Under Test, a common identifier for the entity being tested
    uut: entity work.bit_eq(structural)
                port map (a => a, b => b, q => q);

    -- A `process` is a list of instructions that happen *sequentially* (more on this later).
    -- This is the body of the testbench.
    tb: process
        -- The `type` keyword can be used to declare a new type, a `record` in this case.
        -- Records are the equivalent of C structures.
        type pattern is record
            a, b, q: std_logic;
        end record;

        -- `patterns` is yet another custom type
        type patterns is array (natural range <>) of pattern;

        -- `stimuli` is a (constant) instance of a `patterns` type
        constant stimuli : patterns :=
          (('0', '0', '1'),
           ('0', '1', '0'),
           ('1', '0', '0'),
           ('1', '1', '1'));
    begin
        -- Iterate over all possible stimuli using a range-for loop
        for i in stimuli'range loop
            -- Assign the stimuli to the UUT
            a <= stimuli(i).a;
            b <= stimuli(i).b;

            -- Wait for the UUT to update its output
            wait for 1 ns;

            -- Check that the output matches our expectations
            assert q = stimuli(i).q
              report "bad bit_eq value" severity error;
        end loop;

        -- This is the most common way to terminate a VHDL testbench
        assert false report "Simulation ended" severity note;
        wait;
    end process;

end architecture;
