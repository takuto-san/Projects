#include "io.h"

#include <stdio.h>
#include "emulator/emulator.h"

uint8_t io_in8(uint16_t address)
{
    switch (address) {
    case 0x03f8:
        return getchar(); // 標準入力があるまでこの行でプログラムが一旦停止する。Enterキーを押すとgetchar()の続きから処理が再開される
        break;
    default:
        return 0;
    }
}

void io_out8(uint16_t address, uint8_t value) // DX（0x03f8）, AL（0x41='A'）
{
    switch (address) {
    case 0x03f8: // シリアルポート
        putchar(value);
        break;
    }
}
