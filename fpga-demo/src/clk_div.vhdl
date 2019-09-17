-- =============================
-- Generic clock divider circuit
-- =============================

library ieee;
use ieee.std_logic_1164.all;

entity clk_div is
    generic (DIV : integer);
    port (
        clk_in  : in  std_logic;
        rst     : in  std_logic;
        clk_out : out std_logic
    );
end entity;

architecture behavioral of clk_div is
    signal clk_int : std_logic;
begin

    process (clk_in, rst)
        variable counter : integer := 0;
    begin
        if (rst = '1') then
            counter := 0;
            clk_int <= '1';
        else
            counter := counter + 1;
            if (counter = DIV) then
                counter := 0;
                clk_int <= not clk_int;
            end if;
        end if;
    end process;

    clk_out <= clk_int;

end architecture;
