-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
-- Date        : Wed Sep  2 20:50:01 2026
-- Host        : DESKTOP-CV0PCOM running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/D/UART_TX/TX/TX.srcs/sources_1/bd/design_1/ip/design_1_UART_TX_0_0/design_1_UART_TX_0_0_sim_netlist.vhdl
-- Design      : design_1_UART_TX_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_UART_TX_0_0_Serializer is
  port (
    seriz_done : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \ser_count_reg[0]_0\ : out STD_LOGIC;
    \DATA_V_reg[6]_0\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    RST : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 7 downto 0 );
    CLK : in STD_LOGIC;
    \FSM_sequential_current_state_reg[1]\ : in STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_UART_TX_0_0_Serializer : entity is "Serializer";
end design_1_UART_TX_0_0_Serializer;

architecture STRUCTURE of design_1_UART_TX_0_0_Serializer is
  signal \^q\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \^ser_count_reg[0]_0\ : STD_LOGIC;
begin
  Q(2 downto 0) <= \^q\(2 downto 0);
  \ser_count_reg[0]_0\ <= \^ser_count_reg[0]_0\;
\DATA_V_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => E(0),
      CLR => \^ser_count_reg[0]_0\,
      D => D(0),
      Q => \DATA_V_reg[6]_0\(0)
    );
\DATA_V_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => E(0),
      CLR => \^ser_count_reg[0]_0\,
      D => D(1),
      Q => \DATA_V_reg[6]_0\(1)
    );
\DATA_V_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => E(0),
      CLR => \^ser_count_reg[0]_0\,
      D => D(2),
      Q => \DATA_V_reg[6]_0\(2)
    );
\DATA_V_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => E(0),
      CLR => \^ser_count_reg[0]_0\,
      D => D(3),
      Q => \DATA_V_reg[6]_0\(3)
    );
\DATA_V_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => E(0),
      CLR => \^ser_count_reg[0]_0\,
      D => D(4),
      Q => \DATA_V_reg[6]_0\(4)
    );
\DATA_V_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => E(0),
      CLR => \^ser_count_reg[0]_0\,
      D => D(5),
      Q => \DATA_V_reg[6]_0\(5)
    );
\DATA_V_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => E(0),
      CLR => \^ser_count_reg[0]_0\,
      D => D(6),
      Q => \DATA_V_reg[6]_0\(6)
    );
\DATA_V_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => E(0),
      CLR => \^ser_count_reg[0]_0\,
      D => D(7),
      Q => \DATA_V_reg[6]_0\(7)
    );
\FSM_sequential_current_state[2]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \^q\(2),
      O => seriz_done
    );
OUT_i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => RST,
      O => \^ser_count_reg[0]_0\
    );
\ser_count_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => \^ser_count_reg[0]_0\,
      D => \FSM_sequential_current_state_reg[1]\(0),
      Q => \^q\(0)
    );
\ser_count_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => \^ser_count_reg[0]_0\,
      D => \FSM_sequential_current_state_reg[1]\(1),
      Q => \^q\(1)
    );
\ser_count_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => \^ser_count_reg[0]_0\,
      D => \FSM_sequential_current_state_reg[1]\(2),
      Q => \^q\(2)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_UART_TX_0_0_mux is
  port (
    TX_OUT : out STD_LOGIC;
    mux_out : in STD_LOGIC;
    CLK : in STD_LOGIC;
    RST : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_UART_TX_0_0_mux : entity is "mux";
end design_1_UART_TX_0_0_mux;

architecture STRUCTURE of design_1_UART_TX_0_0_mux is
begin
OUT_reg: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => RST,
      D => mux_out,
      Q => TX_OUT
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_UART_TX_0_0_parity_calc is
  port (
    parity : out STD_LOGIC;
    CLK : in STD_LOGIC;
    RST : in STD_LOGIC;
    parity_type : in STD_LOGIC;
    parity_enable : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    P_DATA : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_UART_TX_0_0_parity_calc : entity is "parity_calc";
end design_1_UART_TX_0_0_parity_calc;

architecture STRUCTURE of design_1_UART_TX_0_0_parity_calc is
  signal \DATA_V_reg_n_0_[0]\ : STD_LOGIC;
  signal \DATA_V_reg_n_0_[1]\ : STD_LOGIC;
  signal \DATA_V_reg_n_0_[2]\ : STD_LOGIC;
  signal \DATA_V_reg_n_0_[3]\ : STD_LOGIC;
  signal \DATA_V_reg_n_0_[4]\ : STD_LOGIC;
  signal \DATA_V_reg_n_0_[5]\ : STD_LOGIC;
  signal \DATA_V_reg_n_0_[6]\ : STD_LOGIC;
  signal \DATA_V_reg_n_0_[7]\ : STD_LOGIC;
  signal \^parity\ : STD_LOGIC;
  signal parity_i_1_n_0 : STD_LOGIC;
  signal parity_i_2_n_0 : STD_LOGIC;
  signal parity_i_3_n_0 : STD_LOGIC;
begin
  parity <= \^parity\;
\DATA_V_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => E(0),
      CLR => RST,
      D => P_DATA(0),
      Q => \DATA_V_reg_n_0_[0]\
    );
\DATA_V_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => E(0),
      CLR => RST,
      D => P_DATA(1),
      Q => \DATA_V_reg_n_0_[1]\
    );
\DATA_V_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => E(0),
      CLR => RST,
      D => P_DATA(2),
      Q => \DATA_V_reg_n_0_[2]\
    );
\DATA_V_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => E(0),
      CLR => RST,
      D => P_DATA(3),
      Q => \DATA_V_reg_n_0_[3]\
    );
\DATA_V_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => E(0),
      CLR => RST,
      D => P_DATA(4),
      Q => \DATA_V_reg_n_0_[4]\
    );
\DATA_V_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => E(0),
      CLR => RST,
      D => P_DATA(5),
      Q => \DATA_V_reg_n_0_[5]\
    );
\DATA_V_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => E(0),
      CLR => RST,
      D => P_DATA(6),
      Q => \DATA_V_reg_n_0_[6]\
    );
\DATA_V_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => E(0),
      CLR => RST,
      D => P_DATA(7),
      Q => \DATA_V_reg_n_0_[7]\
    );
parity_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96FF9600"
    )
        port map (
      I0 => parity_type,
      I1 => parity_i_2_n_0,
      I2 => parity_i_3_n_0,
      I3 => parity_enable,
      I4 => \^parity\,
      O => parity_i_1_n_0
    );
parity_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \DATA_V_reg_n_0_[2]\,
      I1 => \DATA_V_reg_n_0_[3]\,
      I2 => \DATA_V_reg_n_0_[0]\,
      I3 => \DATA_V_reg_n_0_[1]\,
      O => parity_i_2_n_0
    );
parity_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \DATA_V_reg_n_0_[6]\,
      I1 => \DATA_V_reg_n_0_[7]\,
      I2 => \DATA_V_reg_n_0_[4]\,
      I3 => \DATA_V_reg_n_0_[5]\,
      O => parity_i_3_n_0
    );
parity_reg: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => RST,
      D => parity_i_1_n_0,
      Q => \^parity\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_UART_TX_0_0_uart_tx_fsm is
  port (
    busy : out STD_LOGIC;
    \ser_count_reg[2]\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    D : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \DATA_V_reg[7]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    mux_out : out STD_LOGIC;
    CLK : in STD_LOGIC;
    RST : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 2 downto 0 );
    Data_Valid : in STD_LOGIC;
    P_DATA : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \DATA_V_reg[7]_0\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    parity : in STD_LOGIC;
    parity_enable : in STD_LOGIC;
    seriz_done : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_UART_TX_0_0_uart_tx_fsm : entity is "uart_tx_fsm";
end design_1_UART_TX_0_0_uart_tx_fsm;

architecture STRUCTURE of design_1_UART_TX_0_0_uart_tx_fsm is
  signal \^busy\ : STD_LOGIC;
  signal busy_c : STD_LOGIC;
  signal current_state : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of current_state : signal is "yes";
  signal next_state : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal seriz_en : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \DATA_V[3]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \DATA_V[4]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \DATA_V[6]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \DATA_V[7]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \DATA_V[7]_i_1__0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \DATA_V[7]_i_2\ : label is "soft_lutpair1";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_current_state_reg[0]\ : label is "IDLE:000,start:001,data:010,stop:100,parity:011";
  attribute KEEP : string;
  attribute KEEP of \FSM_sequential_current_state_reg[0]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_sequential_current_state_reg[1]\ : label is "IDLE:000,start:001,data:010,stop:100,parity:011";
  attribute KEEP of \FSM_sequential_current_state_reg[1]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_sequential_current_state_reg[2]\ : label is "IDLE:000,start:001,data:010,stop:100,parity:011";
  attribute KEEP of \FSM_sequential_current_state_reg[2]\ : label is "yes";
begin
  busy <= \^busy\;
\DATA_V[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => P_DATA(0),
      I1 => Data_Valid,
      I2 => \^busy\,
      I3 => \DATA_V_reg[7]_0\(1),
      O => D(0)
    );
\DATA_V[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => P_DATA(1),
      I1 => Data_Valid,
      I2 => \^busy\,
      I3 => \DATA_V_reg[7]_0\(2),
      O => D(1)
    );
\DATA_V[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => P_DATA(2),
      I1 => Data_Valid,
      I2 => \^busy\,
      I3 => \DATA_V_reg[7]_0\(3),
      O => D(2)
    );
\DATA_V[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => P_DATA(3),
      I1 => Data_Valid,
      I2 => \^busy\,
      I3 => \DATA_V_reg[7]_0\(4),
      O => D(3)
    );
\DATA_V[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => P_DATA(4),
      I1 => Data_Valid,
      I2 => \^busy\,
      I3 => \DATA_V_reg[7]_0\(5),
      O => D(4)
    );
\DATA_V[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => P_DATA(5),
      I1 => Data_Valid,
      I2 => \^busy\,
      I3 => \DATA_V_reg[7]_0\(6),
      O => D(5)
    );
\DATA_V[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => P_DATA(6),
      I1 => Data_Valid,
      I2 => \^busy\,
      I3 => \DATA_V_reg[7]_0\(7),
      O => D(6)
    );
\DATA_V[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => \^busy\,
      I1 => Data_Valid,
      I2 => seriz_en,
      O => E(0)
    );
\DATA_V[7]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Data_Valid,
      I1 => \^busy\,
      O => \DATA_V_reg[7]\(0)
    );
\DATA_V[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \^busy\,
      I1 => Data_Valid,
      I2 => P_DATA(7),
      O => D(7)
    );
\DATA_V[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0010101010101010"
    )
        port map (
      I0 => current_state(0),
      I1 => current_state(2),
      I2 => current_state(1),
      I3 => Q(1),
      I4 => Q(0),
      I5 => Q(2),
      O => seriz_en
    );
\FSM_sequential_current_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1110001000100010"
    )
        port map (
      I0 => current_state(2),
      I1 => current_state(0),
      I2 => Data_Valid,
      I3 => current_state(1),
      I4 => parity_enable,
      I5 => seriz_done,
      O => next_state(0)
    );
\FSM_sequential_current_state[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"11114404"
    )
        port map (
      I0 => current_state(2),
      I1 => current_state(1),
      I2 => seriz_done,
      I3 => parity_enable,
      I4 => current_state(0),
      O => next_state(1)
    );
\FSM_sequential_current_state[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"45440000"
    )
        port map (
      I0 => current_state(2),
      I1 => current_state(0),
      I2 => parity_enable,
      I3 => seriz_done,
      I4 => current_state(1),
      O => next_state(2)
    );
\FSM_sequential_current_state_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => RST,
      D => next_state(0),
      Q => current_state(0)
    );
\FSM_sequential_current_state_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => RST,
      D => next_state(1),
      Q => current_state(1)
    );
\FSM_sequential_current_state_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => RST,
      D => next_state(2),
      Q => current_state(2)
    );
OUT_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"03CB030B"
    )
        port map (
      I0 => \DATA_V_reg[7]_0\(0),
      I1 => current_state(1),
      I2 => current_state(0),
      I3 => current_state(2),
      I4 => parity,
      O => mux_out
    );
busy_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1E"
    )
        port map (
      I0 => current_state(0),
      I1 => current_state(1),
      I2 => current_state(2),
      O => busy_c
    );
busy_reg: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => '1',
      CLR => RST,
      D => busy_c,
      Q => \^busy\
    );
\ser_count[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0002"
    )
        port map (
      I0 => current_state(1),
      I1 => current_state(2),
      I2 => current_state(0),
      I3 => Q(0),
      O => \ser_count_reg[2]\(0)
    );
\ser_count[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00020200"
    )
        port map (
      I0 => current_state(1),
      I1 => current_state(2),
      I2 => current_state(0),
      I3 => Q(1),
      I4 => Q(0),
      O => \ser_count_reg[2]\(1)
    );
\ser_count[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0002020002000200"
    )
        port map (
      I0 => current_state(1),
      I1 => current_state(2),
      I2 => current_state(0),
      I3 => Q(2),
      I4 => Q(1),
      I5 => Q(0),
      O => \ser_count_reg[2]\(2)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_UART_TX_0_0_UART_TX is
  port (
    busy : out STD_LOGIC;
    TX_OUT : out STD_LOGIC;
    CLK : in STD_LOGIC;
    P_DATA : in STD_LOGIC_VECTOR ( 7 downto 0 );
    Data_Valid : in STD_LOGIC;
    parity_enable : in STD_LOGIC;
    parity_type : in STD_LOGIC;
    RST : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_UART_TX_0_0_UART_TX : entity is "UART_TX";
end design_1_UART_TX_0_0_UART_TX;

architecture STRUCTURE of design_1_UART_TX_0_0_UART_TX is
  signal U0_Serializer_n_10 : STD_LOGIC;
  signal U0_Serializer_n_11 : STD_LOGIC;
  signal U0_Serializer_n_4 : STD_LOGIC;
  signal U0_Serializer_n_5 : STD_LOGIC;
  signal U0_Serializer_n_6 : STD_LOGIC;
  signal U0_Serializer_n_7 : STD_LOGIC;
  signal U0_Serializer_n_8 : STD_LOGIC;
  signal U0_Serializer_n_9 : STD_LOGIC;
  signal U0_fsm_n_1 : STD_LOGIC;
  signal U0_fsm_n_13 : STD_LOGIC;
  signal U0_fsm_n_2 : STD_LOGIC;
  signal U0_fsm_n_3 : STD_LOGIC;
  signal U0_fsm_n_4 : STD_LOGIC;
  signal mux_out : STD_LOGIC;
  signal p_1_in : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal parity : STD_LOGIC;
  signal ser_count : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal ser_data : STD_LOGIC;
  signal seriz_done : STD_LOGIC;
begin
U0_Serializer: entity work.design_1_UART_TX_0_0_Serializer
     port map (
      CLK => CLK,
      D(7 downto 0) => p_1_in(7 downto 0),
      \DATA_V_reg[6]_0\(7) => U0_Serializer_n_5,
      \DATA_V_reg[6]_0\(6) => U0_Serializer_n_6,
      \DATA_V_reg[6]_0\(5) => U0_Serializer_n_7,
      \DATA_V_reg[6]_0\(4) => U0_Serializer_n_8,
      \DATA_V_reg[6]_0\(3) => U0_Serializer_n_9,
      \DATA_V_reg[6]_0\(2) => U0_Serializer_n_10,
      \DATA_V_reg[6]_0\(1) => U0_Serializer_n_11,
      \DATA_V_reg[6]_0\(0) => ser_data,
      E(0) => U0_fsm_n_4,
      \FSM_sequential_current_state_reg[1]\(2) => U0_fsm_n_1,
      \FSM_sequential_current_state_reg[1]\(1) => U0_fsm_n_2,
      \FSM_sequential_current_state_reg[1]\(0) => U0_fsm_n_3,
      Q(2 downto 0) => ser_count(2 downto 0),
      RST => RST,
      \ser_count_reg[0]_0\ => U0_Serializer_n_4,
      seriz_done => seriz_done
    );
U0_fsm: entity work.design_1_UART_TX_0_0_uart_tx_fsm
     port map (
      CLK => CLK,
      D(7 downto 0) => p_1_in(7 downto 0),
      \DATA_V_reg[7]\(0) => U0_fsm_n_13,
      \DATA_V_reg[7]_0\(7) => U0_Serializer_n_5,
      \DATA_V_reg[7]_0\(6) => U0_Serializer_n_6,
      \DATA_V_reg[7]_0\(5) => U0_Serializer_n_7,
      \DATA_V_reg[7]_0\(4) => U0_Serializer_n_8,
      \DATA_V_reg[7]_0\(3) => U0_Serializer_n_9,
      \DATA_V_reg[7]_0\(2) => U0_Serializer_n_10,
      \DATA_V_reg[7]_0\(1) => U0_Serializer_n_11,
      \DATA_V_reg[7]_0\(0) => ser_data,
      Data_Valid => Data_Valid,
      E(0) => U0_fsm_n_4,
      P_DATA(7 downto 0) => P_DATA(7 downto 0),
      Q(2 downto 0) => ser_count(2 downto 0),
      RST => U0_Serializer_n_4,
      busy => busy,
      mux_out => mux_out,
      parity => parity,
      parity_enable => parity_enable,
      \ser_count_reg[2]\(2) => U0_fsm_n_1,
      \ser_count_reg[2]\(1) => U0_fsm_n_2,
      \ser_count_reg[2]\(0) => U0_fsm_n_3,
      seriz_done => seriz_done
    );
U0_mux: entity work.design_1_UART_TX_0_0_mux
     port map (
      CLK => CLK,
      RST => U0_Serializer_n_4,
      TX_OUT => TX_OUT,
      mux_out => mux_out
    );
U0_parity_calc: entity work.design_1_UART_TX_0_0_parity_calc
     port map (
      CLK => CLK,
      E(0) => U0_fsm_n_13,
      P_DATA(7 downto 0) => P_DATA(7 downto 0),
      RST => U0_Serializer_n_4,
      parity => parity,
      parity_enable => parity_enable,
      parity_type => parity_type
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_UART_TX_0_0 is
  port (
    CLK : in STD_LOGIC;
    RST : in STD_LOGIC;
    P_DATA : in STD_LOGIC_VECTOR ( 7 downto 0 );
    Data_Valid : in STD_LOGIC;
    parity_enable : in STD_LOGIC;
    parity_type : in STD_LOGIC;
    TX_OUT : out STD_LOGIC;
    busy : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_UART_TX_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_UART_TX_0_0 : entity is "design_1_UART_TX_0_0,UART_TX,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_UART_TX_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of design_1_UART_TX_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_UART_TX_0_0 : entity is "UART_TX,Vivado 2018.2";
end design_1_UART_TX_0_0;

architecture STRUCTURE of design_1_UART_TX_0_0 is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of CLK : signal is "xilinx.com:signal:clock:1.0 CLK CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of CLK : signal is "XIL_INTERFACENAME CLK, ASSOCIATED_RESET RST, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1";
  attribute X_INTERFACE_INFO of RST : signal is "xilinx.com:signal:reset:1.0 RST RST";
  attribute X_INTERFACE_PARAMETER of RST : signal is "XIL_INTERFACENAME RST, POLARITY ACTIVE_LOW";
begin
inst: entity work.design_1_UART_TX_0_0_UART_TX
     port map (
      CLK => CLK,
      Data_Valid => Data_Valid,
      P_DATA(7 downto 0) => P_DATA(7 downto 0),
      RST => RST,
      TX_OUT => TX_OUT,
      busy => busy,
      parity_enable => parity_enable,
      parity_type => parity_type
    );
end STRUCTURE;
