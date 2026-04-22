# ADV7511 I2C bus
set_property PACKAGE_PIN AD15    [get_ports {iic_hdmi_scl_io}]
set_property PACKAGE_PIN AE15    [get_ports {iic_hdmi_sda_io}]
set_property IOSTANDARD LVCMOS33 [get_ports iic_hdmi_*_io]

# ADV7511 HDMI Driver video data    
set_property PACKAGE_PIN W23       [get_ports adv7511_y_o[7]    ] ;# Bank  65 VCCO - VCC1V8   - IO_L11N_T1U_N9_GC_A11_D27_65
set_property PACKAGE_PIN V23       [get_ports adv7511_y_o[6]    ] ;# Bank  65 VCCO - VCC1V8   - IO_L11P_T1U_N8_GC_A10_D26_65
set_property PACKAGE_PIN W26       [get_ports adv7511_y_o[5]    ] ;# Bank  65 VCCO - VCC1V8   - IO_L10N_T1U_N7_QBC_AD4N_A13_D29_65
set_property PACKAGE_PIN W25       [get_ports adv7511_y_o[4]    ] ;# Bank  65 VCCO - VCC1V8   - IO_L10P_T1U_N6_QBC_AD4P_A12_D28_65
set_property PACKAGE_PIN AA25      [get_ports adv7511_y_o[3]    ] ;# Bank  65 VCCO - VCC1V8   - IO_L9N_T1L_N5_AD12N_A15_D31_65
set_property PACKAGE_PIN AA24      [get_ports adv7511_y_o[2]    ] ;# Bank  65 VCCO - VCC1V8   - IO_L9P_T1L_N4_AD12P_A14_D30_65
set_property PACKAGE_PIN Y26       [get_ports adv7511_y_o[1]    ] ;# Bank  65 VCCO - VCC1V8   - IO_L8N_T1L_N3_AD5N_A17_65
set_property PACKAGE_PIN Y25       [get_ports adv7511_y_o[0]    ] ;# Bank  65 VCCO - VCC1V8   - IO_L8P_T1L_N2_AD5P_A16_65

set_property PACKAGE_PIN Y23       [get_ports adv7511_uv_o[7]   ] ;# Bank  65 VCCO - VCC1V8   - IO_L7N_T1L_N1_QBC_AD13N_A19_65
set_property PACKAGE_PIN Y22       [get_ports adv7511_uv_o[6]   ] ;# Bank  65 VCCO - VCC1V8   - IO_L7P_T1L_N0_QBC_AD13P_A18_65
set_property PACKAGE_PIN W20       [get_ports adv7511_uv_o[5]   ] ;# Bank  65 VCCO - VCC1V8   - IO_L6N_T0U_N11_AD6N_A21_65
set_property PACKAGE_PIN W19       [get_ports adv7511_uv_o[4]   ] ;# Bank  65 VCCO - VCC1V8   - IO_L6P_T0U_N10_AD6P_A20_65
set_property PACKAGE_PIN T23       [get_ports adv7511_uv_o[3]   ] ;# Bank  65 VCCO - VCC1V8   - IO_L5N_T0U_N9_AD14N_A23_65
set_property PACKAGE_PIN T22       [get_ports adv7511_uv_o[2]   ] ;# Bank  65 VCCO - VCC1V8   - IO_L5P_T0U_N8_AD14P_A22_65
set_property PACKAGE_PIN V22       [get_ports adv7511_uv_o[1]   ] ;# Bank  65 VCCO - VCC1V8   - IO_L4N_T0U_N7_DBC_AD7N_A25_65
set_property PACKAGE_PIN V21       [get_ports adv7511_uv_o[0]   ] ;# Bank  65 VCCO - VCC1V8   - IO_L4P_T0U_N6_DBC_AD7P_A24_65

set_property PACKAGE_PIN P20       [get_ports adv7511_clk_o     ] ;# Bank  65 VCCO - VCC1V8   - IO_L20P_T3L_N2_AD1P_D08_65
set_property PACKAGE_PIN U20       [get_ports adv7511_de_o      ] ;# Bank  65 VCCO - VCC1V8   - IO_L3N_T0L_N5_AD15N_A27_65
set_property PACKAGE_PIN U21       [get_ports adv7511_vsync_o   ] ;# Bank  65 VCCO - VCC1V8   - IO_L2P_T0L_N2_FOE_B_65
set_property PACKAGE_PIN V19       [get_ports adv7511_hsync_o   ] ;# Bank  65 VCCO - VCC1V8   - IO_L1N_T0L_N1_DBC_RS1_65
set_property PACKAGE_PIN R26       [get_ports adv7511_int_i     ] ;# Bank  65 VCCO - VCC1V8   - IO_L18N_T2U_N11_AD2N_D13_65

set_property IOSTANDARD  LVCMOS18  [get_ports adv7511_*_o       ] ;# Bank  65 VCCO - VCC1V8
set_property IOSTANDARD  LVCMOS18  [get_ports adv7511_*_i       ] ;# Bank  65 VCCO - VCC1V8

# GPIO LED
set_property PACKAGE_PIN C9        [get_ports GPIO_LED[0]   ] ;# Bank  86 VCCO - VCC3V3   - IO_L9N_AD3N_86
set_property PACKAGE_PIN D9        [get_ports GPIO_LED[1]   ] ;# Bank  86 VCCO - VCC3V3   - IO_L9P_AD3P_86
set_property PACKAGE_PIN E10       [get_ports GPIO_LED[2]   ] ;# Bank  86 VCCO - VCC3V3   - IO_L7N_HDGC_AD5N_86
set_property PACKAGE_PIN E11       [get_ports GPIO_LED[3]   ] ;# Bank  86 VCCO - VCC3V3   - IO_L7P_HDGC_AD5P_86
set_property PACKAGE_PIN F9        [get_ports GPIO_LED[4]   ] ;# Bank  86 VCCO - VCC3V3   - IO_L6N_HDGC_AD6N_86
set_property PACKAGE_PIN F10       [get_ports GPIO_LED[5]   ] ;# Bank  86 VCCO - VCC3V3   - IO_L6P_HDGC_AD6P_86
set_property PACKAGE_PIN G9        [get_ports GPIO_LED[6]   ] ;# Bank  86 VCCO - VCC3V3   - IO_L5N_HDGC_AD7N_86
set_property PACKAGE_PIN G10       [get_ports GPIO_LED[7]   ] ;# Bank  86 VCCO - VCC3V3   - IO_L5P_HDGC_AD7P_86

set_property IOSTANDARD  LVCMOS33  [get_ports GPIO_LED*     ] ;# Bank  86 VCCO - VCC3V3   - IO_L9N_AD3N_86
