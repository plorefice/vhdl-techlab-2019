library ieee;
use ieee.std_logic_1164.all;

entity kw4_281_drv_tb is
end entity;

architecture testbench of kw4_281_drv_tb is
    constant T : time := 1 ms;

    signal clk, rst : std_logic := '0';
    signal bcd      : std_logic_vector(15 downto 0) := (others => '0');
    signal as       : std_logic_vector(3 downto 0);
    signal ks       : std_logic_vector(6 downto 0);
    signal running  : boolean := true;
begin

  uut:
    entity work.kw4_281_drv
        port map (clk => clk,
                  rst => rst,
                  bcd => bcd,
                  as  => as,
                  ks  => ks);

    clk <= not clk after T / 2 when running else '0';
    rst <= '1', '0' after T / 4;

  tb:
    process
        type kw4_output is record
            as : std_logic_vector(3 downto 0);
            ks : std_logic_vector(6 downto 0);
        end record;

        type kw4_outputs is array (natural range <>) of kw4_output;

        constant tcs : kw4_outputs :=
            (("0001", "1001100"),
             ("0010", "0000110"),
             ("0100", "0010010"),
             ("1000", "1001111"));
    begin
        -- Set BCD value to display
        bcd <= X"1234";

        wait until falling_edge(rst);
        wait for 0 ns;

        for I in 0 to 10 loop
            for J in tcs'range loop
                assert as = tcs(J).as
                    report "Anode selector in wrong position"
                    severity failure;

                assert ks = tcs(J).ks
                    report "Cathode selectors in wrong position"
                    severity failure;

                wait for T;
            end loop;
        end loop;

        running <= false;
        wait;
    end process;

end architecture;
