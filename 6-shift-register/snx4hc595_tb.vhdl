library ieee;
use ieee.std_logic_1164.all;

entity snx4hc595_tb is
end entity;

architecture testbench of snx4hc595_tb is
    constant T : time := 40 ns; -- one period of SRCLK

    signal srclk, ser, srclr, rclk_e : std_logic := '0';
    signal rclk, rclk_i              : std_logic := '1';
    signal running                   : boolean   := true;

    signal q : std_logic_vector(7 downto 0);
begin

    uut: entity work.snx4hc595 (behavioral)
                port map (
                    srclk => srclk,
                    ser   => ser,
                    rclk  => rclk,
                    srclr => srclr,
                    q     => q
                );

    -- Keep the simulation running for 16 clock cycles
    running <= false after 16 * T;

    -- Keep the shift register clock running for the whole simulation
    srclk <= not srclk after T/2 when running else '0';

    -- Model SER according to timing diagram
    ser <= '1' after 1 * T,
           '0' after 2 * T,
           '1' after 11 * T,
           '0' after 12 * T;

    -- Model SRCLR according to timing diagram
    srclr <= '1' after 1 * T,
             '0' after 14 * T + T / 2,
             '1' after 15 * T + T / 2;

    -- Model RCLK using an internal, always running clock phase-shifted w.r.t SRCLK and an enable signal
    rclk_i <= not rclk_i after T/2 when running else '0';
    rclk_e <= '1' after 2 * T,
              '0' after 11 * T,
              '1' after 12 * T,
              '0' after 13 * T,
              '1' after 15 * T;
    rclk   <= rclk_i and rclk_e;

    -- Process which performs the actual tests
    process (srclk)
        variable edge_index : integer := 0;
    begin
        case edge_index is
            when 0|1|2|3|4         => null;
            when 5|6               => assert q = "00000001";
            when 7|8               => assert q = "00000010";
            when 9|10              => assert q = "00000100";
            when 11|12             => assert q = "00001000";
            when 13|14             => assert q = "00010000";
            when 15|16             => assert q = "00100000";
            when 17|18             => assert q = "01000000";
            when 19|20             => assert q = "10000000";
            when 21|22|23|24       => assert q = "00000000";
            when 25|26|27|28|29|30 => assert q = "00000001";
            when others            => assert q = "00000000";
        end case;

        edge_index := edge_index + 1;
    end process;

end architecture;
