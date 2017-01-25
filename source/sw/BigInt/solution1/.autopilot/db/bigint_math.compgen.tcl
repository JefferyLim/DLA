# This script segment is generated automatically by AutoPilot

# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

set port_PERIPH_BUS {
ap_start { }
ap_done { }
ap_ready { }
ap_idle { }
number1_V { 
	dir I
	width 2048
	depth 1
	mode ap_none
	offset 16
	offset_end 275
}
number2_V { 
	dir I
	width 2048
	depth 1
	mode ap_none
	offset 276
	offset_end 535
}
output_V { 
	dir O
	width 2048
	depth 1
	mode ap_vld
	offset 536
	offset_end 795
}
}


# Native S_AXILite:
if {${::AESL::PGuard_simmodel_gen}} {
	if {[info proc ::AESL_LIB_XILADAPTER::s_axilite_gen] == "::AESL_LIB_XILADAPTER::s_axilite_gen"} {
		eval "::AESL_LIB_XILADAPTER::s_axilite_gen { \
			id 1 \
			corename bigint_math_PERIPH_BUS_axilite \
			name bigint_math_PERIPH_BUS_s_axi \
			ports {$port_PERIPH_BUS} \
			op interface \
		} "
	} else {
		puts "@W \[IMPL-110\] Cannot find AXI Lite interface model in the library. Ignored generation of AXI Lite  interface for 'PERIPH_BUS'"
	}
}

if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler bigint_math_PERIPH_BUS_s_axi
}



# merge
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_end
    cg_default_interface_gen_bundle_end
    AESL_LIB_XILADAPTER::native_axis_end
}


