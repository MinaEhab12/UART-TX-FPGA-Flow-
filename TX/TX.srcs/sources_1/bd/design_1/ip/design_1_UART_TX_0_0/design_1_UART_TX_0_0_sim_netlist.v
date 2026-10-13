// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Wed Sep  2 20:50:01 2026
// Host        : DESKTOP-CV0PCOM running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/D/UART_TX/TX/TX.srcs/sources_1/bd/design_1/ip/design_1_UART_TX_0_0/design_1_UART_TX_0_0_sim_netlist.v
// Design      : design_1_UART_TX_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_UART_TX_0_0,UART_TX,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "UART_TX,Vivado 2018.2" *) 
(* NotValidForBitStream *)
module design_1_UART_TX_0_0
   (CLK,
    RST,
    P_DATA,
    Data_Valid,
    parity_enable,
    parity_type,
    TX_OUT,
    busy);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK, ASSOCIATED_RESET RST, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1" *) input CLK;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST, POLARITY ACTIVE_LOW" *) input RST;
  input [7:0]P_DATA;
  input Data_Valid;
  input parity_enable;
  input parity_type;
  output TX_OUT;
  output busy;

  wire CLK;
  wire Data_Valid;
  wire [7:0]P_DATA;
  wire RST;
  wire TX_OUT;
  wire busy;
  wire parity_enable;
  wire parity_type;

  design_1_UART_TX_0_0_UART_TX inst
       (.CLK(CLK),
        .Data_Valid(Data_Valid),
        .P_DATA(P_DATA),
        .RST(RST),
        .TX_OUT(TX_OUT),
        .busy(busy),
        .parity_enable(parity_enable),
        .parity_type(parity_type));
endmodule

(* ORIG_REF_NAME = "Serializer" *) 
module design_1_UART_TX_0_0_Serializer
   (seriz_done,
    Q,
    \ser_count_reg[0]_0 ,
    \DATA_V_reg[6]_0 ,
    RST,
    E,
    D,
    CLK,
    \FSM_sequential_current_state_reg[1] );
  output seriz_done;
  output [2:0]Q;
  output \ser_count_reg[0]_0 ;
  output [7:0]\DATA_V_reg[6]_0 ;
  input RST;
  input [0:0]E;
  input [7:0]D;
  input CLK;
  input [2:0]\FSM_sequential_current_state_reg[1] ;

  wire CLK;
  wire [7:0]D;
  wire [7:0]\DATA_V_reg[6]_0 ;
  wire [0:0]E;
  wire [2:0]\FSM_sequential_current_state_reg[1] ;
  wire [2:0]Q;
  wire RST;
  wire \ser_count_reg[0]_0 ;
  wire seriz_done;

  FDCE \DATA_V_reg[0] 
       (.C(CLK),
        .CE(E),
        .CLR(\ser_count_reg[0]_0 ),
        .D(D[0]),
        .Q(\DATA_V_reg[6]_0 [0]));
  FDCE \DATA_V_reg[1] 
       (.C(CLK),
        .CE(E),
        .CLR(\ser_count_reg[0]_0 ),
        .D(D[1]),
        .Q(\DATA_V_reg[6]_0 [1]));
  FDCE \DATA_V_reg[2] 
       (.C(CLK),
        .CE(E),
        .CLR(\ser_count_reg[0]_0 ),
        .D(D[2]),
        .Q(\DATA_V_reg[6]_0 [2]));
  FDCE \DATA_V_reg[3] 
       (.C(CLK),
        .CE(E),
        .CLR(\ser_count_reg[0]_0 ),
        .D(D[3]),
        .Q(\DATA_V_reg[6]_0 [3]));
  FDCE \DATA_V_reg[4] 
       (.C(CLK),
        .CE(E),
        .CLR(\ser_count_reg[0]_0 ),
        .D(D[4]),
        .Q(\DATA_V_reg[6]_0 [4]));
  FDCE \DATA_V_reg[5] 
       (.C(CLK),
        .CE(E),
        .CLR(\ser_count_reg[0]_0 ),
        .D(D[5]),
        .Q(\DATA_V_reg[6]_0 [5]));
  FDCE \DATA_V_reg[6] 
       (.C(CLK),
        .CE(E),
        .CLR(\ser_count_reg[0]_0 ),
        .D(D[6]),
        .Q(\DATA_V_reg[6]_0 [6]));
  FDCE \DATA_V_reg[7] 
       (.C(CLK),
        .CE(E),
        .CLR(\ser_count_reg[0]_0 ),
        .D(D[7]),
        .Q(\DATA_V_reg[6]_0 [7]));
  LUT3 #(
    .INIT(8'h80)) 
    \FSM_sequential_current_state[2]_i_2 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .O(seriz_done));
  LUT1 #(
    .INIT(2'h1)) 
    OUT_i_2
       (.I0(RST),
        .O(\ser_count_reg[0]_0 ));
  FDCE \ser_count_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\ser_count_reg[0]_0 ),
        .D(\FSM_sequential_current_state_reg[1] [0]),
        .Q(Q[0]));
  FDCE \ser_count_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\ser_count_reg[0]_0 ),
        .D(\FSM_sequential_current_state_reg[1] [1]),
        .Q(Q[1]));
  FDCE \ser_count_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\ser_count_reg[0]_0 ),
        .D(\FSM_sequential_current_state_reg[1] [2]),
        .Q(Q[2]));
endmodule

(* ORIG_REF_NAME = "UART_TX" *) 
module design_1_UART_TX_0_0_UART_TX
   (busy,
    TX_OUT,
    CLK,
    P_DATA,
    Data_Valid,
    parity_enable,
    parity_type,
    RST);
  output busy;
  output TX_OUT;
  input CLK;
  input [7:0]P_DATA;
  input Data_Valid;
  input parity_enable;
  input parity_type;
  input RST;

  wire CLK;
  wire Data_Valid;
  wire [7:0]P_DATA;
  wire RST;
  wire TX_OUT;
  wire U0_Serializer_n_10;
  wire U0_Serializer_n_11;
  wire U0_Serializer_n_4;
  wire U0_Serializer_n_5;
  wire U0_Serializer_n_6;
  wire U0_Serializer_n_7;
  wire U0_Serializer_n_8;
  wire U0_Serializer_n_9;
  wire U0_fsm_n_1;
  wire U0_fsm_n_13;
  wire U0_fsm_n_2;
  wire U0_fsm_n_3;
  wire U0_fsm_n_4;
  wire busy;
  wire mux_out;
  wire [7:0]p_1_in;
  wire parity;
  wire parity_enable;
  wire parity_type;
  wire [2:0]ser_count;
  wire ser_data;
  wire seriz_done;

  design_1_UART_TX_0_0_Serializer U0_Serializer
       (.CLK(CLK),
        .D(p_1_in),
        .\DATA_V_reg[6]_0 ({U0_Serializer_n_5,U0_Serializer_n_6,U0_Serializer_n_7,U0_Serializer_n_8,U0_Serializer_n_9,U0_Serializer_n_10,U0_Serializer_n_11,ser_data}),
        .E(U0_fsm_n_4),
        .\FSM_sequential_current_state_reg[1] ({U0_fsm_n_1,U0_fsm_n_2,U0_fsm_n_3}),
        .Q(ser_count),
        .RST(RST),
        .\ser_count_reg[0]_0 (U0_Serializer_n_4),
        .seriz_done(seriz_done));
  design_1_UART_TX_0_0_uart_tx_fsm U0_fsm
       (.CLK(CLK),
        .D(p_1_in),
        .\DATA_V_reg[7] (U0_fsm_n_13),
        .\DATA_V_reg[7]_0 ({U0_Serializer_n_5,U0_Serializer_n_6,U0_Serializer_n_7,U0_Serializer_n_8,U0_Serializer_n_9,U0_Serializer_n_10,U0_Serializer_n_11,ser_data}),
        .Data_Valid(Data_Valid),
        .E(U0_fsm_n_4),
        .P_DATA(P_DATA),
        .Q(ser_count),
        .RST(U0_Serializer_n_4),
        .busy(busy),
        .mux_out(mux_out),
        .parity(parity),
        .parity_enable(parity_enable),
        .\ser_count_reg[2] ({U0_fsm_n_1,U0_fsm_n_2,U0_fsm_n_3}),
        .seriz_done(seriz_done));
  design_1_UART_TX_0_0_mux U0_mux
       (.CLK(CLK),
        .RST(U0_Serializer_n_4),
        .TX_OUT(TX_OUT),
        .mux_out(mux_out));
  design_1_UART_TX_0_0_parity_calc U0_parity_calc
       (.CLK(CLK),
        .E(U0_fsm_n_13),
        .P_DATA(P_DATA),
        .RST(U0_Serializer_n_4),
        .parity(parity),
        .parity_enable(parity_enable),
        .parity_type(parity_type));
endmodule

(* ORIG_REF_NAME = "mux" *) 
module design_1_UART_TX_0_0_mux
   (TX_OUT,
    mux_out,
    CLK,
    RST);
  output TX_OUT;
  input mux_out;
  input CLK;
  input RST;

  wire CLK;
  wire RST;
  wire TX_OUT;
  wire mux_out;

  FDCE OUT_reg
       (.C(CLK),
        .CE(1'b1),
        .CLR(RST),
        .D(mux_out),
        .Q(TX_OUT));
endmodule

(* ORIG_REF_NAME = "parity_calc" *) 
module design_1_UART_TX_0_0_parity_calc
   (parity,
    CLK,
    RST,
    parity_type,
    parity_enable,
    E,
    P_DATA);
  output parity;
  input CLK;
  input RST;
  input parity_type;
  input parity_enable;
  input [0:0]E;
  input [7:0]P_DATA;

  wire CLK;
  wire \DATA_V_reg_n_0_[0] ;
  wire \DATA_V_reg_n_0_[1] ;
  wire \DATA_V_reg_n_0_[2] ;
  wire \DATA_V_reg_n_0_[3] ;
  wire \DATA_V_reg_n_0_[4] ;
  wire \DATA_V_reg_n_0_[5] ;
  wire \DATA_V_reg_n_0_[6] ;
  wire \DATA_V_reg_n_0_[7] ;
  wire [0:0]E;
  wire [7:0]P_DATA;
  wire RST;
  wire parity;
  wire parity_enable;
  wire parity_i_1_n_0;
  wire parity_i_2_n_0;
  wire parity_i_3_n_0;
  wire parity_type;

  FDCE \DATA_V_reg[0] 
       (.C(CLK),
        .CE(E),
        .CLR(RST),
        .D(P_DATA[0]),
        .Q(\DATA_V_reg_n_0_[0] ));
  FDCE \DATA_V_reg[1] 
       (.C(CLK),
        .CE(E),
        .CLR(RST),
        .D(P_DATA[1]),
        .Q(\DATA_V_reg_n_0_[1] ));
  FDCE \DATA_V_reg[2] 
       (.C(CLK),
        .CE(E),
        .CLR(RST),
        .D(P_DATA[2]),
        .Q(\DATA_V_reg_n_0_[2] ));
  FDCE \DATA_V_reg[3] 
       (.C(CLK),
        .CE(E),
        .CLR(RST),
        .D(P_DATA[3]),
        .Q(\DATA_V_reg_n_0_[3] ));
  FDCE \DATA_V_reg[4] 
       (.C(CLK),
        .CE(E),
        .CLR(RST),
        .D(P_DATA[4]),
        .Q(\DATA_V_reg_n_0_[4] ));
  FDCE \DATA_V_reg[5] 
       (.C(CLK),
        .CE(E),
        .CLR(RST),
        .D(P_DATA[5]),
        .Q(\DATA_V_reg_n_0_[5] ));
  FDCE \DATA_V_reg[6] 
       (.C(CLK),
        .CE(E),
        .CLR(RST),
        .D(P_DATA[6]),
        .Q(\DATA_V_reg_n_0_[6] ));
  FDCE \DATA_V_reg[7] 
       (.C(CLK),
        .CE(E),
        .CLR(RST),
        .D(P_DATA[7]),
        .Q(\DATA_V_reg_n_0_[7] ));
  LUT5 #(
    .INIT(32'h96FF9600)) 
    parity_i_1
       (.I0(parity_type),
        .I1(parity_i_2_n_0),
        .I2(parity_i_3_n_0),
        .I3(parity_enable),
        .I4(parity),
        .O(parity_i_1_n_0));
  LUT4 #(
    .INIT(16'h6996)) 
    parity_i_2
       (.I0(\DATA_V_reg_n_0_[2] ),
        .I1(\DATA_V_reg_n_0_[3] ),
        .I2(\DATA_V_reg_n_0_[0] ),
        .I3(\DATA_V_reg_n_0_[1] ),
        .O(parity_i_2_n_0));
  LUT4 #(
    .INIT(16'h6996)) 
    parity_i_3
       (.I0(\DATA_V_reg_n_0_[6] ),
        .I1(\DATA_V_reg_n_0_[7] ),
        .I2(\DATA_V_reg_n_0_[4] ),
        .I3(\DATA_V_reg_n_0_[5] ),
        .O(parity_i_3_n_0));
  FDCE parity_reg
       (.C(CLK),
        .CE(1'b1),
        .CLR(RST),
        .D(parity_i_1_n_0),
        .Q(parity));
endmodule

(* ORIG_REF_NAME = "uart_tx_fsm" *) 
module design_1_UART_TX_0_0_uart_tx_fsm
   (busy,
    \ser_count_reg[2] ,
    E,
    D,
    \DATA_V_reg[7] ,
    mux_out,
    CLK,
    RST,
    Q,
    Data_Valid,
    P_DATA,
    \DATA_V_reg[7]_0 ,
    parity,
    parity_enable,
    seriz_done);
  output busy;
  output [2:0]\ser_count_reg[2] ;
  output [0:0]E;
  output [7:0]D;
  output [0:0]\DATA_V_reg[7] ;
  output mux_out;
  input CLK;
  input RST;
  input [2:0]Q;
  input Data_Valid;
  input [7:0]P_DATA;
  input [7:0]\DATA_V_reg[7]_0 ;
  input parity;
  input parity_enable;
  input seriz_done;

  wire CLK;
  wire [7:0]D;
  wire [0:0]\DATA_V_reg[7] ;
  wire [7:0]\DATA_V_reg[7]_0 ;
  wire Data_Valid;
  wire [0:0]E;
  wire [7:0]P_DATA;
  wire [2:0]Q;
  wire RST;
  wire busy;
  wire busy_c;
  (* RTL_KEEP = "yes" *) wire [2:0]current_state;
  wire mux_out;
  wire [2:0]next_state;
  wire parity;
  wire parity_enable;
  wire [2:0]\ser_count_reg[2] ;
  wire seriz_done;
  wire seriz_en;

  LUT4 #(
    .INIT(16'hFB08)) 
    \DATA_V[0]_i_1 
       (.I0(P_DATA[0]),
        .I1(Data_Valid),
        .I2(busy),
        .I3(\DATA_V_reg[7]_0 [1]),
        .O(D[0]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \DATA_V[1]_i_1 
       (.I0(P_DATA[1]),
        .I1(Data_Valid),
        .I2(busy),
        .I3(\DATA_V_reg[7]_0 [2]),
        .O(D[1]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \DATA_V[2]_i_1 
       (.I0(P_DATA[2]),
        .I1(Data_Valid),
        .I2(busy),
        .I3(\DATA_V_reg[7]_0 [3]),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hFB08)) 
    \DATA_V[3]_i_1 
       (.I0(P_DATA[3]),
        .I1(Data_Valid),
        .I2(busy),
        .I3(\DATA_V_reg[7]_0 [4]),
        .O(D[3]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hFB08)) 
    \DATA_V[4]_i_1 
       (.I0(P_DATA[4]),
        .I1(Data_Valid),
        .I2(busy),
        .I3(\DATA_V_reg[7]_0 [5]),
        .O(D[4]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \DATA_V[5]_i_1 
       (.I0(P_DATA[5]),
        .I1(Data_Valid),
        .I2(busy),
        .I3(\DATA_V_reg[7]_0 [6]),
        .O(D[5]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hFB08)) 
    \DATA_V[6]_i_1 
       (.I0(P_DATA[6]),
        .I1(Data_Valid),
        .I2(busy),
        .I3(\DATA_V_reg[7]_0 [7]),
        .O(D[6]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hF4)) 
    \DATA_V[7]_i_1 
       (.I0(busy),
        .I1(Data_Valid),
        .I2(seriz_en),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \DATA_V[7]_i_1__0 
       (.I0(Data_Valid),
        .I1(busy),
        .O(\DATA_V_reg[7] ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \DATA_V[7]_i_2 
       (.I0(busy),
        .I1(Data_Valid),
        .I2(P_DATA[7]),
        .O(D[7]));
  LUT6 #(
    .INIT(64'h0010101010101010)) 
    \DATA_V[7]_i_3 
       (.I0(current_state[0]),
        .I1(current_state[2]),
        .I2(current_state[1]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(Q[2]),
        .O(seriz_en));
  LUT6 #(
    .INIT(64'h1110001000100010)) 
    \FSM_sequential_current_state[0]_i_1 
       (.I0(current_state[2]),
        .I1(current_state[0]),
        .I2(Data_Valid),
        .I3(current_state[1]),
        .I4(parity_enable),
        .I5(seriz_done),
        .O(next_state[0]));
  LUT5 #(
    .INIT(32'h11114404)) 
    \FSM_sequential_current_state[1]_i_1 
       (.I0(current_state[2]),
        .I1(current_state[1]),
        .I2(seriz_done),
        .I3(parity_enable),
        .I4(current_state[0]),
        .O(next_state[1]));
  LUT5 #(
    .INIT(32'h45440000)) 
    \FSM_sequential_current_state[2]_i_1 
       (.I0(current_state[2]),
        .I1(current_state[0]),
        .I2(parity_enable),
        .I3(seriz_done),
        .I4(current_state[1]),
        .O(next_state[2]));
  (* FSM_ENCODED_STATES = "IDLE:000,start:001,data:010,stop:100,parity:011" *) 
  (* KEEP = "yes" *) 
  FDCE \FSM_sequential_current_state_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(RST),
        .D(next_state[0]),
        .Q(current_state[0]));
  (* FSM_ENCODED_STATES = "IDLE:000,start:001,data:010,stop:100,parity:011" *) 
  (* KEEP = "yes" *) 
  FDCE \FSM_sequential_current_state_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(RST),
        .D(next_state[1]),
        .Q(current_state[1]));
  (* FSM_ENCODED_STATES = "IDLE:000,start:001,data:010,stop:100,parity:011" *) 
  (* KEEP = "yes" *) 
  FDCE \FSM_sequential_current_state_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(RST),
        .D(next_state[2]),
        .Q(current_state[2]));
  LUT5 #(
    .INIT(32'h03CB030B)) 
    OUT_i_1
       (.I0(\DATA_V_reg[7]_0 [0]),
        .I1(current_state[1]),
        .I2(current_state[0]),
        .I3(current_state[2]),
        .I4(parity),
        .O(mux_out));
  LUT3 #(
    .INIT(8'h1E)) 
    busy_i_1
       (.I0(current_state[0]),
        .I1(current_state[1]),
        .I2(current_state[2]),
        .O(busy_c));
  FDCE busy_reg
       (.C(CLK),
        .CE(1'b1),
        .CLR(RST),
        .D(busy_c),
        .Q(busy));
  LUT4 #(
    .INIT(16'h0002)) 
    \ser_count[0]_i_1 
       (.I0(current_state[1]),
        .I1(current_state[2]),
        .I2(current_state[0]),
        .I3(Q[0]),
        .O(\ser_count_reg[2] [0]));
  LUT5 #(
    .INIT(32'h00020200)) 
    \ser_count[1]_i_1 
       (.I0(current_state[1]),
        .I1(current_state[2]),
        .I2(current_state[0]),
        .I3(Q[1]),
        .I4(Q[0]),
        .O(\ser_count_reg[2] [1]));
  LUT6 #(
    .INIT(64'h0002020002000200)) 
    \ser_count[2]_i_1 
       (.I0(current_state[1]),
        .I1(current_state[2]),
        .I2(current_state[0]),
        .I3(Q[2]),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(\ser_count_reg[2] [2]));
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
