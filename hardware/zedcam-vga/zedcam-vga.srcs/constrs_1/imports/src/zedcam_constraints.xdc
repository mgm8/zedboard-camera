######################################################################
#-- MT9D111 ----------------------------------------------------------
######################################################################

# HSYNC
set_property IOSTANDARD LVCMOS33 [get_ports hsync_0]
set_property PACKAGE_PIN AB10 [get_ports hsync_0]

# VSYNC
set_property IOSTANDARD LVCMOS33 [get_ports vsync_0]
set_property PACKAGE_PIN AA9 [get_ports vsync_0]

# PCLK
set_property IOSTANDARD LVCMOS33 [get_ports pclk_0]
set_property PACKAGE_PIN AB11 [get_ports pclk_0]

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

#set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets pclk_0_IBUF]

# Standby
set_property PACKAGE_PIN Y11 [get_ports {GPIO_0_tri_o[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {GPIO_0_tri_o[0]}]

# Reset
set_property IOSTANDARD LVCMOS33 [get_ports {GPIO_0_tri_o[1]}]
set_property PACKAGE_PIN AA11 [get_ports {GPIO_0_tri_o[1]}]

######################################################################
#-- VGA --------------------------------------------------------------
######################################################################

# HSYNC
set_property IOSTANDARD LVCMOS33 [get_ports hsync_1]
set_property PACKAGE_PIN AA19 [get_ports hsync_1]

# VSYNC
set_property IOSTANDARD LVCMOS33 [get_ports vsync_1]
set_property PACKAGE_PIN Y19 [get_ports vsync_1]

# Red Channel
set_property IOSTANDARD LVCMOS33 [get_ports {R_out_0[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {R_out_0[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {R_out_0[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {R_out_0[0]}]
set_property PACKAGE_PIN V18 [get_ports {R_out_0[3]}]
set_property PACKAGE_PIN V19 [get_ports {R_out_0[2]}]
set_property PACKAGE_PIN U20 [get_ports {R_out_0[1]}]
set_property PACKAGE_PIN V20 [get_ports {R_out_0[0]}]

# Green Channel
set_property IOSTANDARD LVCMOS33 [get_ports {G_out_0[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {G_out_0[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {G_out_0[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {G_out_0[0]}]
set_property PACKAGE_PIN AA21 [get_ports {G_out_0[3]}]
set_property PACKAGE_PIN AB21 [get_ports {G_out_0[2]}]
set_property PACKAGE_PIN AA22 [get_ports {G_out_0[1]}]
set_property PACKAGE_PIN AB22 [get_ports {G_out_0[0]}]

# Blue Channel
set_property IOSTANDARD LVCMOS33 [get_ports {B_out_0[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {B_out_0[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {B_out_0[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {B_out_0[0]}]
set_property PACKAGE_PIN AB19 [get_ports {B_out_0[3]}]
set_property PACKAGE_PIN AB20 [get_ports {B_out_0[2]}]
set_property PACKAGE_PIN Y20 [get_ports {B_out_0[1]}]
set_property PACKAGE_PIN Y21 [get_ports {B_out_0[0]}]
