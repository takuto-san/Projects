BITS 16
    org 0x7c00
start:            ; プログラムの開始
    mov si, msg   ; msg（="hello, world\r\n"という文字列）が配置されているメモリ領域の先頭番地
    call puts     ; サブルーチンを呼び出す
fin:
    hlt
    jmp fin       ; 永久ループ

puts:
    mov al, [si]  ; 1文字読み込む
    inc si
    cmp al, 0     ; 文字列の末尾
    je  puts_end  ; に来たら終了
    mov ah, 0x0e  ; 1文字表示機能
    mov bx, 15    ; 明るい白色を指定する
    int 0x10      ; BIOS を呼び出す
    jmp puts
puts_end:
    ret           ; サブルーチンから抜ける

msg:
    db "hello, world", 0x0d, 0x0a, 0
