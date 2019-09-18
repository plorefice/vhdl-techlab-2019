--Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2019.1 (lin64) Build 2552052 Fri May 24 14:47:09 MDT 2019
--Date        : Wed Sep 18 11:11:46 2019
--Host        : hubble running 64-bit Ubuntu 18.04.3 LTS
--Command     : generate_target top.bd
--Design      : top
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity top is
  port (
    clk_100mhz : in STD_LOGIC;
    kw4_as : out STD_LOGIC_VECTOR ( 3 downto 0 );
    kw4_as_pu : out STD_LOGIC_VECTOR ( 3 downto 0 );
    kw4_ks : out STD_LOGIC_VECTOR ( 6 downto 0 );
    pause : in STD_LOGIC;
    reset : in STD_LOGIC
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of top : entity is "top,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=top,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=3,numReposBlks=3,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=2,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of top : entity is "top.hwdef";
end top;

architecture STRUCTURE of top is
  component top_demo_0_0 is
  port (
    clk_1khz : in STD_LOGIC;
    reset : in STD_LOGIC;
    pause : in STD_LOGIC;
    kw4_as : out STD_LOGIC_VECTOR ( 3 downto 0 );
    kw4_ks : out STD_LOGIC_VECTOR ( 6 downto 0 )
  );
  end component top_demo_0_0;
  component top_clk_div_0_0 is
  port (
    clk_in : in STD_LOGIC;
    rst : in STD_LOGIC;
    clk_out : out STD_LOGIC
  );
  end component top_clk_div_0_0;
  component top_xlconstant_0_0 is
  port (
    dout : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  end component top_xlconstant_0_0;
  signal clk_div_0_clk_out : STD_LOGIC;
  signal clk_in_0_1 : STD_LOGIC;
  signal demo_0_kw4_as : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal demo_0_kw4_ks : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal kw4_an_pu_dout : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal pause_0_1 : STD_LOGIC;
  signal rst_0_1 : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of reset : signal is "xilinx.com:signal:reset:1.0 RST.RESET RST";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of reset : signal is "XIL_INTERFACENAME RST.RESET, INSERT_VIP 0, POLARITY ACTIVE_LOW";
begin
  clk_in_0_1 <= clk_100mhz;
  kw4_as(3 downto 0) <= demo_0_kw4_as(3 downto 0);
  kw4_as_pu(3 downto 0) <= kw4_an_pu_dout(3 downto 0);
  kw4_ks(6 downto 0) <= demo_0_kw4_ks(6 downto 0);
  pause_0_1 <= pause;
  rst_0_1 <= reset;
clk_div_0: component top_clk_div_0_0
     port map (
      clk_in => clk_in_0_1,
      clk_out => clk_div_0_clk_out,
      rst => rst_0_1
    );
demo_0: component top_demo_0_0
     port map (
      clk_1khz => clk_div_0_clk_out,
      kw4_as(3 downto 0) => demo_0_kw4_as(3 downto 0),
      kw4_ks(6 downto 0) => demo_0_kw4_ks(6 downto 0),
      pause => pause_0_1,
      reset => rst_0_1
    );
kw4_an_pu: component top_xlconstant_0_0
     port map (
      dout(3 downto 0) => kw4_an_pu_dout(3 downto 0)
    );
end STRUCTURE;
