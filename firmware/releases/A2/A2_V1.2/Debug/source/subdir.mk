################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../source/acc_i2c.c \
../source/board.c \
../source/clock_config.c \
../source/clock_mcglite.c \
../source/i2c_polling_b2b_transfer_master.c \
../source/misc.c \
../source/pin_mux.c \
../source/power_management.c \
../source/power_mode_switch.c \
../source/power_modes.c \
../source/uv_i2c.c 

OBJS += \
./source/acc_i2c.o \
./source/board.o \
./source/clock_config.o \
./source/clock_mcglite.o \
./source/i2c_polling_b2b_transfer_master.o \
./source/misc.o \
./source/pin_mux.o \
./source/power_management.o \
./source/power_mode_switch.o \
./source/power_modes.o \
./source/uv_i2c.o 

C_DEPS += \
./source/acc_i2c.d \
./source/board.d \
./source/clock_config.d \
./source/clock_mcglite.d \
./source/i2c_polling_b2b_transfer_master.d \
./source/misc.d \
./source/pin_mux.d \
./source/power_management.d \
./source/power_mode_switch.d \
./source/power_modes.d \
./source/uv_i2c.d 


# Each subdirectory must supply rules for building sources it contributes
source/%.o: ../source/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross ARM C Compiler'
	arm-none-eabi-gcc -mcpu=cortex-m0plus -mthumb -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -Wall  -g3 -DFSL_RTOS_BM -DSDK_OS_BAREMETAL -DCPU_MKL03Z32VFK4 -DCPU_MKL03Z32VFK4_cm0plus -I../CMSIS -I../board -I../drivers -I../utilities -std=gnu99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


