TARGET = main.exe
OBJS = obj/main.o obj/emulator_function.o obj/instruction.o obj/modrm.o 

CC = gcc
CFLAGS += -Wall -m32 -I. -Iemulator_func -Iinstruction -Imodrm 

.PHONY: all clean

all : $(TARGET)

$(TARGET) : $(OBJS) Makefile | obj
	$(CC) $(CFLAGS) -o $@ $(OBJS)

obj:
	@mkdir -p obj

obj/main.o: main.c Makefile obj
	$(CC) $(CFLAGS) -c $< -o $@

obj/emulator_function.o: emulator_func/emulator_function.c Makefile obj
	$(CC) $(CFLAGS) -c emulator_func/emulator_function.c -o $@

obj/instruction.o: instruction/instruction.c Makefile obj
	$(CC) $(CFLAGS) -c instruction/instruction.c -o $@

obj/modrm.o: modrm/modrm.c Makefile obj
	$(CC) $(CFLAGS) -c modrm/modrm.c -o $@

# targetディレクトリのbinファイルを実行し、結果を表示
# $ ./main.exe target/test.bin