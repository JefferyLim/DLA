// ==============================================================
// File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2016.2
// Copyright (C) 1986-2016 Xilinx, Inc. All Rights Reserved.
// 
// ==============================================================

#ifndef XBIGINT_MATH_H
#define XBIGINT_MATH_H

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
#include "xbigint_math_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
#else
typedef struct {
    u16 DeviceId;
    u32 Periph_bus_BaseAddress;
} XBigint_math_Config;
#endif

typedef struct {
    u32 Periph_bus_BaseAddress;
    u32 IsReady;
} XBigint_math;

typedef struct {
    u32 word_0;
    u32 word_1;
    u32 word_2;
    u32 word_3;
    u32 word_4;
    u32 word_5;
    u32 word_6;
    u32 word_7;
    u32 word_8;
    u32 word_9;
    u32 word_10;
    u32 word_11;
    u32 word_12;
    u32 word_13;
    u32 word_14;
    u32 word_15;
    u32 word_16;
    u32 word_17;
    u32 word_18;
    u32 word_19;
    u32 word_20;
    u32 word_21;
    u32 word_22;
    u32 word_23;
    u32 word_24;
    u32 word_25;
    u32 word_26;
    u32 word_27;
    u32 word_28;
    u32 word_29;
    u32 word_30;
    u32 word_31;
    u32 word_32;
    u32 word_33;
    u32 word_34;
    u32 word_35;
    u32 word_36;
    u32 word_37;
    u32 word_38;
    u32 word_39;
    u32 word_40;
    u32 word_41;
    u32 word_42;
    u32 word_43;
    u32 word_44;
    u32 word_45;
    u32 word_46;
    u32 word_47;
    u32 word_48;
    u32 word_49;
    u32 word_50;
    u32 word_51;
    u32 word_52;
    u32 word_53;
    u32 word_54;
    u32 word_55;
    u32 word_56;
    u32 word_57;
    u32 word_58;
    u32 word_59;
    u32 word_60;
    u32 word_61;
    u32 word_62;
    u32 word_63;
} XBigint_math_Number1_v;

typedef struct {
    u32 word_0;
    u32 word_1;
    u32 word_2;
    u32 word_3;
    u32 word_4;
    u32 word_5;
    u32 word_6;
    u32 word_7;
    u32 word_8;
    u32 word_9;
    u32 word_10;
    u32 word_11;
    u32 word_12;
    u32 word_13;
    u32 word_14;
    u32 word_15;
    u32 word_16;
    u32 word_17;
    u32 word_18;
    u32 word_19;
    u32 word_20;
    u32 word_21;
    u32 word_22;
    u32 word_23;
    u32 word_24;
    u32 word_25;
    u32 word_26;
    u32 word_27;
    u32 word_28;
    u32 word_29;
    u32 word_30;
    u32 word_31;
    u32 word_32;
    u32 word_33;
    u32 word_34;
    u32 word_35;
    u32 word_36;
    u32 word_37;
    u32 word_38;
    u32 word_39;
    u32 word_40;
    u32 word_41;
    u32 word_42;
    u32 word_43;
    u32 word_44;
    u32 word_45;
    u32 word_46;
    u32 word_47;
    u32 word_48;
    u32 word_49;
    u32 word_50;
    u32 word_51;
    u32 word_52;
    u32 word_53;
    u32 word_54;
    u32 word_55;
    u32 word_56;
    u32 word_57;
    u32 word_58;
    u32 word_59;
    u32 word_60;
    u32 word_61;
    u32 word_62;
    u32 word_63;
} XBigint_math_Number2_v;

typedef struct {
    u32 word_0;
    u32 word_1;
    u32 word_2;
    u32 word_3;
    u32 word_4;
    u32 word_5;
    u32 word_6;
    u32 word_7;
    u32 word_8;
    u32 word_9;
    u32 word_10;
    u32 word_11;
    u32 word_12;
    u32 word_13;
    u32 word_14;
    u32 word_15;
    u32 word_16;
    u32 word_17;
    u32 word_18;
    u32 word_19;
    u32 word_20;
    u32 word_21;
    u32 word_22;
    u32 word_23;
    u32 word_24;
    u32 word_25;
    u32 word_26;
    u32 word_27;
    u32 word_28;
    u32 word_29;
    u32 word_30;
    u32 word_31;
    u32 word_32;
    u32 word_33;
    u32 word_34;
    u32 word_35;
    u32 word_36;
    u32 word_37;
    u32 word_38;
    u32 word_39;
    u32 word_40;
    u32 word_41;
    u32 word_42;
    u32 word_43;
    u32 word_44;
    u32 word_45;
    u32 word_46;
    u32 word_47;
    u32 word_48;
    u32 word_49;
    u32 word_50;
    u32 word_51;
    u32 word_52;
    u32 word_53;
    u32 word_54;
    u32 word_55;
    u32 word_56;
    u32 word_57;
    u32 word_58;
    u32 word_59;
    u32 word_60;
    u32 word_61;
    u32 word_62;
    u32 word_63;
} XBigint_math_Output_v;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XBigint_math_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XBigint_math_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XBigint_math_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XBigint_math_ReadReg(BaseAddress, RegOffset) \
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
int XBigint_math_Initialize(XBigint_math *InstancePtr, u16 DeviceId);
XBigint_math_Config* XBigint_math_LookupConfig(u16 DeviceId);
int XBigint_math_CfgInitialize(XBigint_math *InstancePtr, XBigint_math_Config *ConfigPtr);
#else
int XBigint_math_Initialize(XBigint_math *InstancePtr, const char* InstanceName);
int XBigint_math_Release(XBigint_math *InstancePtr);
#endif

void XBigint_math_Start(XBigint_math *InstancePtr);
u32 XBigint_math_IsDone(XBigint_math *InstancePtr);
u32 XBigint_math_IsIdle(XBigint_math *InstancePtr);
u32 XBigint_math_IsReady(XBigint_math *InstancePtr);
void XBigint_math_EnableAutoRestart(XBigint_math *InstancePtr);
void XBigint_math_DisableAutoRestart(XBigint_math *InstancePtr);

void XBigint_math_Set_number1_V(XBigint_math *InstancePtr, XBigint_math_Number1_v Data);
XBigint_math_Number1_v XBigint_math_Get_number1_V(XBigint_math *InstancePtr);
void XBigint_math_Set_number2_V(XBigint_math *InstancePtr, XBigint_math_Number2_v Data);
XBigint_math_Number2_v XBigint_math_Get_number2_V(XBigint_math *InstancePtr);
XBigint_math_Output_v XBigint_math_Get_output_V(XBigint_math *InstancePtr);
u32 XBigint_math_Get_output_V_vld(XBigint_math *InstancePtr);

void XBigint_math_InterruptGlobalEnable(XBigint_math *InstancePtr);
void XBigint_math_InterruptGlobalDisable(XBigint_math *InstancePtr);
void XBigint_math_InterruptEnable(XBigint_math *InstancePtr, u32 Mask);
void XBigint_math_InterruptDisable(XBigint_math *InstancePtr, u32 Mask);
void XBigint_math_InterruptClear(XBigint_math *InstancePtr, u32 Mask);
u32 XBigint_math_InterruptGetEnabled(XBigint_math *InstancePtr);
u32 XBigint_math_InterruptGetStatus(XBigint_math *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
