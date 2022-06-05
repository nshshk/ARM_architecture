CROSS_COMPILE ?= arm-linux-gnueabi

AOPS = --warn --fatal-warnings
COPS = -Wall -Werror -O2 -nostdlib -nostartfiles -ffreestanding

assembly.bin : startup.s memmap
	$(CROSS_COMPILE)-as $(AOPS) startup.s -o startup.o
	$(CROSS_COMPILE)-ld startup.o -T memmap -o assembly.elf
	$(CROSS_COMPILE)-objdump -D assembly.elf > assembly.list
	$(CROSS_COMPILE)-objcopy assembly.elf -O binary assembly.bin

clean:
	rm *.o *.elf *.list *.bin
