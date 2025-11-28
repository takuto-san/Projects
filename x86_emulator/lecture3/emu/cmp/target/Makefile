TARGET = test.bin
OBJS = crt0.o test.o

CC = gcc
LD = ld
AS = nasm

CFLAGS += -m32 -fno-pic -nostdlib -fno-asynchronous-unwind-tables -g -fno-stack-protector
LDFLAGS += --entry=start --oformat=binary -Ttext 0x7c00 -m elf_i386

.PHONY: all
all :
	$(MAKE) $(TARGET)

%.o : %.c Makefile
	$(CC) $(CFLAGS) -c $<

%.o : %.s Makefile
	$(AS) -f elf $<

$(TARGET) : $(OBJS) Makefile
	$(LD) $(LDFLAGS) -o $@ $(OBJS)

# ndisasm -b 32 test.bin