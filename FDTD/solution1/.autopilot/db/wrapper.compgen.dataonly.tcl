# This script segment is generated automatically by AutoPilot

set axilite_register_dict [dict create]
set port_AXILiteS {
ap_start { }
ap_done { }
ap_ready { }
ap_idle { }
initial_array { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 16
	offset_end 23
}
bondary_n { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 24
	offset_end 31
}
bondary_s { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 32
	offset_end 39
}
bondary_w { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 40
	offset_end 47
}
bondary_e { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 48
	offset_end 55
}
coef_tij { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 56
	offset_end 63
}
coef_ti { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 64
	offset_end 71
}
coef_tj { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 72
	offset_end 79
}
iter { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 80
	offset_end 87
}
}
dict set axilite_register_dict AXILiteS $port_AXILiteS


