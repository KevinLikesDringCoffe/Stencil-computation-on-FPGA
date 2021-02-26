################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../fdtd_loop.cpp \
../kernel64x64.cpp \
../stencil.cpp \
../wrapper.cpp 

OBJS += \
./source/fdtd_loop.o \
./source/kernel64x64.o \
./source/stencil.o \
./source/wrapper.o 

CPP_DEPS += \
./source/fdtd_loop.d \
./source/kernel64x64.d \
./source/stencil.d \
./source/wrapper.d 


# Each subdirectory must supply rules for building sources it contributes
source/fdtd_loop.o: C:/Users/zhenyu/Desktop/HLSstudy/FDTD/fdtd_loop.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -DAESL_TB -D__llvm__ -D__llvm__ -ID:/Vivado/2019.2/include/ap_sysc -ID:/Vivado/2019.2/include/etc -ID:/Vivado/2019.2/win64/tools/auto_cc/include -ID:/Vivado/2019.2/include -IC:/Users/zhenyu/Desktop/HLSstudy -ID:/Vivado/2019.2/win64/tools/systemc/include -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

source/kernel64x64.o: C:/Users/zhenyu/Desktop/HLSstudy/FDTD/kernel64x64.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -DAESL_TB -D__llvm__ -D__llvm__ -ID:/Vivado/2019.2/include/ap_sysc -ID:/Vivado/2019.2/include/etc -ID:/Vivado/2019.2/win64/tools/auto_cc/include -ID:/Vivado/2019.2/include -IC:/Users/zhenyu/Desktop/HLSstudy -ID:/Vivado/2019.2/win64/tools/systemc/include -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

source/stencil.o: C:/Users/zhenyu/Desktop/HLSstudy/FDTD/stencil.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -DAESL_TB -D__llvm__ -D__llvm__ -ID:/Vivado/2019.2/include/ap_sysc -ID:/Vivado/2019.2/include/etc -ID:/Vivado/2019.2/win64/tools/auto_cc/include -ID:/Vivado/2019.2/include -IC:/Users/zhenyu/Desktop/HLSstudy -ID:/Vivado/2019.2/win64/tools/systemc/include -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

source/wrapper.o: C:/Users/zhenyu/Desktop/HLSstudy/FDTD/wrapper.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -DAESL_TB -D__llvm__ -D__llvm__ -ID:/Vivado/2019.2/include/ap_sysc -ID:/Vivado/2019.2/include/etc -ID:/Vivado/2019.2/win64/tools/auto_cc/include -ID:/Vivado/2019.2/include -IC:/Users/zhenyu/Desktop/HLSstudy -ID:/Vivado/2019.2/win64/tools/systemc/include -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


