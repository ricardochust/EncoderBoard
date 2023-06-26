################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
S_SRCS += \
../Core/Startup/startup_stm32h723zgtx.s 

S_DEPS += \
./Core/Startup/startup_stm32h723zgtx.d 

OBJS += \
./Core/Startup/startup_stm32h723zgtx.o 


# Each subdirectory must supply rules for building sources it contributes
Core/Startup/%.o: ../Core/Startup/%.s Core/Startup/subdir.mk
	arm-none-eabi-gcc -mcpu=cortex-m7 -DDATA_IN_D2_SRAM -c -I"D:/hyperloop/ST-LIB/Middlewares/Third_Party/LwIP/src/include" -I"D:/hyperloop/ST-LIB/Middlewares/Third_Party/LwIP/system" -I"D:/hyperloop/ST-LIB/Middlewares/Third_Party/LwIP/src/netif/ppp" -I"D:/hyperloop/ST-LIB/Middlewares/Third_Party/LwIP/src/include/lwip" -I"D:/hyperloop/ST-LIB/Middlewares/Third_Party/LwIP/src/include/lwip/apps" -I"D:/hyperloop/ST-LIB/Middlewares/Third_Party/LwIP/src/include/lwip/priv" -I"D:/hyperloop/ST-LIB/Middlewares/Third_Party/LwIP/src/include/lwip/prot" -I"D:/hyperloop/ST-LIB/Middlewares/Third_Party/LwIP/src/include/netif" -I"D:/hyperloop/ST-LIB/Middlewares/Third_Party/LwIP/src/include/compat" -I"D:/hyperloop/ST-LIB/Middlewares/Third_Party/LwIP/src/include/compat/posix" -I"D:/hyperloop/ST-LIB/Middlewares/Third_Party/LwIP/system/arch" -I"D:/hyperloop/ST-LIB/Drivers/BSP/Components" -I"D:/hyperloop/ST-LIB/Middlewares/Third_Party/LwIP/src/include/compat/stdc" -I"D:/hyperloop/ST-LIB/LWIP/App" -I"D:/hyperloop/ST-LIB/LWIP/Target" -I"D:/hyperloop/ST-LIB/Inc/HALAL/Services/Communication" -I"D:/hyperloop/ST-LIB/Inc/HALAL/Services/Communication/Ethernet" -I"D:/hyperloop/ST-LIB/Inc/HALAL/Services/Communication/Ethernet/UDP" -I"D:/hyperloop/ST-LIB/Inc/HALAL/Services/Communication/Ethernet/TCP" -x assembler-with-cpp -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@" "$<"

clean: clean-Core-2f-Startup

clean-Core-2f-Startup:
	-$(RM) ./Core/Startup/startup_stm32h723zgtx.d ./Core/Startup/startup_stm32h723zgtx.o

.PHONY: clean-Core-2f-Startup

