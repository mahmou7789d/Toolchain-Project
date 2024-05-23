# Compiler variable
cc = arm-none-eabi-gcc

# Flags for the compiler
## -c flag: Compile or assemble the source files, but do not link.
## -mcpu=$(M_ARCH): Specify the target ARM processor architecture.
## -std=gnu11: Use the GNU11 standard for C language.
## -mthumb: Generate code for Thumb-2 instruction set.
CFLAGS = -c -mcpu=$(M_ARCH) -std=gnu11 -mthumb	 -Wall 

# Target ARM processor architecture
M_ARCH = cortex-m3



LDFLAGS = -T STM32F103C6_LS.ld -nostdlib -Wl,-Map=final.map

# Rule to build main.o from main.c
main.o: main.c
	$(cc) $(CFLAGS) $^ -o $@

GPIO_Prog.o: GPIO_Prog.c
	$(cc) $(CFLAGS) $^ -o $@

RCC_Prog.o: RCC_Prog.c
	$(cc) $(CFLAGS) $^ -o $@

STM32_F103C6Startup.o: STM32_F103C6Startup.c
	$(cc) $(CFLAGS) $^ -o $@

final.elf: main.o GPIO_Prog.o RCC_Prog.o STM32_F103C6Startup.o
	$(cc) $(LDFLAGS) $^ -o $@

All: main.o GPIO_Prog.o RCC_Prog.o STM32_F103C6Startup.o final.elf

clean:
	rm -rf *.o *.elf

Load:
	openocd -f board/stm32f103c8_blue_pill.cfg -c "transport select hla_swd"

update:
	openocd -f interface/stlink.cfg -c "transport select hla_swd"

Lol:
	openocd -f interface/stlink.cfg -f board/stm32f103c8_blue_pill.cfg -c "transport select hla_swd" 