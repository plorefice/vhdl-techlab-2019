-- =======================================
--            2-bit comparator
-- =======================================
--
--                   gt2
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
--   00 |  0    0    0    0
--   01 |  1    0    0    0
--   11 |  1    1    0    1
--   10 |  1    1    0    0
--
-- =======================================

library ieee;
use ieee.std_logic_1164.all;

entity gt2 is
    port (
        a, b : in  std_logic_vector (1 downto 0);
        q    : out std_logic
    );
end entity;

-- Notice that we are changing the architecture name.
-- **THIS IS ONLY A CONVENTION**, the architecture name is not a keyword!
architecture sop of gt2 is
    -- Declare internal signals
    signal p0, p1, p2 : std_logic;
begin

    -- Component output
    q <= p0 or p1 or p2;

    -- Intermediate products, derived using Karnaugh maps
    p0 <= a(1) and (not b(1));                -- bottom-left 2x2 square
    p1 <= a(0) and (not b(1)) and (not b(0)); -- cell @ (2, 1) in the grid
    p2 <= a(1) and a(0) and (not b(0));       -- cell @ (4, 3) in the grid

end architecture;
