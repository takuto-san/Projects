TARGET = sample.bin

CC = gcc
LD = ld

CFLAGS += -m32 -fno-pic -nostdlib -fno-asynchronous-unwind-tables \
    -g -fno-stack-protector

LDFLAGS += -m elf_i386 --entry=func --oformat=binary

.PHONY: all
all :
	$(MAKE) $(TARGET)

%.o : %.c Makefile
	$(CC) $(CFLAGS) -c $< -o $@

%.bin : %.o Makefile
	$(LD) $(LDFLAGS) -o $@ $<

# 生成したバイナリファイルを逆アセンブルする
# $ ndisasm -b 32 sample.bin
	
# 別の方法で逆アセンブルする
# $ gcc -c -g -o sample.o sample.c
# $ objdump -d -S -m i386 -M intel sample.o