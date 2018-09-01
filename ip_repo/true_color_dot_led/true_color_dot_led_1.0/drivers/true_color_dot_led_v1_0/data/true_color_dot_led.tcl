

proc generate {drv_handle} {
	xdefine_include_file $drv_handle "xparameters.h" "true_color_dot_led" "NUM_INSTANCES" "DEVICE_ID"  "C_S_AXI_Control_BASEADDR" "C_S_AXI_Control_HIGHADDR" "C_S_AXI_Data_BASEADDR" "C_S_AXI_Data_HIGHADDR"
}
