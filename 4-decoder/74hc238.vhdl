-- ==============================================
--    Logic 3- to 8-Line Decoder/Demultiplexer
-- ==============================================
--
--                    CD74HC238
--                 +-------------+
--              3  |             |
--           >--/--|  A          |  8
--                 |          Y  |--/-->
--              3  |             |
--           >--/--| E           |
--                 |             |
--                 +-------------+
--
-- ===========
-- Truth table
-- ===========
--
-- See http://www.ti.com/lit/ds/symlink/cd74hc238.pdf
--
-- ==============================================

library ieee;
use ieee.std_logic_1164.all;

entity cd74hc238 is
    port (
        A, E : in  std_logic_vector (2 downto 0);
        Y    : out std_logic_vector (7 downto 0)
    );
end entity;

architecture behavioral of cd74hc238 is
    signal Yi : std_logic_vector(7 downto 0);
begin

    -- Assign internal signals
    with A select
        Yi <= "00000001" when "000",
              "00000010" when "001",
              "00000100" when "010",
              "00001000" when "011",
              "00010000" when "100",
              "00100000" when "101",
              "01000000" when "110",
              "10000000" when others;

    -- Assign output signals
    Y <= Yi when E = "001" else "00000000";

end architecture;
