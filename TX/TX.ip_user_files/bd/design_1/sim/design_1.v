//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
//Date        : Wed Sep  2 20:52:05 2026
//Host        : DESKTOP-CV0PCOM running 64-bit major release  (build 9200)
//Command     : generate_target design_1.bd
//Design      : design_1
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=2,numReposBlks=2,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=1,numPkgbdBlks=0,bdsource=USER,da_clkrst_cnt=1,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "design_1.hwdef" *) 
module design_1
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
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.RST_0 RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.RST_0, POLARITY ACTIVE_LOW" *) input RST_0;
  output TX_OUT_0;
  output busy_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK_IN1_0 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK_IN1_0, CLK_DOMAIN design_1_clk_in1_0, FREQ_HZ 100000000, PHASE 0.000" *) input clk_in1_0;
  input parity_enable_0;
  input parity_type_0;

  wire Data_Valid_0_1;
  wire [7:0]P_DATA_0_1;
  wire RST_0_1;
  wire UART_TX_0_TX_OUT;
  wire UART_TX_0_busy;
  wire clk_in1_0_1;
  wire clk_wiz_0_clk_out1;
  wire parity_enable_0_1;
  wire parity_type_0_1;

  assign Data_Valid_0_1 = Data_Valid_0;
  assign P_DATA_0_1 = P_DATA_0[7:0];
  assign RST_0_1 = RST_0;
  assign TX_OUT_0 = UART_TX_0_TX_OUT;
  assign busy_0 = UART_TX_0_busy;
  assign clk_in1_0_1 = clk_in1_0;
  assign parity_enable_0_1 = parity_enable_0;
  assign parity_type_0_1 = parity_type_0;
  design_1_UART_TX_0_0 UART_TX_0
       (.CLK(clk_wiz_0_clk_out1),
        .Data_Valid(Data_Valid_0_1),
        .P_DATA(P_DATA_0_1),
        .RST(RST_0_1),
        .TX_OUT(UART_TX_0_TX_OUT),
        .busy(UART_TX_0_busy),
        .parity_enable(parity_enable_0_1),
        .parity_type(parity_type_0_1));
  design_1_clk_wiz_0_0 clk_wiz_0
       (.clk_in1(clk_in1_0_1),
        .clk_out1(clk_wiz_0_clk_out1));
endmodule
