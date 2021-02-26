vlib work
vlib activehdl

vlib activehdl/xilinx_vip
vlib activehdl/xpm
vlib activehdl/xbip_utils_v3_0_10
vlib activehdl/axi_utils_v2_0_6
vlib activehdl/xbip_pipe_v3_0_6
vlib activehdl/xbip_dsp48_wrapper_v3_0_4
vlib activehdl/xbip_dsp48_addsub_v3_0_6
vlib activehdl/xbip_dsp48_multadd_v3_0_6
vlib activehdl/xbip_bram18k_v3_0_6
vlib activehdl/mult_gen_v12_0_16
vlib activehdl/floating_point_v7_1_9
vlib activehdl/xil_defaultlib
vlib activehdl/axi_infrastructure_v1_1_0
vlib activehdl/axi_vip_v1_1_6
vlib activehdl/processing_system7_vip_v1_0_8
vlib activehdl/lib_cdc_v1_0_2
vlib activehdl/proc_sys_reset_v5_0_13
vlib activehdl/generic_baseblocks_v2_1_0
vlib activehdl/fifo_generator_v13_2_5
vlib activehdl/axi_data_fifo_v2_1_19
vlib activehdl/axi_register_slice_v2_1_20
vlib activehdl/axi_protocol_converter_v2_1_20
vlib activehdl/axi_clock_converter_v2_1_19
vlib activehdl/blk_mem_gen_v8_4_4
vlib activehdl/axi_dwidth_converter_v2_1_20

vmap xilinx_vip activehdl/xilinx_vip
vmap xpm activehdl/xpm
vmap xbip_utils_v3_0_10 activehdl/xbip_utils_v3_0_10
vmap axi_utils_v2_0_6 activehdl/axi_utils_v2_0_6
vmap xbip_pipe_v3_0_6 activehdl/xbip_pipe_v3_0_6
vmap xbip_dsp48_wrapper_v3_0_4 activehdl/xbip_dsp48_wrapper_v3_0_4
vmap xbip_dsp48_addsub_v3_0_6 activehdl/xbip_dsp48_addsub_v3_0_6
vmap xbip_dsp48_multadd_v3_0_6 activehdl/xbip_dsp48_multadd_v3_0_6
vmap xbip_bram18k_v3_0_6 activehdl/xbip_bram18k_v3_0_6
vmap mult_gen_v12_0_16 activehdl/mult_gen_v12_0_16
vmap floating_point_v7_1_9 activehdl/floating_point_v7_1_9
vmap xil_defaultlib activehdl/xil_defaultlib
vmap axi_infrastructure_v1_1_0 activehdl/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_6 activehdl/axi_vip_v1_1_6
vmap processing_system7_vip_v1_0_8 activehdl/processing_system7_vip_v1_0_8
vmap lib_cdc_v1_0_2 activehdl/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_13 activehdl/proc_sys_reset_v5_0_13
vmap generic_baseblocks_v2_1_0 activehdl/generic_baseblocks_v2_1_0
vmap fifo_generator_v13_2_5 activehdl/fifo_generator_v13_2_5
vmap axi_data_fifo_v2_1_19 activehdl/axi_data_fifo_v2_1_19
vmap axi_register_slice_v2_1_20 activehdl/axi_register_slice_v2_1_20
vmap axi_protocol_converter_v2_1_20 activehdl/axi_protocol_converter_v2_1_20
vmap axi_clock_converter_v2_1_19 activehdl/axi_clock_converter_v2_1_19
vmap blk_mem_gen_v8_4_4 activehdl/blk_mem_gen_v8_4_4
vmap axi_dwidth_converter_v2_1_20 activehdl/axi_dwidth_converter_v2_1_20

vlog -work xilinx_vip  -sv2k12 "+incdir+D:/Vivado/2019.2/data/xilinx_vip/include" \
"D:/Vivado/2019.2/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"D:/Vivado/2019.2/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"D:/Vivado/2019.2/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"D:/Vivado/2019.2/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"D:/Vivado/2019.2/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"D:/Vivado/2019.2/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"D:/Vivado/2019.2/data/xilinx_vip/hdl/axi_vip_if.sv" \
"D:/Vivado/2019.2/data/xilinx_vip/hdl/clk_vip_if.sv" \
"D:/Vivado/2019.2/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm  -sv2k12 "+incdir+../../../../FDTD_accl.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../FDTD_accl.srcs/sources_1/bd/design_1/ipshared/2d50/hdl" "+incdir+../../../../FDTD_accl.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+D:/Vivado/2019.2/data/xilinx_vip/include" \
"D:/Vivado/2019.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"D:/Vivado/2019.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93 \
"D:/Vivado/2019.2/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work xbip_utils_v3_0_10 -93 \
"../../../../FDTD_accl.srcs/sources_1/bd/design_1/ipshared/b795/hdl/xbip_utils_v3_0_vh_rfs.vhd" \

vcom -work axi_utils_v2_0_6 -93 \
"../../../../FDTD_accl.srcs/sources_1/bd/design_1/ipshared/1971/hdl/axi_utils_v2_0_vh_rfs.vhd" \

vcom -work xbip_pipe_v3_0_6 -93 \
"../../../../FDTD_accl.srcs/sources_1/bd/design_1/ipshared/7468/hdl/xbip_pipe_v3_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_wrapper_v3_0_4 -93 \
"../../../../FDTD_accl.srcs/sources_1/bd/design_1/ipshared/cdbf/hdl/xbip_dsp48_wrapper_v3_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_addsub_v3_0_6 -93 \
"../../../../FDTD_accl.srcs/sources_1/bd/design_1/ipshared/910d/hdl/xbip_dsp48_addsub_v3_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_multadd_v3_0_6 -93 \
"../../../../FDTD_accl.srcs/sources_1/bd/design_1/ipshared/b0ac/hdl/xbip_dsp48_multadd_v3_0_vh_rfs.vhd" \

vcom -work xbip_bram18k_v3_0_6 -93 \
"../../../../FDTD_accl.srcs/sources_1/bd/design_1/ipshared/d367/hdl/xbip_bram18k_v3_0_vh_rfs.vhd" \

vcom -work mult_gen_v12_0_16 -93 \
"../../../../FDTD_accl.srcs/sources_1/bd/design_1/ipshared/ce84/hdl/mult_gen_v12_0_vh_rfs.vhd" \

vcom -work floating_point_v7_1_9 -93 \
"../../../../FDTD_accl.srcs/sources_1/bd/design_1/ipshared/f7b4/hdl/floating_point_v7_1_rfs.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../FDTD_accl.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../FDTD_accl.srcs/sources_1/bd/design_1/ipshared/2d50/hdl" "+incdir+../../../../FDTD_accl.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+D:/Vivado/2019.2/data/xilinx_vip/include" \
"../../../../FDTD_accl.srcs/sources_1/bd/design_1/ipshared/0eaa/hdl/verilog/Kernel64x64.v" \
"../../../../FDTD_accl.srcs/sources_1/bd/design_1/ipshared/0eaa/hdl/verilog/Kernel64x64_arraybkb.v" \
"../../../../FDTD_accl.srcs/sources_1/bd/design_1/ipshared/0eaa/hdl/verilog/wrapper_array_bufhbi.v" \
"../../../../FDTD_accl.srcs/sources_1/bd/design_1/ipshared/0eaa/hdl/verilog/wrapper_array_bufjbC.v" \
"../../../../FDTD_accl.srcs/sources_1/bd/design_1/ipshared/0eaa/hdl/verilog/wrapper_AXILiteS_s_axi.v" \
"../../../../FDTD_accl.srcs/sources_1/bd/design_1/ipshared/0eaa/hdl/verilog/wrapper_bondary_nlbW.v" \
"../../../../FDTD_accl.srcs/sources_1/bd/design_1/ipshared/0eaa/hdl/verilog/wrapper_bondary_wpcA.v" \
"../../../../FDTD_accl.srcs/sources_1/bd/design_1/ipshared/0eaa/hdl/verilog/wrapper_fadd_32nsfYi.v" \
"../../../../FDTD_accl.srcs/sources_1/bd/design_1/ipshared/0eaa/hdl/verilog/wrapper_fmul_32nsg8j.v" \
"../../../../FDTD_accl.srcs/sources_1/bd/design_1/ipshared/0eaa/hdl/verilog/wrapper_gmem_m_axi.v" \
"../../../../FDTD_accl.srcs/sources_1/bd/design_1/ipshared/0eaa/hdl/verilog/wrapper.v" \

vcom -work xil_defaultlib -93 \
"../../../../FDTD_accl.srcs/sources_1/bd/design_1/ipshared/0eaa/hdl/ip/wrapper_ap_fadd_3_full_dsp_32.vhd" \
"../../../../FDTD_accl.srcs/sources_1/bd/design_1/ipshared/0eaa/hdl/ip/wrapper_ap_fmul_2_max_dsp_32.vhd" \
"../../../bd/design_1/ip/design_1_wrapper_0_0/sim/design_1_wrapper_0_0.vhd" \

vlog -work axi_infrastructure_v1_1_0  -v2k5 "+incdir+../../../../FDTD_accl.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../FDTD_accl.srcs/sources_1/bd/design_1/ipshared/2d50/hdl" "+incdir+../../../../FDTD_accl.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+D:/Vivado/2019.2/data/xilinx_vip/include" \
"../../../../FDTD_accl.srcs/sources_1/bd/design_1/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_6  -sv2k12 "+incdir+../../../../FDTD_accl.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../FDTD_accl.srcs/sources_1/bd/design_1/ipshared/2d50/hdl" "+incdir+../../../../FDTD_accl.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+D:/Vivado/2019.2/data/xilinx_vip/include" \
"../../../../FDTD_accl.srcs/sources_1/bd/design_1/ipshared/dc12/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work processing_system7_vip_v1_0_8  -sv2k12 "+incdir+../../../../FDTD_accl.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../FDTD_accl.srcs/sources_1/bd/design_1/ipshared/2d50/hdl" "+incdir+../../../../FDTD_accl.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+D:/Vivado/2019.2/data/xilinx_vip/include" \
"../../../../FDTD_accl.srcs/sources_1/bd/design_1/ipshared/2d50/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../FDTD_accl.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../FDTD_accl.srcs/sources_1/bd/design_1/ipshared/2d50/hdl" "+incdir+../../../../FDTD_accl.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+D:/Vivado/2019.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_processing_system7_0_0/sim/design_1_processing_system7_0_0.v" \

vcom -work lib_cdc_v1_0_2 -93 \
"../../../../FDTD_accl.srcs/sources_1/bd/design_1/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_13 -93 \
"../../../../FDTD_accl.srcs/sources_1/bd/design_1/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/design_1/ip/design_1_rst_ps7_0_50M_0/sim/design_1_rst_ps7_0_50M_0.vhd" \

vlog -work generic_baseblocks_v2_1_0  -v2k5 "+incdir+../../../../FDTD_accl.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../FDTD_accl.srcs/sources_1/bd/design_1/ipshared/2d50/hdl" "+incdir+../../../../FDTD_accl.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+D:/Vivado/2019.2/data/xilinx_vip/include" \
"../../../../FDTD_accl.srcs/sources_1/bd/design_1/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work fifo_generator_v13_2_5  -v2k5 "+incdir+../../../../FDTD_accl.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../FDTD_accl.srcs/sources_1/bd/design_1/ipshared/2d50/hdl" "+incdir+../../../../FDTD_accl.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+D:/Vivado/2019.2/data/xilinx_vip/include" \
"../../../../FDTD_accl.srcs/sources_1/bd/design_1/ipshared/276e/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_5 -93 \
"../../../../FDTD_accl.srcs/sources_1/bd/design_1/ipshared/276e/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_5  -v2k5 "+incdir+../../../../FDTD_accl.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../FDTD_accl.srcs/sources_1/bd/design_1/ipshared/2d50/hdl" "+incdir+../../../../FDTD_accl.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+D:/Vivado/2019.2/data/xilinx_vip/include" \
"../../../../FDTD_accl.srcs/sources_1/bd/design_1/ipshared/276e/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work axi_data_fifo_v2_1_19  -v2k5 "+incdir+../../../../FDTD_accl.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../FDTD_accl.srcs/sources_1/bd/design_1/ipshared/2d50/hdl" "+incdir+../../../../FDTD_accl.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+D:/Vivado/2019.2/data/xilinx_vip/include" \
"../../../../FDTD_accl.srcs/sources_1/bd/design_1/ipshared/60de/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_20  -v2k5 "+incdir+../../../../FDTD_accl.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../FDTD_accl.srcs/sources_1/bd/design_1/ipshared/2d50/hdl" "+incdir+../../../../FDTD_accl.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+D:/Vivado/2019.2/data/xilinx_vip/include" \
"../../../../FDTD_accl.srcs/sources_1/bd/design_1/ipshared/72d4/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work axi_protocol_converter_v2_1_20  -v2k5 "+incdir+../../../../FDTD_accl.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../FDTD_accl.srcs/sources_1/bd/design_1/ipshared/2d50/hdl" "+incdir+../../../../FDTD_accl.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+D:/Vivado/2019.2/data/xilinx_vip/include" \
"../../../../FDTD_accl.srcs/sources_1/bd/design_1/ipshared/c4a6/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../FDTD_accl.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../FDTD_accl.srcs/sources_1/bd/design_1/ipshared/2d50/hdl" "+incdir+../../../../FDTD_accl.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+D:/Vivado/2019.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_auto_pc_0/sim/design_1_auto_pc_0.v" \

vlog -work axi_clock_converter_v2_1_19  -v2k5 "+incdir+../../../../FDTD_accl.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../FDTD_accl.srcs/sources_1/bd/design_1/ipshared/2d50/hdl" "+incdir+../../../../FDTD_accl.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+D:/Vivado/2019.2/data/xilinx_vip/include" \
"../../../../FDTD_accl.srcs/sources_1/bd/design_1/ipshared/9e81/hdl/axi_clock_converter_v2_1_vl_rfs.v" \

vlog -work blk_mem_gen_v8_4_4  -v2k5 "+incdir+../../../../FDTD_accl.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../FDTD_accl.srcs/sources_1/bd/design_1/ipshared/2d50/hdl" "+incdir+../../../../FDTD_accl.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+D:/Vivado/2019.2/data/xilinx_vip/include" \
"../../../../FDTD_accl.srcs/sources_1/bd/design_1/ipshared/2985/simulation/blk_mem_gen_v8_4.v" \

vlog -work axi_dwidth_converter_v2_1_20  -v2k5 "+incdir+../../../../FDTD_accl.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../FDTD_accl.srcs/sources_1/bd/design_1/ipshared/2d50/hdl" "+incdir+../../../../FDTD_accl.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+D:/Vivado/2019.2/data/xilinx_vip/include" \
"../../../../FDTD_accl.srcs/sources_1/bd/design_1/ipshared/d394/hdl/axi_dwidth_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../FDTD_accl.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../FDTD_accl.srcs/sources_1/bd/design_1/ipshared/2d50/hdl" "+incdir+../../../../FDTD_accl.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+D:/Vivado/2019.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_auto_us_0/sim/design_1_auto_us_0.v" \
"../../../bd/design_1/ip/design_1_auto_pc_1/sim/design_1_auto_pc_1.v" \
"../../../bd/design_1/sim/design_1.v" \

vlog -work xil_defaultlib \
"glbl.v"

