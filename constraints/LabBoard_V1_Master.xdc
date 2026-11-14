## This file is a general .xdc for the CmodA7 rev. B
## To use it in a project:
## - comment the lines corresponding to unused pins
## - rename the used ports (in each line, after get_ports) according to the top level signal names in the project

## 12 MHz Clock Signal
set_property -dict { PACKAGE_PIN L17   IOSTANDARD LVCMOS33 } [get_ports { sysclk }]; 
create_clock -add -name sys_clk_pin -period 83.33 -waveform {0 41.66} [get_ports {sysclk}];

## LEDs
set_property -dict { PACKAGE_PIN A17   IOSTANDARD LVCMOS33 } [get_ports { ledboard0 }]; 
set_property -dict { PACKAGE_PIN C16   IOSTANDARD LVCMOS33 } [get_ports { ledboard1 }]; 

## RGB LED
set_property -dict { PACKAGE_PIN B17   IOSTANDARD LVCMOS33 } [get_ports { ledboard_b }]; 
set_property -dict { PACKAGE_PIN B16   IOSTANDARD LVCMOS33 } [get_ports { ledboard_g }]; 
set_property -dict { PACKAGE_PIN C17   IOSTANDARD LVCMOS33 } [get_ports { ledboard_r }]; 

## Buttons
set_property -dict { PACKAGE_PIN A18   IOSTANDARD LVCMOS33 } [get_ports { btn[0] }]; 
set_property -dict { PACKAGE_PIN B18   IOSTANDARD LVCMOS33 } [get_ports { btn[1] }]; 

## Pmod Header JA
set_property -dict { PACKAGE_PIN G17   IOSTANDARD LVCMOS33 } [get_ports { ja[0] }]; 
set_property -dict { PACKAGE_PIN G19   IOSTANDARD LVCMOS33 } [get_ports { ja[1] }]; 
set_property -dict { PACKAGE_PIN N18   IOSTANDARD LVCMOS33 } [get_ports { ja[2] }]; 
set_property -dict { PACKAGE_PIN L18   IOSTANDARD LVCMOS33 } [get_ports { ja[3] }]; 
set_property -dict { PACKAGE_PIN H17   IOSTANDARD LVCMOS33 } [get_ports { ja[4] }]; 
set_property -dict { PACKAGE_PIN H19   IOSTANDARD LVCMOS33 } [get_ports { ja[5] }]; 
set_property -dict { PACKAGE_PIN J19   IOSTANDARD LVCMOS33 } [get_ports { ja[6] }]; 
set_property -dict { PACKAGE_PIN K18   IOSTANDARD LVCMOS33 } [get_ports { ja[7] }]; 

## Analog XADC Pins
## Only declare these if you want to use pins 15 and 16 as single ended analog inputs. pin 15 -> vaux4, pin16 -> vaux12
#set_property -dict { PACKAGE_PIN G2    IOSTANDARD LVCMOS33 } [get_ports { xa_n[0] }]; #IO_L1N_T0_AD4N_35 Sch=ain_n[15]
#set_property -dict { PACKAGE_PIN G3    IOSTANDARD LVCMOS33 } [get_ports { xa_p[0] }]; #IO_L1P_T0_AD4P_35 Sch=ain_p[15]
#set_property -dict { PACKAGE_PIN J2    IOSTANDARD LVCMOS33 } [get_ports { xa_n[1] }]; #IO_L2N_T0_AD12N_35 Sch=ain_n[16]
#set_property -dict { PACKAGE_PIN H2    IOSTANDARD LVCMOS33 } [get_ports { xa_p[1] }]; #IO_L2P_T0_AD12P_35 Sch=ain_p[16]

## GPIO Pins
## Pins 15 and 16 should remain commented if using them as analog inputs
set_property -dict { PACKAGE_PIN M3    IOSTANDARD LVCMOS33 } [get_ports { led0  }]; 
set_property -dict { PACKAGE_PIN L3    IOSTANDARD LVCMOS33 } [get_ports { led1  }]; 
set_property -dict { PACKAGE_PIN A16   IOSTANDARD LVCMOS33 } [get_ports { led2  }]; 
set_property -dict { PACKAGE_PIN K3    IOSTANDARD LVCMOS33 } [get_ports { led3  }]; 
set_property -dict { PACKAGE_PIN C15   IOSTANDARD LVCMOS33 } [get_ports { led4  }]; 
set_property -dict { PACKAGE_PIN H1    IOSTANDARD LVCMOS33 } [get_ports { led5  }]; 
set_property -dict { PACKAGE_PIN A15   IOSTANDARD LVCMOS33 } [get_ports { led6  }]; 
set_property -dict { PACKAGE_PIN B15   IOSTANDARD LVCMOS33 } [get_ports { led7  }]; 
set_property -dict { PACKAGE_PIN A14   IOSTANDARD LVCMOS33 } [get_ports { seg_A  }]; 
set_property -dict { PACKAGE_PIN J3    IOSTANDARD LVCMOS33 } [get_ports { seg_B }]; 
set_property -dict { PACKAGE_PIN J1    IOSTANDARD LVCMOS33 } [get_ports { seg_C }]; 
set_property -dict { PACKAGE_PIN K2    IOSTANDARD LVCMOS33 } [get_ports { seg_D }]; 
set_property -dict { PACKAGE_PIN L1    IOSTANDARD LVCMOS33 } [get_ports { seg_E }]; 
set_property -dict { PACKAGE_PIN L2    IOSTANDARD LVCMOS33 } [get_ports { seg_F }]; 
set_property -dict { PACKAGE_PIN M1    IOSTANDARD LVCMOS33 } [get_ports { seg_G }]; 
set_property -dict { PACKAGE_PIN N3    IOSTANDARD LVCMOS33 } [get_ports { seg_DP }]; 
set_property -dict { PACKAGE_PIN P3    IOSTANDARD LVCMOS33 } [get_ports { DIGI_1 }]; 
set_property -dict { PACKAGE_PIN M2    IOSTANDARD LVCMOS33 } [get_ports { DIGI_2 }]; 
set_property -dict { PACKAGE_PIN N1    IOSTANDARD LVCMOS33 } [get_ports { DIGI_3 }]; 
set_property -dict { PACKAGE_PIN N2    IOSTANDARD LVCMOS33 } [get_ports { DIGI_4 }]; 
set_property -dict { PACKAGE_PIN P1    IOSTANDARD LVCMOS33 } [get_ports { DIP_SW0 }]; 
set_property -dict { PACKAGE_PIN R3    IOSTANDARD LVCMOS33 } [get_ports { DIP_SW1 }]; 
set_property -dict { PACKAGE_PIN T3    IOSTANDARD LVCMOS33 } [get_ports { DIP_SW2 }]; 
set_property -dict { PACKAGE_PIN R2    IOSTANDARD LVCMOS33 } [get_ports { DIP_SW3 }]; 
set_property -dict { PACKAGE_PIN T1    IOSTANDARD LVCMOS33 } [get_ports { SP_0 }]; 
set_property -dict { PACKAGE_PIN T2    IOSTANDARD LVCMOS33 } [get_ports { SP_1 }]; 
set_property -dict { PACKAGE_PIN U1    IOSTANDARD LVCMOS33 } [get_ports { CON1_1 }]; 
set_property -dict { PACKAGE_PIN W2    IOSTANDARD LVCMOS33 } [get_ports { CON1_2 }]; 
set_property -dict { PACKAGE_PIN V2    IOSTANDARD LVCMOS33 } [get_ports { CON1_3 }]; 
set_property -dict { PACKAGE_PIN W3    IOSTANDARD LVCMOS33 } [get_ports { CON1_4 }]; 
set_property -dict { PACKAGE_PIN V3    IOSTANDARD LVCMOS33 } [get_ports { CON1_7 }]; 
set_property -dict { PACKAGE_PIN W5    IOSTANDARD LVCMOS33 } [get_ports { CON1_8 }]; 
set_property -dict { PACKAGE_PIN V4    IOSTANDARD LVCMOS33 } [get_ports { CON2_2 }]; 
set_property -dict { PACKAGE_PIN U4    IOSTANDARD LVCMOS33 } [get_ports { CON1_10 }];
set_property -dict { PACKAGE_PIN V5    IOSTANDARD LVCMOS33 } [get_ports { CON2_1 }]; 
set_property -dict { PACKAGE_PIN W4    IOSTANDARD LVCMOS33 } [get_ports { CON1_9 }]; 
set_property -dict { PACKAGE_PIN U5    IOSTANDARD LVCMOS33 } [get_ports { CON2_3 }]; 
set_property -dict { PACKAGE_PIN U2    IOSTANDARD LVCMOS33 } [get_ports { CON2_4 }]; 
set_property -dict { PACKAGE_PIN W6    IOSTANDARD LVCMOS33 } [get_ports { CON2_7 }]; 
set_property -dict { PACKAGE_PIN U3    IOSTANDARD LVCMOS33 } [get_ports { CON2_8 }]; 
set_property -dict { PACKAGE_PIN U7    IOSTANDARD LVCMOS33 } [get_ports { CON2_9 }]; 
set_property -dict { PACKAGE_PIN W7    IOSTANDARD LVCMOS33 } [get_ports { CON2_10 }]; 
set_property -dict { PACKAGE_PIN U8    IOSTANDARD LVCMOS33 } [get_ports { NC0 }]; 
set_property -dict { PACKAGE_PIN V8    IOSTANDARD LVCMOS33 } [get_ports { NC1 }];
