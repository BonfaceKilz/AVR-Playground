################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(ASM_DEPS)),)
-include $(ASM_DEPS)
endif
ifneq ($(strip $(S_DEPS)),)
-include $(S_DEPS)
endif
ifneq ($(strip $(S_UPPER_DEPS)),)
-include $(S_UPPER_DEPS)
endif
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
endif

-include ../makefile.defs

# Add inputs and outputs from these tool invocations to the build variables 
LSS += \
Led_Basic.lss \

FLASH_IMAGE += \
Led_Basic.hex \

EEPROM_IMAGE += \
Led_Basic.eep \

SIZEDUMMY += \
sizedummy \


# All Target
all: Led_Basic.elf secondary-outputs

# Tool invocations
Led_Basic.elf: $(OBJS) $(USER_OBJS)
	@echo 'Building target: $@'
	@echo 'Invoking: AVR C Linker'
	avr-gcc -Wl,-Map,Led_Basic.map -mmcu=atmega32 -o "Led_Basic.elf" $(OBJS) $(USER_OBJS) $(LIBS)
	@echo 'Finished building target: $@'
	@echo ' '

Led_Basic.lss: Led_Basic.elf
	@echo 'Invoking: AVR Create Extended Listing'
	-avr-objdump -h -S Led_Basic.elf  >"Led_Basic.lss"
	@echo 'Finished building: $@'
	@echo ' '

Led_Basic.hex: Led_Basic.elf
	@echo 'Create Flash image (ihex format)'
	-avr-objcopy -R .eeprom -R .fuse -R .lock -R .signature -O ihex Led_Basic.elf  "Led_Basic.hex"
	@echo 'Finished building: $@'
	@echo ' '

Led_Basic.eep: Led_Basic.elf
	@echo 'Create eeprom image (ihex format)'
	-avr-objcopy -j .eeprom --no-change-warnings --change-section-lma .eeprom=0 -O ihex Led_Basic.elf  "Led_Basic.eep"
	@echo 'Finished building: $@'
	@echo ' '

sizedummy: Led_Basic.elf
	@echo 'Invoking: Print Size'
	-avr-size --format=avr --mcu=atmega32 Led_Basic.elf
	@echo 'Finished building: $@'
	@echo ' '

# Other Targets
clean:
	-$(RM) $(FLASH_IMAGE)$(ELFS)$(OBJS)$(ASM_DEPS)$(EEPROM_IMAGE)$(S_DEPS)$(SIZEDUMMY)$(S_UPPER_DEPS)$(LSS)$(C_DEPS) Led_Basic.elf
	-@echo ' '

secondary-outputs: $(LSS) $(FLASH_IMAGE) $(EEPROM_IMAGE) $(SIZEDUMMY)

.PHONY: all clean dependents
.SECONDARY:

-include ../makefile.targets
