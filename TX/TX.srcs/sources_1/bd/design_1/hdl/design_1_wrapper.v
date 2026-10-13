//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
//Date        : Wed Sep  2 20:52:05 2026
//Host        : DESKTOP-CV0PCOM running 64-bit major release  (build 9200)
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
   (Data_Valid_0,
    P_DATA_0,
    RST_0,
    TX_OUT_0,
    busy_0,
    clk_in1_0,
    parity_enable_0,
    parity_type_0);
  input Data_Valid_0;
  input [7:0]P_DATA_0;
  input RST_0;
  output TX_OUT_0;
  output busy_0;
  input clk_in1_0;
  input parity_enable_0;
  input parity_type_0;

  wire Data_Valid_0;
  wire [7:0]P_DATA_0;
  wire RST_0;
  wire TX_OUT_0;
  wire busy_0;
  wire clk_in1_0;
  wire parity_enable_0;
  wire parity_type_0;

  design_1 design_1_i
       (.Data_Valid_0(Data_Valid_0),
        .P_DATA_0(P_DATA_0),
        .RST_0(RST_0),
        .TX_OUT_0(TX_OUT_0),
        .busy_0(busy_0),
        .clk_in1_0(clk_in1_0),
        .parity_enable_0(parity_enable_0),
        .parity_type_0(parity_type_0));
endmodule
