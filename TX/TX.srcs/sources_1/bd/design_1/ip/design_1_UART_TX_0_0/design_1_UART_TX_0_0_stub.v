// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Wed Sep  2 20:50:01 2026
// Host        : DESKTOP-CV0PCOM running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/D/UART_TX/TX/TX.srcs/sources_1/bd/design_1/ip/design_1_UART_TX_0_0/design_1_UART_TX_0_0_stub.v
// Design      : design_1_UART_TX_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "UART_TX,Vivado 2018.2" *)
module design_1_UART_TX_0_0(CLK, RST, P_DATA, Data_Valid, parity_enable, 
  parity_type, TX_OUT, busy)
/* synthesis syn_black_box black_box_pad_pin="CLK,RST,P_DATA[7:0],Data_Valid,parity_enable,parity_type,TX_OUT,busy" */;
  input CLK;
  input RST;
  input [7:0]P_DATA;
  input Data_Valid;
  input parity_enable;
  input parity_type;
  output TX_OUT;
  output busy;
endmodule
