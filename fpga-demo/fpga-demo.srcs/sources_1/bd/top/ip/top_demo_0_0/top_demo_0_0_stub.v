// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (lin64) Build 2552052 Fri May 24 14:47:09 MDT 2019
// Date        : Wed Sep 18 10:58:43 2019
// Host        : hubble running 64-bit Ubuntu 18.04.3 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/pietro/projects/develer/corsi/vhdl-techlab-2019/fpga-demo/fpga-demo.srcs/sources_1/bd/top/ip/top_demo_0_0/top_demo_0_0_stub.v
// Design      : top_demo_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "demo,Vivado 2019.1" *)
module top_demo_0_0(clk_1khz, reset, pause, kw4_as, kw4_ks)
/* synthesis syn_black_box black_box_pad_pin="clk_1khz,reset,pause,kw4_as[3:0],kw4_ks[6:0]" */;
  input clk_1khz;
  input reset;
  input pause;
  output [3:0]kw4_as;
  output [6:0]kw4_ks;
endmodule
