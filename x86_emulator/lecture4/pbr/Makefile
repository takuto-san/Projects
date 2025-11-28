TARGET = pbr.bin

CC = gcc
LD = ld
AS = nasm
CFLAGS += -m32 -nostdlib -fno-asynchronous-unwind-tables \
	-g -fno-stack-protector -fno-pic
LDFLAGS += --entry=func --oformat=binary -m elf_i386

.PHONY: all
all : $(TARGET)

%.o : %.c Makefile
	$(CC) $(CFLAGS) -c $<

%.bin : %.o Makefile
	$(LD) $(LDFLAGS) -o $@ $<

%.bin : %.s Makefile
	$(AS) -f bin -o $@ $<

# ndisasm -b 16 subroutine.bin
