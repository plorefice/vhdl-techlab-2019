--Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2019.1 (lin64) Build 2552052 Fri May 24 14:47:09 MDT 2019
--Date        : Wed Sep 18 11:43:45 2019
--Host        : hubble running 64-bit Ubuntu 18.04.3 LTS
--Command     : generate_target top_wrapper.bd
--Design      : top_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity top_wrapper is
  port (
    clk_100mhz : in STD_LOGIC;
    kw4_as : out STD_LOGIC_VECTOR ( 3 downto 0 );
    kw4_as_pu : out STD_LOGIC_VECTOR ( 3 downto 0 );
    kw4_ks : out STD_LOGIC_VECTOR ( 6 downto 0 );
    pause : in STD_LOGIC;
    reset : in STD_LOGIC
  );
end top_wrapper;

architecture STRUCTURE of top_wrapper is
  component top is
  port (
    reset : in STD_LOGIC;
    pause : in STD_LOGIC;
    clk_100mhz : in STD_LOGIC;
    kw4_as : out STD_LOGIC_VECTOR ( 3 downto 0 );
    kw4_as_pu : out STD_LOGIC_VECTOR ( 3 downto 0 );
    kw4_ks : out STD_LOGIC_VECTOR ( 6 downto 0 )
  );
  end component top;
begin
top_i: component top
     port map (
      clk_100mhz => clk_100mhz,
      kw4_as(3 downto 0) => kw4_as(3 downto 0),
      kw4_as_pu(3 downto 0) => kw4_as_pu(3 downto 0),
      kw4_ks(6 downto 0) => kw4_ks(6 downto 0),
      pause => pause,
      reset => reset
    );
end STRUCTURE;
