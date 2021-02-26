############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
############################################################
open_project FDTD
set_top wrapper
add_files FDTD/wrapper.cpp
add_files FDTD/stencil.cpp
add_files FDTD/kernel64x64.cpp
add_files FDTD/fdtd.h
add_files -tb FDTD/tb.cpp -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
open_solution "solution1"
set_part {xc7z010-clg400-1}
create_clock -period 10 -name default
config_export -format ip_catalog -rtl verilog
#source "./FDTD/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -rtl verilog -format ip_catalog
