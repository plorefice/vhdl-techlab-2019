library ieee;
use ieee.std_logic_1164.all;

entity mux4 is
    port (
        i   : in  std_logic_vector(3 downto 0);
        sel : in  std_logic_vector(1 downto 0);
        q   : out std_logic
    );
end entity;

architecture conditional_assignment of mux4 is
begin

    -- Conditional signal assigment expression
    q <= i(0) when sel = "00" else
         i(1) when sel = "01" else
         i(2) when sel = "10" else
         i(3); --  sel = "11"

end architecture;

-- Multiple architectures can be defined for a single entity
architecture selected_assignment of mux4 is
begin

    -- Selected signal assignment expression
    with sel select
        q <= i(0) when "00",
             i(1) when "01",
             i(2) when "10",
             i(3) when others;

end architecture;
