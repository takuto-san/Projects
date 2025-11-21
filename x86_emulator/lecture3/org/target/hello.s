BITS 32
    org 0x7c00
    mov eax, 41
    jmp 0

; 00000000  B829000000   mov eax,0x29 
; 00000005  E9F683FFFF   jmp 0xffff8400