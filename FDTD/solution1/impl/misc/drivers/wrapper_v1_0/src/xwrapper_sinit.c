// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.2 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xwrapper.h"

extern XWrapper_Config XWrapper_ConfigTable[];

XWrapper_Config *XWrapper_LookupConfig(u16 DeviceId) {
	XWrapper_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XWRAPPER_NUM_INSTANCES; Index++) {
		if (XWrapper_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XWrapper_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XWrapper_Initialize(XWrapper *InstancePtr, u16 DeviceId) {
	XWrapper_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XWrapper_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XWrapper_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

