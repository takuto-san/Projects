TARGET = pbr.bin

AS = nasm

.PHONY: all
all : $(TARGET)

%.bin : %.s Makefile
	$(AS) -f bin -o $@ $<

# ndisasm -b 16 pbr.bin
# 16ビットリアルモード