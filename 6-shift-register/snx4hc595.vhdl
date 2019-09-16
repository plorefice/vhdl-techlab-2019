-- ==============================================
--  8-Bit Serial-in, Parallel-out Shift Register
-- ==============================================
--
--                    SNx4HC595
--                 +-------------+
--            >----| RCLK        |
--                 |             |
--            >----| /SRCLR      |  8
--                 |           Q |--/-->
--            >----| SRCLK       |
--                 |             |
--            >----| SER         |
--                 +-------------+
--
-- ===========
-- Truth table
-- ===========
--
-- See http://www.ti.com/lit/ds/symlink/sn74hc595.pdf
--
-- ==============================================

library ieee;
use ieee.std_logic_1164.all;

entity snx4hc595 is
    -- Declare interface based on the testbench spec.
end entity;

architecture behavioral of snx4hc595 is
begin
    -- Define behavioral architecture based on the SNx4HC595 datasheet.
end architecture;
