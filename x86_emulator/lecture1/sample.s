push    ebp                 ; 55
mov     ebp, esp            ; 89 e5
sub     esp, byte +0x10     ; 83 ec 10
mov     dword [ebp-0x4], 0x0 ; c7 45 fc 00 00 00 00
inc     dword [ebp-0x4]     ; ff 45 fc
leave                       ; c9
ret                         ; c3