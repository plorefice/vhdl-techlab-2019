// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (lin64) Build 2552052 Fri May 24 14:47:09 MDT 2019
// Date        : Wed Sep 18 10:58:43 2019
// Host        : hubble running 64-bit Ubuntu 18.04.3 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/pietro/projects/develer/corsi/vhdl-techlab-2019/fpga-demo/fpga-demo.srcs/sources_1/bd/top/ip/top_demo_0_0/top_demo_0_0_sim_netlist.v
// Design      : top_demo_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "top_demo_0_0,demo,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "demo,Vivado 2019.1" *) 
(* NotValidForBitStream *)
module top_demo_0_0
   (clk_1khz,
    reset,
    pause,
    kw4_as,
    kw4_ks);
  input clk_1khz;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 reset RST" *) (* x_interface_parameter = "XIL_INTERFACENAME reset, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input reset;
  input pause;
  output [3:0]kw4_as;
  output [6:0]kw4_ks;

  wire clk_1khz;
  wire [3:0]kw4_as;
  wire [6:0]kw4_ks;
  wire pause;
  wire reset;

  top_demo_0_0_demo U0
       (.clk_1khz(clk_1khz),
        .kw4_as(kw4_as),
        .kw4_ks(kw4_ks),
        .pause(pause),
        .reset(reset));
endmodule

(* ORIG_REF_NAME = "bcd_count_1" *) 
module top_demo_0_0_bcd_count_1
   (E,
    \cnt_reg[0]_0 ,
    \cnt_reg[1]_0 ,
    \cnt_reg[1]_1 ,
    \cnt_reg[1]_2 ,
    \cnt_reg[3]_0 ,
    \cnt_reg[1]_3 ,
    \cnt_reg[0]_1 ,
    pause,
    CLK,
    reset);
  output [0:0]E;
  output \cnt_reg[0]_0 ;
  output \cnt_reg[1]_0 ;
  output \cnt_reg[1]_1 ;
  output \cnt_reg[1]_2 ;
  output \cnt_reg[3]_0 ;
  output \cnt_reg[1]_3 ;
  output \cnt_reg[0]_1 ;
  input pause;
  input CLK;
  input reset;

  wire CLK;
  wire [0:0]E;
  wire [3:0]bcd;
  wire \cnt[0]_i_1_n_0 ;
  wire \cnt[1]_i_1_n_0 ;
  wire \cnt[2]_i_1_n_0 ;
  wire \cnt[3]_i_2_n_0 ;
  wire \cnt_reg[0]_0 ;
  wire \cnt_reg[0]_1 ;
  wire \cnt_reg[1]_0 ;
  wire \cnt_reg[1]_1 ;
  wire \cnt_reg[1]_2 ;
  wire \cnt_reg[1]_3 ;
  wire \cnt_reg[3]_0 ;
  wire en;
  wire pause;
  wire reset;

  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \cnt[0]_i_1 
       (.I0(bcd[0]),
        .O(\cnt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h4A5A)) 
    \cnt[1]_i_1 
       (.I0(bcd[1]),
        .I1(bcd[2]),
        .I2(bcd[0]),
        .I3(bcd[3]),
        .O(\cnt[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \cnt[2]_i_1 
       (.I0(bcd[0]),
        .I1(bcd[1]),
        .I2(bcd[2]),
        .O(\cnt[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00000040)) 
    \cnt[3]_i_1__1 
       (.I0(bcd[1]),
        .I1(bcd[0]),
        .I2(bcd[3]),
        .I3(bcd[2]),
        .I4(pause),
        .O(E));
  LUT1 #(
    .INIT(2'h1)) 
    \cnt[3]_i_1__2 
       (.I0(pause),
        .O(en));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h68F0)) 
    \cnt[3]_i_2 
       (.I0(bcd[1]),
        .I1(bcd[2]),
        .I2(bcd[3]),
        .I3(bcd[0]),
        .O(\cnt[3]_i_2_n_0 ));
  FDCE \cnt_reg[0] 
       (.C(CLK),
        .CE(en),
        .CLR(reset),
        .D(\cnt[0]_i_1_n_0 ),
        .Q(bcd[0]));
  FDCE \cnt_reg[1] 
       (.C(CLK),
        .CE(en),
        .CLR(reset),
        .D(\cnt[1]_i_1_n_0 ),
        .Q(bcd[1]));
  FDCE \cnt_reg[2] 
       (.C(CLK),
        .CE(en),
        .CLR(reset),
        .D(\cnt[2]_i_1_n_0 ),
        .Q(bcd[2]));
  FDCE \cnt_reg[3] 
       (.C(CLK),
        .CE(en),
        .CLR(reset),
        .D(\cnt[3]_i_2_n_0 ),
        .Q(bcd[3]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hFC83)) 
    \kw4_ks[0]_INST_0_i_3 
       (.I0(bcd[0]),
        .I1(bcd[1]),
        .I2(bcd[2]),
        .I3(bcd[3]),
        .O(\cnt_reg[0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hEEB2)) 
    \kw4_ks[1]_INST_0_i_3 
       (.I0(bcd[1]),
        .I1(bcd[2]),
        .I2(bcd[0]),
        .I3(bcd[3]),
        .O(\cnt_reg[1]_2 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hFBF8)) 
    \kw4_ks[2]_INST_0_i_3 
       (.I0(bcd[3]),
        .I1(bcd[1]),
        .I2(bcd[0]),
        .I3(bcd[2]),
        .O(\cnt_reg[3]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hE9E4)) 
    \kw4_ks[3]_INST_0_i_3 
       (.I0(bcd[1]),
        .I1(bcd[2]),
        .I2(bcd[3]),
        .I3(bcd[0]),
        .O(\cnt_reg[1]_3 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hF0C4)) 
    \kw4_ks[4]_INST_0_i_3 
       (.I0(bcd[0]),
        .I1(bcd[1]),
        .I2(bcd[3]),
        .I3(bcd[2]),
        .O(\cnt_reg[0]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hF6A0)) 
    \kw4_ks[5]_INST_0_i_3 
       (.I0(bcd[1]),
        .I1(bcd[0]),
        .I2(bcd[3]),
        .I3(bcd[2]),
        .O(\cnt_reg[1]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hE1E4)) 
    \kw4_ks[6]_INST_0_i_3 
       (.I0(bcd[1]),
        .I1(bcd[2]),
        .I2(bcd[3]),
        .I3(bcd[0]),
        .O(\cnt_reg[1]_0 ));
endmodule

(* ORIG_REF_NAME = "bcd_count_1" *) 
module top_demo_0_0_bcd_count_1_0
   (E,
    \cnt_reg[3]_0 ,
    \cnt_reg[3]_1 ,
    \cnt_reg[3]_2 ,
    \cnt_reg[3]_3 ,
    \cnt_reg[3]_4 ,
    \cnt_reg[3]_5 ,
    \cnt_reg[3]_6 ,
    \cnt_reg[3]_7 ,
    CLK,
    reset);
  output [0:0]E;
  output \cnt_reg[3]_0 ;
  output \cnt_reg[3]_1 ;
  output \cnt_reg[3]_2 ;
  output \cnt_reg[3]_3 ;
  output \cnt_reg[3]_4 ;
  output \cnt_reg[3]_5 ;
  output \cnt_reg[3]_6 ;
  input [0:0]\cnt_reg[3]_7 ;
  input CLK;
  input reset;

  wire CLK;
  wire [0:0]E;
  wire [7:4]bcd;
  wire \cnt[0]_i_1__0_n_0 ;
  wire \cnt[1]_i_1__0_n_0 ;
  wire \cnt[2]_i_1__0_n_0 ;
  wire \cnt[3]_i_2__0_n_0 ;
  wire \cnt_reg[3]_0 ;
  wire \cnt_reg[3]_1 ;
  wire \cnt_reg[3]_2 ;
  wire \cnt_reg[3]_3 ;
  wire \cnt_reg[3]_4 ;
  wire \cnt_reg[3]_5 ;
  wire \cnt_reg[3]_6 ;
  wire [0:0]\cnt_reg[3]_7 ;
  wire reset;

  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \cnt[0]_i_1__0 
       (.I0(bcd[4]),
        .O(\cnt[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h0BF0)) 
    \cnt[1]_i_1__0 
       (.I0(bcd[6]),
        .I1(bcd[7]),
        .I2(bcd[5]),
        .I3(bcd[4]),
        .O(\cnt[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \cnt[2]_i_1__0 
       (.I0(bcd[4]),
        .I1(bcd[5]),
        .I2(bcd[6]),
        .O(\cnt[2]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h10000000)) 
    \cnt[3]_i_1__0 
       (.I0(bcd[5]),
        .I1(bcd[6]),
        .I2(\cnt_reg[3]_7 ),
        .I3(bcd[4]),
        .I4(bcd[7]),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h6AA2)) 
    \cnt[3]_i_2__0 
       (.I0(bcd[7]),
        .I1(bcd[4]),
        .I2(bcd[6]),
        .I3(bcd[5]),
        .O(\cnt[3]_i_2__0_n_0 ));
  FDCE \cnt_reg[0] 
       (.C(CLK),
        .CE(\cnt_reg[3]_7 ),
        .CLR(reset),
        .D(\cnt[0]_i_1__0_n_0 ),
        .Q(bcd[4]));
  FDCE \cnt_reg[1] 
       (.C(CLK),
        .CE(\cnt_reg[3]_7 ),
        .CLR(reset),
        .D(\cnt[1]_i_1__0_n_0 ),
        .Q(bcd[5]));
  FDCE \cnt_reg[2] 
       (.C(CLK),
        .CE(\cnt_reg[3]_7 ),
        .CLR(reset),
        .D(\cnt[2]_i_1__0_n_0 ),
        .Q(bcd[6]));
  FDCE \cnt_reg[3] 
       (.C(CLK),
        .CE(\cnt_reg[3]_7 ),
        .CLR(reset),
        .D(\cnt[3]_i_2__0_n_0 ),
        .Q(bcd[7]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hEAA5)) 
    \kw4_ks[0]_INST_0_i_4 
       (.I0(bcd[7]),
        .I1(bcd[4]),
        .I2(bcd[5]),
        .I3(bcd[6]),
        .O(\cnt_reg[3]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'hEADC)) 
    \kw4_ks[1]_INST_0_i_4 
       (.I0(bcd[7]),
        .I1(bcd[5]),
        .I2(bcd[4]),
        .I3(bcd[6]),
        .O(\cnt_reg[3]_3 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'hFBF8)) 
    \kw4_ks[2]_INST_0_i_4 
       (.I0(bcd[7]),
        .I1(bcd[5]),
        .I2(bcd[4]),
        .I3(bcd[6]),
        .O(\cnt_reg[3]_6 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'hEB98)) 
    \kw4_ks[3]_INST_0_i_4 
       (.I0(bcd[7]),
        .I1(bcd[5]),
        .I2(bcd[4]),
        .I3(bcd[6]),
        .O(\cnt_reg[3]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'hABA0)) 
    \kw4_ks[4]_INST_0_i_4 
       (.I0(bcd[7]),
        .I1(bcd[4]),
        .I2(bcd[6]),
        .I3(bcd[5]),
        .O(\cnt_reg[3]_4 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'hB8E8)) 
    \kw4_ks[5]_INST_0_i_4 
       (.I0(bcd[7]),
        .I1(bcd[5]),
        .I2(bcd[6]),
        .I3(bcd[4]),
        .O(\cnt_reg[3]_2 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'hAA9C)) 
    \kw4_ks[6]_INST_0_i_4 
       (.I0(bcd[7]),
        .I1(bcd[6]),
        .I2(bcd[4]),
        .I3(bcd[5]),
        .O(\cnt_reg[3]_5 ));
endmodule

(* ORIG_REF_NAME = "bcd_count_1" *) 
module top_demo_0_0_bcd_count_1_1
   (E,
    kw4_ks,
    \cnt_reg[3]_0 ,
    Q,
    kw4_ks_0_sp_1,
    \kw4_ks[0]_0 ,
    kw4_ks_3_sp_1,
    kw4_ks_5_sp_1,
    \kw4_ks[3]_0 ,
    \kw4_ks[5]_0 ,
    kw4_ks_1_sp_1,
    kw4_ks_2_sp_1,
    kw4_ks_4_sp_1,
    kw4_ks_6_sp_1,
    \kw4_ks[1]_0 ,
    \kw4_ks[4]_0 ,
    \kw4_ks[6]_0 ,
    \kw4_ks[2]_0 ,
    CLK,
    reset);
  output [0:0]E;
  output [6:0]kw4_ks;
  input [0:0]\cnt_reg[3]_0 ;
  input [1:0]Q;
  input kw4_ks_0_sp_1;
  input \kw4_ks[0]_0 ;
  input kw4_ks_3_sp_1;
  input kw4_ks_5_sp_1;
  input \kw4_ks[3]_0 ;
  input \kw4_ks[5]_0 ;
  input kw4_ks_1_sp_1;
  input kw4_ks_2_sp_1;
  input kw4_ks_4_sp_1;
  input kw4_ks_6_sp_1;
  input \kw4_ks[1]_0 ;
  input \kw4_ks[4]_0 ;
  input \kw4_ks[6]_0 ;
  input \kw4_ks[2]_0 ;
  input CLK;
  input reset;

  wire CLK;
  wire [0:0]E;
  wire [1:0]Q;
  wire [11:8]bcd;
  wire \cnt[0]_i_1__1_n_0 ;
  wire \cnt[1]_i_1__1_n_0 ;
  wire \cnt[2]_i_1__1_n_0 ;
  wire \cnt[3]_i_2__1_n_0 ;
  wire [0:0]\cnt_reg[3]_0 ;
  wire [6:0]kw4_ks;
  wire \kw4_ks[0]_0 ;
  wire \kw4_ks[0]_INST_0_i_1_n_0 ;
  wire \kw4_ks[1]_0 ;
  wire \kw4_ks[1]_INST_0_i_1_n_0 ;
  wire \kw4_ks[2]_0 ;
  wire \kw4_ks[2]_INST_0_i_1_n_0 ;
  wire \kw4_ks[3]_0 ;
  wire \kw4_ks[3]_INST_0_i_1_n_0 ;
  wire \kw4_ks[4]_0 ;
  wire \kw4_ks[4]_INST_0_i_1_n_0 ;
  wire \kw4_ks[5]_0 ;
  wire \kw4_ks[5]_INST_0_i_1_n_0 ;
  wire \kw4_ks[6]_0 ;
  wire \kw4_ks[6]_INST_0_i_1_n_0 ;
  wire kw4_ks_0_sn_1;
  wire kw4_ks_1_sn_1;
  wire kw4_ks_2_sn_1;
  wire kw4_ks_3_sn_1;
  wire kw4_ks_4_sn_1;
  wire kw4_ks_5_sn_1;
  wire kw4_ks_6_sn_1;
  wire reset;

  assign kw4_ks_0_sn_1 = kw4_ks_0_sp_1;
  assign kw4_ks_1_sn_1 = kw4_ks_1_sp_1;
  assign kw4_ks_2_sn_1 = kw4_ks_2_sp_1;
  assign kw4_ks_3_sn_1 = kw4_ks_3_sp_1;
  assign kw4_ks_4_sn_1 = kw4_ks_4_sp_1;
  assign kw4_ks_5_sn_1 = kw4_ks_5_sp_1;
  assign kw4_ks_6_sn_1 = kw4_ks_6_sp_1;
  LUT1 #(
    .INIT(2'h1)) 
    \cnt[0]_i_1__1 
       (.I0(bcd[8]),
        .O(\cnt[0]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h0BF0)) 
    \cnt[1]_i_1__1 
       (.I0(bcd[10]),
        .I1(bcd[11]),
        .I2(bcd[9]),
        .I3(bcd[8]),
        .O(\cnt[1]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \cnt[2]_i_1__1 
       (.I0(bcd[8]),
        .I1(bcd[9]),
        .I2(bcd[10]),
        .O(\cnt[2]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'h10000000)) 
    \cnt[3]_i_1 
       (.I0(bcd[9]),
        .I1(bcd[10]),
        .I2(\cnt_reg[3]_0 ),
        .I3(bcd[8]),
        .I4(bcd[11]),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h6AA2)) 
    \cnt[3]_i_2__1 
       (.I0(bcd[11]),
        .I1(bcd[8]),
        .I2(bcd[10]),
        .I3(bcd[9]),
        .O(\cnt[3]_i_2__1_n_0 ));
  FDCE \cnt_reg[0] 
       (.C(CLK),
        .CE(\cnt_reg[3]_0 ),
        .CLR(reset),
        .D(\cnt[0]_i_1__1_n_0 ),
        .Q(bcd[8]));
  FDCE \cnt_reg[1] 
       (.C(CLK),
        .CE(\cnt_reg[3]_0 ),
        .CLR(reset),
        .D(\cnt[1]_i_1__1_n_0 ),
        .Q(bcd[9]));
  FDCE \cnt_reg[2] 
       (.C(CLK),
        .CE(\cnt_reg[3]_0 ),
        .CLR(reset),
        .D(\cnt[2]_i_1__1_n_0 ),
        .Q(bcd[10]));
  FDCE \cnt_reg[3] 
       (.C(CLK),
        .CE(\cnt_reg[3]_0 ),
        .CLR(reset),
        .D(\cnt[3]_i_2__1_n_0 ),
        .Q(bcd[11]));
  MUXF7 \kw4_ks[0]_INST_0 
       (.I0(\kw4_ks[0]_INST_0_i_1_n_0 ),
        .I1(kw4_ks_0_sn_1),
        .O(kw4_ks[0]),
        .S(Q[0]));
  LUT6 #(
    .INIT(64'hEAA5FFFFEAA50000)) 
    \kw4_ks[0]_INST_0_i_1 
       (.I0(bcd[11]),
        .I1(bcd[8]),
        .I2(bcd[9]),
        .I3(bcd[10]),
        .I4(Q[1]),
        .I5(\kw4_ks[0]_0 ),
        .O(\kw4_ks[0]_INST_0_i_1_n_0 ));
  MUXF7 \kw4_ks[1]_INST_0 
       (.I0(\kw4_ks[1]_INST_0_i_1_n_0 ),
        .I1(kw4_ks_1_sn_1),
        .O(kw4_ks[1]),
        .S(Q[0]));
  LUT6 #(
    .INIT(64'hEADCFFFFEADC0000)) 
    \kw4_ks[1]_INST_0_i_1 
       (.I0(bcd[11]),
        .I1(bcd[9]),
        .I2(bcd[8]),
        .I3(bcd[10]),
        .I4(Q[1]),
        .I5(\kw4_ks[1]_0 ),
        .O(\kw4_ks[1]_INST_0_i_1_n_0 ));
  MUXF7 \kw4_ks[2]_INST_0 
       (.I0(\kw4_ks[2]_INST_0_i_1_n_0 ),
        .I1(kw4_ks_2_sn_1),
        .O(kw4_ks[2]),
        .S(Q[0]));
  LUT6 #(
    .INIT(64'hFBF8FFFFFBF80000)) 
    \kw4_ks[2]_INST_0_i_1 
       (.I0(bcd[11]),
        .I1(bcd[9]),
        .I2(bcd[8]),
        .I3(bcd[10]),
        .I4(Q[1]),
        .I5(\kw4_ks[2]_0 ),
        .O(\kw4_ks[2]_INST_0_i_1_n_0 ));
  MUXF7 \kw4_ks[3]_INST_0 
       (.I0(\kw4_ks[3]_INST_0_i_1_n_0 ),
        .I1(kw4_ks_3_sn_1),
        .O(kw4_ks[3]),
        .S(Q[0]));
  LUT6 #(
    .INIT(64'hEB98FFFFEB980000)) 
    \kw4_ks[3]_INST_0_i_1 
       (.I0(bcd[11]),
        .I1(bcd[9]),
        .I2(bcd[8]),
        .I3(bcd[10]),
        .I4(Q[1]),
        .I5(\kw4_ks[3]_0 ),
        .O(\kw4_ks[3]_INST_0_i_1_n_0 ));
  MUXF7 \kw4_ks[4]_INST_0 
       (.I0(\kw4_ks[4]_INST_0_i_1_n_0 ),
        .I1(kw4_ks_4_sn_1),
        .O(kw4_ks[4]),
        .S(Q[0]));
  LUT6 #(
    .INIT(64'hABA0FFFFABA00000)) 
    \kw4_ks[4]_INST_0_i_1 
       (.I0(bcd[11]),
        .I1(bcd[8]),
        .I2(bcd[10]),
        .I3(bcd[9]),
        .I4(Q[1]),
        .I5(\kw4_ks[4]_0 ),
        .O(\kw4_ks[4]_INST_0_i_1_n_0 ));
  MUXF7 \kw4_ks[5]_INST_0 
       (.I0(\kw4_ks[5]_INST_0_i_1_n_0 ),
        .I1(kw4_ks_5_sn_1),
        .O(kw4_ks[5]),
        .S(Q[0]));
  LUT6 #(
    .INIT(64'hB8E8FFFFB8E80000)) 
    \kw4_ks[5]_INST_0_i_1 
       (.I0(bcd[11]),
        .I1(bcd[9]),
        .I2(bcd[10]),
        .I3(bcd[8]),
        .I4(Q[1]),
        .I5(\kw4_ks[5]_0 ),
        .O(\kw4_ks[5]_INST_0_i_1_n_0 ));
  MUXF7 \kw4_ks[6]_INST_0 
       (.I0(\kw4_ks[6]_INST_0_i_1_n_0 ),
        .I1(kw4_ks_6_sn_1),
        .O(kw4_ks[6]),
        .S(Q[0]));
  LUT6 #(
    .INIT(64'hAA9CFFFFAA9C0000)) 
    \kw4_ks[6]_INST_0_i_1 
       (.I0(bcd[11]),
        .I1(bcd[10]),
        .I2(bcd[8]),
        .I3(bcd[9]),
        .I4(Q[1]),
        .I5(\kw4_ks[6]_0 ),
        .O(\kw4_ks[6]_INST_0_i_1_n_0 ));
endmodule

(* ORIG_REF_NAME = "bcd_count_1" *) 
module top_demo_0_0_bcd_count_1_2
   (\cnt_reg[3]_0 ,
    \cnt_reg[3]_1 ,
    \cnt_reg[3]_2 ,
    \cnt_reg[3]_3 ,
    \cnt_reg[3]_4 ,
    \cnt_reg[3]_5 ,
    \cnt_reg[3]_6 ,
    Q,
    \kw4_ks[0] ,
    \kw4_ks[3] ,
    \kw4_ks[5] ,
    \kw4_ks[1] ,
    \kw4_ks[2] ,
    \kw4_ks[4] ,
    \kw4_ks[6] ,
    E,
    CLK,
    reset);
  output \cnt_reg[3]_0 ;
  output \cnt_reg[3]_1 ;
  output \cnt_reg[3]_2 ;
  output \cnt_reg[3]_3 ;
  output \cnt_reg[3]_4 ;
  output \cnt_reg[3]_5 ;
  output \cnt_reg[3]_6 ;
  input [0:0]Q;
  input \kw4_ks[0] ;
  input \kw4_ks[3] ;
  input \kw4_ks[5] ;
  input \kw4_ks[1] ;
  input \kw4_ks[2] ;
  input \kw4_ks[4] ;
  input \kw4_ks[6] ;
  input [0:0]E;
  input CLK;
  input reset;

  wire CLK;
  wire [0:0]E;
  wire [0:0]Q;
  wire [15:12]bcd;
  wire \cnt_reg[3]_0 ;
  wire \cnt_reg[3]_1 ;
  wire \cnt_reg[3]_2 ;
  wire \cnt_reg[3]_3 ;
  wire \cnt_reg[3]_4 ;
  wire \cnt_reg[3]_5 ;
  wire \cnt_reg[3]_6 ;
  wire \kw4_ks[0] ;
  wire \kw4_ks[1] ;
  wire \kw4_ks[2] ;
  wire \kw4_ks[3] ;
  wire \kw4_ks[4] ;
  wire \kw4_ks[5] ;
  wire \kw4_ks[6] ;
  wire [3:0]p_0_in;
  wire reset;

  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \cnt[0]_i_1__2 
       (.I0(bcd[12]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h0FB0)) 
    \cnt[1]_i_1__2 
       (.I0(bcd[14]),
        .I1(bcd[15]),
        .I2(bcd[12]),
        .I3(bcd[13]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \cnt[2]_i_1__2 
       (.I0(bcd[14]),
        .I1(bcd[12]),
        .I2(bcd[13]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h6AA2)) 
    \cnt[3]_i_2__2 
       (.I0(bcd[15]),
        .I1(bcd[12]),
        .I2(bcd[13]),
        .I3(bcd[14]),
        .O(p_0_in[3]));
  FDCE \cnt_reg[0] 
       (.C(CLK),
        .CE(E),
        .CLR(reset),
        .D(p_0_in[0]),
        .Q(bcd[12]));
  FDCE \cnt_reg[1] 
       (.C(CLK),
        .CE(E),
        .CLR(reset),
        .D(p_0_in[1]),
        .Q(bcd[13]));
  FDCE \cnt_reg[2] 
       (.C(CLK),
        .CE(E),
        .CLR(reset),
        .D(p_0_in[2]),
        .Q(bcd[14]));
  FDCE \cnt_reg[3] 
       (.C(CLK),
        .CE(E),
        .CLR(reset),
        .D(p_0_in[3]),
        .Q(bcd[15]));
  LUT6 #(
    .INIT(64'hEAA5FFFFEAA50000)) 
    \kw4_ks[0]_INST_0_i_2 
       (.I0(bcd[15]),
        .I1(bcd[12]),
        .I2(bcd[14]),
        .I3(bcd[13]),
        .I4(Q),
        .I5(\kw4_ks[0] ),
        .O(\cnt_reg[3]_0 ));
  LUT6 #(
    .INIT(64'hFB98FFFFFB980000)) 
    \kw4_ks[1]_INST_0_i_2 
       (.I0(bcd[15]),
        .I1(bcd[14]),
        .I2(bcd[12]),
        .I3(bcd[13]),
        .I4(Q),
        .I5(\kw4_ks[1] ),
        .O(\cnt_reg[3]_3 ));
  LUT6 #(
    .INIT(64'hFFB8FFFFFFB80000)) 
    \kw4_ks[2]_INST_0_i_2 
       (.I0(bcd[15]),
        .I1(bcd[13]),
        .I2(bcd[14]),
        .I3(bcd[12]),
        .I4(Q),
        .I5(\kw4_ks[2] ),
        .O(\cnt_reg[3]_4 ));
  LUT6 #(
    .INIT(64'hEA9CFFFFEA9C0000)) 
    \kw4_ks[3]_INST_0_i_2 
       (.I0(bcd[15]),
        .I1(bcd[14]),
        .I2(bcd[12]),
        .I3(bcd[13]),
        .I4(Q),
        .I5(\kw4_ks[3] ),
        .O(\cnt_reg[3]_1 ));
  LUT6 #(
    .INIT(64'hAAB0FFFFAAB00000)) 
    \kw4_ks[4]_INST_0_i_2 
       (.I0(bcd[15]),
        .I1(bcd[12]),
        .I2(bcd[13]),
        .I3(bcd[14]),
        .I4(Q),
        .I5(\kw4_ks[4] ),
        .O(\cnt_reg[3]_5 ));
  LUT6 #(
    .INIT(64'hBE88FFFFBE880000)) 
    \kw4_ks[5]_INST_0_i_2 
       (.I0(bcd[15]),
        .I1(bcd[13]),
        .I2(bcd[12]),
        .I3(bcd[14]),
        .I4(Q),
        .I5(\kw4_ks[5] ),
        .O(\cnt_reg[3]_2 ));
  LUT6 #(
    .INIT(64'hAA9CFFFFAA9C0000)) 
    \kw4_ks[6]_INST_0_i_2 
       (.I0(bcd[15]),
        .I1(bcd[14]),
        .I2(bcd[12]),
        .I3(bcd[13]),
        .I4(Q),
        .I5(\kw4_ks[6] ),
        .O(\cnt_reg[3]_6 ));
endmodule

(* ORIG_REF_NAME = "bcd_count_4" *) 
module top_demo_0_0_bcd_count_4
   (kw4_ks,
    pause,
    Q,
    CLK,
    reset);
  output [6:0]kw4_ks;
  input pause;
  input [1:0]Q;
  input CLK;
  input reset;

  wire CLK;
  wire [1:0]Q;
  wire cnt0_n_1;
  wire cnt0_n_2;
  wire cnt0_n_3;
  wire cnt0_n_4;
  wire cnt0_n_5;
  wire cnt0_n_6;
  wire cnt0_n_7;
  wire cnt1_n_1;
  wire cnt1_n_2;
  wire cnt1_n_3;
  wire cnt1_n_4;
  wire cnt1_n_5;
  wire cnt1_n_6;
  wire cnt1_n_7;
  wire cnt3_n_0;
  wire cnt3_n_1;
  wire cnt3_n_2;
  wire cnt3_n_3;
  wire cnt3_n_4;
  wire cnt3_n_5;
  wire cnt3_n_6;
  wire en3;
  wire [6:0]kw4_ks;
  wire p_0_in_0;
  wire p_1_in;
  wire pause;
  wire reset;

  top_demo_0_0_bcd_count_1 cnt0
       (.CLK(CLK),
        .E(p_0_in_0),
        .\cnt_reg[0]_0 (cnt0_n_1),
        .\cnt_reg[0]_1 (cnt0_n_7),
        .\cnt_reg[1]_0 (cnt0_n_2),
        .\cnt_reg[1]_1 (cnt0_n_3),
        .\cnt_reg[1]_2 (cnt0_n_4),
        .\cnt_reg[1]_3 (cnt0_n_6),
        .\cnt_reg[3]_0 (cnt0_n_5),
        .pause(pause),
        .reset(reset));
  top_demo_0_0_bcd_count_1_0 cnt1
       (.CLK(CLK),
        .E(p_1_in),
        .\cnt_reg[3]_0 (cnt1_n_1),
        .\cnt_reg[3]_1 (cnt1_n_2),
        .\cnt_reg[3]_2 (cnt1_n_3),
        .\cnt_reg[3]_3 (cnt1_n_4),
        .\cnt_reg[3]_4 (cnt1_n_5),
        .\cnt_reg[3]_5 (cnt1_n_6),
        .\cnt_reg[3]_6 (cnt1_n_7),
        .\cnt_reg[3]_7 (p_0_in_0),
        .reset(reset));
  top_demo_0_0_bcd_count_1_1 cnt2
       (.CLK(CLK),
        .E(en3),
        .Q(Q),
        .\cnt_reg[3]_0 (p_1_in),
        .kw4_ks(kw4_ks),
        .\kw4_ks[0]_0 (cnt0_n_1),
        .\kw4_ks[1]_0 (cnt0_n_4),
        .\kw4_ks[2]_0 (cnt0_n_5),
        .\kw4_ks[3]_0 (cnt0_n_6),
        .\kw4_ks[4]_0 (cnt0_n_7),
        .\kw4_ks[5]_0 (cnt0_n_3),
        .\kw4_ks[6]_0 (cnt0_n_2),
        .kw4_ks_0_sp_1(cnt3_n_0),
        .kw4_ks_1_sp_1(cnt3_n_3),
        .kw4_ks_2_sp_1(cnt3_n_4),
        .kw4_ks_3_sp_1(cnt3_n_1),
        .kw4_ks_4_sp_1(cnt3_n_5),
        .kw4_ks_5_sp_1(cnt3_n_2),
        .kw4_ks_6_sp_1(cnt3_n_6),
        .reset(reset));
  top_demo_0_0_bcd_count_1_2 cnt3
       (.CLK(CLK),
        .E(en3),
        .Q(Q[1]),
        .\cnt_reg[3]_0 (cnt3_n_0),
        .\cnt_reg[3]_1 (cnt3_n_1),
        .\cnt_reg[3]_2 (cnt3_n_2),
        .\cnt_reg[3]_3 (cnt3_n_3),
        .\cnt_reg[3]_4 (cnt3_n_4),
        .\cnt_reg[3]_5 (cnt3_n_5),
        .\cnt_reg[3]_6 (cnt3_n_6),
        .\kw4_ks[0] (cnt1_n_1),
        .\kw4_ks[1] (cnt1_n_4),
        .\kw4_ks[2] (cnt1_n_7),
        .\kw4_ks[3] (cnt1_n_2),
        .\kw4_ks[4] (cnt1_n_5),
        .\kw4_ks[5] (cnt1_n_3),
        .\kw4_ks[6] (cnt1_n_6),
        .reset(reset));
endmodule

(* ORIG_REF_NAME = "clk_div" *) 
module top_demo_0_0_clk_div
   (CLK,
    clk_1khz,
    reset,
    pause);
  output CLK;
  input clk_1khz;
  input reset;
  input pause;

  wire CLK;
  wire clk_1khz;
  wire clk_int_i_1_n_0;
  wire [31:0]counter;
  wire \counter[31]_i_10_n_0 ;
  wire \counter[31]_i_11_n_0 ;
  wire \counter[31]_i_3_n_0 ;
  wire \counter[31]_i_4_n_0 ;
  wire \counter[31]_i_5_n_0 ;
  wire \counter[31]_i_6_n_0 ;
  wire \counter[31]_i_8_n_0 ;
  wire \counter[31]_i_9_n_0 ;
  wire [31:0]counter_0;
  wire \counter_reg[12]_i_2_n_0 ;
  wire \counter_reg[12]_i_2_n_1 ;
  wire \counter_reg[12]_i_2_n_2 ;
  wire \counter_reg[12]_i_2_n_3 ;
  wire \counter_reg[16]_i_2_n_0 ;
  wire \counter_reg[16]_i_2_n_1 ;
  wire \counter_reg[16]_i_2_n_2 ;
  wire \counter_reg[16]_i_2_n_3 ;
  wire \counter_reg[20]_i_2_n_0 ;
  wire \counter_reg[20]_i_2_n_1 ;
  wire \counter_reg[20]_i_2_n_2 ;
  wire \counter_reg[20]_i_2_n_3 ;
  wire \counter_reg[24]_i_2_n_0 ;
  wire \counter_reg[24]_i_2_n_1 ;
  wire \counter_reg[24]_i_2_n_2 ;
  wire \counter_reg[24]_i_2_n_3 ;
  wire \counter_reg[28]_i_2_n_0 ;
  wire \counter_reg[28]_i_2_n_1 ;
  wire \counter_reg[28]_i_2_n_2 ;
  wire \counter_reg[28]_i_2_n_3 ;
  wire \counter_reg[31]_i_7_n_2 ;
  wire \counter_reg[31]_i_7_n_3 ;
  wire \counter_reg[4]_i_2_n_0 ;
  wire \counter_reg[4]_i_2_n_1 ;
  wire \counter_reg[4]_i_2_n_2 ;
  wire \counter_reg[4]_i_2_n_3 ;
  wire \counter_reg[8]_i_2_n_0 ;
  wire \counter_reg[8]_i_2_n_1 ;
  wire \counter_reg[8]_i_2_n_2 ;
  wire \counter_reg[8]_i_2_n_3 ;
  wire [31:1]data0;
  wire pause;
  wire reset;
  wire sync;
  wire [3:2]\NLW_counter_reg[31]_i_7_CO_UNCONNECTED ;
  wire [3:3]\NLW_counter_reg[31]_i_7_O_UNCONNECTED ;

  LUT5 #(
    .INIT(32'hFFFE0001)) 
    clk_int_i_1
       (.I0(\counter[31]_i_3_n_0 ),
        .I1(\counter[31]_i_4_n_0 ),
        .I2(\counter[31]_i_5_n_0 ),
        .I3(\counter[31]_i_6_n_0 ),
        .I4(CLK),
        .O(clk_int_i_1_n_0));
  FDPE clk_int_reg
       (.C(clk_1khz),
        .CE(1'b1),
        .D(clk_int_i_1_n_0),
        .PRE(sync),
        .Q(CLK));
  LUT1 #(
    .INIT(2'h1)) 
    \counter[0]_i_1 
       (.I0(counter[0]),
        .O(counter_0[0]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \counter[10]_i_1 
       (.I0(\counter[31]_i_3_n_0 ),
        .I1(\counter[31]_i_4_n_0 ),
        .I2(\counter[31]_i_5_n_0 ),
        .I3(\counter[31]_i_6_n_0 ),
        .I4(data0[10]),
        .O(counter_0[10]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \counter[11]_i_1 
       (.I0(\counter[31]_i_3_n_0 ),
        .I1(\counter[31]_i_4_n_0 ),
        .I2(\counter[31]_i_5_n_0 ),
        .I3(\counter[31]_i_6_n_0 ),
        .I4(data0[11]),
        .O(counter_0[11]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \counter[12]_i_1 
       (.I0(\counter[31]_i_3_n_0 ),
        .I1(\counter[31]_i_4_n_0 ),
        .I2(\counter[31]_i_5_n_0 ),
        .I3(\counter[31]_i_6_n_0 ),
        .I4(data0[12]),
        .O(counter_0[12]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \counter[13]_i_1 
       (.I0(\counter[31]_i_3_n_0 ),
        .I1(\counter[31]_i_4_n_0 ),
        .I2(\counter[31]_i_5_n_0 ),
        .I3(\counter[31]_i_6_n_0 ),
        .I4(data0[13]),
        .O(counter_0[13]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \counter[14]_i_1 
       (.I0(\counter[31]_i_3_n_0 ),
        .I1(\counter[31]_i_4_n_0 ),
        .I2(\counter[31]_i_5_n_0 ),
        .I3(\counter[31]_i_6_n_0 ),
        .I4(data0[14]),
        .O(counter_0[14]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \counter[15]_i_1 
       (.I0(\counter[31]_i_3_n_0 ),
        .I1(\counter[31]_i_4_n_0 ),
        .I2(\counter[31]_i_5_n_0 ),
        .I3(\counter[31]_i_6_n_0 ),
        .I4(data0[15]),
        .O(counter_0[15]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \counter[16]_i_1 
       (.I0(\counter[31]_i_3_n_0 ),
        .I1(\counter[31]_i_4_n_0 ),
        .I2(\counter[31]_i_5_n_0 ),
        .I3(\counter[31]_i_6_n_0 ),
        .I4(data0[16]),
        .O(counter_0[16]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \counter[17]_i_1 
       (.I0(\counter[31]_i_3_n_0 ),
        .I1(\counter[31]_i_4_n_0 ),
        .I2(\counter[31]_i_5_n_0 ),
        .I3(\counter[31]_i_6_n_0 ),
        .I4(data0[17]),
        .O(counter_0[17]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \counter[18]_i_1 
       (.I0(\counter[31]_i_3_n_0 ),
        .I1(\counter[31]_i_4_n_0 ),
        .I2(\counter[31]_i_5_n_0 ),
        .I3(\counter[31]_i_6_n_0 ),
        .I4(data0[18]),
        .O(counter_0[18]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \counter[19]_i_1 
       (.I0(\counter[31]_i_3_n_0 ),
        .I1(\counter[31]_i_4_n_0 ),
        .I2(\counter[31]_i_5_n_0 ),
        .I3(\counter[31]_i_6_n_0 ),
        .I4(data0[19]),
        .O(counter_0[19]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \counter[1]_i_1 
       (.I0(\counter[31]_i_3_n_0 ),
        .I1(\counter[31]_i_4_n_0 ),
        .I2(\counter[31]_i_5_n_0 ),
        .I3(\counter[31]_i_6_n_0 ),
        .I4(data0[1]),
        .O(counter_0[1]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \counter[20]_i_1 
       (.I0(\counter[31]_i_3_n_0 ),
        .I1(\counter[31]_i_4_n_0 ),
        .I2(\counter[31]_i_5_n_0 ),
        .I3(\counter[31]_i_6_n_0 ),
        .I4(data0[20]),
        .O(counter_0[20]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \counter[21]_i_1 
       (.I0(\counter[31]_i_3_n_0 ),
        .I1(\counter[31]_i_4_n_0 ),
        .I2(\counter[31]_i_5_n_0 ),
        .I3(\counter[31]_i_6_n_0 ),
        .I4(data0[21]),
        .O(counter_0[21]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \counter[22]_i_1 
       (.I0(\counter[31]_i_3_n_0 ),
        .I1(\counter[31]_i_4_n_0 ),
        .I2(\counter[31]_i_5_n_0 ),
        .I3(\counter[31]_i_6_n_0 ),
        .I4(data0[22]),
        .O(counter_0[22]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \counter[23]_i_1 
       (.I0(\counter[31]_i_3_n_0 ),
        .I1(\counter[31]_i_4_n_0 ),
        .I2(\counter[31]_i_5_n_0 ),
        .I3(\counter[31]_i_6_n_0 ),
        .I4(data0[23]),
        .O(counter_0[23]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \counter[24]_i_1 
       (.I0(\counter[31]_i_3_n_0 ),
        .I1(\counter[31]_i_4_n_0 ),
        .I2(\counter[31]_i_5_n_0 ),
        .I3(\counter[31]_i_6_n_0 ),
        .I4(data0[24]),
        .O(counter_0[24]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \counter[25]_i_1 
       (.I0(\counter[31]_i_3_n_0 ),
        .I1(\counter[31]_i_4_n_0 ),
        .I2(\counter[31]_i_5_n_0 ),
        .I3(\counter[31]_i_6_n_0 ),
        .I4(data0[25]),
        .O(counter_0[25]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \counter[26]_i_1 
       (.I0(\counter[31]_i_3_n_0 ),
        .I1(\counter[31]_i_4_n_0 ),
        .I2(\counter[31]_i_5_n_0 ),
        .I3(\counter[31]_i_6_n_0 ),
        .I4(data0[26]),
        .O(counter_0[26]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \counter[27]_i_1 
       (.I0(\counter[31]_i_3_n_0 ),
        .I1(\counter[31]_i_4_n_0 ),
        .I2(\counter[31]_i_5_n_0 ),
        .I3(\counter[31]_i_6_n_0 ),
        .I4(data0[27]),
        .O(counter_0[27]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \counter[28]_i_1 
       (.I0(\counter[31]_i_3_n_0 ),
        .I1(\counter[31]_i_4_n_0 ),
        .I2(\counter[31]_i_5_n_0 ),
        .I3(\counter[31]_i_6_n_0 ),
        .I4(data0[28]),
        .O(counter_0[28]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \counter[29]_i_1 
       (.I0(\counter[31]_i_3_n_0 ),
        .I1(\counter[31]_i_4_n_0 ),
        .I2(\counter[31]_i_5_n_0 ),
        .I3(\counter[31]_i_6_n_0 ),
        .I4(data0[29]),
        .O(counter_0[29]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \counter[2]_i_1 
       (.I0(\counter[31]_i_3_n_0 ),
        .I1(\counter[31]_i_4_n_0 ),
        .I2(\counter[31]_i_5_n_0 ),
        .I3(\counter[31]_i_6_n_0 ),
        .I4(data0[2]),
        .O(counter_0[2]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \counter[30]_i_1 
       (.I0(\counter[31]_i_3_n_0 ),
        .I1(\counter[31]_i_4_n_0 ),
        .I2(\counter[31]_i_5_n_0 ),
        .I3(\counter[31]_i_6_n_0 ),
        .I4(data0[30]),
        .O(counter_0[30]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \counter[31]_i_1 
       (.I0(\counter[31]_i_3_n_0 ),
        .I1(\counter[31]_i_4_n_0 ),
        .I2(\counter[31]_i_5_n_0 ),
        .I3(\counter[31]_i_6_n_0 ),
        .I4(data0[31]),
        .O(counter_0[31]));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \counter[31]_i_10 
       (.I0(counter[5]),
        .I1(counter[4]),
        .I2(counter[7]),
        .I3(counter[6]),
        .O(\counter[31]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \counter[31]_i_11 
       (.I0(counter[13]),
        .I1(counter[12]),
        .I2(counter[15]),
        .I3(counter[14]),
        .O(\counter[31]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \counter[31]_i_2 
       (.I0(reset),
        .I1(pause),
        .O(sync));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \counter[31]_i_3 
       (.I0(counter[18]),
        .I1(counter[19]),
        .I2(counter[16]),
        .I3(counter[17]),
        .I4(\counter[31]_i_8_n_0 ),
        .O(\counter[31]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \counter[31]_i_4 
       (.I0(counter[26]),
        .I1(counter[27]),
        .I2(counter[24]),
        .I3(counter[25]),
        .I4(\counter[31]_i_9_n_0 ),
        .O(\counter[31]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFEFFF)) 
    \counter[31]_i_5 
       (.I0(counter[2]),
        .I1(counter[3]),
        .I2(counter[0]),
        .I3(counter[1]),
        .I4(\counter[31]_i_10_n_0 ),
        .O(\counter[31]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFEFF)) 
    \counter[31]_i_6 
       (.I0(counter[10]),
        .I1(counter[11]),
        .I2(counter[9]),
        .I3(counter[8]),
        .I4(\counter[31]_i_11_n_0 ),
        .O(\counter[31]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \counter[31]_i_8 
       (.I0(counter[21]),
        .I1(counter[20]),
        .I2(counter[23]),
        .I3(counter[22]),
        .O(\counter[31]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \counter[31]_i_9 
       (.I0(counter[29]),
        .I1(counter[28]),
        .I2(counter[31]),
        .I3(counter[30]),
        .O(\counter[31]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \counter[3]_i_1 
       (.I0(\counter[31]_i_3_n_0 ),
        .I1(\counter[31]_i_4_n_0 ),
        .I2(\counter[31]_i_5_n_0 ),
        .I3(\counter[31]_i_6_n_0 ),
        .I4(data0[3]),
        .O(counter_0[3]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \counter[4]_i_1 
       (.I0(\counter[31]_i_3_n_0 ),
        .I1(\counter[31]_i_4_n_0 ),
        .I2(\counter[31]_i_5_n_0 ),
        .I3(\counter[31]_i_6_n_0 ),
        .I4(data0[4]),
        .O(counter_0[4]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \counter[5]_i_1 
       (.I0(\counter[31]_i_3_n_0 ),
        .I1(\counter[31]_i_4_n_0 ),
        .I2(\counter[31]_i_5_n_0 ),
        .I3(\counter[31]_i_6_n_0 ),
        .I4(data0[5]),
        .O(counter_0[5]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \counter[6]_i_1 
       (.I0(\counter[31]_i_3_n_0 ),
        .I1(\counter[31]_i_4_n_0 ),
        .I2(\counter[31]_i_5_n_0 ),
        .I3(\counter[31]_i_6_n_0 ),
        .I4(data0[6]),
        .O(counter_0[6]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \counter[7]_i_1 
       (.I0(\counter[31]_i_3_n_0 ),
        .I1(\counter[31]_i_4_n_0 ),
        .I2(\counter[31]_i_5_n_0 ),
        .I3(\counter[31]_i_6_n_0 ),
        .I4(data0[7]),
        .O(counter_0[7]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \counter[8]_i_1 
       (.I0(\counter[31]_i_3_n_0 ),
        .I1(\counter[31]_i_4_n_0 ),
        .I2(\counter[31]_i_5_n_0 ),
        .I3(\counter[31]_i_6_n_0 ),
        .I4(data0[8]),
        .O(counter_0[8]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \counter[9]_i_1 
       (.I0(\counter[31]_i_3_n_0 ),
        .I1(\counter[31]_i_4_n_0 ),
        .I2(\counter[31]_i_5_n_0 ),
        .I3(\counter[31]_i_6_n_0 ),
        .I4(data0[9]),
        .O(counter_0[9]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[0] 
       (.C(clk_1khz),
        .CE(1'b1),
        .CLR(sync),
        .D(counter_0[0]),
        .Q(counter[0]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[10] 
       (.C(clk_1khz),
        .CE(1'b1),
        .CLR(sync),
        .D(counter_0[10]),
        .Q(counter[10]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[11] 
       (.C(clk_1khz),
        .CE(1'b1),
        .CLR(sync),
        .D(counter_0[11]),
        .Q(counter[11]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[12] 
       (.C(clk_1khz),
        .CE(1'b1),
        .CLR(sync),
        .D(counter_0[12]),
        .Q(counter[12]));
  CARRY4 \counter_reg[12]_i_2 
       (.CI(\counter_reg[8]_i_2_n_0 ),
        .CO({\counter_reg[12]_i_2_n_0 ,\counter_reg[12]_i_2_n_1 ,\counter_reg[12]_i_2_n_2 ,\counter_reg[12]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[12:9]),
        .S(counter[12:9]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[13] 
       (.C(clk_1khz),
        .CE(1'b1),
        .CLR(sync),
        .D(counter_0[13]),
        .Q(counter[13]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[14] 
       (.C(clk_1khz),
        .CE(1'b1),
        .CLR(sync),
        .D(counter_0[14]),
        .Q(counter[14]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[15] 
       (.C(clk_1khz),
        .CE(1'b1),
        .CLR(sync),
        .D(counter_0[15]),
        .Q(counter[15]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[16] 
       (.C(clk_1khz),
        .CE(1'b1),
        .CLR(sync),
        .D(counter_0[16]),
        .Q(counter[16]));
  CARRY4 \counter_reg[16]_i_2 
       (.CI(\counter_reg[12]_i_2_n_0 ),
        .CO({\counter_reg[16]_i_2_n_0 ,\counter_reg[16]_i_2_n_1 ,\counter_reg[16]_i_2_n_2 ,\counter_reg[16]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[16:13]),
        .S(counter[16:13]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[17] 
       (.C(clk_1khz),
        .CE(1'b1),
        .CLR(sync),
        .D(counter_0[17]),
        .Q(counter[17]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[18] 
       (.C(clk_1khz),
        .CE(1'b1),
        .CLR(sync),
        .D(counter_0[18]),
        .Q(counter[18]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[19] 
       (.C(clk_1khz),
        .CE(1'b1),
        .CLR(sync),
        .D(counter_0[19]),
        .Q(counter[19]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[1] 
       (.C(clk_1khz),
        .CE(1'b1),
        .CLR(sync),
        .D(counter_0[1]),
        .Q(counter[1]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[20] 
       (.C(clk_1khz),
        .CE(1'b1),
        .CLR(sync),
        .D(counter_0[20]),
        .Q(counter[20]));
  CARRY4 \counter_reg[20]_i_2 
       (.CI(\counter_reg[16]_i_2_n_0 ),
        .CO({\counter_reg[20]_i_2_n_0 ,\counter_reg[20]_i_2_n_1 ,\counter_reg[20]_i_2_n_2 ,\counter_reg[20]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[20:17]),
        .S(counter[20:17]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[21] 
       (.C(clk_1khz),
        .CE(1'b1),
        .CLR(sync),
        .D(counter_0[21]),
        .Q(counter[21]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[22] 
       (.C(clk_1khz),
        .CE(1'b1),
        .CLR(sync),
        .D(counter_0[22]),
        .Q(counter[22]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[23] 
       (.C(clk_1khz),
        .CE(1'b1),
        .CLR(sync),
        .D(counter_0[23]),
        .Q(counter[23]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[24] 
       (.C(clk_1khz),
        .CE(1'b1),
        .CLR(sync),
        .D(counter_0[24]),
        .Q(counter[24]));
  CARRY4 \counter_reg[24]_i_2 
       (.CI(\counter_reg[20]_i_2_n_0 ),
        .CO({\counter_reg[24]_i_2_n_0 ,\counter_reg[24]_i_2_n_1 ,\counter_reg[24]_i_2_n_2 ,\counter_reg[24]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[24:21]),
        .S(counter[24:21]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[25] 
       (.C(clk_1khz),
        .CE(1'b1),
        .CLR(sync),
        .D(counter_0[25]),
        .Q(counter[25]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[26] 
       (.C(clk_1khz),
        .CE(1'b1),
        .CLR(sync),
        .D(counter_0[26]),
        .Q(counter[26]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[27] 
       (.C(clk_1khz),
        .CE(1'b1),
        .CLR(sync),
        .D(counter_0[27]),
        .Q(counter[27]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[28] 
       (.C(clk_1khz),
        .CE(1'b1),
        .CLR(sync),
        .D(counter_0[28]),
        .Q(counter[28]));
  CARRY4 \counter_reg[28]_i_2 
       (.CI(\counter_reg[24]_i_2_n_0 ),
        .CO({\counter_reg[28]_i_2_n_0 ,\counter_reg[28]_i_2_n_1 ,\counter_reg[28]_i_2_n_2 ,\counter_reg[28]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[28:25]),
        .S(counter[28:25]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[29] 
       (.C(clk_1khz),
        .CE(1'b1),
        .CLR(sync),
        .D(counter_0[29]),
        .Q(counter[29]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[2] 
       (.C(clk_1khz),
        .CE(1'b1),
        .CLR(sync),
        .D(counter_0[2]),
        .Q(counter[2]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[30] 
       (.C(clk_1khz),
        .CE(1'b1),
        .CLR(sync),
        .D(counter_0[30]),
        .Q(counter[30]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[31] 
       (.C(clk_1khz),
        .CE(1'b1),
        .CLR(sync),
        .D(counter_0[31]),
        .Q(counter[31]));
  CARRY4 \counter_reg[31]_i_7 
       (.CI(\counter_reg[28]_i_2_n_0 ),
        .CO({\NLW_counter_reg[31]_i_7_CO_UNCONNECTED [3:2],\counter_reg[31]_i_7_n_2 ,\counter_reg[31]_i_7_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_counter_reg[31]_i_7_O_UNCONNECTED [3],data0[31:29]}),
        .S({1'b0,counter[31:29]}));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[3] 
       (.C(clk_1khz),
        .CE(1'b1),
        .CLR(sync),
        .D(counter_0[3]),
        .Q(counter[3]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[4] 
       (.C(clk_1khz),
        .CE(1'b1),
        .CLR(sync),
        .D(counter_0[4]),
        .Q(counter[4]));
  CARRY4 \counter_reg[4]_i_2 
       (.CI(1'b0),
        .CO({\counter_reg[4]_i_2_n_0 ,\counter_reg[4]_i_2_n_1 ,\counter_reg[4]_i_2_n_2 ,\counter_reg[4]_i_2_n_3 }),
        .CYINIT(counter[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[4:1]),
        .S(counter[4:1]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[5] 
       (.C(clk_1khz),
        .CE(1'b1),
        .CLR(sync),
        .D(counter_0[5]),
        .Q(counter[5]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[6] 
       (.C(clk_1khz),
        .CE(1'b1),
        .CLR(sync),
        .D(counter_0[6]),
        .Q(counter[6]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[7] 
       (.C(clk_1khz),
        .CE(1'b1),
        .CLR(sync),
        .D(counter_0[7]),
        .Q(counter[7]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[8] 
       (.C(clk_1khz),
        .CE(1'b1),
        .CLR(sync),
        .D(counter_0[8]),
        .Q(counter[8]));
  CARRY4 \counter_reg[8]_i_2 
       (.CI(\counter_reg[4]_i_2_n_0 ),
        .CO({\counter_reg[8]_i_2_n_0 ,\counter_reg[8]_i_2_n_1 ,\counter_reg[8]_i_2_n_2 ,\counter_reg[8]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[8:5]),
        .S(counter[8:5]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[9] 
       (.C(clk_1khz),
        .CE(1'b1),
        .CLR(sync),
        .D(counter_0[9]),
        .Q(counter[9]));
endmodule

(* ORIG_REF_NAME = "demo" *) 
module top_demo_0_0_demo
   (kw4_ks,
    kw4_as,
    clk_1khz,
    reset,
    pause);
  output [6:0]kw4_ks;
  output [3:0]kw4_as;
  input clk_1khz;
  input reset;
  input pause;

  wire [1:0]active;
  wire clk_1khz;
  wire clk_int;
  wire [3:0]kw4_as;
  wire [6:0]kw4_ks;
  wire pause;
  wire reset;

  top_demo_0_0_bcd_count_4 bcd_count_4_0
       (.CLK(clk_int),
        .Q(active),
        .kw4_ks(kw4_ks),
        .pause(pause),
        .reset(reset));
  top_demo_0_0_clk_div clk_1hz_gen
       (.CLK(clk_int),
        .clk_1khz(clk_1khz),
        .pause(pause),
        .reset(reset));
  top_demo_0_0_kw4_281_drv kw4_281_drv_0
       (.Q(active),
        .clk_1khz(clk_1khz),
        .kw4_as(kw4_as),
        .reset(reset));
endmodule

(* ORIG_REF_NAME = "kw4_281_drv" *) 
module top_demo_0_0_kw4_281_drv
   (Q,
    kw4_as,
    reset,
    clk_1khz);
  output [1:0]Q;
  output [3:0]kw4_as;
  input reset;
  input clk_1khz;

  wire [1:0]Q;
  wire \active[0]_i_1_n_0 ;
  wire \active[1]_i_1_n_0 ;
  wire clk_1khz;
  wire [3:0]kw4_as;
  wire reset;

  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \active[0]_i_1 
       (.I0(Q[0]),
        .O(\active[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \active[1]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\active[1]_i_1_n_0 ));
  FDCE \active_reg[0] 
       (.C(clk_1khz),
        .CE(1'b1),
        .CLR(reset),
        .D(\active[0]_i_1_n_0 ),
        .Q(Q[0]));
  FDCE \active_reg[1] 
       (.C(clk_1khz),
        .CE(1'b1),
        .CLR(reset),
        .D(\active[1]_i_1_n_0 ),
        .Q(Q[1]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \kw4_as[0]_INST_0 
       (.I0(Q[1]),
        .I1(reset),
        .I2(Q[0]),
        .O(kw4_as[0]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \kw4_as[1]_INST_0 
       (.I0(Q[1]),
        .I1(reset),
        .I2(Q[0]),
        .O(kw4_as[1]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \kw4_as[2]_INST_0 
       (.I0(reset),
        .I1(Q[1]),
        .I2(Q[0]),
        .O(kw4_as[2]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \kw4_as[3]_INST_0 
       (.I0(reset),
        .I1(Q[1]),
        .I2(Q[0]),
        .O(kw4_as[3]));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
