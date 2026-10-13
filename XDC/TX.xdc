
## Clock signal set for 115.2 kHz input
set_property -dict { PACKAGE_PIN K17   IOSTANDARD LVCMOS33 } [get_ports { CLK }]; # sysclk
create_clock -add -name sys_clk_pin -period 8680.56 -waveform {0 4340.28} [get_ports { CLK }];

## Control Inputs
set_property -dict { PACKAGE_PIN K18   IOSTANDARD LVCMOS33 } [get_ports { RST }];           # Push Button 0
set_property -dict { PACKAGE_PIN P16   IOSTANDARD LVCMOS33 } [get_ports { Data_Valid }];    # Push Button 1
set_property -dict { PACKAGE_PIN G15   IOSTANDARD LVCMOS33 } [get_ports { parity_enable }];# Switch 0
set_property -dict { PACKAGE_PIN P15   IOSTANDARD LVCMOS33 } [get_ports { parity_type }];  # Switch 1

## 8-bit Parallel Data Input (P_DATA) mapped to Pmod Header JA
set_property -dict { PACKAGE_PIN N15   IOSTANDARD LVCMOS33 } [get_ports { P_DATA[0] }]; # JA1_P
set_property -dict { PACKAGE_PIN L14   IOSTANDARD LVCMOS33 } [get_ports { P_DATA[1] }]; # JA2_P
set_property -dict { PACKAGE_PIN K16   IOSTANDARD LVCMOS33 } [get_ports { P_DATA[2] }]; # JA3_P
set_property -dict { PACKAGE_PIN K14   IOSTANDARD LVCMOS33 } [get_ports { P_DATA[3] }]; # JA4_P
set_property -dict { PACKAGE_PIN N16   IOSTANDARD LVCMOS33 } [get_ports { P_DATA[4] }]; # JA1_N
set_property -dict { PACKAGE_PIN L15   IOSTANDARD LVCMOS33 } [get_ports { P_DATA[5] }]; # JA2_N
set_property -dict { PACKAGE_PIN J16   IOSTANDARD LVCMOS33 } [get_ports { P_DATA[6] }]; # JA3_N
set_property -dict { PACKAGE_PIN J14   IOSTANDARD LVCMOS33 } [get_ports { P_DATA[7] }]; # JA4_N

## Outputs
set_property -dict { PACKAGE_PIN M14   IOSTANDARD LVCMOS33 } [get_ports { TX_OUT }]; # LED 0
set_property -dict { PACKAGE_PIN M15   IOSTANDARD LVCMOS33 } [get_ports { busy }];   # LED 1

## Input delay constraints
set_input_delay -clock [get_clocks sys_clk_pin] -max 0 [get_ports {RST}]
set_input_delay -clock [get_clocks sys_clk_pin] -min 2 [get_ports {RST}]

set_input_delay -clock [get_clocks sys_clk_pin] -max 0 [get_ports {Data_Valid}]
set_input_delay -clock [get_clocks sys_clk_pin] -min 2 [get_ports {Data_Valid}]

set_input_delay -clock [get_clocks sys_clk_pin] -max 0 [get_ports {parity_enable}]
set_input_delay -clock [get_clocks sys_clk_pin] -min 2 [get_ports {parity_enable}]

set_input_delay -clock [get_clocks sys_clk_pin] -max 0 [get_ports {parity_type}]
set_input_delay -clock [get_clocks sys_clk_pin] -min 2 [get_ports {parity_type}]

set_input_delay -clock [get_clocks sys_clk_pin] -max 0 [get_ports {P_DATA[*]}]
set_input_delay -clock [get_clocks sys_clk_pin] -min 2 [get_ports {P_DATA[*]}]

set_output_delay -clock [get_clocks sys_clk_pin] -min 2 [get_ports {TX_OUT}]
set_output_delay -clock [get_clocks sys_clk_pin] -min 2 [get_ports {busy}]

set_output_delay -clock [get_clocks sys_clk_pin] -max 0 [get_ports {TX_OUT}]
set_output_delay -clock [get_clocks sys_clk_pin] -max 0 [get_ports {busy}]