################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../LWIP/Target/ethernetif.c 

C_DEPS += \
./LWIP/Target/ethernetif.d 

OBJS += \
./LWIP/Target/ethernetif.o 


# Each subdirectory must supply rules for building sources it contributes
LWIP/Target/%.o LWIP/Target/%.su: ../LWIP/Target/%.c LWIP/Target/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -DUSE_HAL_DRIVER -DSTM32H723xx -DDATA_IN_D2_SRAM -c -I../Core/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc -I../Drivers/STM32H7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32H7xx/Include -I../Drivers/CMSIS/Include -I"D:/hyperloop/ST-LIB/Middlewares/Third_Party/LwIP/src/include" -I"D:/hyperloop/ST-LIB/Middlewares/Third_Party/LwIP/system" -I"D:/hyperloop/ST-LIB/Middlewares/Third_Party/LwIP/src/netif/ppp" -I"D:/hyperloop/ST-LIB/Middlewares/Third_Party/LwIP/src/include/lwip" -I"D:/hyperloop/ST-LIB/Middlewares/Third_Party/LwIP/src/include/lwip/apps" -I"D:/hyperloop/ST-LIB/Middlewares/Third_Party/LwIP/src/include/lwip/priv" -I"D:/hyperloop/ST-LIB/Middlewares/Third_Party/LwIP/src/include/lwip/prot" -I"D:/hyperloop/ST-LIB/Middlewares/Third_Party/LwIP/src/include/netif" -I"D:/hyperloop/ST-LIB/Middlewares/Third_Party/LwIP/src/include/compat" -I"D:/hyperloop/ST-LIB/Middlewares/Third_Party/LwIP/src/include/compat/posix" -I"D:/hyperloop/ST-LIB/Middlewares/Third_Party/LwIP/system/arch" -I"D:/hyperloop/ST-LIB/Drivers/BSP/Components" -I"D:/hyperloop/ST-LIB/Middlewares/Third_Party/LwIP/src/include/compat/stdc" -I"D:/hyperloop/ST-LIB/LWIP/App" -I"D:/hyperloop/ST-LIB/LWIP/Target" -I../LWIP/App -I../LWIP/Target -I../Middlewares/Third_Party/LwIP/src/include -I../Middlewares/Third_Party/LwIP/system -I../Drivers/BSP/Components/lan8742 -I../Middlewares/Third_Party/LwIP/src/include/netif/ppp -I../Middlewares/Third_Party/LwIP/src/include/lwip -I../Middlewares/Third_Party/LwIP/src/include/lwip/apps -I../Middlewares/Third_Party/LwIP/src/include/lwip/priv -I../Middlewares/Third_Party/LwIP/src/include/lwip/prot -I../Middlewares/Third_Party/LwIP/src/include/netif -I../Middlewares/Third_Party/LwIP/src/include/compat/posix -I../Middlewares/Third_Party/LwIP/src/include/compat/posix/arpa -I../Middlewares/Third_Party/LwIP/src/include/compat/posix/net -I../Middlewares/Third_Party/LwIP/src/include/compat/posix/sys -I../Middlewares/Third_Party/LwIP/src/include/compat/stdc -I../Middlewares/Third_Party/LwIP/system/arch -I"D:/hyperloop/ST-LIB/Inc/HALAL/Services/Communication" -I"D:/hyperloop/ST-LIB/Inc/HALAL/Services/Communication/Ethernet" -I"D:/hyperloop/ST-LIB/Inc/HALAL/Services/Communication/Ethernet/UDP" -I"D:/hyperloop/ST-LIB/Inc/HALAL/Services/Communication/Ethernet/TCP" -Os -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-LWIP-2f-Target

clean-LWIP-2f-Target:
	-$(RM) ./LWIP/Target/ethernetif.d ./LWIP/Target/ethernetif.o ./LWIP/Target/ethernetif.su

.PHONY: clean-LWIP-2f-Target

