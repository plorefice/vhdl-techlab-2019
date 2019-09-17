library ieee;
use ieee.std_logic_1164.all;

entity bcd_to_7seg is
    port (
        bcd  : in  std_logic_vector(3 downto 0);
        leds : out std_logic_vector(6 downto 0)
    );
end entity;

architecture behavioral of bcd_to_7seg is
begin

    with bcd select
        leds <= "0000001" when "0000", -- 0
                "1001111" when "0001", -- 1
                "0010010" when "0010", -- 2
                "0000110" when "0011", -- 3
                "1001100" when "0100", -- 4
                "0100100" when "0101", -- 5
                "0100000" when "0110", -- 6
                "0001111" when "0111", -- 7
                "0000000" when "1000", -- 8
                "0000100" when "1001", -- 9
                "1111111" when others;

end architecture;

-- ============================================================================

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity kw4_281_drv is
    port (
        clk : in  std_logic;
        rst : in  std_logic;
        bcd : in  std_logic_vector(15 downto 0);

        as  : out std_logic_vector(3 downto 0);
        ks  : out std_logic_vector(6 downto 0)
    );
end entity;

architecture behavioral of kw4_281_drv is
    type led_array is array (3 downto 0) of std_logic_vector(6 downto 0);

    signal leds   : led_array;
    signal active : unsigned(1 downto 0);
    signal as_i   : std_logic_vector(3 downto 0);
begin

  bcd_7seg_gen:
    -- Generate a BCD-to-7-segment converter for each digit
    for I in 0 to 3 generate
      bcd_7seg_n:
        entity work.bcd_to_7seg
            port map (bcd  => bcd(4 * (I + 1) - 1 downto 4 * I),
                      leds => leds(I));
    end generate;

    -- At each clock cycle, change the active digit
    active <= "00"       when rst = '1' else
              active + 1 when rising_edge(clk);

    -- Digit selector
    with active select
        as_i <= "0001" when "00",
                "0010" when "01",
                "0100" when "10",
                "1000" when others;

    as <= as_i when rst = '0' else "0000";

    -- Led array selector
    with active select
        ks <= leds(0) when "00",
              leds(1) when "01",
              leds(2) when "10",
              leds(3) when others;

end architecture;
