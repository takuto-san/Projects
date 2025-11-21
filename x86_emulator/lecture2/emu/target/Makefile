TARGET = hello.bin

CC = gcc
LD = ld
AS = nasm
CFLAGS += -m32 -nostdlib -fno-pic -fno-asynchronous-unwind-tables \
    -g -fno-stack-protector
LDFLAGS += -m elf_i386 --entry=func --oformat=binary

.PHONY: all
all :
	$(MAKE) $(TARGET)

%.o : %.c Makefile
	$(CC) $(CFLAGS) -c $< -o $@

%.bin : %.o Makefile
	$(LD) $(LDFLAGS) -o $@ $<

%.bin : %.s Makefile
	$(AS) -f bin -o $@ $<