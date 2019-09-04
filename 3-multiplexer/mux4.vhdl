-- ====================================
--          4-ways multiplexer
-- ====================================
--
--                 mux4
--               +-----+
--           >---| i3    \
--               |        \
--           >---| i2      |
--               |       q |--->
--           >---| i1      |
--               |        /
--           >---| i0    /
--               +-----+
--                 | |
--                 ^ ^
--                 sel
--
--  ===========
--  Truth table
--  ===========
--
--   i0  i1  i2  i3   sel  |  q
--  -----------------------------
--   i0  X   X   X    00   |  i0
--   X   i1  X   X    01   |  i1
--   X   X   i2  X    10   |  i2
--   X   X   X   i3   11   |  i3
--
-- ====================================

library ieee;
use ieee.std_logic_1164.all;

entity mux4 is
    port (
        i   : in  std_logic_vector(3 downto 0);
        sel : in  std_logic_vector(1 downto 0);
        q   : out std_logic
    );
end entity;

architecture conditional_assignment of mux4 is
begin

    -- Conditional signal assigment expression
    q <= i(0) when sel = "00" else
         i(1) when sel = "01" else
         i(2) when sel = "10" else
         i(3); --  sel = "11"

end architecture;

-- Multiple architectures can be defined for a single entity
architecture selected_assignment of mux4 is
begin

    -- Selected signal assignment expression
    with sel select
        q <= i(0) when "00",
             i(1) when "01",
             i(2) when "10",
             i(3) when others;

end architecture;
