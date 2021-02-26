set moduleName Kernel64x64
set isTopModule 0
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isFreeRunPipelineModule 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {Kernel64x64}
set C_modelType { void 0 }
set C_modelArgList {
	{ array_buffer_0_0 float 32 regular {array 1024 { 2 1 } 1 1 }  }
	{ array_buffer_0_1 float 32 regular {array 1024 { 2 1 } 1 1 }  }
	{ array_buffer_1_0 float 32 regular {array 1024 { 1 2 } 1 1 }  }
	{ array_buffer_1_1 float 32 regular {array 1024 { 1 2 } 1 1 }  }
	{ bondary_n_buffer_0 float 32 regular {array 32 { 1 3 } 1 1 }  }
	{ bondary_n_buffer_1 float 32 regular {array 32 { 1 3 } 1 1 }  }
	{ bondary_s_buffer_0 float 32 regular {array 32 { 1 3 } 1 1 }  }
	{ bondary_s_buffer_1 float 32 regular {array 32 { 1 3 } 1 1 }  }
	{ bondary_w_buffer_0 float 32 regular {array 32 { 1 1 } 1 1 }  }
	{ bondary_w_buffer_1 float 32 regular {array 32 { 1 1 } 1 1 }  }
	{ bondary_e_buffer_0 float 32 regular {array 32 { 1 1 } 1 1 }  }
	{ bondary_e_buffer_1 float 32 regular {array 32 { 1 1 } 1 1 }  }
	{ coef_tij float 32 regular  }
	{ coef_ti float 32 regular  }
	{ coef_tj float 32 regular  }
	{ iter int 32 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "array_buffer_0_0", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "array_buffer_0_1", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "array_buffer_1_0", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "array_buffer_1_1", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "bondary_n_buffer_0", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "bondary_n_buffer_1", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "bondary_s_buffer_0", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "bondary_s_buffer_1", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "bondary_w_buffer_0", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "bondary_w_buffer_1", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "bondary_e_buffer_0", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "bondary_e_buffer_1", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "coef_tij", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "coef_ti", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "coef_tj", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "iter", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 78
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ array_buffer_0_0_address0 sc_out sc_lv 10 signal 0 } 
	{ array_buffer_0_0_ce0 sc_out sc_logic 1 signal 0 } 
	{ array_buffer_0_0_we0 sc_out sc_logic 1 signal 0 } 
	{ array_buffer_0_0_d0 sc_out sc_lv 32 signal 0 } 
	{ array_buffer_0_0_q0 sc_in sc_lv 32 signal 0 } 
	{ array_buffer_0_0_address1 sc_out sc_lv 10 signal 0 } 
	{ array_buffer_0_0_ce1 sc_out sc_logic 1 signal 0 } 
	{ array_buffer_0_0_q1 sc_in sc_lv 32 signal 0 } 
	{ array_buffer_0_1_address0 sc_out sc_lv 10 signal 1 } 
	{ array_buffer_0_1_ce0 sc_out sc_logic 1 signal 1 } 
	{ array_buffer_0_1_we0 sc_out sc_logic 1 signal 1 } 
	{ array_buffer_0_1_d0 sc_out sc_lv 32 signal 1 } 
	{ array_buffer_0_1_q0 sc_in sc_lv 32 signal 1 } 
	{ array_buffer_0_1_address1 sc_out sc_lv 10 signal 1 } 
	{ array_buffer_0_1_ce1 sc_out sc_logic 1 signal 1 } 
	{ array_buffer_0_1_q1 sc_in sc_lv 32 signal 1 } 
	{ array_buffer_1_0_address0 sc_out sc_lv 10 signal 2 } 
	{ array_buffer_1_0_ce0 sc_out sc_logic 1 signal 2 } 
	{ array_buffer_1_0_q0 sc_in sc_lv 32 signal 2 } 
	{ array_buffer_1_0_address1 sc_out sc_lv 10 signal 2 } 
	{ array_buffer_1_0_ce1 sc_out sc_logic 1 signal 2 } 
	{ array_buffer_1_0_we1 sc_out sc_logic 1 signal 2 } 
	{ array_buffer_1_0_d1 sc_out sc_lv 32 signal 2 } 
	{ array_buffer_1_0_q1 sc_in sc_lv 32 signal 2 } 
	{ array_buffer_1_1_address0 sc_out sc_lv 10 signal 3 } 
	{ array_buffer_1_1_ce0 sc_out sc_logic 1 signal 3 } 
	{ array_buffer_1_1_q0 sc_in sc_lv 32 signal 3 } 
	{ array_buffer_1_1_address1 sc_out sc_lv 10 signal 3 } 
	{ array_buffer_1_1_ce1 sc_out sc_logic 1 signal 3 } 
	{ array_buffer_1_1_we1 sc_out sc_logic 1 signal 3 } 
	{ array_buffer_1_1_d1 sc_out sc_lv 32 signal 3 } 
	{ array_buffer_1_1_q1 sc_in sc_lv 32 signal 3 } 
	{ bondary_n_buffer_0_address0 sc_out sc_lv 5 signal 4 } 
	{ bondary_n_buffer_0_ce0 sc_out sc_logic 1 signal 4 } 
	{ bondary_n_buffer_0_q0 sc_in sc_lv 32 signal 4 } 
	{ bondary_n_buffer_1_address0 sc_out sc_lv 5 signal 5 } 
	{ bondary_n_buffer_1_ce0 sc_out sc_logic 1 signal 5 } 
	{ bondary_n_buffer_1_q0 sc_in sc_lv 32 signal 5 } 
	{ bondary_s_buffer_0_address0 sc_out sc_lv 5 signal 6 } 
	{ bondary_s_buffer_0_ce0 sc_out sc_logic 1 signal 6 } 
	{ bondary_s_buffer_0_q0 sc_in sc_lv 32 signal 6 } 
	{ bondary_s_buffer_1_address0 sc_out sc_lv 5 signal 7 } 
	{ bondary_s_buffer_1_ce0 sc_out sc_logic 1 signal 7 } 
	{ bondary_s_buffer_1_q0 sc_in sc_lv 32 signal 7 } 
	{ bondary_w_buffer_0_address0 sc_out sc_lv 5 signal 8 } 
	{ bondary_w_buffer_0_ce0 sc_out sc_logic 1 signal 8 } 
	{ bondary_w_buffer_0_q0 sc_in sc_lv 32 signal 8 } 
	{ bondary_w_buffer_0_address1 sc_out sc_lv 5 signal 8 } 
	{ bondary_w_buffer_0_ce1 sc_out sc_logic 1 signal 8 } 
	{ bondary_w_buffer_0_q1 sc_in sc_lv 32 signal 8 } 
	{ bondary_w_buffer_1_address0 sc_out sc_lv 5 signal 9 } 
	{ bondary_w_buffer_1_ce0 sc_out sc_logic 1 signal 9 } 
	{ bondary_w_buffer_1_q0 sc_in sc_lv 32 signal 9 } 
	{ bondary_w_buffer_1_address1 sc_out sc_lv 5 signal 9 } 
	{ bondary_w_buffer_1_ce1 sc_out sc_logic 1 signal 9 } 
	{ bondary_w_buffer_1_q1 sc_in sc_lv 32 signal 9 } 
	{ bondary_e_buffer_0_address0 sc_out sc_lv 5 signal 10 } 
	{ bondary_e_buffer_0_ce0 sc_out sc_logic 1 signal 10 } 
	{ bondary_e_buffer_0_q0 sc_in sc_lv 32 signal 10 } 
	{ bondary_e_buffer_0_address1 sc_out sc_lv 5 signal 10 } 
	{ bondary_e_buffer_0_ce1 sc_out sc_logic 1 signal 10 } 
	{ bondary_e_buffer_0_q1 sc_in sc_lv 32 signal 10 } 
	{ bondary_e_buffer_1_address0 sc_out sc_lv 5 signal 11 } 
	{ bondary_e_buffer_1_ce0 sc_out sc_logic 1 signal 11 } 
	{ bondary_e_buffer_1_q0 sc_in sc_lv 32 signal 11 } 
	{ bondary_e_buffer_1_address1 sc_out sc_lv 5 signal 11 } 
	{ bondary_e_buffer_1_ce1 sc_out sc_logic 1 signal 11 } 
	{ bondary_e_buffer_1_q1 sc_in sc_lv 32 signal 11 } 
	{ coef_tij sc_in sc_lv 32 signal 12 } 
	{ coef_ti sc_in sc_lv 32 signal 13 } 
	{ coef_tj sc_in sc_lv 32 signal 14 } 
	{ iter sc_in sc_lv 32 signal 15 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "array_buffer_0_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "array_buffer_0_0", "role": "address0" }} , 
 	{ "name": "array_buffer_0_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "array_buffer_0_0", "role": "ce0" }} , 
 	{ "name": "array_buffer_0_0_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "array_buffer_0_0", "role": "we0" }} , 
 	{ "name": "array_buffer_0_0_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "array_buffer_0_0", "role": "d0" }} , 
 	{ "name": "array_buffer_0_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "array_buffer_0_0", "role": "q0" }} , 
 	{ "name": "array_buffer_0_0_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "array_buffer_0_0", "role": "address1" }} , 
 	{ "name": "array_buffer_0_0_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "array_buffer_0_0", "role": "ce1" }} , 
 	{ "name": "array_buffer_0_0_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "array_buffer_0_0", "role": "q1" }} , 
 	{ "name": "array_buffer_0_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "array_buffer_0_1", "role": "address0" }} , 
 	{ "name": "array_buffer_0_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "array_buffer_0_1", "role": "ce0" }} , 
 	{ "name": "array_buffer_0_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "array_buffer_0_1", "role": "we0" }} , 
 	{ "name": "array_buffer_0_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "array_buffer_0_1", "role": "d0" }} , 
 	{ "name": "array_buffer_0_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "array_buffer_0_1", "role": "q0" }} , 
 	{ "name": "array_buffer_0_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "array_buffer_0_1", "role": "address1" }} , 
 	{ "name": "array_buffer_0_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "array_buffer_0_1", "role": "ce1" }} , 
 	{ "name": "array_buffer_0_1_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "array_buffer_0_1", "role": "q1" }} , 
 	{ "name": "array_buffer_1_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "array_buffer_1_0", "role": "address0" }} , 
 	{ "name": "array_buffer_1_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "array_buffer_1_0", "role": "ce0" }} , 
 	{ "name": "array_buffer_1_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "array_buffer_1_0", "role": "q0" }} , 
 	{ "name": "array_buffer_1_0_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "array_buffer_1_0", "role": "address1" }} , 
 	{ "name": "array_buffer_1_0_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "array_buffer_1_0", "role": "ce1" }} , 
 	{ "name": "array_buffer_1_0_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "array_buffer_1_0", "role": "we1" }} , 
 	{ "name": "array_buffer_1_0_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "array_buffer_1_0", "role": "d1" }} , 
 	{ "name": "array_buffer_1_0_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "array_buffer_1_0", "role": "q1" }} , 
 	{ "name": "array_buffer_1_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "array_buffer_1_1", "role": "address0" }} , 
 	{ "name": "array_buffer_1_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "array_buffer_1_1", "role": "ce0" }} , 
 	{ "name": "array_buffer_1_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "array_buffer_1_1", "role": "q0" }} , 
 	{ "name": "array_buffer_1_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "array_buffer_1_1", "role": "address1" }} , 
 	{ "name": "array_buffer_1_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "array_buffer_1_1", "role": "ce1" }} , 
 	{ "name": "array_buffer_1_1_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "array_buffer_1_1", "role": "we1" }} , 
 	{ "name": "array_buffer_1_1_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "array_buffer_1_1", "role": "d1" }} , 
 	{ "name": "array_buffer_1_1_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "array_buffer_1_1", "role": "q1" }} , 
 	{ "name": "bondary_n_buffer_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "bondary_n_buffer_0", "role": "address0" }} , 
 	{ "name": "bondary_n_buffer_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bondary_n_buffer_0", "role": "ce0" }} , 
 	{ "name": "bondary_n_buffer_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bondary_n_buffer_0", "role": "q0" }} , 
 	{ "name": "bondary_n_buffer_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "bondary_n_buffer_1", "role": "address0" }} , 
 	{ "name": "bondary_n_buffer_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bondary_n_buffer_1", "role": "ce0" }} , 
 	{ "name": "bondary_n_buffer_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bondary_n_buffer_1", "role": "q0" }} , 
 	{ "name": "bondary_s_buffer_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "bondary_s_buffer_0", "role": "address0" }} , 
 	{ "name": "bondary_s_buffer_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bondary_s_buffer_0", "role": "ce0" }} , 
 	{ "name": "bondary_s_buffer_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bondary_s_buffer_0", "role": "q0" }} , 
 	{ "name": "bondary_s_buffer_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "bondary_s_buffer_1", "role": "address0" }} , 
 	{ "name": "bondary_s_buffer_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bondary_s_buffer_1", "role": "ce0" }} , 
 	{ "name": "bondary_s_buffer_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bondary_s_buffer_1", "role": "q0" }} , 
 	{ "name": "bondary_w_buffer_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "bondary_w_buffer_0", "role": "address0" }} , 
 	{ "name": "bondary_w_buffer_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bondary_w_buffer_0", "role": "ce0" }} , 
 	{ "name": "bondary_w_buffer_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bondary_w_buffer_0", "role": "q0" }} , 
 	{ "name": "bondary_w_buffer_0_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "bondary_w_buffer_0", "role": "address1" }} , 
 	{ "name": "bondary_w_buffer_0_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bondary_w_buffer_0", "role": "ce1" }} , 
 	{ "name": "bondary_w_buffer_0_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bondary_w_buffer_0", "role": "q1" }} , 
 	{ "name": "bondary_w_buffer_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "bondary_w_buffer_1", "role": "address0" }} , 
 	{ "name": "bondary_w_buffer_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bondary_w_buffer_1", "role": "ce0" }} , 
 	{ "name": "bondary_w_buffer_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bondary_w_buffer_1", "role": "q0" }} , 
 	{ "name": "bondary_w_buffer_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "bondary_w_buffer_1", "role": "address1" }} , 
 	{ "name": "bondary_w_buffer_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bondary_w_buffer_1", "role": "ce1" }} , 
 	{ "name": "bondary_w_buffer_1_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bondary_w_buffer_1", "role": "q1" }} , 
 	{ "name": "bondary_e_buffer_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "bondary_e_buffer_0", "role": "address0" }} , 
 	{ "name": "bondary_e_buffer_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bondary_e_buffer_0", "role": "ce0" }} , 
 	{ "name": "bondary_e_buffer_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bondary_e_buffer_0", "role": "q0" }} , 
 	{ "name": "bondary_e_buffer_0_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "bondary_e_buffer_0", "role": "address1" }} , 
 	{ "name": "bondary_e_buffer_0_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bondary_e_buffer_0", "role": "ce1" }} , 
 	{ "name": "bondary_e_buffer_0_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bondary_e_buffer_0", "role": "q1" }} , 
 	{ "name": "bondary_e_buffer_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "bondary_e_buffer_1", "role": "address0" }} , 
 	{ "name": "bondary_e_buffer_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bondary_e_buffer_1", "role": "ce0" }} , 
 	{ "name": "bondary_e_buffer_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bondary_e_buffer_1", "role": "q0" }} , 
 	{ "name": "bondary_e_buffer_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "bondary_e_buffer_1", "role": "address1" }} , 
 	{ "name": "bondary_e_buffer_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bondary_e_buffer_1", "role": "ce1" }} , 
 	{ "name": "bondary_e_buffer_1_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bondary_e_buffer_1", "role": "q1" }} , 
 	{ "name": "coef_tij", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "coef_tij", "role": "default" }} , 
 	{ "name": "coef_ti", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "coef_ti", "role": "default" }} , 
 	{ "name": "coef_tj", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "coef_tj", "role": "default" }} , 
 	{ "name": "iter", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "iter", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29"],
		"CDFG" : "Kernel64x64",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "9352001",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "array_buffer_0_0", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "array_buffer_0_1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "array_buffer_1_0", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "array_buffer_1_1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "bondary_n_buffer_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "bondary_n_buffer_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "bondary_s_buffer_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "bondary_s_buffer_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "bondary_w_buffer_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "bondary_w_buffer_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "bondary_e_buffer_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "bondary_e_buffer_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "coef_tij", "Type" : "None", "Direction" : "I"},
			{"Name" : "coef_ti", "Type" : "None", "Direction" : "I"},
			{"Name" : "coef_tj", "Type" : "None", "Direction" : "I"},
			{"Name" : "iter", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.array_buffer_tmp_0_s_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.array_buffer_tmp_0_1_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.array_buffer_tmp_1_s_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.array_buffer_tmp_1_1_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wrapper_fadd_32nsfYi_U1", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wrapper_fadd_32nsfYi_U2", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wrapper_fadd_32nsfYi_U3", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wrapper_fadd_32nsfYi_U4", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wrapper_fadd_32nsfYi_U5", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wrapper_fadd_32nsfYi_U6", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wrapper_fadd_32nsfYi_U7", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wrapper_fadd_32nsfYi_U8", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wrapper_fadd_32nsfYi_U9", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wrapper_fadd_32nsfYi_U10", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wrapper_fadd_32nsfYi_U11", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wrapper_fadd_32nsfYi_U12", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wrapper_fadd_32nsfYi_U13", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wrapper_fadd_32nsfYi_U14", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wrapper_fadd_32nsfYi_U15", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wrapper_fmul_32nsg8j_U16", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wrapper_fmul_32nsg8j_U17", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wrapper_fmul_32nsg8j_U18", "Parent" : "0"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wrapper_fmul_32nsg8j_U19", "Parent" : "0"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wrapper_fmul_32nsg8j_U20", "Parent" : "0"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wrapper_fmul_32nsg8j_U21", "Parent" : "0"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wrapper_fmul_32nsg8j_U22", "Parent" : "0"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wrapper_fmul_32nsg8j_U23", "Parent" : "0"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wrapper_fmul_32nsg8j_U24", "Parent" : "0"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wrapper_fmul_32nsg8j_U25", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	Kernel64x64 {
		array_buffer_0_0 {Type IO LastRead 22 FirstWrite 42}
		array_buffer_0_1 {Type IO LastRead 22 FirstWrite 42}
		array_buffer_1_0 {Type IO LastRead 21 FirstWrite 43}
		array_buffer_1_1 {Type IO LastRead 21 FirstWrite 43}
		bondary_n_buffer_0 {Type I LastRead 18 FirstWrite -1}
		bondary_n_buffer_1 {Type I LastRead 17 FirstWrite -1}
		bondary_s_buffer_0 {Type I LastRead 17 FirstWrite -1}
		bondary_s_buffer_1 {Type I LastRead 17 FirstWrite -1}
		bondary_w_buffer_0 {Type I LastRead 19 FirstWrite -1}
		bondary_w_buffer_1 {Type I LastRead 18 FirstWrite -1}
		bondary_e_buffer_0 {Type I LastRead 19 FirstWrite -1}
		bondary_e_buffer_1 {Type I LastRead 18 FirstWrite -1}
		coef_tij {Type I LastRead 0 FirstWrite -1}
		coef_ti {Type I LastRead 0 FirstWrite -1}
		coef_tj {Type I LastRead 0 FirstWrite -1}
		iter {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1", "Max" : "9352001"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "9352001"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	array_buffer_0_0 { ap_memory {  { array_buffer_0_0_address0 mem_address 1 10 }  { array_buffer_0_0_ce0 mem_ce 1 1 }  { array_buffer_0_0_we0 mem_we 1 1 }  { array_buffer_0_0_d0 mem_din 1 32 }  { array_buffer_0_0_q0 mem_dout 0 32 }  { array_buffer_0_0_address1 MemPortADDR2 1 10 }  { array_buffer_0_0_ce1 MemPortCE2 1 1 }  { array_buffer_0_0_q1 MemPortDOUT2 0 32 } } }
	array_buffer_0_1 { ap_memory {  { array_buffer_0_1_address0 mem_address 1 10 }  { array_buffer_0_1_ce0 mem_ce 1 1 }  { array_buffer_0_1_we0 mem_we 1 1 }  { array_buffer_0_1_d0 mem_din 1 32 }  { array_buffer_0_1_q0 mem_dout 0 32 }  { array_buffer_0_1_address1 MemPortADDR2 1 10 }  { array_buffer_0_1_ce1 MemPortCE2 1 1 }  { array_buffer_0_1_q1 MemPortDOUT2 0 32 } } }
	array_buffer_1_0 { ap_memory {  { array_buffer_1_0_address0 mem_address 1 10 }  { array_buffer_1_0_ce0 mem_ce 1 1 }  { array_buffer_1_0_q0 mem_dout 0 32 }  { array_buffer_1_0_address1 MemPortADDR2 1 10 }  { array_buffer_1_0_ce1 MemPortCE2 1 1 }  { array_buffer_1_0_we1 MemPortWE2 1 1 }  { array_buffer_1_0_d1 MemPortDIN2 1 32 }  { array_buffer_1_0_q1 MemPortDOUT2 0 32 } } }
	array_buffer_1_1 { ap_memory {  { array_buffer_1_1_address0 mem_address 1 10 }  { array_buffer_1_1_ce0 mem_ce 1 1 }  { array_buffer_1_1_q0 mem_dout 0 32 }  { array_buffer_1_1_address1 MemPortADDR2 1 10 }  { array_buffer_1_1_ce1 MemPortCE2 1 1 }  { array_buffer_1_1_we1 MemPortWE2 1 1 }  { array_buffer_1_1_d1 MemPortDIN2 1 32 }  { array_buffer_1_1_q1 MemPortDOUT2 0 32 } } }
	bondary_n_buffer_0 { ap_memory {  { bondary_n_buffer_0_address0 mem_address 1 5 }  { bondary_n_buffer_0_ce0 mem_ce 1 1 }  { bondary_n_buffer_0_q0 mem_dout 0 32 } } }
	bondary_n_buffer_1 { ap_memory {  { bondary_n_buffer_1_address0 mem_address 1 5 }  { bondary_n_buffer_1_ce0 mem_ce 1 1 }  { bondary_n_buffer_1_q0 mem_dout 0 32 } } }
	bondary_s_buffer_0 { ap_memory {  { bondary_s_buffer_0_address0 mem_address 1 5 }  { bondary_s_buffer_0_ce0 mem_ce 1 1 }  { bondary_s_buffer_0_q0 mem_dout 0 32 } } }
	bondary_s_buffer_1 { ap_memory {  { bondary_s_buffer_1_address0 mem_address 1 5 }  { bondary_s_buffer_1_ce0 mem_ce 1 1 }  { bondary_s_buffer_1_q0 mem_dout 0 32 } } }
	bondary_w_buffer_0 { ap_memory {  { bondary_w_buffer_0_address0 mem_address 1 5 }  { bondary_w_buffer_0_ce0 mem_ce 1 1 }  { bondary_w_buffer_0_q0 mem_dout 0 32 }  { bondary_w_buffer_0_address1 MemPortADDR2 1 5 }  { bondary_w_buffer_0_ce1 MemPortCE2 1 1 }  { bondary_w_buffer_0_q1 MemPortDOUT2 0 32 } } }
	bondary_w_buffer_1 { ap_memory {  { bondary_w_buffer_1_address0 mem_address 1 5 }  { bondary_w_buffer_1_ce0 mem_ce 1 1 }  { bondary_w_buffer_1_q0 mem_dout 0 32 }  { bondary_w_buffer_1_address1 MemPortADDR2 1 5 }  { bondary_w_buffer_1_ce1 MemPortCE2 1 1 }  { bondary_w_buffer_1_q1 MemPortDOUT2 0 32 } } }
	bondary_e_buffer_0 { ap_memory {  { bondary_e_buffer_0_address0 mem_address 1 5 }  { bondary_e_buffer_0_ce0 mem_ce 1 1 }  { bondary_e_buffer_0_q0 mem_dout 0 32 }  { bondary_e_buffer_0_address1 MemPortADDR2 1 5 }  { bondary_e_buffer_0_ce1 MemPortCE2 1 1 }  { bondary_e_buffer_0_q1 MemPortDOUT2 0 32 } } }
	bondary_e_buffer_1 { ap_memory {  { bondary_e_buffer_1_address0 mem_address 1 5 }  { bondary_e_buffer_1_ce0 mem_ce 1 1 }  { bondary_e_buffer_1_q0 mem_dout 0 32 }  { bondary_e_buffer_1_address1 MemPortADDR2 1 5 }  { bondary_e_buffer_1_ce1 MemPortCE2 1 1 }  { bondary_e_buffer_1_q1 MemPortDOUT2 0 32 } } }
	coef_tij { ap_none {  { coef_tij in_data 0 32 } } }
	coef_ti { ap_none {  { coef_ti in_data 0 32 } } }
	coef_tj { ap_none {  { coef_tj in_data 0 32 } } }
	iter { ap_none {  { iter in_data 0 32 } } }
}
