// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.2 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef XWRAPPER_H
#define XWRAPPER_H

#ifdef __cplusplus
extern "C" {
#endif

/***************************** Include Files *********************************/
#ifndef __linux__
#include "xil_types.h"
#include "xil_assert.h"
#include "xstatus.h"
#include "xil_io.h"
#else
#include <stdint.h>
#include <assert.h>
#include <dirent.h>
#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/mman.h>
#include <unistd.h>
#include <stddef.h>
#endif
#include "xwrapper_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
#else
typedef struct {
    u16 DeviceId;
    u32 Axilites_BaseAddress;
} XWrapper_Config;
#endif

typedef struct {
    u32 Axilites_BaseAddress;
    u32 IsReady;
} XWrapper;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XWrapper_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XWrapper_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XWrapper_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XWrapper_ReadReg(BaseAddress, RegOffset) \
    *(volatile u32*)((BaseAddress) + (RegOffset))

#define Xil_AssertVoid(expr)    assert(expr)
#define Xil_AssertNonvoid(expr) assert(expr)

#define XST_SUCCESS             0
#define XST_DEVICE_NOT_FOUND    2
#define XST_OPEN_DEVICE_FAILED  3
#define XIL_COMPONENT_IS_READY  1
#endif

/************************** Function Prototypes *****************************/
#ifndef __linux__
int XWrapper_Initialize(XWrapper *InstancePtr, u16 DeviceId);
XWrapper_Config* XWrapper_LookupConfig(u16 DeviceId);
int XWrapper_CfgInitialize(XWrapper *InstancePtr, XWrapper_Config *ConfigPtr);
#else
int XWrapper_Initialize(XWrapper *InstancePtr, const char* InstanceName);
int XWrapper_Release(XWrapper *InstancePtr);
#endif

void XWrapper_Start(XWrapper *InstancePtr);
u32 XWrapper_IsDone(XWrapper *InstancePtr);
u32 XWrapper_IsIdle(XWrapper *InstancePtr);
u32 XWrapper_IsReady(XWrapper *InstancePtr);
void XWrapper_EnableAutoRestart(XWrapper *InstancePtr);
void XWrapper_DisableAutoRestart(XWrapper *InstancePtr);

void XWrapper_Set_initial_array(XWrapper *InstancePtr, u32 Data);
u32 XWrapper_Get_initial_array(XWrapper *InstancePtr);
void XWrapper_Set_bondary_n(XWrapper *InstancePtr, u32 Data);
u32 XWrapper_Get_bondary_n(XWrapper *InstancePtr);
void XWrapper_Set_bondary_s(XWrapper *InstancePtr, u32 Data);
u32 XWrapper_Get_bondary_s(XWrapper *InstancePtr);
void XWrapper_Set_bondary_w(XWrapper *InstancePtr, u32 Data);
u32 XWrapper_Get_bondary_w(XWrapper *InstancePtr);
void XWrapper_Set_bondary_e(XWrapper *InstancePtr, u32 Data);
u32 XWrapper_Get_bondary_e(XWrapper *InstancePtr);
void XWrapper_Set_coef_tij(XWrapper *InstancePtr, u32 Data);
u32 XWrapper_Get_coef_tij(XWrapper *InstancePtr);
void XWrapper_Set_coef_ti(XWrapper *InstancePtr, u32 Data);
u32 XWrapper_Get_coef_ti(XWrapper *InstancePtr);
void XWrapper_Set_coef_tj(XWrapper *InstancePtr, u32 Data);
u32 XWrapper_Get_coef_tj(XWrapper *InstancePtr);
void XWrapper_Set_iter(XWrapper *InstancePtr, u32 Data);
u32 XWrapper_Get_iter(XWrapper *InstancePtr);

void XWrapper_InterruptGlobalEnable(XWrapper *InstancePtr);
void XWrapper_InterruptGlobalDisable(XWrapper *InstancePtr);
void XWrapper_InterruptEnable(XWrapper *InstancePtr, u32 Mask);
void XWrapper_InterruptDisable(XWrapper *InstancePtr, u32 Mask);
void XWrapper_InterruptClear(XWrapper *InstancePtr, u32 Mask);
u32 XWrapper_InterruptGetEnabled(XWrapper *InstancePtr);
u32 XWrapper_InterruptGetStatus(XWrapper *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
