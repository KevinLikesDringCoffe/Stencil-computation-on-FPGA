// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.2 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
/***************************** Include Files *********************************/
#include "xwrapper.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XWrapper_CfgInitialize(XWrapper *InstancePtr, XWrapper_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Axilites_BaseAddress = ConfigPtr->Axilites_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XWrapper_Start(XWrapper *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XWrapper_ReadReg(InstancePtr->Axilites_BaseAddress, XWRAPPER_AXILITES_ADDR_AP_CTRL) & 0x80;
    XWrapper_WriteReg(InstancePtr->Axilites_BaseAddress, XWRAPPER_AXILITES_ADDR_AP_CTRL, Data | 0x01);
}

u32 XWrapper_IsDone(XWrapper *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XWrapper_ReadReg(InstancePtr->Axilites_BaseAddress, XWRAPPER_AXILITES_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XWrapper_IsIdle(XWrapper *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XWrapper_ReadReg(InstancePtr->Axilites_BaseAddress, XWRAPPER_AXILITES_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XWrapper_IsReady(XWrapper *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XWrapper_ReadReg(InstancePtr->Axilites_BaseAddress, XWRAPPER_AXILITES_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XWrapper_EnableAutoRestart(XWrapper *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XWrapper_WriteReg(InstancePtr->Axilites_BaseAddress, XWRAPPER_AXILITES_ADDR_AP_CTRL, 0x80);
}

void XWrapper_DisableAutoRestart(XWrapper *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XWrapper_WriteReg(InstancePtr->Axilites_BaseAddress, XWRAPPER_AXILITES_ADDR_AP_CTRL, 0);
}

void XWrapper_Set_initial_array(XWrapper *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XWrapper_WriteReg(InstancePtr->Axilites_BaseAddress, XWRAPPER_AXILITES_ADDR_INITIAL_ARRAY_DATA, Data);
}

u32 XWrapper_Get_initial_array(XWrapper *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XWrapper_ReadReg(InstancePtr->Axilites_BaseAddress, XWRAPPER_AXILITES_ADDR_INITIAL_ARRAY_DATA);
    return Data;
}

void XWrapper_Set_bondary_n(XWrapper *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XWrapper_WriteReg(InstancePtr->Axilites_BaseAddress, XWRAPPER_AXILITES_ADDR_BONDARY_N_DATA, Data);
}

u32 XWrapper_Get_bondary_n(XWrapper *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XWrapper_ReadReg(InstancePtr->Axilites_BaseAddress, XWRAPPER_AXILITES_ADDR_BONDARY_N_DATA);
    return Data;
}

void XWrapper_Set_bondary_s(XWrapper *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XWrapper_WriteReg(InstancePtr->Axilites_BaseAddress, XWRAPPER_AXILITES_ADDR_BONDARY_S_DATA, Data);
}

u32 XWrapper_Get_bondary_s(XWrapper *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XWrapper_ReadReg(InstancePtr->Axilites_BaseAddress, XWRAPPER_AXILITES_ADDR_BONDARY_S_DATA);
    return Data;
}

void XWrapper_Set_bondary_w(XWrapper *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XWrapper_WriteReg(InstancePtr->Axilites_BaseAddress, XWRAPPER_AXILITES_ADDR_BONDARY_W_DATA, Data);
}

u32 XWrapper_Get_bondary_w(XWrapper *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XWrapper_ReadReg(InstancePtr->Axilites_BaseAddress, XWRAPPER_AXILITES_ADDR_BONDARY_W_DATA);
    return Data;
}

void XWrapper_Set_bondary_e(XWrapper *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XWrapper_WriteReg(InstancePtr->Axilites_BaseAddress, XWRAPPER_AXILITES_ADDR_BONDARY_E_DATA, Data);
}

u32 XWrapper_Get_bondary_e(XWrapper *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XWrapper_ReadReg(InstancePtr->Axilites_BaseAddress, XWRAPPER_AXILITES_ADDR_BONDARY_E_DATA);
    return Data;
}

void XWrapper_Set_coef_tij(XWrapper *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XWrapper_WriteReg(InstancePtr->Axilites_BaseAddress, XWRAPPER_AXILITES_ADDR_COEF_TIJ_DATA, Data);
}

u32 XWrapper_Get_coef_tij(XWrapper *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XWrapper_ReadReg(InstancePtr->Axilites_BaseAddress, XWRAPPER_AXILITES_ADDR_COEF_TIJ_DATA);
    return Data;
}

void XWrapper_Set_coef_ti(XWrapper *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XWrapper_WriteReg(InstancePtr->Axilites_BaseAddress, XWRAPPER_AXILITES_ADDR_COEF_TI_DATA, Data);
}

u32 XWrapper_Get_coef_ti(XWrapper *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XWrapper_ReadReg(InstancePtr->Axilites_BaseAddress, XWRAPPER_AXILITES_ADDR_COEF_TI_DATA);
    return Data;
}

void XWrapper_Set_coef_tj(XWrapper *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XWrapper_WriteReg(InstancePtr->Axilites_BaseAddress, XWRAPPER_AXILITES_ADDR_COEF_TJ_DATA, Data);
}

u32 XWrapper_Get_coef_tj(XWrapper *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XWrapper_ReadReg(InstancePtr->Axilites_BaseAddress, XWRAPPER_AXILITES_ADDR_COEF_TJ_DATA);
    return Data;
}

void XWrapper_Set_iter(XWrapper *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XWrapper_WriteReg(InstancePtr->Axilites_BaseAddress, XWRAPPER_AXILITES_ADDR_ITER_DATA, Data);
}

u32 XWrapper_Get_iter(XWrapper *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XWrapper_ReadReg(InstancePtr->Axilites_BaseAddress, XWRAPPER_AXILITES_ADDR_ITER_DATA);
    return Data;
}

void XWrapper_InterruptGlobalEnable(XWrapper *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XWrapper_WriteReg(InstancePtr->Axilites_BaseAddress, XWRAPPER_AXILITES_ADDR_GIE, 1);
}

void XWrapper_InterruptGlobalDisable(XWrapper *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XWrapper_WriteReg(InstancePtr->Axilites_BaseAddress, XWRAPPER_AXILITES_ADDR_GIE, 0);
}

void XWrapper_InterruptEnable(XWrapper *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XWrapper_ReadReg(InstancePtr->Axilites_BaseAddress, XWRAPPER_AXILITES_ADDR_IER);
    XWrapper_WriteReg(InstancePtr->Axilites_BaseAddress, XWRAPPER_AXILITES_ADDR_IER, Register | Mask);
}

void XWrapper_InterruptDisable(XWrapper *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XWrapper_ReadReg(InstancePtr->Axilites_BaseAddress, XWRAPPER_AXILITES_ADDR_IER);
    XWrapper_WriteReg(InstancePtr->Axilites_BaseAddress, XWRAPPER_AXILITES_ADDR_IER, Register & (~Mask));
}

void XWrapper_InterruptClear(XWrapper *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XWrapper_WriteReg(InstancePtr->Axilites_BaseAddress, XWRAPPER_AXILITES_ADDR_ISR, Mask);
}

u32 XWrapper_InterruptGetEnabled(XWrapper *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XWrapper_ReadReg(InstancePtr->Axilites_BaseAddress, XWRAPPER_AXILITES_ADDR_IER);
}

u32 XWrapper_InterruptGetStatus(XWrapper *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XWrapper_ReadReg(InstancePtr->Axilites_BaseAddress, XWRAPPER_AXILITES_ADDR_ISR);
}

