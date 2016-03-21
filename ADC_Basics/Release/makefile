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
ADC_Basics.lss \

FLASH_IMAGE += \
ADC_Basics.hex \

EEPROM_IMAGE += \
ADC_Basics.eep \

SIZEDUMMY += \
sizedummy \


# All Target
all: ADC_Basics.elf secondary-outputs

# Tool invocations
ADC_Basics.elf: $(OBJS) $(USER_OBJS)
	@echo 'Building target: $@'
	@echo 'Invoking: AVR C Linker'
	avr-gcc -Wl,-Map,ADC_Basics.map -mmcu=atmega32 -o "ADC_Basics.elf" $(OBJS) $(USER_OBJS) $(LIBS)
	@echo 'Finished building target: $@'
	@echo ' '

ADC_Basics.lss: ADC_Basics.elf
	@echo 'Invoking: AVR Create Extended Listing'
	-avr-objdump -h -S ADC_Basics.elf  >"ADC_Basics.lss"
	@echo 'Finished building: $@'
	@echo ' '

ADC_Basics.hex: ADC_Basics.elf
	@echo 'Create Flash image (ihex format)'
	-avr-objcopy -R .eeprom -R .fuse -R .lock -R .signature -O ihex ADC_Basics.elf  "ADC_Basics.hex"
	@echo 'Finished building: $@'
	@echo ' '

ADC_Basics.eep: ADC_Basics.elf
	@echo 'Create eeprom image (ihex format)'
	-avr-objcopy -j .eeprom --no-change-warnings --change-section-lma .eeprom=0 -O ihex ADC_Basics.elf  "ADC_Basics.eep"
	@echo 'Finished building: $@'
	@echo ' '

sizedummy: ADC_Basics.elf
	@echo 'Invoking: Print Size'
	-avr-size --format=avr --mcu=atmega32 ADC_Basics.elf
	@echo 'Finished building: $@'
	@echo ' '

# Other Targets
clean:
	-$(RM) $(FLASH_IMAGE)$(ELFS)$(OBJS)$(ASM_DEPS)$(EEPROM_IMAGE)$(S_DEPS)$(SIZEDUMMY)$(S_UPPER_DEPS)$(LSS)$(C_DEPS) ADC_Basics.elf
	-@echo ' '

secondary-outputs: $(LSS) $(FLASH_IMAGE) $(EEPROM_IMAGE) $(SIZEDUMMY)

.PHONY: all clean dependents
.SECONDARY:

-include ../makefile.targets
