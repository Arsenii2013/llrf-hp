set_property -dict { PACKAGE_PIN R14   IOSTANDARD LVCMOS33 } [get_ports { PL_led }]; #IO_L6N_T0_VREF_34 Sch=led[0]
# -dict { PACKAGE_PIN P14   IOSTANDARD LVCMOS33 } [get_ports { PS_led }]; #IO_L6P_T0_34 Sch=led[1]

set_property -dict { PACKAGE_PIN H16   IOSTANDARD LVCMOS33 } [get_ports { PL_clk }]; #IO_L13P_T2_MRCC_35 Sch=sysclk
create_clock -add -name sys_clk_pin -period 8.00 -waveform {0 4} [get_ports { PL_clk }];
