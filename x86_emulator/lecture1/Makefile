# バイナリデータの生成
TARGET = sample.bin
Z_TOOLS = ../z_tools

CC = gcc
LD = ld
CFLAGS += -m32 -fno-pic -nostdlib -fno-asynchronous-unwind-tables \
    -I$(Z_TOOLS)/i386-elf-gcc/include -g -fno-stack-protector
LDFLAGS += -m elf_i386 -Ttext=0x0 --entry=func --oformat=binary

.PHONY: all
all :
	make $(TARGET)

%.o : %.c Makefile
	$(CC) $(CFLAGS) -c $<

%.bin : %.o Makefile
	$(LD) $(LDFLAGS) -o $@ $<

# 生成したバイナリファイルを逆アセンブルする
# $ ndisasm -b 32 sample.bin

# 別の方法で逆アセンブルする
# $ gcc -c -g -o sample.o sample.c
# $ objdump -d -S -M intel sample.o