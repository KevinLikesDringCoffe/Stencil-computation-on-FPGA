################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../tb.cpp 

OBJS += \
./testbench/tb.o 

CPP_DEPS += \
./testbench/tb.d 


# Each subdirectory must supply rules for building sources it contributes
testbench/tb.o: C:/Users/zhenyu/Desktop/HLSstudy/FDTD/tb.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -ID:/Vivado/2019.2/include/ap_sysc -ID:/Vivado/2019.2/include/etc -ID:/Vivado/2019.2/win64/tools/auto_cc/include -ID:/Vivado/2019.2/include -IC:/Users/zhenyu/Desktop/HLSstudy -ID:/Vivado/2019.2/win64/tools/systemc/include -O0 -g3 -Wall -Wno-unknown-pragmas -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"testbench/tb.d" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


