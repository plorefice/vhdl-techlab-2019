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

    process (clk_in, clk_int, rst)
        variable counter : integer := 0;
    begin
        if (rst = '1') then
            counter := 0;
            clk_int <= '1';
        elsif (rising_edge(clk_in)) then
            if (counter = (DIV - 1) / 2) then
                counter := 0;
                clk_int <= not clk_int;
            else
                counter := counter + 1;
            end if;
        end if;
    end process;

    clk_out <= clk_int;

end architecture;
