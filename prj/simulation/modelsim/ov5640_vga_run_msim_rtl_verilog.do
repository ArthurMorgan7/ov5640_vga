transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+F:/CODE/ov5640_vga/rtl/ov5640/ov5640_ctrl {F:/CODE/ov5640_vga/rtl/ov5640/ov5640_ctrl/ov5640_data.v}
vlog -vlog01compat -work work +incdir+F:/CODE/ov5640_vga/rtl/ov5640/ov5640_ctrl {F:/CODE/ov5640_vga/rtl/ov5640/ov5640_ctrl/ov5640_cfg.v}
vlog -vlog01compat -work work +incdir+F:/CODE/ov5640_vga/rtl/ov5640/ov5640_ctrl {F:/CODE/ov5640_vga/rtl/ov5640/ov5640_ctrl/i2c_ctrl.v}
vlog -vlog01compat -work work +incdir+F:/CODE/ov5640_vga/rtl/ov5640 {F:/CODE/ov5640_vga/rtl/ov5640/ov5640_top.v}

vlog -vlog01compat -work work +incdir+F:/CODE/ov5640_vga/prj/../sim {F:/CODE/ov5640_vga/prj/../sim/tb_ov5640_top.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneiv_hssi_ver -L cycloneiv_pcie_hip_ver -L cycloneiv_ver -L rtl_work -L work -voptargs="+acc"  tb_ov5640_top

add wave *
view structure
view signals
run -all
