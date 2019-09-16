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
    port (
        rclk, srclr, srclk, ser : in  std_logic;
        q                       : out std_logic_vector(7 downto 0)
    );
end entity;

architecture behavioral of snx4hc595 is
    signal qi : std_logic_vector(7 downto 0);
begin

    -- Shift-register stage update
    process (srclk, srclr)
    begin
        if (srclr = '0') then
            qi <= (others => '0');
        elsif (rising_edge(srclk)) then
            qi <= qi(6 downto 0) & ser;
        end if;
    end process;

    -- Storage stage update
    process (rclk)
    begin
        if (rising_edge(rclk)) then
            q <= qi;
        end if;
    end process;

end architecture;
