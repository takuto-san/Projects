TARGET = main.exe
OBJS = main.o

CC = gcc
CFLAGS += -Wall -m32

.PHONY: all
all :
	$(MAKE) $(TARGET)

%.o : %.c Makefile
	$(CC) $(CFLAGS) -c $< -o $@

$(TARGET) : $(OBJS) Makefile
	$(CC) $(CFLAGS) -o $@ $(OBJS)

# targetディレクトリのbinファイルを実行し、結果を表示
# $ ./main.exe target/hello.bin