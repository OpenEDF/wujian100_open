#Copyright (c) 2019 Alibaba Group Holding Limited
#
#Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:
#
#The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.
#
#THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

#===========================================================
# Macro
# Xilinx Kinext 325t
# Pin assignment constraint file
#===========================================================

#===========================================
# set io standard
#===========================================
set_property IOSTANDARD LVCMOS33 [get_ports]

#===========================================
# Create clock
#===========================================
create_clock -period 20.000 -name PIN_EHS [get_ports PIN_EHS]
create_clock -period 500.000 -name PAD_JTAG_TCLK [get_ports PAD_JTAG_TCLK]
set_clock_groups -asynchronous -name {clkgroup_2} -group [get_clocks {CLKDIV PIN_EHS}]
set_clock_groups -asynchronous -name {clkgroup_3} -group [get_clocks {PAD_JTAG_TCLK}]
set_false_path -from [get_pins u_clk_wiz_0/inst/mmcm_adv_inst/CLKOUT0] -to [get_pins x_cpu_top/CPU/x_cr_tcipif_top/x_cr_coretim_top/refclk_ff1_reg/D]

#===========================================
# Global clock and reset source
#===========================================
set_property PACKAGE_PIN B17   [get_ports PIN_EHS];
set_property PACKAGE_PIN W11   [get_ports PAD_MCURST];
set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets PAD_JTAG_TCLK]

#===========================================
# C-SKY  JTAG interface: J8
#===========================================
set_property PACKAGE_PIN AA15  [get_ports PAD_JTAG_TCLK]
set_property PACKAGE_PIN P14   [get_ports PAD_JTAG_TMS]

#===========================================
# YOC SOCKET 1
#===========================================
set_property PACKAGE_PIN T15    [get_ports PAD_GPIO_0]
set_property PACKAGE_PIN P15    [get_ports PAD_GPIO_1]
set_property PACKAGE_PIN U15    [get_ports PAD_GPIO_2]
set_property PACKAGE_PIN AA16   [get_ports PAD_GPIO_3]
set_property PACKAGE_PIN Y16    [get_ports PAD_GPIO_4]
set_property PACKAGE_PIN R16    [get_ports PAD_GPIO_5]
set_property PACKAGE_PIN AB16   [get_ports PAD_GPIO_6]
set_property PACKAGE_PIN P16    [get_ports PAD_GPIO_7]
set_property PACKAGE_PIN R17    [get_ports PAD_GPIO_8]
set_property PACKAGE_PIN U16    [get_ports PAD_GPIO_9]
set_property PACKAGE_PIN V17    [get_ports PAD_GPIO_10]
set_property PACKAGE_PIN T16    [get_ports PAD_GPIO_11]
set_property PACKAGE_PIN P17    [get_ports PAD_GPIO_12]
set_property PACKAGE_PIN W16    [get_ports PAD_GPIO_13]
set_property PACKAGE_PIN Y17    [get_ports PAD_GPIO_14]
set_property PACKAGE_PIN U17    [get_ports PAD_GPIO_15]
set_property PACKAGE_PIN T18    [get_ports PAD_GPIO_16]
set_property PACKAGE_PIN R18    [get_ports PAD_GPIO_17]
set_property PACKAGE_PIN W17    [get_ports PAD_GPIO_18]
                                           
#===========================================
# YOC SOCKET 2
#===========================================
set_property PACKAGE_PIN AB17    [get_ports PAD_GPIO_19]
set_property PACKAGE_PIN AB18    [get_ports PAD_GPIO_20]
set_property PACKAGE_PIN Y18     [get_ports PAD_GPIO_21]
set_property PACKAGE_PIN V18     [get_ports PAD_GPIO_22]
set_property PACKAGE_PIN AA18    [get_ports PAD_GPIO_23]
set_property PACKAGE_PIN AA19    [get_ports PAD_GPIO_24]
set_property PACKAGE_PIN W19     [get_ports PAD_GPIO_25]
set_property PACKAGE_PIN AA20    [get_ports PAD_GPIO_26]
set_property PACKAGE_PIN W20     [get_ports PAD_GPIO_27]
set_property PACKAGE_PIN V19     [get_ports PAD_GPIO_28]
set_property PACKAGE_PIN U20     [get_ports PAD_GPIO_29]
set_property PACKAGE_PIN AB20    [get_ports PAD_GPIO_30]
set_property PACKAGE_PIN T20     [get_ports PAD_GPIO_31]

#===========================================
# YOC SOCKET 3
#===========================================
set_property PACKAGE_PIN M21    [get_ports PAD_PWM_CH0]
set_property PACKAGE_PIN N17    [get_ports PAD_PWM_CH1]
set_property PACKAGE_PIN N13    [get_ports PAD_PWM_CH2]
set_property PACKAGE_PIN N19    [get_ports PAD_PWM_CH3]
set_property PACKAGE_PIN N18    [get_ports PAD_PWM_CH4]
set_property PACKAGE_PIN N14    [get_ports PAD_PWM_CH5]
set_property PACKAGE_PIN N20    [get_ports PAD_PWM_CH6]
set_property PACKAGE_PIN N22    [get_ports PAD_PWM_CH7]
set_property PACKAGE_PIN N15    [get_ports PAD_PWM_CH8]
set_property PACKAGE_PIN M15    [get_ports PAD_PWM_CH9]
set_property PACKAGE_PIN M17    [get_ports PAD_PWM_CH10]
set_property PACKAGE_PIN M13    [get_ports PAD_PWM_CH11]
set_property PACKAGE_PIN M18    [get_ports PAD_PWM_FAULT]

#===========================================
# YOC SOCKET 4
#===========================================
set_property PACKAGE_PIN L18    [get_ports PAD_USI0_NSS]
set_property PACKAGE_PIN L15    [get_ports PAD_USI0_SCLK]
set_property PACKAGE_PIN L21    [get_ports PAD_USI0_SD0]
set_property PACKAGE_PIN L19    [get_ports PAD_USI0_SD1]
set_property PACKAGE_PIN K18    [get_ports PAD_USI1_NSS]
set_property PACKAGE_PIN K16    [get_ports PAD_USI1_SCLK]
set_property PACKAGE_PIN K13    [get_ports PAD_USI1_SD0]
set_property PACKAGE_PIN K17    [get_ports PAD_USI1_SD1]
set_property PACKAGE_PIN K14    [get_ports PAD_USI2_NSS]
set_property PACKAGE_PIN K19    [get_ports PAD_USI2_SCLK]
set_property PACKAGE_PIN J14    [get_ports PAD_USI2_SD0]
set_property PACKAGE_PIN K22    [get_ports PAD_USI2_SD1]

#===========================================
# LED
#===========================================
set_property PACKAGE_PIN P4  [get_ports POUT_EHS]

#===========================================
# FPGA configuration properties
#===========================================
set_property CONFIG_VOLTAGE  3.3   [current_design]
set_property CFGBVS          VCCO  [current_design]
set_property CONFIG_MODE     SPIx4 [current_design]
set_property BITSTREAM.CONFIG.SPI_BUSWIDTH      4      [current_design]
set_property BITSTREAM.CONFIG.CONFIGRATE        40     [current_design]
set_property BITSTREAM.CONFIG.EXTMASTERCCLK_EN  DIV-2  [current_design]
