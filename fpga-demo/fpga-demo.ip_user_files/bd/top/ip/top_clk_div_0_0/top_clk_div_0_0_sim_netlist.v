// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (lin64) Build 2552052 Fri May 24 14:47:09 MDT 2019
// Date        : Wed Sep 18 10:58:43 2019
// Host        : hubble running 64-bit Ubuntu 18.04.3 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/pietro/projects/develer/corsi/vhdl-techlab-2019/fpga-demo/fpga-demo.srcs/sources_1/bd/top/ip/top_clk_div_0_0/top_clk_div_0_0_sim_netlist.v
// Design      : top_clk_div_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "top_clk_div_0_0,clk_div,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "clk_div,Vivado 2019.1" *) 
(* NotValidForBitStream *)
module top_clk_div_0_0
   (clk_in,
    rst,
    clk_out);
  input clk_in;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 rst RST" *) (* x_interface_parameter = "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rst;
  output clk_out;

  wire clk_in;
  wire clk_out;
  wire rst;

  top_clk_div_0_0_clk_div U0
       (.clk_in(clk_in),
        .clk_out(clk_out),
        .rst(rst));
endmodule

(* ORIG_REF_NAME = "clk_div" *) 
module top_clk_div_0_0_clk_div
   (clk_out,
    clk_in,
    rst);
  output clk_out;
  input clk_in;
  input rst;

  wire clk_in;
  wire clk_int_i_1_n_0;
  wire clk_int_i_2_n_0;
  wire clk_int_i_3_n_0;
  wire clk_int_i_4_n_0;
  wire clk_int_i_5_n_0;
  wire clk_int_i_6_n_0;
  wire clk_int_i_7_n_0;
  wire clk_int_i_8_n_0;
  wire clk_int_i_9_n_0;
  wire clk_out;
  wire [31:0]counter;
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
  wire \counter_reg[31]_i_2_n_2 ;
  wire \counter_reg[31]_i_2_n_3 ;
  wire \counter_reg[4]_i_2_n_0 ;
  wire \counter_reg[4]_i_2_n_1 ;
  wire \counter_reg[4]_i_2_n_2 ;
  wire \counter_reg[4]_i_2_n_3 ;
  wire \counter_reg[8]_i_2_n_0 ;
  wire \counter_reg[8]_i_2_n_1 ;
  wire \counter_reg[8]_i_2_n_2 ;
  wire \counter_reg[8]_i_2_n_3 ;
  wire [31:1]data0;
  wire rst;
  wire [3:2]\NLW_counter_reg[31]_i_2_CO_UNCONNECTED ;
  wire [3:3]\NLW_counter_reg[31]_i_2_O_UNCONNECTED ;

  LUT5 #(
    .INIT(32'hFFFE0001)) 
    clk_int_i_1
       (.I0(clk_int_i_2_n_0),
        .I1(clk_int_i_3_n_0),
        .I2(clk_int_i_4_n_0),
        .I3(clk_int_i_5_n_0),
        .I4(clk_out),
        .O(clk_int_i_1_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    clk_int_i_2
       (.I0(counter[18]),
        .I1(counter[19]),
        .I2(counter[16]),
        .I3(counter[17]),
        .I4(clk_int_i_6_n_0),
        .O(clk_int_i_2_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    clk_int_i_3
       (.I0(counter[26]),
        .I1(counter[27]),
        .I2(counter[24]),
        .I3(counter[25]),
        .I4(clk_int_i_7_n_0),
        .O(clk_int_i_3_n_0));
  LUT5 #(
    .INIT(32'hFFFF7FFF)) 
    clk_int_i_4
       (.I0(counter[2]),
        .I1(counter[3]),
        .I2(counter[0]),
        .I3(counter[1]),
        .I4(clk_int_i_8_n_0),
        .O(clk_int_i_4_n_0));
  LUT5 #(
    .INIT(32'hFFFFEFFF)) 
    clk_int_i_5
       (.I0(counter[10]),
        .I1(counter[11]),
        .I2(counter[8]),
        .I3(counter[9]),
        .I4(clk_int_i_9_n_0),
        .O(clk_int_i_5_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    clk_int_i_6
       (.I0(counter[21]),
        .I1(counter[20]),
        .I2(counter[23]),
        .I3(counter[22]),
        .O(clk_int_i_6_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    clk_int_i_7
       (.I0(counter[29]),
        .I1(counter[28]),
        .I2(counter[31]),
        .I3(counter[30]),
        .O(clk_int_i_7_n_0));
  LUT4 #(
    .INIT(16'hFFEF)) 
    clk_int_i_8
       (.I0(counter[5]),
        .I1(counter[4]),
        .I2(counter[6]),
        .I3(counter[7]),
        .O(clk_int_i_8_n_0));
  LUT4 #(
    .INIT(16'hEFFF)) 
    clk_int_i_9
       (.I0(counter[13]),
        .I1(counter[12]),
        .I2(counter[15]),
        .I3(counter[14]),
        .O(clk_int_i_9_n_0));
  FDPE clk_int_reg
       (.C(clk_in),
        .CE(1'b1),
        .D(clk_int_i_1_n_0),
        .PRE(rst),
        .Q(clk_out));
  LUT1 #(
    .INIT(2'h1)) 
    \counter[0]_i_1 
       (.I0(counter[0]),
        .O(counter_0[0]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \counter[10]_i_1 
       (.I0(clk_int_i_2_n_0),
        .I1(clk_int_i_3_n_0),
        .I2(clk_int_i_4_n_0),
        .I3(clk_int_i_5_n_0),
        .I4(data0[10]),
        .O(counter_0[10]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \counter[11]_i_1 
       (.I0(clk_int_i_2_n_0),
        .I1(clk_int_i_3_n_0),
        .I2(clk_int_i_4_n_0),
        .I3(clk_int_i_5_n_0),
        .I4(data0[11]),
        .O(counter_0[11]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \counter[12]_i_1 
       (.I0(clk_int_i_2_n_0),
        .I1(clk_int_i_3_n_0),
        .I2(clk_int_i_4_n_0),
        .I3(clk_int_i_5_n_0),
        .I4(data0[12]),
        .O(counter_0[12]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \counter[13]_i_1 
       (.I0(clk_int_i_2_n_0),
        .I1(clk_int_i_3_n_0),
        .I2(clk_int_i_4_n_0),
        .I3(clk_int_i_5_n_0),
        .I4(data0[13]),
        .O(counter_0[13]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \counter[14]_i_1 
       (.I0(clk_int_i_2_n_0),
        .I1(clk_int_i_3_n_0),
        .I2(clk_int_i_4_n_0),
        .I3(clk_int_i_5_n_0),
        .I4(data0[14]),
        .O(counter_0[14]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \counter[15]_i_1 
       (.I0(clk_int_i_2_n_0),
        .I1(clk_int_i_3_n_0),
        .I2(clk_int_i_4_n_0),
        .I3(clk_int_i_5_n_0),
        .I4(data0[15]),
        .O(counter_0[15]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \counter[16]_i_1 
       (.I0(clk_int_i_2_n_0),
        .I1(clk_int_i_3_n_0),
        .I2(clk_int_i_4_n_0),
        .I3(clk_int_i_5_n_0),
        .I4(data0[16]),
        .O(counter_0[16]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \counter[17]_i_1 
       (.I0(clk_int_i_2_n_0),
        .I1(clk_int_i_3_n_0),
        .I2(clk_int_i_4_n_0),
        .I3(clk_int_i_5_n_0),
        .I4(data0[17]),
        .O(counter_0[17]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \counter[18]_i_1 
       (.I0(clk_int_i_2_n_0),
        .I1(clk_int_i_3_n_0),
        .I2(clk_int_i_4_n_0),
        .I3(clk_int_i_5_n_0),
        .I4(data0[18]),
        .O(counter_0[18]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \counter[19]_i_1 
       (.I0(clk_int_i_2_n_0),
        .I1(clk_int_i_3_n_0),
        .I2(clk_int_i_4_n_0),
        .I3(clk_int_i_5_n_0),
        .I4(data0[19]),
        .O(counter_0[19]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \counter[1]_i_1 
       (.I0(clk_int_i_2_n_0),
        .I1(clk_int_i_3_n_0),
        .I2(clk_int_i_4_n_0),
        .I3(clk_int_i_5_n_0),
        .I4(data0[1]),
        .O(counter_0[1]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \counter[20]_i_1 
       (.I0(clk_int_i_2_n_0),
        .I1(clk_int_i_3_n_0),
        .I2(clk_int_i_4_n_0),
        .I3(clk_int_i_5_n_0),
        .I4(data0[20]),
        .O(counter_0[20]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \counter[21]_i_1 
       (.I0(clk_int_i_2_n_0),
        .I1(clk_int_i_3_n_0),
        .I2(clk_int_i_4_n_0),
        .I3(clk_int_i_5_n_0),
        .I4(data0[21]),
        .O(counter_0[21]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \counter[22]_i_1 
       (.I0(clk_int_i_2_n_0),
        .I1(clk_int_i_3_n_0),
        .I2(clk_int_i_4_n_0),
        .I3(clk_int_i_5_n_0),
        .I4(data0[22]),
        .O(counter_0[22]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \counter[23]_i_1 
       (.I0(clk_int_i_2_n_0),
        .I1(clk_int_i_3_n_0),
        .I2(clk_int_i_4_n_0),
        .I3(clk_int_i_5_n_0),
        .I4(data0[23]),
        .O(counter_0[23]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \counter[24]_i_1 
       (.I0(clk_int_i_2_n_0),
        .I1(clk_int_i_3_n_0),
        .I2(clk_int_i_4_n_0),
        .I3(clk_int_i_5_n_0),
        .I4(data0[24]),
        .O(counter_0[24]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \counter[25]_i_1 
       (.I0(clk_int_i_2_n_0),
        .I1(clk_int_i_3_n_0),
        .I2(clk_int_i_4_n_0),
        .I3(clk_int_i_5_n_0),
        .I4(data0[25]),
        .O(counter_0[25]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \counter[26]_i_1 
       (.I0(clk_int_i_2_n_0),
        .I1(clk_int_i_3_n_0),
        .I2(clk_int_i_4_n_0),
        .I3(clk_int_i_5_n_0),
        .I4(data0[26]),
        .O(counter_0[26]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \counter[27]_i_1 
       (.I0(clk_int_i_2_n_0),
        .I1(clk_int_i_3_n_0),
        .I2(clk_int_i_4_n_0),
        .I3(clk_int_i_5_n_0),
        .I4(data0[27]),
        .O(counter_0[27]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \counter[28]_i_1 
       (.I0(clk_int_i_2_n_0),
        .I1(clk_int_i_3_n_0),
        .I2(clk_int_i_4_n_0),
        .I3(clk_int_i_5_n_0),
        .I4(data0[28]),
        .O(counter_0[28]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \counter[29]_i_1 
       (.I0(clk_int_i_2_n_0),
        .I1(clk_int_i_3_n_0),
        .I2(clk_int_i_4_n_0),
        .I3(clk_int_i_5_n_0),
        .I4(data0[29]),
        .O(counter_0[29]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \counter[2]_i_1 
       (.I0(clk_int_i_2_n_0),
        .I1(clk_int_i_3_n_0),
        .I2(clk_int_i_4_n_0),
        .I3(clk_int_i_5_n_0),
        .I4(data0[2]),
        .O(counter_0[2]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \counter[30]_i_1 
       (.I0(clk_int_i_2_n_0),
        .I1(clk_int_i_3_n_0),
        .I2(clk_int_i_4_n_0),
        .I3(clk_int_i_5_n_0),
        .I4(data0[30]),
        .O(counter_0[30]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \counter[31]_i_1 
       (.I0(clk_int_i_2_n_0),
        .I1(clk_int_i_3_n_0),
        .I2(clk_int_i_4_n_0),
        .I3(clk_int_i_5_n_0),
        .I4(data0[31]),
        .O(counter_0[31]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \counter[3]_i_1 
       (.I0(clk_int_i_2_n_0),
        .I1(clk_int_i_3_n_0),
        .I2(clk_int_i_4_n_0),
        .I3(clk_int_i_5_n_0),
        .I4(data0[3]),
        .O(counter_0[3]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \counter[4]_i_1 
       (.I0(clk_int_i_2_n_0),
        .I1(clk_int_i_3_n_0),
        .I2(clk_int_i_4_n_0),
        .I3(clk_int_i_5_n_0),
        .I4(data0[4]),
        .O(counter_0[4]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \counter[5]_i_1 
       (.I0(clk_int_i_2_n_0),
        .I1(clk_int_i_3_n_0),
        .I2(clk_int_i_4_n_0),
        .I3(clk_int_i_5_n_0),
        .I4(data0[5]),
        .O(counter_0[5]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \counter[6]_i_1 
       (.I0(clk_int_i_2_n_0),
        .I1(clk_int_i_3_n_0),
        .I2(clk_int_i_4_n_0),
        .I3(clk_int_i_5_n_0),
        .I4(data0[6]),
        .O(counter_0[6]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \counter[7]_i_1 
       (.I0(clk_int_i_2_n_0),
        .I1(clk_int_i_3_n_0),
        .I2(clk_int_i_4_n_0),
        .I3(clk_int_i_5_n_0),
        .I4(data0[7]),
        .O(counter_0[7]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \counter[8]_i_1 
       (.I0(clk_int_i_2_n_0),
        .I1(clk_int_i_3_n_0),
        .I2(clk_int_i_4_n_0),
        .I3(clk_int_i_5_n_0),
        .I4(data0[8]),
        .O(counter_0[8]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \counter[9]_i_1 
       (.I0(clk_int_i_2_n_0),
        .I1(clk_int_i_3_n_0),
        .I2(clk_int_i_4_n_0),
        .I3(clk_int_i_5_n_0),
        .I4(data0[9]),
        .O(counter_0[9]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[0] 
       (.C(clk_in),
        .CE(1'b1),
        .CLR(rst),
        .D(counter_0[0]),
        .Q(counter[0]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[10] 
       (.C(clk_in),
        .CE(1'b1),
        .CLR(rst),
        .D(counter_0[10]),
        .Q(counter[10]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[11] 
       (.C(clk_in),
        .CE(1'b1),
        .CLR(rst),
        .D(counter_0[11]),
        .Q(counter[11]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[12] 
       (.C(clk_in),
        .CE(1'b1),
        .CLR(rst),
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
       (.C(clk_in),
        .CE(1'b1),
        .CLR(rst),
        .D(counter_0[13]),
        .Q(counter[13]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[14] 
       (.C(clk_in),
        .CE(1'b1),
        .CLR(rst),
        .D(counter_0[14]),
        .Q(counter[14]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[15] 
       (.C(clk_in),
        .CE(1'b1),
        .CLR(rst),
        .D(counter_0[15]),
        .Q(counter[15]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[16] 
       (.C(clk_in),
        .CE(1'b1),
        .CLR(rst),
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
       (.C(clk_in),
        .CE(1'b1),
        .CLR(rst),
        .D(counter_0[17]),
        .Q(counter[17]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[18] 
       (.C(clk_in),
        .CE(1'b1),
        .CLR(rst),
        .D(counter_0[18]),
        .Q(counter[18]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[19] 
       (.C(clk_in),
        .CE(1'b1),
        .CLR(rst),
        .D(counter_0[19]),
        .Q(counter[19]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[1] 
       (.C(clk_in),
        .CE(1'b1),
        .CLR(rst),
        .D(counter_0[1]),
        .Q(counter[1]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[20] 
       (.C(clk_in),
        .CE(1'b1),
        .CLR(rst),
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
       (.C(clk_in),
        .CE(1'b1),
        .CLR(rst),
        .D(counter_0[21]),
        .Q(counter[21]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[22] 
       (.C(clk_in),
        .CE(1'b1),
        .CLR(rst),
        .D(counter_0[22]),
        .Q(counter[22]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[23] 
       (.C(clk_in),
        .CE(1'b1),
        .CLR(rst),
        .D(counter_0[23]),
        .Q(counter[23]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[24] 
       (.C(clk_in),
        .CE(1'b1),
        .CLR(rst),
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
       (.C(clk_in),
        .CE(1'b1),
        .CLR(rst),
        .D(counter_0[25]),
        .Q(counter[25]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[26] 
       (.C(clk_in),
        .CE(1'b1),
        .CLR(rst),
        .D(counter_0[26]),
        .Q(counter[26]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[27] 
       (.C(clk_in),
        .CE(1'b1),
        .CLR(rst),
        .D(counter_0[27]),
        .Q(counter[27]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[28] 
       (.C(clk_in),
        .CE(1'b1),
        .CLR(rst),
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
       (.C(clk_in),
        .CE(1'b1),
        .CLR(rst),
        .D(counter_0[29]),
        .Q(counter[29]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[2] 
       (.C(clk_in),
        .CE(1'b1),
        .CLR(rst),
        .D(counter_0[2]),
        .Q(counter[2]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[30] 
       (.C(clk_in),
        .CE(1'b1),
        .CLR(rst),
        .D(counter_0[30]),
        .Q(counter[30]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[31] 
       (.C(clk_in),
        .CE(1'b1),
        .CLR(rst),
        .D(counter_0[31]),
        .Q(counter[31]));
  CARRY4 \counter_reg[31]_i_2 
       (.CI(\counter_reg[28]_i_2_n_0 ),
        .CO({\NLW_counter_reg[31]_i_2_CO_UNCONNECTED [3:2],\counter_reg[31]_i_2_n_2 ,\counter_reg[31]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_counter_reg[31]_i_2_O_UNCONNECTED [3],data0[31:29]}),
        .S({1'b0,counter[31:29]}));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[3] 
       (.C(clk_in),
        .CE(1'b1),
        .CLR(rst),
        .D(counter_0[3]),
        .Q(counter[3]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[4] 
       (.C(clk_in),
        .CE(1'b1),
        .CLR(rst),
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
       (.C(clk_in),
        .CE(1'b1),
        .CLR(rst),
        .D(counter_0[5]),
        .Q(counter[5]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[6] 
       (.C(clk_in),
        .CE(1'b1),
        .CLR(rst),
        .D(counter_0[6]),
        .Q(counter[6]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[7] 
       (.C(clk_in),
        .CE(1'b1),
        .CLR(rst),
        .D(counter_0[7]),
        .Q(counter[7]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[8] 
       (.C(clk_in),
        .CE(1'b1),
        .CLR(rst),
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
       (.C(clk_in),
        .CE(1'b1),
        .CLR(rst),
        .D(counter_0[9]),
        .Q(counter[9]));
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
