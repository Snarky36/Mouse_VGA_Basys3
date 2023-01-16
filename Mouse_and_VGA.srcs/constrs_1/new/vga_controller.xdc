set_property PACKAGE_PIN W5 [get_ports CLK_100]
set_property IOSTANDARD LVCMOS33 [get_ports CLK_100]
create_clock -period 10.000 -name sys_clk_pin -waveform {0.000 5.000} -add [get_ports CLK_100]

#VGA Connector
#Bank = 14, Pin name = ,					Sch name = VGA_R0
set_property PACKAGE_PIN G19 [get_ports {VGA_RED_O[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {VGA_RED_O[0]}]
#Bank = 14, Pin name = ,					Sch name = VGA_R1
set_property PACKAGE_PIN H19 [get_ports {VGA_RED_O[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {VGA_RED_O[1]}]
#Bank = 14, Pin name = ,					Sch name = VGA_R2
set_property PACKAGE_PIN J19 [get_ports {VGA_RED_O[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {VGA_RED_O[2]}]
#Bank = 14, Pin name = ,					Sch name = VGA_R3
set_property PACKAGE_PIN N19 [get_ports {VGA_RED_O[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {VGA_RED_O[3]}]
#Bank = 14, Pin name = ,					Sch name = VGA_B0
set_property PACKAGE_PIN N18 [get_ports {VGA_BLUE_O[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {VGA_BLUE_O[0]}]
#Bank = 14, Pin name = ,						Sch name = VGA_B1
set_property PACKAGE_PIN L18 [get_ports {VGA_BLUE_O[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {VGA_BLUE_O[1]}]
#Bank = 14, Pin name = ,					Sch name = VGA_B2
set_property PACKAGE_PIN K18 [get_ports {VGA_BLUE_O[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {VGA_BLUE_O[2]}]
#Bank = 14, Pin name = ,						Sch name = VGA_B3
set_property PACKAGE_PIN J18 [get_ports {VGA_BLUE_O[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {VGA_BLUE_O[3]}]
#Bank = 14, Pin name = ,					Sch name = VGA_G0
set_property PACKAGE_PIN J17 [get_ports {VGA_GREEN_O[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {VGA_GREEN_O[0]}]
#Bank = 14, Pin name = ,				Sch name = VGA_G1
set_property PACKAGE_PIN H17 [get_ports {VGA_GREEN_O[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {VGA_GREEN_O[1]}]
#Bank = 14, Pin name = ,					Sch name = VGA_G2
set_property PACKAGE_PIN G17 [get_ports {VGA_GREEN_O[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {VGA_GREEN_O[2]}]
#Bank = 14, Pin name = ,				Sch name = VGA_G3
set_property PACKAGE_PIN D17 [get_ports {VGA_GREEN_O[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {VGA_GREEN_O[3]}]
#Bank = 14, Pin name = ,						Sch name = VGA_HS
set_property PACKAGE_PIN P19 [get_ports VGA_HS_O]
set_property IOSTANDARD LVCMOS33 [get_ports VGA_HS_O]
#Bank = 14, Pin name = ,				Sch name = VGA_VS
set_property PACKAGE_PIN R19 [get_ports VGA_VS_O]
set_property IOSTANDARD LVCMOS33 [get_ports VGA_VS_O]

set_property PACKAGE_PIN R2 [get_ports {VGA_RED_I[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {VGA_RED_I[0]}]

set_property PACKAGE_PIN T1 [get_ports {VGA_RED_I[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {VGA_RED_I[1]}]

set_property PACKAGE_PIN U1 [get_ports {VGA_RED_I[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {VGA_RED_I[2]}]

set_property PACKAGE_PIN W2 [get_ports {VGA_RED_I[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {VGA_RED_I[3]}]

set_property PACKAGE_PIN R3 [get_ports {VGA_GREEN_I[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {VGA_GREEN_I[0]}]

set_property PACKAGE_PIN T2 [get_ports {VGA_GREEN_I[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {VGA_GREEN_I[1]}]

set_property PACKAGE_PIN T3 [get_ports {VGA_GREEN_I[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {VGA_GREEN_I[2]}]

set_property PACKAGE_PIN V2 [get_ports {VGA_GREEN_I[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {VGA_GREEN_I[3]}]

set_property PACKAGE_PIN W13 [get_ports {VGA_BLUE_I[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {VGA_BLUE_I[0]}]

set_property PACKAGE_PIN W14 [get_ports {VGA_BLUE_I[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {VGA_BLUE_I[1]}]

set_property PACKAGE_PIN V15 [get_ports {VGA_BLUE_I[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {VGA_BLUE_I[2]}]

set_property PACKAGE_PIN W15 [get_ports {VGA_BLUE_I[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {VGA_BLUE_I[3]}]

set_property PACKAGE_PIN V16 [get_ports {IMAGE[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {IMAGE[1]}]

set_property PACKAGE_PIN V17 [get_ports {IMAGE[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {IMAGE[0]}]

set_property PACKAGE_PIN T18 [get_ports {BTNU}]
set_property IOSTANDARD LVCMOS33 [get_ports {BTNU}]

set_property PACKAGE_PIN T17 [get_ports {BTNR}]
set_property IOSTANDARD LVCMOS33 [get_ports {BTNR}]

set_property PACKAGE_PIN W19 [get_ports {BTNL}]
set_property IOSTANDARD LVCMOS33 [get_ports {BTNL}]

set_property PACKAGE_PIN U17 [get_ports {BTND}]
set_property IOSTANDARD LVCMOS33 [get_ports {BTND}]

set_property PACKAGE_PIN U18 [get_ports {BTNM}]
set_property IOSTANDARD LVCMOS33 [get_ports {BTNM}]

set_property PACKAGE_PIN V19 [get_ports {LED1}]
set_property IOSTANDARD LVCMOS33 [get_ports {LED1}]

set_property PACKAGE_PIN U19 [get_ports {LED2}]
set_property IOSTANDARD LVCMOS33 [get_ports {LED2}]

set_property PACKAGE_PIN E19 [get_ports {LED3}]
set_property IOSTANDARD LVCMOS33 [get_ports {LED3}]

set_property PACKAGE_PIN U16 [get_ports {LED4}]
set_property IOSTANDARD LVCMOS33 [get_ports {LED4}]

set_property PACKAGE_PIN W16 [get_ports {MODE}]
set_property IOSTANDARD LVCMOS33 [get_ports {MODE}]

set_property BITSTREAM.GENERAL.COMPRESS TRUE [current_design]
set_property BITSTREAM.CONFIG.SPI_BUSWIDTH 4 [current_design]
set_property CONFIG_MODE SPIx4 [current_design]

set_property BITSTREAM.CONFIG.CONFIGRATE 33 [current_design]

set_property CONFIG_VOLTAGE 3.3 [current_design]
set_property CFGBVS VCCO [current_design]