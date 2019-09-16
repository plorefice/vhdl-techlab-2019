-- ==============================================
-- Positive edge-triggered D-flip-flop with reset
-- ==============================================
--
--                        v
--                        |
--                 +-------------+
--                 |     RST     |
--            >----|  D       Q  |---->
--                 |             |
--            >----|> CLK    /Q  |---->
--                 |             |
--                 +-------------+
--
-- ===========
-- Truth table
-- ===========
--
--  RST  CLK  D  |  Q   /Q
--  -----------------------
--   1    X   X  |  0    1
--   0    ^   0  |  0    1
--   0    ^   1  |  1    0
--   0    X   X  |  Q   /Q
--
-- ==============================================

library ieee;
use ieee.std_logic_1164.all;

entity dff_r is
    port (
        d, clk, rst : in  std_logic;
        q, qn       : out std_logic
    );
end entity;

architecture behavioral of dff_r is
begin

    -- The process sensitivity list in this case consists of clock and reset signals
    process (clk, rst)
    begin
        -- Asynchronous reset -- takes precedence over everything else
        if (rst = '1') then
            q <= '0';
            qn <= '1';
        elsif (rising_edge(clk)) then
            q <= d;
            qn <= not d;
        end if;
    end process;

end architecture;
