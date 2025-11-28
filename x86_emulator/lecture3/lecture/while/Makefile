TARGET = test.bin
OBJS = crt0.o test.o

CC = gcc
LD = ld
AS = nasm

CFLAGS += -m32 -fno-pic -nostdlib -fno-asynchronous-unwind-tables -g -fno-stack-protector
LDFLAGS += --entry=start --oformat=binary -Ttext 0x7c00 -m elf_i386

.PHONY: all
all :
	make $(TARGET)

%.o : %.c Makefile
	$(CC) $(CFLAGS) -c $<

%.o : %.s Makefile
	$(AS) -f elf $<

$(TARGET) : $(OBJS) Makefile
	$(LD) $(LDFLAGS) -o $@ $(OBJS)

# 生成したバイナリファイルを逆アセンブルする
# $ ndisasm -b 32 test.bin
	
# 別の方法で逆アセンブルする
# $ gcc -c -g -o test.o test.c
# $ objdump -d -S -m i386 -M intel test.o