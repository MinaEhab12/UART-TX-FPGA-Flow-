-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
-- Date        : Wed Sep  2 20:50:01 2026
-- Host        : DESKTOP-CV0PCOM running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_UART_TX_0_0_stub.vhdl
-- Design      : design_1_UART_TX_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    CLK : in STD_LOGIC;
    RST : in STD_LOGIC;
    P_DATA : in STD_LOGIC_VECTOR ( 7 downto 0 );
    Data_Valid : in STD_LOGIC;
    parity_enable : in STD_LOGIC;
    parity_type : in STD_LOGIC;
    TX_OUT : out STD_LOGIC;
    busy : out STD_LOGIC
  );

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "CLK,RST,P_DATA[7:0],Data_Valid,parity_enable,parity_type,TX_OUT,busy";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "UART_TX,Vivado 2018.2";
begin
end;
