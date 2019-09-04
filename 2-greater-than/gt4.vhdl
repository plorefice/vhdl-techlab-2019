-- =======================================
--          2-bit equality tester
-- =======================================
--
--                 bit_eq2
--          2  +------------+
--        >-/--| a          |
--          2  |          q |---->
--        >-/--| b          |
--             +------------+
--
--  ===========
--  Truth table
--  ===========
--
--   ___| 00 | 01 | 11 | 10
--   00 |  1    0    0    0
--   01 |  0    1    0    0
--   11 |  0    0    1    0
--   10 |  0    0    0    1
--
-- =======================================

library ieee;
use ieee.std_logic_1164.all;

entity bit_eq2 is
    port (
        a, b : in  std_logic_vector(1 downto 0);
        q    : out std_logic
    );
end entity;

architecture structural of bit_eq2 is
    signal q1, q0 : std_logic;
begin

    -- ================================================
    --     Block representation of the architecture
    -- ================================================
    --
    --             bit_eq_1
    --            +--------+
    --  a(1) >----| a      |    q1
    --            |      q |--------+
    --  b(1) >----| b      |        |    +-----+
    --            +--------+        +--->|     |
    --                                   | and |----> q
    --            +--------+        +--->|     |
    --  a(0) >----| a      |        |    +-----+
    --            |      q |--------+
    --  b(0) >----| b      |    q0
    --            +--------+
    --             bit_eq_0
    --
    -- ================================================

    -- 1-bit equality tester for the 1st bit
    bit_eq_1 : entity work.bit_eq (structural)
                port map (a => a(1), b => b(1), q => q1);

    -- 1-bit equality tester for the 0th bit
    bit_eq_0 : entity work.bit_eq (structural)
                port map (a => a(0), b => b(0), q => q0);

    -- Two 2-bits signals are equal if both couple of bits are equal
    q <= q1 and q0;

end architecture;

-- =======================================
--            4-bit comparator
-- =======================================
--
--                   gt4
--          4  +------------+
--        >-/--| a          |
--          4  |          q |---->
--        >-/--| b          |
--             +------------+
--
--  ===========
--  Truth table
--  ===========
--
--  Omitted because too big, see gt2
--
-- =======================================

--------------------------------------------------------------
-- It is possible to have multiple entities in the same file,
-- but every entity must be preceeded by the imports for the
-- libraries that it uses.
--------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;

entity gt4 is
    port (
        a, b : in  std_logic_vector(3 downto 0);
        q    : out std_logic
    );
end entity;

architecture structural of gt4 is
    signal qi   : std_logic_vector(1 downto 0);
    signal eq_h : std_logic;
begin

    -- This is a shortcut to instantiate multiple components.
    -- It's called a for-generate loop, and makes life easier with complex structures.
    gen_gt2 : for i in 0 to 1 generate
        gt2x : entity work.gt2 (structural)
                    port map (
                        a => a(2 * I + 1 downto 2 * I),
                        b => b(2 * I + 1 downto 2 * I),
                        q => qi(I)
                    );
    end generate;

    -- It is possible to mix for-generate with normal instantiations
    bit_eq2_h : entity work.bit_eq2 (structural)
                port map (
                    a => a(3 downto 2),
                    b => b(3 downto 2),
                    q => eq_h
                );

    -- According to the above generate loop, qi(1) corresponds to the most significants bits,
    -- while qi(0) corresponds to the least significant bits.
    q <= qi(1) or (eq_h and qi(0));

end architecture;
