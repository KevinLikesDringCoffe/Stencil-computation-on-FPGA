// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.2 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
// AXILiteS
// 0x00 : Control signals
//        bit 0  - ap_start (Read/Write/COH)
//        bit 1  - ap_done (Read/COR)
//        bit 2  - ap_idle (Read)
//        bit 3  - ap_ready (Read)
//        bit 7  - auto_restart (Read/Write)
//        others - reserved
// 0x04 : Global Interrupt Enable Register
//        bit 0  - Global Interrupt Enable (Read/Write)
//        others - reserved
// 0x08 : IP Interrupt Enable Register (Read/Write)
//        bit 0  - Channel 0 (ap_done)
//        bit 1  - Channel 1 (ap_ready)
//        others - reserved
// 0x0c : IP Interrupt Status Register (Read/TOW)
//        bit 0  - Channel 0 (ap_done)
//        bit 1  - Channel 1 (ap_ready)
//        others - reserved
// 0x10 : Data signal of initial_array
//        bit 31~0 - initial_array[31:0] (Read/Write)
// 0x14 : reserved
// 0x18 : Data signal of bondary_n
//        bit 31~0 - bondary_n[31:0] (Read/Write)
// 0x1c : reserved
// 0x20 : Data signal of bondary_s
//        bit 31~0 - bondary_s[31:0] (Read/Write)
// 0x24 : reserved
// 0x28 : Data signal of bondary_w
//        bit 31~0 - bondary_w[31:0] (Read/Write)
// 0x2c : reserved
// 0x30 : Data signal of bondary_e
//        bit 31~0 - bondary_e[31:0] (Read/Write)
// 0x34 : reserved
// 0x38 : Data signal of coef_tij
//        bit 31~0 - coef_tij[31:0] (Read/Write)
// 0x3c : reserved
// 0x40 : Data signal of coef_ti
//        bit 31~0 - coef_ti[31:0] (Read/Write)
// 0x44 : reserved
// 0x48 : Data signal of coef_tj
//        bit 31~0 - coef_tj[31:0] (Read/Write)
// 0x4c : reserved
// 0x50 : Data signal of iter
//        bit 31~0 - iter[31:0] (Read/Write)
// 0x54 : reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define XWRAPPER_AXILITES_ADDR_AP_CTRL            0x00
#define XWRAPPER_AXILITES_ADDR_GIE                0x04
#define XWRAPPER_AXILITES_ADDR_IER                0x08
#define XWRAPPER_AXILITES_ADDR_ISR                0x0c
#define XWRAPPER_AXILITES_ADDR_INITIAL_ARRAY_DATA 0x10
#define XWRAPPER_AXILITES_BITS_INITIAL_ARRAY_DATA 32
#define XWRAPPER_AXILITES_ADDR_BONDARY_N_DATA     0x18
#define XWRAPPER_AXILITES_BITS_BONDARY_N_DATA     32
#define XWRAPPER_AXILITES_ADDR_BONDARY_S_DATA     0x20
#define XWRAPPER_AXILITES_BITS_BONDARY_S_DATA     32
#define XWRAPPER_AXILITES_ADDR_BONDARY_W_DATA     0x28
#define XWRAPPER_AXILITES_BITS_BONDARY_W_DATA     32
#define XWRAPPER_AXILITES_ADDR_BONDARY_E_DATA     0x30
#define XWRAPPER_AXILITES_BITS_BONDARY_E_DATA     32
#define XWRAPPER_AXILITES_ADDR_COEF_TIJ_DATA      0x38
#define XWRAPPER_AXILITES_BITS_COEF_TIJ_DATA      32
#define XWRAPPER_AXILITES_ADDR_COEF_TI_DATA       0x40
#define XWRAPPER_AXILITES_BITS_COEF_TI_DATA       32
#define XWRAPPER_AXILITES_ADDR_COEF_TJ_DATA       0x48
#define XWRAPPER_AXILITES_BITS_COEF_TJ_DATA       32
#define XWRAPPER_AXILITES_ADDR_ITER_DATA          0x50
#define XWRAPPER_AXILITES_BITS_ITER_DATA          32

