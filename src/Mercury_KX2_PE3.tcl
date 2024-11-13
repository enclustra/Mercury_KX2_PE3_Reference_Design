# ----------------------------------------------------------------------------------------------------
# Copyright (c) 2024 by Enclustra GmbH, Switzerland.
#
# Permission is hereby granted, free of charge, to any person obtaining a copy of
# this hardware, software, firmware, and associated documentation files (the
# "Product"), to deal in the Product without restriction, including without
# limitation the rights to use, copy, modify, merge, publish, distribute,
# sublicense, and/or sell copies of the Product, and to permit persons to whom the
# Product is furnished to do so, subject to the following conditions:
#
# The above copyright notice and this permission notice shall be included in all
# copies or substantial portions of the Product.
#
# THE PRODUCT IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED,
# INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A
# PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT
# HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
# OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
# PRODUCT OR THE USE OR OTHER DEALINGS IN THE PRODUCT.
# ----------------------------------------------------------------------------------------------------

set_property CFGBVS VCCO [current_design]
set_property CONFIG_VOLTAGE 3.3 [current_design]
set_property BITSTREAM.CONFIG.OVERTEMPPOWERDOWN ENABLE [current_design]
 
# ----------------------------------------------------------------------------------
# Important! Do not remove this constraint!
# This property ensures that all unused pins are set to high impedance.
# If the constraint is removed, all unused pins have to be set to HiZ in the top level file.
set_property BITSTREAM.CONFIG.UNUSEDPIN PULLNONE [current_design]
# ----------------------------------------------------------------------------------
set_property BITSTREAM.GENERAL.COMPRESS TRUE [current_design]
set_property BITSTREAM.CONFIG.SPI_32BIT_ADDR YES [current_design]
set_property BITSTREAM.CONFIG.CONFIGRATE 66 [current_design]
set_property BITSTREAM.CONFIG.SPI_FALL_EDGE YES [current_design]
set_property BITSTREAM.CONFIG.SPI_BUSWIDTH 4 [current_design]
set_property CONFIG_MODE SPIx4 [current_design]

# Anios IO
set_property -dict {PACKAGE_PIN AD25  IOSTANDARD LVCMOS33  } [get_ports {IO_D0_P}]
set_property -dict {PACKAGE_PIN AE25  IOSTANDARD LVCMOS33  } [get_ports {IO_D1_N}]
set_property -dict {PACKAGE_PIN U24   IOSTANDARD LVCMOS33  } [get_ports {IO_D2_P}]
set_property -dict {PACKAGE_PIN U25   IOSTANDARD LVCMOS33  } [get_ports {IO_D3_N}]
set_property -dict {PACKAGE_PIN AF24  IOSTANDARD LVCMOS33  } [get_ports {IO_D4_P}]
set_property -dict {PACKAGE_PIN AF25  IOSTANDARD LVCMOS33  } [get_ports {IO_D5_N}]
set_property -dict {PACKAGE_PIN V23   IOSTANDARD LVCMOS33  } [get_ports {IO_D6_P}]
set_property -dict {PACKAGE_PIN V24   IOSTANDARD LVCMOS33  } [get_ports {IO_D7_N}]
set_property -dict {PACKAGE_PIN AE23  IOSTANDARD LVCMOS33  } [get_ports {IO_D8_P}]
set_property -dict {PACKAGE_PIN AF23  IOSTANDARD LVCMOS33  } [get_ports {IO_D9_N}]
set_property -dict {PACKAGE_PIN V21   IOSTANDARD LVCMOS33  } [get_ports {IO_D10_P}]
set_property -dict {PACKAGE_PIN W21   IOSTANDARD LVCMOS33  } [get_ports {IO_D11_N}]
set_property -dict {PACKAGE_PIN AB22  IOSTANDARD LVCMOS33  } [get_ports {IO_D12_P}]
set_property -dict {PACKAGE_PIN AC22  IOSTANDARD LVCMOS33  } [get_ports {IO_D13_N}]
set_property -dict {PACKAGE_PIN AE22  IOSTANDARD LVCMOS33  } [get_ports {IO_D14_P}]
set_property -dict {PACKAGE_PIN AF22  IOSTANDARD LVCMOS33  } [get_ports {IO_D15_N}]
set_property -dict {PACKAGE_PIN AB21  IOSTANDARD LVCMOS33  } [get_ports {IO_D16_P}]
set_property -dict {PACKAGE_PIN AC21  IOSTANDARD LVCMOS33  } [get_ports {IO_D17_N}]
set_property -dict {PACKAGE_PIN AD21  IOSTANDARD LVCMOS33  } [get_ports {IO_D18_P}]
set_property -dict {PACKAGE_PIN AE21  IOSTANDARD LVCMOS33  } [get_ports {IO_D19_N}]
set_property -dict {PACKAGE_PIN AA23  IOSTANDARD LVCMOS33  } [get_ports {IO_D20_P}]
set_property -dict {PACKAGE_PIN AB24  IOSTANDARD LVCMOS33  } [get_ports {IO_D21_N}]
set_property -dict {PACKAGE_PIN W20   IOSTANDARD LVCMOS33  } [get_ports {IO_D22_P}]
set_property -dict {PACKAGE_PIN Y21   IOSTANDARD LVCMOS33  } [get_ports {IO_D23_N}]
set_property -dict {PACKAGE_PIN AA22  IOSTANDARD LVCMOS33  } [get_ports {IO_CLK0_N}]
set_property -dict {PACKAGE_PIN Y22   IOSTANDARD LVCMOS33  } [get_ports {IO_CLK0_P}]

# 100 MHz clock
set_property -dict {PACKAGE_PIN AA4   IOSTANDARD SSTL15    } [get_ports {Clk100_R}]

# 200 MHz differential clock
set_property DIFF_TERM FALSE [get_ports CLK200_N]
set_property DIFF_TERM FALSE [get_ports CLK200_P]
set_property -dict {PACKAGE_PIN AC11  IOSTANDARD DIFF_SSTL15} [get_ports {CLK200_N}]
set_property -dict {PACKAGE_PIN AB11  IOSTANDARD DIFF_SSTL15} [get_ports {CLK200_P}]

# Clock Generator
set_property -dict {PACKAGE_PIN AC24  IOSTANDARD LVCMOS33  } [get_ports {OSC_N}]
set_property -dict {PACKAGE_PIN AC23  IOSTANDARD LVCMOS33  } [get_ports {OSC_P}]

# Display Port
set_property -dict {PACKAGE_PIN E22   IOSTANDARD LVCMOS33  } [get_ports {DP_HPD}]
set_property -dict {PACKAGE_PIN D23   IOSTANDARD LVCMOS33  } [get_ports {DP_AUX_IN}]
set_property -dict {PACKAGE_PIN E21   IOSTANDARD LVCMOS33  } [get_ports {DP_AUX_OE}]
set_property -dict {PACKAGE_PIN D24   IOSTANDARD LVCMOS33  } [get_ports {DP_AUX_OUT}]

# FMC HPC Connector
set_property -dict {PACKAGE_PIN M26   IOSTANDARD LVCMOS33  } [get_ports {FMC_HA02_N}]
set_property -dict {PACKAGE_PIN N26   IOSTANDARD LVCMOS33  } [get_ports {FMC_HA02_P}]
set_property -dict {PACKAGE_PIN P26   IOSTANDARD LVCMOS33  } [get_ports {FMC_HA03_N}]
set_property -dict {PACKAGE_PIN R26   IOSTANDARD LVCMOS33  } [get_ports {FMC_HA03_P}]
set_property -dict {PACKAGE_PIN L25   IOSTANDARD LVCMOS33  } [get_ports {FMC_HA04_N}]
set_property -dict {PACKAGE_PIN M25   IOSTANDARD LVCMOS33  } [get_ports {FMC_HA04_P}]
set_property -dict {PACKAGE_PIN M22   IOSTANDARD LVCMOS33  } [get_ports {FMC_HA05_N}]
set_property -dict {PACKAGE_PIN M21   IOSTANDARD LVCMOS33  } [get_ports {FMC_HA05_P}]
set_property -dict {PACKAGE_PIN L24   IOSTANDARD LVCMOS33  } [get_ports {FMC_HA06_N}]
set_property -dict {PACKAGE_PIN M24   IOSTANDARD LVCMOS33  } [get_ports {FMC_HA06_P}]
set_property -dict {PACKAGE_PIN P25   IOSTANDARD LVCMOS33  } [get_ports {FMC_HA07_N}]
set_property -dict {PACKAGE_PIN R25   IOSTANDARD LVCMOS33  } [get_ports {FMC_HA07_P}]
set_property -dict {PACKAGE_PIN K26   IOSTANDARD LVCMOS33  } [get_ports {FMC_HA08_N}]
set_property -dict {PACKAGE_PIN K25   IOSTANDARD LVCMOS33  } [get_ports {FMC_HA08_P}]
set_property -dict {PACKAGE_PIN R20   IOSTANDARD LVCMOS33  } [get_ports {FMC_HA09_N}]
set_property -dict {PACKAGE_PIN T20   IOSTANDARD LVCMOS33  } [get_ports {FMC_HA09_P}]
set_property -dict {PACKAGE_PIN T23   IOSTANDARD LVCMOS33  } [get_ports {FMC_HA10_N}]
set_property -dict {PACKAGE_PIN T22   IOSTANDARD LVCMOS33  } [get_ports {FMC_HA10_P}]
set_property -dict {PACKAGE_PIN U20   IOSTANDARD LVCMOS33  } [get_ports {FMC_HA11_N}]
set_property -dict {PACKAGE_PIN U19   IOSTANDARD LVCMOS33  } [get_ports {FMC_HA11_P}]
set_property -dict {PACKAGE_PIN P20   IOSTANDARD LVCMOS33  } [get_ports {FMC_HA12_N}]
set_property -dict {PACKAGE_PIN P19   IOSTANDARD LVCMOS33  } [get_ports {FMC_HA12_P}]
set_property -dict {PACKAGE_PIN T19   IOSTANDARD LVCMOS33  } [get_ports {FMC_HA13_N}]
set_property -dict {PACKAGE_PIN T18   IOSTANDARD LVCMOS33  } [get_ports {FMC_HA13_P}]
set_property -dict {PACKAGE_PIN N24   IOSTANDARD LVCMOS33  } [get_ports {FMC_HA14_N}]
set_property -dict {PACKAGE_PIN P24   IOSTANDARD LVCMOS33  } [get_ports {FMC_HA14_P}]
set_property -dict {PACKAGE_PIN M20   IOSTANDARD LVCMOS33  } [get_ports {FMC_HA15_N}]
set_property -dict {PACKAGE_PIN N19   IOSTANDARD LVCMOS33  } [get_ports {FMC_HA15_P}]
set_property -dict {PACKAGE_PIN P18   IOSTANDARD LVCMOS33  } [get_ports {FMC_HA16_N}]
set_property -dict {PACKAGE_PIN R18   IOSTANDARD LVCMOS33  } [get_ports {FMC_HA16_P}]
set_property -dict {PACKAGE_PIN N23   IOSTANDARD LVCMOS33  } [get_ports {FMC_HA18_N}]
set_property -dict {PACKAGE_PIN P23   IOSTANDARD LVCMOS33  } [get_ports {FMC_HA18_P}]
set_property -dict {PACKAGE_PIN T25   IOSTANDARD LVCMOS33  } [get_ports {FMC_HA19_N}]
set_property -dict {PACKAGE_PIN T24   IOSTANDARD LVCMOS33  } [get_ports {FMC_HA19_P}]
set_property -dict {PACKAGE_PIN T17   IOSTANDARD LVCMOS33  } [get_ports {FMC_HA20_N}]
set_property -dict {PACKAGE_PIN U17   IOSTANDARD LVCMOS33  } [get_ports {FMC_HA20_P}]
set_property -dict {PACKAGE_PIN R17   IOSTANDARD LVCMOS33  } [get_ports {FMC_HA21_N}]
set_property -dict {PACKAGE_PIN R16   IOSTANDARD LVCMOS33  } [get_ports {FMC_HA21_P}]
set_property -dict {PACKAGE_PIN N17   IOSTANDARD LVCMOS33  } [get_ports {FMC_HA22_N}]
set_property -dict {PACKAGE_PIN P16   IOSTANDARD LVCMOS33  } [get_ports {FMC_HA22_P}]
set_property -dict {PACKAGE_PIN M19   IOSTANDARD LVCMOS33  } [get_ports {FMC_HA23_N}]
set_property -dict {PACKAGE_PIN N18   IOSTANDARD LVCMOS33  } [get_ports {FMC_HA23_P}]
set_property -dict {PACKAGE_PIN H8    IOSTANDARD LVCMOS33  } [get_ports {FMC_HB01_N}]
set_property -dict {PACKAGE_PIN H9    IOSTANDARD LVCMOS33  } [get_ports {FMC_HB01_P}]
set_property -dict {PACKAGE_PIN D16   IOSTANDARD LVCMOS33  } [get_ports {FMC_HB02_N}]
set_property -dict {PACKAGE_PIN D15   IOSTANDARD LVCMOS33  } [get_ports {FMC_HB02_P}]
set_property -dict {PACKAGE_PIN F8    IOSTANDARD LVCMOS33  } [get_ports {FMC_HB03_N}]
set_property -dict {PACKAGE_PIN F9    IOSTANDARD LVCMOS33  } [get_ports {FMC_HB03_P}]
set_property -dict {PACKAGE_PIN G16   IOSTANDARD LVCMOS33  } [get_ports {FMC_HB04_N}]
set_property -dict {PACKAGE_PIN H16   IOSTANDARD LVCMOS33  } [get_ports {FMC_HB04_P}]
set_property -dict {PACKAGE_PIN A19   IOSTANDARD LVCMOS33  } [get_ports {FMC_LA02_N}]
set_property -dict {PACKAGE_PIN A18   IOSTANDARD LVCMOS33  } [get_ports {FMC_LA02_P}]
set_property -dict {PACKAGE_PIN B19   IOSTANDARD LVCMOS33  } [get_ports {FMC_LA03_N}]
set_property -dict {PACKAGE_PIN C19   IOSTANDARD LVCMOS33  } [get_ports {FMC_LA03_P}]
set_property -dict {PACKAGE_PIN A17   IOSTANDARD LVCMOS33  } [get_ports {FMC_LA04_N}]
set_property -dict {PACKAGE_PIN B17   IOSTANDARD LVCMOS33  } [get_ports {FMC_LA04_P}]
set_property -dict {PACKAGE_PIN B16   IOSTANDARD LVCMOS33  } [get_ports {FMC_LA05_N}]
set_property -dict {PACKAGE_PIN C16   IOSTANDARD LVCMOS33  } [get_ports {FMC_LA05_P}]
set_property -dict {PACKAGE_PIN C18   IOSTANDARD LVCMOS33  } [get_ports {FMC_LA06_N}]
set_property -dict {PACKAGE_PIN C17   IOSTANDARD LVCMOS33  } [get_ports {FMC_LA06_P}]
set_property -dict {PACKAGE_PIN D20   IOSTANDARD LVCMOS33  } [get_ports {FMC_LA07_N}]
set_property -dict {PACKAGE_PIN D19   IOSTANDARD LVCMOS33  } [get_ports {FMC_LA07_P}]
set_property -dict {PACKAGE_PIN G20   IOSTANDARD LVCMOS33  } [get_ports {FMC_LA08_N}]
set_property -dict {PACKAGE_PIN H19   IOSTANDARD LVCMOS33  } [get_ports {FMC_LA08_P}]
set_property -dict {PACKAGE_PIN J19   IOSTANDARD LVCMOS33  } [get_ports {FMC_LA09_N}]
set_property -dict {PACKAGE_PIN J18   IOSTANDARD LVCMOS33  } [get_ports {FMC_LA09_P}]
set_property -dict {PACKAGE_PIN K17   IOSTANDARD LVCMOS33  } [get_ports {FMC_LA10_N}]
set_property -dict {PACKAGE_PIN K16   IOSTANDARD LVCMOS33  } [get_ports {FMC_LA10_P}]
set_property -dict {PACKAGE_PIN K18   IOSTANDARD LVCMOS33  } [get_ports {FMC_LA11_N}]
set_property -dict {PACKAGE_PIN L17   IOSTANDARD LVCMOS33  } [get_ports {FMC_LA11_P}]
set_property -dict {PACKAGE_PIN L18   IOSTANDARD LVCMOS33  } [get_ports {FMC_LA12_N}]
set_property -dict {PACKAGE_PIN M17   IOSTANDARD LVCMOS33  } [get_ports {FMC_LA12_P}]
set_property -dict {PACKAGE_PIN J20   IOSTANDARD LVCMOS33  } [get_ports {FMC_LA13_N}]
set_property -dict {PACKAGE_PIN K20   IOSTANDARD LVCMOS33  } [get_ports {FMC_LA13_P}]
set_property -dict {PACKAGE_PIN L20   IOSTANDARD LVCMOS33  } [get_ports {FMC_LA14_N}]
set_property -dict {PACKAGE_PIN L19   IOSTANDARD LVCMOS33  } [get_ports {FMC_LA14_P}]
set_property -dict {PACKAGE_PIN F20   IOSTANDARD LVCMOS33  } [get_ports {FMC_LA15_N}]
set_property -dict {PACKAGE_PIN G19   IOSTANDARD LVCMOS33  } [get_ports {FMC_LA15_P}]
set_property -dict {PACKAGE_PIN E20   IOSTANDARD LVCMOS33  } [get_ports {FMC_LA16_N}]
set_property -dict {PACKAGE_PIN F19   IOSTANDARD LVCMOS33  } [get_ports {FMC_LA16_P}]
set_property -dict {PACKAGE_PIN A15   IOSTANDARD LVCMOS33  } [get_ports {FMC_LA19_N}]
set_property -dict {PACKAGE_PIN B15   IOSTANDARD LVCMOS33  } [get_ports {FMC_LA19_P}]
set_property -dict {PACKAGE_PIN A14   IOSTANDARD LVCMOS33  } [get_ports {FMC_LA20_N}]
set_property -dict {PACKAGE_PIN B14   IOSTANDARD LVCMOS33  } [get_ports {FMC_LA20_P}]
set_property -dict {PACKAGE_PIN G14   IOSTANDARD LVCMOS33  } [get_ports {FMC_LA21_N}]
set_property -dict {PACKAGE_PIN H14   IOSTANDARD LVCMOS33  } [get_ports {FMC_LA21_P}]
set_property -dict {PACKAGE_PIN B11   IOSTANDARD LVCMOS33  } [get_ports {FMC_LA22_N}]
set_property -dict {PACKAGE_PIN B12   IOSTANDARD LVCMOS33  } [get_ports {FMC_LA22_P}]
set_property -dict {PACKAGE_PIN A10   IOSTANDARD LVCMOS33  } [get_ports {FMC_LA23_N}]
set_property -dict {PACKAGE_PIN B10   IOSTANDARD LVCMOS33  } [get_ports {FMC_LA23_P}]
set_property -dict {PACKAGE_PIN A12   IOSTANDARD LVCMOS33  } [get_ports {FMC_LA24_N}]
set_property -dict {PACKAGE_PIN A13   IOSTANDARD LVCMOS33  } [get_ports {FMC_LA24_P}]
set_property -dict {PACKAGE_PIN G9    IOSTANDARD LVCMOS33  } [get_ports {FMC_LA25_N}]
set_property -dict {PACKAGE_PIN G10   IOSTANDARD LVCMOS33  } [get_ports {FMC_LA25_P}]
set_property -dict {PACKAGE_PIN H11   IOSTANDARD LVCMOS33  } [get_ports {FMC_LA26_N}]
set_property -dict {PACKAGE_PIN H12   IOSTANDARD LVCMOS33  } [get_ports {FMC_LA26_P}]
set_property -dict {PACKAGE_PIN J10   IOSTANDARD LVCMOS33  } [get_ports {FMC_LA27_N}]
set_property -dict {PACKAGE_PIN J11   IOSTANDARD LVCMOS33  } [get_ports {FMC_LA27_P}]
set_property -dict {PACKAGE_PIN F12   IOSTANDARD LVCMOS33  } [get_ports {FMC_LA28_N}]
set_property -dict {PACKAGE_PIN G12   IOSTANDARD LVCMOS33  } [get_ports {FMC_LA28_P}]
set_property -dict {PACKAGE_PIN E12   IOSTANDARD LVCMOS33  } [get_ports {FMC_LA29_N}]
set_property -dict {PACKAGE_PIN E13   IOSTANDARD LVCMOS33  } [get_ports {FMC_LA29_P}]
set_property -dict {PACKAGE_PIN F13   IOSTANDARD LVCMOS33  } [get_ports {FMC_LA30_N}]
set_property -dict {PACKAGE_PIN F14   IOSTANDARD LVCMOS33  } [get_ports {FMC_LA30_P}]
set_property -dict {PACKAGE_PIN H13   IOSTANDARD LVCMOS33  } [get_ports {FMC_LA31_N}]
set_property -dict {PACKAGE_PIN J13   IOSTANDARD LVCMOS33  } [get_ports {FMC_LA31_P}]
set_property -dict {PACKAGE_PIN D13   IOSTANDARD LVCMOS33  } [get_ports {FMC_LA32_N}]
set_property -dict {PACKAGE_PIN D14   IOSTANDARD LVCMOS33  } [get_ports {FMC_LA32_P}]
set_property -dict {PACKAGE_PIN C13   IOSTANDARD LVCMOS33  } [get_ports {FMC_LA33_N}]
set_property -dict {PACKAGE_PIN C14   IOSTANDARD LVCMOS33  } [get_ports {FMC_LA33_P}]
set_property -dict {PACKAGE_PIN N22   IOSTANDARD LVCMOS33  } [get_ports {FMC_HA00_CC_N}]
set_property -dict {PACKAGE_PIN N21   IOSTANDARD LVCMOS33  } [get_ports {FMC_HA00_CC_P}]
set_property -dict {PACKAGE_PIN P21   IOSTANDARD LVCMOS33  } [get_ports {FMC_HA01_CC_N}]
set_property -dict {PACKAGE_PIN R21   IOSTANDARD LVCMOS33  } [get_ports {FMC_HA01_CC_P}]
set_property -dict {PACKAGE_PIN R23   IOSTANDARD LVCMOS33  } [get_ports {FMC_HA17_CC_N}]
set_property -dict {PACKAGE_PIN R22   IOSTANDARD LVCMOS33  } [get_ports {FMC_HA17_CC_P}]
set_property -dict {PACKAGE_PIN D18   IOSTANDARD LVCMOS33  } [get_ports {FMC_LA00_CC_N}]
set_property -dict {PACKAGE_PIN E18   IOSTANDARD LVCMOS33  } [get_ports {FMC_LA00_CC_P}]
set_property -dict {PACKAGE_PIN F18   IOSTANDARD LVCMOS33  } [get_ports {FMC_LA01_CC_N}]
set_property -dict {PACKAGE_PIN G17   IOSTANDARD LVCMOS33  } [get_ports {FMC_LA01_CC_P}]
set_property -dict {PACKAGE_PIN C11   IOSTANDARD LVCMOS33  } [get_ports {FMC_LA17_CC_N}]
set_property -dict {PACKAGE_PIN C12   IOSTANDARD LVCMOS33  } [get_ports {FMC_LA17_CC_P}]
set_property -dict {PACKAGE_PIN D11   IOSTANDARD LVCMOS33  } [get_ports {FMC_LA18_CC_N}]
set_property -dict {PACKAGE_PIN E11   IOSTANDARD LVCMOS33  } [get_ports {FMC_LA18_CC_P}]
set_property -dict {PACKAGE_PIN H18   IOSTANDARD LVCMOS33  } [get_ports {FMC_CLK0_M2C_N}]
set_property -dict {PACKAGE_PIN H17   IOSTANDARD LVCMOS33  } [get_ports {FMC_CLK0_M2C_P}]
set_property -dict {PACKAGE_PIN F10   IOSTANDARD LVCMOS33  } [get_ports {FMC_CLK1_M2C_N}]
set_property -dict {PACKAGE_PIN G11   IOSTANDARD LVCMOS33  } [get_ports {FMC_CLK1_M2C_P}]

# Firefly
set_property -dict {PACKAGE_PIN Y23   IOSTANDARD LVCMOS33  } [get_ports {FF_DIO0_P}]
set_property -dict {PACKAGE_PIN AA24  IOSTANDARD LVCMOS33  } [get_ports {FF_DIO0_N}]
set_property -dict {PACKAGE_PIN U21   IOSTANDARD LVCMOS33  } [get_ports {FF_DIO1_P}]
set_property -dict {PACKAGE_PIN Y20   IOSTANDARD LVCMOS33  } [get_ports {FF_DIO1_N}]
set_property -dict {PACKAGE_PIN AA25  IOSTANDARD LVCMOS33  } [get_ports {FF_DIO2_P}]
set_property -dict {PACKAGE_PIN AB25  IOSTANDARD LVCMOS33  } [get_ports {FF_DIO2_N}]
set_property -dict {PACKAGE_PIN AB26  IOSTANDARD LVCMOS33  } [get_ports {FF_DIO3_P}]
set_property -dict {PACKAGE_PIN AC26  IOSTANDARD LVCMOS33  } [get_ports {FF_DIO3_N}]

# HDMI
set_property -dict {PACKAGE_PIN V26   IOSTANDARD LVCMOS33  } [get_ports {HDMI_CEC}]
set_property -dict {PACKAGE_PIN U26   IOSTANDARD LVCMOS33  } [get_ports {HDMI_HPD}]

# I2C MGMT
set_property SLEW SLOW [get_ports I2C_MGMT_SDA]
set_property SLEW SLOW [get_ports I2C_MGMT_SCL]
set_property -dict {PACKAGE_PIN AC18  IOSTANDARD SSTL15    } [get_ports {I2C_MGMT_INT_N}]
set_property -dict {PACKAGE_PIN L23   IOSTANDARD LVCMOS33  } [get_ports {I2C_MGMT_SCL}]
set_property -dict {PACKAGE_PIN C24   IOSTANDARD LVCMOS33  } [get_ports {I2C_MGMT_SDA}]

# I2C User
set_property SLEW SLOW [get_ports I2C_USER_SDA]
set_property SLEW SLOW [get_ports I2C_USER_SCL]
set_property -dict {PACKAGE_PIN AD23  IOSTANDARD LVCMOS33  } [get_ports {I2C_USER_INT_N}]
set_property -dict {PACKAGE_PIN W25   IOSTANDARD LVCMOS33  } [get_ports {I2C_USER_SCL}]
set_property -dict {PACKAGE_PIN W26   IOSTANDARD LVCMOS33  } [get_ports {I2C_USER_SDA}]

# LED
set_property SLEW SLOW [get_ports LED0_N]
set_property SLEW SLOW [get_ports LED1_N]
set_property SLEW SLOW [get_ports LED2_N]
set_property SLEW SLOW [get_ports LED3_N]
set_property -dict {PACKAGE_PIN U9    IOSTANDARD SSTL15    } [get_ports {LED0_N}]
set_property -dict {PACKAGE_PIN V12   IOSTANDARD SSTL15    } [get_ports {LED1_N}]
set_property -dict {PACKAGE_PIN V13   IOSTANDARD SSTL15    } [get_ports {LED2_N}]
set_property -dict {PACKAGE_PIN W13   IOSTANDARD SSTL15    } [get_ports {LED3_N}]

# MGT Group 0
# set_property PACKAGE_PIN P2    [get_ports {MGT_TX0_P}] # GTX
# set_property PACKAGE_PIN P1    [get_ports {MGT_TX0_N}] # GTX
# set_property PACKAGE_PIN M2    [get_ports {MGT_TX1_P}] # GTX
# set_property PACKAGE_PIN M1    [get_ports {MGT_TX1_N}] # GTX
# set_property PACKAGE_PIN K2    [get_ports {MGT_TX2_P}] # GTX
# set_property PACKAGE_PIN K1    [get_ports {MGT_TX2_N}] # GTX
# set_property PACKAGE_PIN H2    [get_ports {MGT_TX3_P}] # GTX
# set_property PACKAGE_PIN H1    [get_ports {MGT_TX3_N}] # GTX
# set_property PACKAGE_PIN R4    [get_ports {MGT_RX0_P}] # GTX
# set_property PACKAGE_PIN R3    [get_ports {MGT_RX0_N}] # GTX
# set_property PACKAGE_PIN N4    [get_ports {MGT_RX1_P}] # GTX
# set_property PACKAGE_PIN N3    [get_ports {MGT_RX1_N}] # GTX
# set_property PACKAGE_PIN L4    [get_ports {MGT_RX2_P}] # GTX
# set_property PACKAGE_PIN L3    [get_ports {MGT_RX2_N}] # GTX
# set_property PACKAGE_PIN J4    [get_ports {MGT_RX3_P}] # GTX
# set_property PACKAGE_PIN J3    [get_ports {MGT_RX3_N}] # GTX

# MGT Group 1
# set_property PACKAGE_PIN F2    [get_ports {MGT_TX4_P}] # GTX
# set_property PACKAGE_PIN F1    [get_ports {MGT_TX4_N}] # GTX
# set_property PACKAGE_PIN D2    [get_ports {MGT_TX5_P}] # GTX
# set_property PACKAGE_PIN D1    [get_ports {MGT_TX5_N}] # GTX
# set_property PACKAGE_PIN B2    [get_ports {MGT_TX6_P}] # GTX
# set_property PACKAGE_PIN B1    [get_ports {MGT_TX6_N}] # GTX
# set_property PACKAGE_PIN A4    [get_ports {MGT_TX7_P}] # GTX
# set_property PACKAGE_PIN A3    [get_ports {MGT_TX7_N}] # GTX
# set_property PACKAGE_PIN G4    [get_ports {MGT_RX4_P}] # GTX
# set_property PACKAGE_PIN G3    [get_ports {MGT_RX4_N}] # GTX
# set_property PACKAGE_PIN E4    [get_ports {MGT_RX5_P}] # GTX
# set_property PACKAGE_PIN E3    [get_ports {MGT_RX5_N}] # GTX
# set_property PACKAGE_PIN C4    [get_ports {MGT_RX6_P}] # GTX
# set_property PACKAGE_PIN C3    [get_ports {MGT_RX6_N}] # GTX
# set_property PACKAGE_PIN B6    [get_ports {MGT_RX7_P}] # GTX
# set_property PACKAGE_PIN B5    [get_ports {MGT_RX7_N}] # GTX

# MGT Group 4
set_property -dict {PACKAGE_PIN A9    IOSTANDARD LVCMOS33  } [get_ports {MGT_TX16_P}]
set_property -dict {PACKAGE_PIN A8    IOSTANDARD LVCMOS33  } [get_ports {MGT_TX16_N}]
set_property -dict {PACKAGE_PIN C9    IOSTANDARD LVCMOS33  } [get_ports {MGT_TX17_P}]
set_property -dict {PACKAGE_PIN B9    IOSTANDARD LVCMOS33  } [get_ports {MGT_TX17_N}]
set_property -dict {PACKAGE_PIN D9    IOSTANDARD LVCMOS33  } [get_ports {MGT_TX18_P}]
set_property -dict {PACKAGE_PIN D8    IOSTANDARD LVCMOS33  } [get_ports {MGT_TX18_N}]
set_property -dict {PACKAGE_PIN E10   IOSTANDARD LVCMOS33  } [get_ports {MGT_TX19_P}]
set_property -dict {PACKAGE_PIN D10   IOSTANDARD LVCMOS33  } [get_ports {MGT_TX19_N}]
set_property -dict {PACKAGE_PIN G15   IOSTANDARD LVCMOS33  } [get_ports {MGT_RX16_P}]
set_property -dict {PACKAGE_PIN F15   IOSTANDARD LVCMOS33  } [get_ports {MGT_RX16_N}]
set_property -dict {PACKAGE_PIN J15   IOSTANDARD LVCMOS33  } [get_ports {MGT_RX17_P}]
set_property -dict {PACKAGE_PIN J16   IOSTANDARD LVCMOS33  } [get_ports {MGT_RX17_N}]
set_property -dict {PACKAGE_PIN F17   IOSTANDARD LVCMOS33  } [get_ports {MGT_RX18_P}]
set_property -dict {PACKAGE_PIN E17   IOSTANDARD LVCMOS33  } [get_ports {MGT_RX18_N}]
set_property -dict {PACKAGE_PIN E15   IOSTANDARD LVCMOS33  } [get_ports {MGT_RX19_P}]
set_property -dict {PACKAGE_PIN E16   IOSTANDARD LVCMOS33  } [get_ports {MGT_RX19_N}]

# Clock Generator MGT RefClk0
# set_property PACKAGE_PIN H5    [get_ports {MGT_REFCLK0_N}] # GTX
# set_property PACKAGE_PIN H6    [get_ports {MGT_REFCLK0_P}] # GTX

# Clock Generator MGT RefClk1
# set_property PACKAGE_PIN F5    [get_ports {MGT_REFCLK1_N}] # GTX
# set_property PACKAGE_PIN F6    [get_ports {MGT_REFCLK1_P}] # GTX

# Clock Generator MGT RefClk2
# set_property PACKAGE_PIN D5    [get_ports {MGT_REFCLK2_N}] # GTX
# set_property PACKAGE_PIN D6    [get_ports {MGT_REFCLK2_P}] # GTX

# Clock Generator MGT RefClk3
# set_property PACKAGE_PIN K5    [get_ports {MGT_REFCLK3_N}] # GTX
# set_property PACKAGE_PIN K6    [get_ports {MGT_REFCLK3_P}] # GTX

# Clock Generator MGT RefClk7
set_property -dict {PACKAGE_PIN U16   IOSTANDARD LVCMOS33  } [get_ports {MGT_REFCLK7_N}]
set_property -dict {PACKAGE_PIN N16   IOSTANDARD LVCMOS33  } [get_ports {MGT_REFCLK7_P}]

# Clock Generator MGT RefClk8
set_property -dict {PACKAGE_PIN J14   IOSTANDARD LVCMOS33  } [get_ports {MGT_REFCLK8_N}]
set_property -dict {PACKAGE_PIN J8    IOSTANDARD LVCMOS33  } [get_ports {MGT_REFCLK8_P}]

# Clock Generator MGT RefClk9
set_property -dict {PACKAGE_PIN M16   IOSTANDARD LVCMOS33  } [get_ports {MGT_REFCLK9_N}]
set_property -dict {PACKAGE_PIN K15   IOSTANDARD LVCMOS33  } [get_ports {MGT_REFCLK9_P}]

# Oscillator 100 MHz
set_property -dict {PACKAGE_PIN AD24  IOSTANDARD LVCMOS33  } [get_ports {CALIB_CLK}]

# PE3 LED
set_property -dict {PACKAGE_PIN U22   IOSTANDARD LVCMOS33  } [get_ports {PE3_LED0_N}]
set_property -dict {PACKAGE_PIN V22   IOSTANDARD LVCMOS33  } [get_ports {PE3_LED1_N}]
set_property -dict {PACKAGE_PIN AD26  IOSTANDARD LVCMOS33  } [get_ports {DII_LED_N}]
set_property -dict {PACKAGE_PIN AE26  IOSTANDARD LVCMOS33  } [get_ports {DIO_LED_N}]

# PE3 LED
set_property -dict {PACKAGE_PIN Y25   IOSTANDARD LVCMOS33  } [get_ports {PE3_LED2_N}]
set_property -dict {PACKAGE_PIN Y26   IOSTANDARD LVCMOS33  } [get_ports {PE3_LED3_N}]

# SDRAM
set_property DCI_CASCADE {32} [get_iobanks 34]
# DDR @ 1.35 V
#set_property INTERNAL_VREF 0.675 [get_iobanks 33]
# DDR @ 1.5 V
set_property INTERNAL_VREF 0.750 [get_iobanks 33]
set_property SLEW SLOW [get_ports DDR3_VSEL]
set_property -dict {PACKAGE_PIN AD11  IOSTANDARD SSTL15    } [get_ports {DDR3_BA[0]}]
set_property -dict {PACKAGE_PIN AA10  IOSTANDARD SSTL15    } [get_ports {DDR3_BA[1]}]
set_property -dict {PACKAGE_PIN AF12  IOSTANDARD SSTL15    } [get_ports {DDR3_BA[2]}]
set_property -dict {PACKAGE_PIN AA2   IOSTANDARD SSTL15_T_DCI} [get_ports {DDR3_DQ[0]}]
set_property -dict {PACKAGE_PIN Y2    IOSTANDARD SSTL15_T_DCI} [get_ports {DDR3_DQ[1]}]
set_property -dict {PACKAGE_PIN AB2   IOSTANDARD SSTL15_T_DCI} [get_ports {DDR3_DQ[2]}]
set_property -dict {PACKAGE_PIN V1    IOSTANDARD SSTL15_T_DCI} [get_ports {DDR3_DQ[3]}]
set_property -dict {PACKAGE_PIN Y1    IOSTANDARD SSTL15_T_DCI} [get_ports {DDR3_DQ[4]}]
set_property -dict {PACKAGE_PIN W1    IOSTANDARD SSTL15_T_DCI} [get_ports {DDR3_DQ[5]}]
set_property -dict {PACKAGE_PIN AC2   IOSTANDARD SSTL15_T_DCI} [get_ports {DDR3_DQ[6]}]
set_property -dict {PACKAGE_PIN V2    IOSTANDARD SSTL15_T_DCI} [get_ports {DDR3_DQ[7]}]
set_property -dict {PACKAGE_PIN W3    IOSTANDARD SSTL15_T_DCI} [get_ports {DDR3_DQ[8]}]
set_property -dict {PACKAGE_PIN V3    IOSTANDARD SSTL15_T_DCI} [get_ports {DDR3_DQ[9]}]
set_property -dict {PACKAGE_PIN AE11  IOSTANDARD SSTL15    } [get_ports {DDR3_A[0]}]
set_property -dict {PACKAGE_PIN AF9   IOSTANDARD SSTL15    } [get_ports {DDR3_A[1]}]
set_property -dict {PACKAGE_PIN AD10  IOSTANDARD SSTL15    } [get_ports {DDR3_A[2]}]
set_property -dict {PACKAGE_PIN AB10  IOSTANDARD SSTL15    } [get_ports {DDR3_A[3]}]
set_property -dict {PACKAGE_PIN AA9   IOSTANDARD SSTL15    } [get_ports {DDR3_A[4]}]
set_property -dict {PACKAGE_PIN AB9   IOSTANDARD SSTL15    } [get_ports {DDR3_A[5]}]
set_property -dict {PACKAGE_PIN AA8   IOSTANDARD SSTL15    } [get_ports {DDR3_A[6]}]
set_property -dict {PACKAGE_PIN AC8   IOSTANDARD SSTL15    } [get_ports {DDR3_A[7]}]
set_property -dict {PACKAGE_PIN AA7   IOSTANDARD SSTL15    } [get_ports {DDR3_A[8]}]
set_property -dict {PACKAGE_PIN AE8   IOSTANDARD SSTL15    } [get_ports {DDR3_A[9]}]
set_property -dict {PACKAGE_PIN AA13  IOSTANDARD SSTL15    } [get_ports {DDR3_CKE[0]}]
set_property -dict {PACKAGE_PIN AC12  IOSTANDARD DIFF_SSTL15} [get_ports {DDR3_CK_N[0]}]
set_property -dict {PACKAGE_PIN AB12  IOSTANDARD DIFF_SSTL15} [get_ports {DDR3_CK_P[0]}]
set_property -dict {PACKAGE_PIN U1    IOSTANDARD SSTL15_T_DCI} [get_ports {DDR3_DQ[10]}]
set_property -dict {PACKAGE_PIN U7    IOSTANDARD SSTL15_T_DCI} [get_ports {DDR3_DQ[11]}]
set_property -dict {PACKAGE_PIN U6    IOSTANDARD SSTL15_T_DCI} [get_ports {DDR3_DQ[12]}]
set_property -dict {PACKAGE_PIN V4    IOSTANDARD SSTL15_T_DCI} [get_ports {DDR3_DQ[13]}]
set_property -dict {PACKAGE_PIN V6    IOSTANDARD SSTL15_T_DCI} [get_ports {DDR3_DQ[14]}]
set_property -dict {PACKAGE_PIN U2    IOSTANDARD SSTL15_T_DCI} [get_ports {DDR3_DQ[15]}]
set_property -dict {PACKAGE_PIN AE3   IOSTANDARD SSTL15_T_DCI} [get_ports {DDR3_DQ[16]}]
set_property -dict {PACKAGE_PIN AE6   IOSTANDARD SSTL15_T_DCI} [get_ports {DDR3_DQ[17]}]
set_property -dict {PACKAGE_PIN AF3   IOSTANDARD SSTL15_T_DCI} [get_ports {DDR3_DQ[18]}]
set_property -dict {PACKAGE_PIN AD1   IOSTANDARD SSTL15_T_DCI} [get_ports {DDR3_DQ[19]}]
set_property -dict {PACKAGE_PIN AE1   IOSTANDARD SSTL15_T_DCI} [get_ports {DDR3_DQ[20]}]
set_property -dict {PACKAGE_PIN AE2   IOSTANDARD SSTL15_T_DCI} [get_ports {DDR3_DQ[21]}]
set_property -dict {PACKAGE_PIN AF2   IOSTANDARD SSTL15_T_DCI} [get_ports {DDR3_DQ[22]}]
set_property -dict {PACKAGE_PIN AE5   IOSTANDARD SSTL15_T_DCI} [get_ports {DDR3_DQ[23]}]
set_property -dict {PACKAGE_PIN AD5   IOSTANDARD SSTL15_T_DCI} [get_ports {DDR3_DQ[24]}]
set_property -dict {PACKAGE_PIN Y5    IOSTANDARD SSTL15_T_DCI} [get_ports {DDR3_DQ[25]}]
set_property -dict {PACKAGE_PIN AC6   IOSTANDARD SSTL15_T_DCI} [get_ports {DDR3_DQ[26]}]
set_property -dict {PACKAGE_PIN Y6    IOSTANDARD SSTL15_T_DCI} [get_ports {DDR3_DQ[27]}]
set_property -dict {PACKAGE_PIN AB4   IOSTANDARD SSTL15_T_DCI} [get_ports {DDR3_DQ[28]}]
set_property -dict {PACKAGE_PIN AD6   IOSTANDARD SSTL15_T_DCI} [get_ports {DDR3_DQ[29]}]
set_property -dict {PACKAGE_PIN AB6   IOSTANDARD SSTL15_T_DCI} [get_ports {DDR3_DQ[30]}]
set_property -dict {PACKAGE_PIN AC3   IOSTANDARD SSTL15_T_DCI} [get_ports {DDR3_DQ[31]}]
set_property -dict {PACKAGE_PIN AD16  IOSTANDARD SSTL15_T_DCI} [get_ports {DDR3_DQ[32]}]
set_property -dict {PACKAGE_PIN AE17  IOSTANDARD SSTL15_T_DCI} [get_ports {DDR3_DQ[33]}]
set_property -dict {PACKAGE_PIN AF15  IOSTANDARD SSTL15_T_DCI} [get_ports {DDR3_DQ[34]}]
set_property -dict {PACKAGE_PIN AF20  IOSTANDARD SSTL15_T_DCI} [get_ports {DDR3_DQ[35]}]
set_property -dict {PACKAGE_PIN AD15  IOSTANDARD SSTL15_T_DCI} [get_ports {DDR3_DQ[36]}]
set_property -dict {PACKAGE_PIN AF14  IOSTANDARD SSTL15_T_DCI} [get_ports {DDR3_DQ[37]}]
set_property -dict {PACKAGE_PIN AE15  IOSTANDARD SSTL15_T_DCI} [get_ports {DDR3_DQ[38]}]
set_property -dict {PACKAGE_PIN AF17  IOSTANDARD SSTL15_T_DCI} [get_ports {DDR3_DQ[39]}]
set_property -dict {PACKAGE_PIN AA14  IOSTANDARD SSTL15_T_DCI} [get_ports {DDR3_DQ[40]}]
set_property -dict {PACKAGE_PIN AA15  IOSTANDARD SSTL15_T_DCI} [get_ports {DDR3_DQ[41]}]
set_property -dict {PACKAGE_PIN AC14  IOSTANDARD SSTL15_T_DCI} [get_ports {DDR3_DQ[42]}]
set_property -dict {PACKAGE_PIN AD14  IOSTANDARD SSTL15_T_DCI} [get_ports {DDR3_DQ[43]}]
set_property -dict {PACKAGE_PIN AB14  IOSTANDARD SSTL15_T_DCI} [get_ports {DDR3_DQ[44]}]
set_property -dict {PACKAGE_PIN AB15  IOSTANDARD SSTL15_T_DCI} [get_ports {DDR3_DQ[45]}]
set_property -dict {PACKAGE_PIN AA17  IOSTANDARD SSTL15_T_DCI} [get_ports {DDR3_DQ[46]}]
set_property -dict {PACKAGE_PIN AA18  IOSTANDARD SSTL15_T_DCI} [get_ports {DDR3_DQ[47]}]
set_property -dict {PACKAGE_PIN AB20  IOSTANDARD SSTL15_T_DCI} [get_ports {DDR3_DQ[48]}]
set_property -dict {PACKAGE_PIN AD19  IOSTANDARD SSTL15_T_DCI} [get_ports {DDR3_DQ[49]}]
set_property -dict {PACKAGE_PIN AC19  IOSTANDARD SSTL15_T_DCI} [get_ports {DDR3_DQ[50]}]
set_property -dict {PACKAGE_PIN AA20  IOSTANDARD SSTL15_T_DCI} [get_ports {DDR3_DQ[51]}]
set_property -dict {PACKAGE_PIN AA19  IOSTANDARD SSTL15_T_DCI} [get_ports {DDR3_DQ[52]}]
set_property -dict {PACKAGE_PIN AC17  IOSTANDARD SSTL15_T_DCI} [get_ports {DDR3_DQ[53]}]
set_property -dict {PACKAGE_PIN AD18  IOSTANDARD SSTL15_T_DCI} [get_ports {DDR3_DQ[54]}]
set_property -dict {PACKAGE_PIN AB17  IOSTANDARD SSTL15_T_DCI} [get_ports {DDR3_DQ[55]}]
set_property -dict {PACKAGE_PIN W15   IOSTANDARD SSTL15_T_DCI} [get_ports {DDR3_DQ[56]}]
set_property -dict {PACKAGE_PIN W16   IOSTANDARD SSTL15_T_DCI} [get_ports {DDR3_DQ[57]}]
set_property -dict {PACKAGE_PIN W14   IOSTANDARD SSTL15_T_DCI} [get_ports {DDR3_DQ[58]}]
set_property -dict {PACKAGE_PIN V16   IOSTANDARD SSTL15_T_DCI} [get_ports {DDR3_DQ[59]}]
set_property -dict {PACKAGE_PIN V19   IOSTANDARD SSTL15_T_DCI} [get_ports {DDR3_DQ[60]}]
set_property -dict {PACKAGE_PIN V17   IOSTANDARD SSTL15_T_DCI} [get_ports {DDR3_DQ[61]}]
set_property -dict {PACKAGE_PIN V18   IOSTANDARD SSTL15_T_DCI} [get_ports {DDR3_DQ[62]}]
set_property -dict {PACKAGE_PIN Y17   IOSTANDARD SSTL15_T_DCI} [get_ports {DDR3_DQ[63]}]
set_property -dict {PACKAGE_PIN AD13  IOSTANDARD SSTL15    } [get_ports {DDR3_ODT[0]}]
set_property -dict {PACKAGE_PIN AA3   IOSTANDARD SSTL15    } [get_ports {DDR3_VSEL}]
set_property -dict {PACKAGE_PIN AA12  IOSTANDARD SSTL15    } [get_ports {DDR3_WE_N}]
set_property -dict {PACKAGE_PIN AF10  IOSTANDARD SSTL15    } [get_ports {DDR3_A[10]}]
set_property -dict {PACKAGE_PIN AD8   IOSTANDARD SSTL15    } [get_ports {DDR3_A[11]}]
set_property -dict {PACKAGE_PIN AE10  IOSTANDARD SSTL15    } [get_ports {DDR3_A[12]}]
set_property -dict {PACKAGE_PIN AF8   IOSTANDARD SSTL15    } [get_ports {DDR3_A[13]}]
set_property -dict {PACKAGE_PIN AC7   IOSTANDARD SSTL15    } [get_ports {DDR3_A[14]}]
set_property -dict {PACKAGE_PIN AE12  IOSTANDARD SSTL15    } [get_ports {DDR3_CAS_N}]
set_property -dict {PACKAGE_PIN Y12   IOSTANDARD SSTL15    } [get_ports {DDR3_CS_N[0]}]
set_property -dict {PACKAGE_PIN Y3    IOSTANDARD SSTL15    } [get_ports {DDR3_DM[0]}]
set_property -dict {PACKAGE_PIN U5    IOSTANDARD SSTL15    } [get_ports {DDR3_DM[1]}]
set_property -dict {PACKAGE_PIN AD4   IOSTANDARD SSTL15    } [get_ports {DDR3_DM[2]}]
set_property -dict {PACKAGE_PIN AC4   IOSTANDARD SSTL15    } [get_ports {DDR3_DM[3]}]
set_property -dict {PACKAGE_PIN AF19  IOSTANDARD SSTL15    } [get_ports {DDR3_DM[4]}]
set_property -dict {PACKAGE_PIN AC16  IOSTANDARD SSTL15    } [get_ports {DDR3_DM[5]}]
set_property -dict {PACKAGE_PIN AB19  IOSTANDARD SSTL15    } [get_ports {DDR3_DM[6]}]
set_property -dict {PACKAGE_PIN V14   IOSTANDARD SSTL15    } [get_ports {DDR3_DM[7]}]
set_property -dict {PACKAGE_PIN AE13  IOSTANDARD SSTL15    } [get_ports {DDR3_RAS_N}]
set_property -dict {PACKAGE_PIN AC1   IOSTANDARD DIFF_SSTL15_T_DCI} [get_ports {DDR3_DQS_N[0]}]
set_property -dict {PACKAGE_PIN W5    IOSTANDARD DIFF_SSTL15_T_DCI} [get_ports {DDR3_DQS_N[1]}]
set_property -dict {PACKAGE_PIN AF4   IOSTANDARD DIFF_SSTL15_T_DCI} [get_ports {DDR3_DQS_N[2]}]
set_property -dict {PACKAGE_PIN AB5   IOSTANDARD DIFF_SSTL15_T_DCI} [get_ports {DDR3_DQS_N[3]}]
set_property -dict {PACKAGE_PIN AF18  IOSTANDARD DIFF_SSTL15_T_DCI} [get_ports {DDR3_DQS_N[4]}]
set_property -dict {PACKAGE_PIN Y16   IOSTANDARD DIFF_SSTL15_T_DCI} [get_ports {DDR3_DQS_N[5]}]
set_property -dict {PACKAGE_PIN AE20  IOSTANDARD DIFF_SSTL15_T_DCI} [get_ports {DDR3_DQS_N[6]}]
set_property -dict {PACKAGE_PIN W19   IOSTANDARD DIFF_SSTL15_T_DCI} [get_ports {DDR3_DQS_N[7]}]
set_property -dict {PACKAGE_PIN AB1   IOSTANDARD DIFF_SSTL15_T_DCI} [get_ports {DDR3_DQS_P[0]}]
set_property -dict {PACKAGE_PIN W6    IOSTANDARD DIFF_SSTL15_T_DCI} [get_ports {DDR3_DQS_P[1]}]
set_property -dict {PACKAGE_PIN AF5   IOSTANDARD DIFF_SSTL15_T_DCI} [get_ports {DDR3_DQS_P[2]}]
set_property -dict {PACKAGE_PIN AA5   IOSTANDARD DIFF_SSTL15_T_DCI} [get_ports {DDR3_DQS_P[3]}]
set_property -dict {PACKAGE_PIN AE18  IOSTANDARD DIFF_SSTL15_T_DCI} [get_ports {DDR3_DQS_P[4]}]
set_property -dict {PACKAGE_PIN Y15   IOSTANDARD DIFF_SSTL15_T_DCI} [get_ports {DDR3_DQS_P[5]}]
set_property -dict {PACKAGE_PIN AD20  IOSTANDARD DIFF_SSTL15_T_DCI} [get_ports {DDR3_DQS_P[6]}]
set_property -dict {PACKAGE_PIN W18   IOSTANDARD DIFF_SSTL15_T_DCI} [get_ports {DDR3_DQS_P[7]}]
set_property -dict {PACKAGE_PIN AB7   IOSTANDARD SSTL15    } [get_ports {DDR3_RST_N}]

# PL Gigabit Ethernet Interface 0
set_property SLEW FAST [get_ports ETH0_TX_CLK]
set_property SLEW FAST [get_ports ETH0_TX_CTL]
set_property SLEW FAST [get_ports {ETH0_TX_D[0]}]
set_property SLEW FAST [get_ports {ETH0_TX_D[1]}]
set_property SLEW FAST [get_ports {ETH0_TX_D[2]}]
set_property SLEW FAST [get_ports {ETH0_TX_D[3]}]
set_property -dict {PACKAGE_PIN B25   IOSTANDARD LVCMOS33  } [get_ports {FPGA_MDC_PUDC_N}]
set_property -dict {PACKAGE_PIN H23   IOSTANDARD LVCMOS33  } [get_ports {ETH0_RX_D[0]}]
set_property -dict {PACKAGE_PIN H24   IOSTANDARD LVCMOS33  } [get_ports {ETH0_RX_D[1]}]
set_property -dict {PACKAGE_PIN J21   IOSTANDARD LVCMOS33  } [get_ports {ETH0_RX_D[2]}]
set_property -dict {PACKAGE_PIN H22   IOSTANDARD LVCMOS33  } [get_ports {ETH0_RX_D[3]}]
set_property -dict {PACKAGE_PIN G22   IOSTANDARD LVCMOS33  } [get_ports {ETH0_RX_CLK}]
set_property -dict {PACKAGE_PIN J24   IOSTANDARD LVCMOS33  } [get_ports {ETH0_TX_D[0]}]
set_property -dict {PACKAGE_PIN J25   IOSTANDARD LVCMOS33  } [get_ports {ETH0_TX_D[1]}]
set_property -dict {PACKAGE_PIN L22   IOSTANDARD LVCMOS33  } [get_ports {ETH0_TX_D[2]}]
set_property -dict {PACKAGE_PIN K22   IOSTANDARD LVCMOS33  } [get_ports {ETH0_TX_D[3]}]
set_property -dict {PACKAGE_PIN K23   IOSTANDARD LVCMOS33  } [get_ports {ETH0_TX_CLK}]
set_property -dict {PACKAGE_PIN B26   IOSTANDARD LVCMOS33  } [get_ports {FPGA_MDIO_EMCCLK}]
set_property -dict {PACKAGE_PIN F23   IOSTANDARD LVCMOS33  } [get_ports {ETH0_RX_CTL}]
set_property -dict {PACKAGE_PIN J23   IOSTANDARD LVCMOS33  } [get_ports {ETH0_TX_CTL}]

# PL Gigabit Ethernet Interface 1
set_property SLEW FAST [get_ports ETH1_TX_CLK]
set_property SLEW FAST [get_ports ETH1_TX_CTL]
set_property SLEW FAST [get_ports {ETH1_TX_D[0]}]
set_property SLEW FAST [get_ports {ETH1_TX_D[1]}]
set_property SLEW FAST [get_ports {ETH1_TX_D[2]}]
set_property SLEW FAST [get_ports {ETH1_TX_D[3]}]
set_property -dict {PACKAGE_PIN G25   IOSTANDARD LVCMOS33  } [get_ports {ETH1_RX_D[0]}]
set_property -dict {PACKAGE_PIN G26   IOSTANDARD LVCMOS33  } [get_ports {ETH1_RX_D[1]}]
set_property -dict {PACKAGE_PIN F25   IOSTANDARD LVCMOS33  } [get_ports {ETH1_RX_D[2]}]
set_property -dict {PACKAGE_PIN E26   IOSTANDARD LVCMOS33  } [get_ports {ETH1_RX_D[3]}]
set_property -dict {PACKAGE_PIN G24   IOSTANDARD LVCMOS33  } [get_ports {ETH1_RX_CLK}]
set_property -dict {PACKAGE_PIN J26   IOSTANDARD LVCMOS33  } [get_ports {ETH1_TX_D[0]}]
set_property -dict {PACKAGE_PIN H26   IOSTANDARD LVCMOS33  } [get_ports {ETH1_TX_D[1]}]
set_property -dict {PACKAGE_PIN H21   IOSTANDARD LVCMOS33  } [get_ports {ETH1_TX_D[2]}]
set_property -dict {PACKAGE_PIN G21   IOSTANDARD LVCMOS33  } [get_ports {ETH1_TX_D[3]}]
set_property -dict {PACKAGE_PIN E25   IOSTANDARD LVCMOS33  } [get_ports {ETH1_TX_CLK}]
set_property -dict {PACKAGE_PIN F24   IOSTANDARD LVCMOS33  } [get_ports {ETH1_RX_CTL}]
set_property -dict {PACKAGE_PIN D25   IOSTANDARD LVCMOS33  } [get_ports {ETH1_TX_CTL}]

# QSPI
set_property SLEW FAST [get_ports FPGA_CCLK]
set_property SLEW FAST [get_ports FLASH_WP_N]
set_property SLEW FAST [get_ports FLASH_HOLD_N]
set_property SLEW FAST [get_ports FLASH_DI]
set_property SLEW FAST [get_ports FLASH_DO]
set_property SLEW FAST [get_ports FLASH_CS_N]
set_property -dict {PACKAGE_PIN K21   IOSTANDARD LVCMOS33  } [get_ports {FPGA_CCLK}]
set_property -dict {PACKAGE_PIN C23   IOSTANDARD LVCMOS33  } [get_ports {FLASH_CS_N}]
set_property -dict {PACKAGE_PIN B24   IOSTANDARD LVCMOS33  } [get_ports {FLASH_DI}]
set_property -dict {PACKAGE_PIN A25   IOSTANDARD LVCMOS33  } [get_ports {FLASH_DO}]
set_property -dict {PACKAGE_PIN B22   IOSTANDARD LVCMOS33  } [get_ports {FLASH_WP_N}]
set_property -dict {PACKAGE_PIN A22   IOSTANDARD LVCMOS33  } [get_ports {FLASH_HOLD_N}]

# Rst_N
set_property -dict {PACKAGE_PIN AD9   IOSTANDARD SSTL15    } [get_ports {Rst_N}]

# SDIO
set_property -dict {PACKAGE_PIN C21   IOSTANDARD LVCMOS33  } [get_ports {SDIO_CLK}]
set_property -dict {PACKAGE_PIN B21   IOSTANDARD LVCMOS33  } [get_ports {SDIO_CMD}]
set_property -dict {PACKAGE_PIN D26   IOSTANDARD LVCMOS33  } [get_ports {SDIO_D0}]
set_property -dict {PACKAGE_PIN C26   IOSTANDARD LVCMOS33  } [get_ports {SDIO_D1}]
set_property -dict {PACKAGE_PIN A23   IOSTANDARD LVCMOS33  } [get_ports {SDIO_D2}]
set_property -dict {PACKAGE_PIN A24   IOSTANDARD LVCMOS33  } [get_ports {SDIO_D3}]

# SIO
set_property -dict {PACKAGE_PIN F22   IOSTANDARD LVCMOS33  } [get_ports {SIO0_PERST_N}]
set_property -dict {PACKAGE_PIN E23   IOSTANDARD LVCMOS33  } [get_ports {SIO1}]
set_property -dict {PACKAGE_PIN D21   IOSTANDARD LVCMOS33  } [get_ports {SIO2_SDCD_N}]
set_property -dict {PACKAGE_PIN C22   IOSTANDARD LVCMOS33  } [get_ports {SIO3}]

# UART
set_property -dict {PACKAGE_PIN B20   IOSTANDARD LVCMOS33  } [get_ports {UART_RX}]
set_property -dict {PACKAGE_PIN A20   IOSTANDARD LVCMOS33  } [get_ports {UART_TX}]

# UART_FTDI_KX2
set_property -dict {PACKAGE_PIN W10   IOSTANDARD SSTL15    } [get_ports {FTDI_D0}]
set_property -dict {PACKAGE_PIN W9    IOSTANDARD SSTL15    } [get_ports {FTDI_D1}]
set_property -dict {PACKAGE_PIN Y8    IOSTANDARD SSTL15    } [get_ports {FTDI_D2}]
set_property -dict {PACKAGE_PIN Y7    IOSTANDARD SSTL15    } [get_ports {FTDI_D3}]
set_property -dict {PACKAGE_PIN Y11   IOSTANDARD SSTL15    } [get_ports {FTDI_D4}]
set_property -dict {PACKAGE_PIN Y10   IOSTANDARD SSTL15    } [get_ports {FTDI_D5}]
set_property -dict {PACKAGE_PIN V9    IOSTANDARD SSTL15    } [get_ports {FTDI_D6}]
set_property -dict {PACKAGE_PIN W8    IOSTANDARD SSTL15    } [get_ports {FTDI_D7}]
set_property -dict {PACKAGE_PIN AB16  IOSTANDARD SSTL15    } [get_ports {FTDI_UART_RX}]
set_property -dict {PACKAGE_PIN W11   IOSTANDARD SSTL15    } [get_ports {FTDI_UART_TX}]
set_property -dict {PACKAGE_PIN V11   IOSTANDARD SSTL15    } [get_ports {FTDI_OE_N}]
set_property -dict {PACKAGE_PIN V8    IOSTANDARD SSTL15    } [get_ports {FTDI_RD_N}]
set_property -dict {PACKAGE_PIN V7    IOSTANDARD SSTL15    } [get_ports {FTDI_WR_N}]
set_property -dict {PACKAGE_PIN AF7   IOSTANDARD SSTL15    } [get_ports {FTDI_RXF_N}]
set_property -dict {PACKAGE_PIN AE7   IOSTANDARD SSTL15    } [get_ports {FTDI_TXE_N}]
set_property -dict {PACKAGE_PIN AC9   IOSTANDARD SSTL15    } [get_ports {FTDI_CLKOUT}]

# USER INPUT
set_property -dict {PACKAGE_PIN W23   IOSTANDARD LVCMOS33  } [get_ports {BTN_N}]
set_property -dict {PACKAGE_PIN W24   IOSTANDARD LVCMOS33  } [get_ports {DIP_N}]
