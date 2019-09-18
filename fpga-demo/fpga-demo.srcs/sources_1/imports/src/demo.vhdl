library ieee;
use ieee.std_logic_1164.all;

entity demo is
    port (
        clk_1khz : in  std_logic;
        reset    : in  std_logic;
        pause    : in  std_logic;

        kw4_as : out std_logic_vector(3 downto 0); -- Anode pins of KW4-281
        kw4_ks : out std_logic_vector(6 downto 0)  -- Cathode pins of KW4-281
    );
end entity;

architecture arch of demo is
    signal clk_1hz, en, sync : std_logic;
    signal bcd : std_logic_vector(15 downto 0);
begin

  en <= not pause;
  sync <= reset or pause;

  bcd_count_4_0:
    entity work.bcd_count_4
        port map (clk => clk_1hz,
                  rst => reset,
                  en  => en,
                  bcd => bcd);

  kw4_281_drv_0:
    entity work.kw4_281_drv
        port map (clk => clk_1khz,
                  rst => reset,
                  bcd => bcd,
                  as  => kw4_as,
                  ks  => kw4_ks);

  clk_1hz_gen:
    entity work.clk_div
        generic map (DIV => 1_000)
        port map (clk_in  => clk_1khz,
                  clk_out => clk_1hz,
                  rst     => sync);

end architecture;
