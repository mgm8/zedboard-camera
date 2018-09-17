# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "COUNT_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "MAX_COUNT" -parent ${Page_0}
  ipgui::add_param $IPINST -name "USE_ENABLE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "USE_RESET" -parent ${Page_0}


}

proc update_PARAM_VALUE.COUNT_WIDTH { PARAM_VALUE.COUNT_WIDTH } {
	# Procedure called to update COUNT_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.COUNT_WIDTH { PARAM_VALUE.COUNT_WIDTH } {
	# Procedure called to validate COUNT_WIDTH
	return true
}

proc update_PARAM_VALUE.MAX_COUNT { PARAM_VALUE.MAX_COUNT } {
	# Procedure called to update MAX_COUNT when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.MAX_COUNT { PARAM_VALUE.MAX_COUNT } {
	# Procedure called to validate MAX_COUNT
	return true
}

proc update_PARAM_VALUE.USE_ENABLE { PARAM_VALUE.USE_ENABLE } {
	# Procedure called to update USE_ENABLE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.USE_ENABLE { PARAM_VALUE.USE_ENABLE } {
	# Procedure called to validate USE_ENABLE
	return true
}

proc update_PARAM_VALUE.USE_RESET { PARAM_VALUE.USE_RESET } {
	# Procedure called to update USE_RESET when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.USE_RESET { PARAM_VALUE.USE_RESET } {
	# Procedure called to validate USE_RESET
	return true
}


proc update_MODELPARAM_VALUE.MAX_COUNT { MODELPARAM_VALUE.MAX_COUNT PARAM_VALUE.MAX_COUNT } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.MAX_COUNT}] ${MODELPARAM_VALUE.MAX_COUNT}
}

proc update_MODELPARAM_VALUE.COUNT_WIDTH { MODELPARAM_VALUE.COUNT_WIDTH PARAM_VALUE.COUNT_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.COUNT_WIDTH}] ${MODELPARAM_VALUE.COUNT_WIDTH}
}

proc update_MODELPARAM_VALUE.USE_ENABLE { MODELPARAM_VALUE.USE_ENABLE PARAM_VALUE.USE_ENABLE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.USE_ENABLE}] ${MODELPARAM_VALUE.USE_ENABLE}
}

proc update_MODELPARAM_VALUE.USE_RESET { MODELPARAM_VALUE.USE_RESET PARAM_VALUE.USE_RESET } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.USE_RESET}] ${MODELPARAM_VALUE.USE_RESET}
}

