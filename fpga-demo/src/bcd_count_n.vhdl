library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity bcd_count_1 is
    port (
        clk : in  std_logic;
        rst : in  std_logic;
        en  : in  std_logic;

        bcd  : out std_logic_vector(3 downto 0);
        cout : out std_logic
    );
end entity;

architecture arch of bcd_count_1 is
    signal cnt : unsigned(3 downto 0);
begin

  counter:
    process (clk, rst)
    begin
        if (rst = '1') then
            cnt <= "0000";
        elsif (en = '1' and rising_edge(clk)) then
            if (cnt = "1001") then
                cnt <= "0000";
            else
                cnt <= cnt + 1;
            end if;
        end if;
    end process;

    bcd <= std_logic_vector(cnt);
    cout <= '1' when cnt = "1001" else '0';

end architecture;

-- ============================================================================

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity bcd_count_4 is
    port (
        clk : in  std_logic;
        rst : in  std_logic;
        en  : in  std_logic;
        bcd : out std_logic_vector(15 downto 0)
    );
end entity;

architecture arch of bcd_count_4 is
    signal d3, d2, d1, d0 : std_logic_vector(3 downto 0);
    signal co2, co1, co0 : std_logic;
    signal en3, en2, en1 : std_logic;
begin

  cnt3:
    entity work.bcd_count_1
        port map (clk  => clk,
                  rst  => rst,
                  en   => en3,
                  bcd  => d3,
                  cout => open);

  cnt2:
    entity work.bcd_count_1
        port map (clk  => clk,
                  rst  => rst,
                  en   => en2,
                  bcd  => d2,
                  cout => co2);

  cnt1:
    entity work.bcd_count_1
        port map (clk  => clk,
                  rst  => rst,
                  en   => en1,
                  bcd  => d1,
                  cout => co1);

  cnt0:
    entity work.bcd_count_1
        port map (clk  => clk,
                  rst  => rst,
                  en   => en,
                  bcd  => d0,
                  cout => co0);

    en3 <= en and co0 and co1 and co2;
    en2 <= en and co0 and co1;
    en1 <= en and co0;

    bcd <= d3 & d2 & d1 & d0;

end architecture;
