# HSYNC
set_property IOSTANDARD LVCMOS33 [get_ports hsync_0]
set_property PACKAGE_PIN AB10 [get_ports hsync_0]

# VSYNC
set_property IOSTANDARD LVCMOS33 [get_ports vsync_0]
set_property PACKAGE_PIN AA9 [get_ports vsync_0]

# PCLK
set_property IOSTANDARD LVCMOS33 [get_ports pclk_0]
set_property PACKAGE_PIN AB11 [get_ports pclk_0]
set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets pclk_0_IBUF]

# XCLK
set_property IOSTANDARD LVCMOS33 [get_ports xclk_0]
set_property PACKAGE_PIN Y10 [get_ports xclk_0]

# DATA
set_property IOSTANDARD LVCMOS33 [get_ports {data_in_0[7]}]
set_property IOSTANDARD LVCMOS33 [get_ports {data_in_0[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {data_in_0[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {data_in_0[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {data_in_0[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {data_in_0[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {data_in_0[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {data_in_0[0]}]
set_property PACKAGE_PIN V8 [get_ports {data_in_0[7]}]
set_property PACKAGE_PIN V9 [get_ports {data_in_0[6]}]
set_property PACKAGE_PIN W10 [get_ports {data_in_0[5]}]
set_property PACKAGE_PIN V12 [get_ports {data_in_0[4]}]
set_property PACKAGE_PIN W8 [get_ports {data_in_0[3]}]
set_property PACKAGE_PIN V10 [get_ports {data_in_0[2]}]
set_property PACKAGE_PIN W11 [get_ports {data_in_0[1]}]
set_property PACKAGE_PIN W12 [get_ports {data_in_0[0]}]

# Reset
set_property IOSTANDARD LVCMOS33 [get_ports {reset_0_tri_o[0]}]
set_property PACKAGE_PIN AA11 [get_ports {reset_0_tri_o[0]}]

# Standby
set_property IOSTANDARD LVCMOS33 [get_ports {standby_0_tri_o[0]}]
set_property PACKAGE_PIN Y11 [get_ports {standby_0_tri_o[0]}]

# I2C SDA
set_property IOSTANDARD LVCMOS33 [get_ports IIC_0_0_sda_io]
set_property PACKAGE_PIN AB9 [get_ports IIC_0_0_sda_io]
set_property PULLUP true [get_ports IIC_0_0_sda_io]

# I2C SCL
set_property IOSTANDARD LVCMOS33 [get_ports IIC_0_0_scl_io]
set_property PACKAGE_PIN AA8 [get_ports IIC_0_0_scl_io]
set_property PULLUP true [get_ports IIC_0_0_scl_io]
