TARGET = main.exe
OBJS = obj/main.o obj/emulator_function.o obj/instruction.o obj/modrm.o obj/io.o obj/bios.o

CC = gcc
COMMON_FLAGS = -Wall -m32
INCLUDE_PATHS = -I. -Iemulator_func -Iinstruction -Imodrm -Iio -Ibios
CFLAGS += $(COMMON_FLAGS) $(INCLUDE_PATHS)
LDFLAGS += $(COMMON_FLAGS)

.PHONY: all clean

all : $(TARGET)

$(TARGET) : $(OBJS) Makefile | obj
	$(CC) $(LDFLAGS) -o $@ $(OBJS)

obj:
	mkdir -p obj

obj/main.o: main.c Makefile | obj
	$(CC) $(CFLAGS) -c $< -o $@

obj/emulator_function.o: emulator_func/emulator_function.c Makefile | obj
	$(CC) $(CFLAGS) -c $< -o $@

obj/instruction.o: instruction/instruction.c Makefile | obj
	$(CC) $(CFLAGS) -c $< -o $@

obj/modrm.o: modrm/modrm.c Makefile | obj
	$(CC) $(CFLAGS) -c $< -o $@

obj/io.o: io/io.c Makefile | obj
	$(CC) $(CFLAGS) -c $< -o $@

obj/bios.o: bios/bios.c Makefile | obj
	$(CC) $(CFLAGS) -c $< -o $@

# targetディレクトリのbinファイルを実行し、結果を表示
# $ ./main.exe -q target/subroutine32.bin