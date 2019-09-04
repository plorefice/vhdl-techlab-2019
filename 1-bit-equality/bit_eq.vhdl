-- =======================================
--          1-bit equality tester
-- =======================================
--
--                 bit_eq
--             +------------+
--        >----| a          |
--             |          q |---->
--        >----| b          |
--             +------------+
--
--  ===========
--  Truth table
--  ===========
--
--   a   b  |  q
--  -------------
--   0   0  |  1
--   0   1  |  0
--   1   1  |  1
--   1   0  |  0
--
-- =======================================

-- Bring the `ieee` library into scope to import the `ieee.std_logic_1164` and use its types.
library ieee;
use ieee.std_logic_1164.all;

-- Declare an entity called `bit_eq` having two inputs (`a` and `b`) and one output (`q`)
entity bit_eq is
    port (
        a, b : in  std_logic;
        q    : out std_logic
    );
end entity;

-- Define the `bit_eq` entity by giving it an `architecture` called `structural`.
architecture structural of bit_eq is
begin

    -- This codifies the above truth table
    q <=not (a xor b);

end architecture;
