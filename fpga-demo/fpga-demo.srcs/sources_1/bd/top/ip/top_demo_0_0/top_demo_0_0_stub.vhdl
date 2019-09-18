-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (lin64) Build 2552052 Fri May 24 14:47:09 MDT 2019
-- Date        : Wed Sep 18 10:58:43 2019
-- Host        : hubble running 64-bit Ubuntu 18.04.3 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /home/pietro/projects/develer/corsi/vhdl-techlab-2019/fpga-demo/fpga-demo.srcs/sources_1/bd/top/ip/top_demo_0_0/top_demo_0_0_stub.vhdl
-- Design      : top_demo_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity top_demo_0_0 is
  Port ( 
    clk_1khz : in STD_LOGIC;
    reset : in STD_LOGIC;
    pause : in STD_LOGIC;
    kw4_as : out STD_LOGIC_VECTOR ( 3 downto 0 );
    kw4_ks : out STD_LOGIC_VECTOR ( 6 downto 0 )
  );

end top_demo_0_0;

architecture stub of top_demo_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk_1khz,reset,pause,kw4_as[3:0],kw4_ks[6:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "demo,Vivado 2019.1";
begin
end;
