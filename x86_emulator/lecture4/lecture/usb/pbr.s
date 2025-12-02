> ndisasm -b 16 pbr.bin
00000000  EB58              jmp short 0x5a
00000002  90                nop
00000003  54                push sp
00000004  48                dec ax
00000005  52                push dx
00000006  45                inc bp
00000007  45                inc bp
00000008  53                push bx
00000009  2020              and [bx+si],ah
0000000B  0002              add [bp+si],al
0000000D  204500            and [di+0x0],al
00000010  0200              add al,[bx+si]
00000012  0000              add [bx+si],al
00000014  00F8              add al,bh
00000016  0000              add [bx+si],al
00000018  3F                aas
00000019  0020              add [bx+si],ah
0000001B  003F              add [bx],bh
0000001D  0000              add [bx+si],al
0000001F  00C1              add cl,al
00000021  149C              adc al,0x9c
00000023  03BE3900          add di,[bp+0x39]
00000027  0000              add [bx+si],al
00000029  0000              add [bx+si],al
0000002B  0002              add [bp+si],al
0000002D  0000              add [bx+si],al
0000002F  0001              add [bx+di],al
00000031  00060000          add [0x0],al
00000035  0000              add [bx+si],al
00000037  0000              add [bx+si],al
00000039  0000              add [bx+si],al
0000003B  0000              add [bx+si],al
0000003D  0000              add [bx+si],al
0000003F  0000              add [bx+si],al
00000041  0029              add [bx+di],ch
00000043  832D9D            sub word [di],byte -0x63
00000046  124B49            adc cl,[bp+di+0x49]
00000049  4F                dec di
0000004A  58                pop ax
0000004B  49                dec cx
0000004C  41                inc cx
0000004D  2020              and [bx+si],ah
0000004F  2020              and [bx+si],ah
00000051  204641            and [bp+0x41],al
00000054  54                push sp
00000055  3332              xor si,[bp+si]
00000057  2020              and [bx+si],ah
00000059  2033              and [bp+di],dh
0000005B  C9                leave
0000005C  8ED1              mov ss,cx
0000005E  BCF47B            mov sp,0x7bf4
00000061  8EC1              mov es,cx
00000063  8ED9              mov ds,cx
00000065  BD007C            mov bp,0x7c00
00000068  884E02            mov [bp+0x2],cl
0000006B  8A5640            mov dl,[bp+0x40]
0000006E  B408              mov ah,0x8
00000070  CD13              int 0x13
00000072  7305              jnc 0x79
00000074  B9FFFF            mov cx,0xffff
00000077  8AF1              mov dh,cl
00000079  660FB6C6          movzx eax,dh
0000007D  40                inc ax
0000007E  660FB6D1          movzx edx,cl
00000082  80E23F            and dl,0x3f
00000085  F7E2              mul dx
00000087  86CD              xchg cl,ch
00000089  C0ED06            shr ch,byte 0x6
0000008C  41                inc cx
0000008D  660FB7C9          movzx ecx,cx
00000091  66F7E1            mul ecx
00000094  668946F8          mov [bp-0x8],eax
00000098  837E1600          cmp word [bp+0x16],byte +0x0
0000009C  7538              jnz 0xd6
0000009E  837E2A00          cmp word [bp+0x2a],byte +0x0
000000A2  7732              ja 0xd6
000000A4  668B461C          mov eax,[bp+0x1c]
000000A8  6683C00C          add eax,byte +0xc
000000AC  BB0080            mov bx,0x8000
000000AF  B90100            mov cx,0x1
000000B2  E82B00            call 0xe0
000000B5  E94803            jmp 0x400
000000B8  A0FA7D            mov al,[0x7dfa]
000000BB  B47D              mov ah,0x7d
000000BD  8BF0              mov si,ax
000000BF  AC                lodsb
000000C0  84C0              test al,al
000000C2  7417              jz 0xdb
000000C4  3CFF              cmp al,0xff
000000C6  7409              jz 0xd1
000000C8  B40E              mov ah,0xe
000000CA  BB0700            mov bx,0x7
000000CD  CD10              int 0x10
000000CF  EBEE              jmp short 0xbf
000000D1  A0FB7D            mov al,[0x7dfb]
000000D4  EBE5              jmp short 0xbb
000000D6  A0F97D            mov al,[0x7df9]
000000D9  EBE0              jmp short 0xbb
000000DB  98                cbw
000000DC  CD16              int 0x16
000000DE  CD19              int 0x19
000000E0  6660              pushad
000000E2  663B46F8          cmp eax,[bp-0x8]
000000E6  0F824A00          jc near 0x134
000000EA  666A00            o32 push byte +0x0
000000ED  6650              push eax
000000EF  06                push es
000000F0  53                push bx
000000F1  666810000100      push dword 0x10010
000000F7  807E0200          cmp byte [bp+0x2],0x0
000000FB  0F852000          jnz near 0x11f
000000FF  B441              mov ah,0x41
00000101  BBAA55            mov bx,0x55aa
00000104  8A5640            mov dl,[bp+0x40]
00000107  CD13              int 0x13
00000109  0F821C00          jc near 0x129
0000010D  81FB55AA          cmp bx,0xaa55
00000111  0F851400          jnz near 0x129
00000115  F6C101            test cl,0x1
00000118  0F840D00          jz near 0x129
0000011C  FE4602            inc byte [bp+0x2]
0000011F  B442              mov ah,0x42
00000121  8A5640            mov dl,[bp+0x40]
00000124  8BF4              mov si,sp
00000126  CD13              int 0x13
00000128  B0F9              mov al,0xf9
0000012A  6658              pop eax
0000012C  6658              pop eax
0000012E  6658              pop eax
00000130  6658              pop eax
00000132  EB2A              jmp short 0x15e
00000134  6633D2            xor edx,edx
00000137  660FB74E18        movzx ecx,word [bp+0x18]
0000013C  66F7F1            div ecx
0000013F  FEC2              inc dl
00000141  8ACA              mov cl,dl
00000143  668BD0            mov edx,eax
00000146  66C1EA10          shr edx,byte 0x10
0000014A  F7761A            div word [bp+0x1a]
0000014D  86D6              xchg dl,dh
0000014F  8A5640            mov dl,[bp+0x40]
00000152  8AE8              mov ch,al
00000154  C0E406            shl ah,byte 0x6
00000157  0ACC              or cl,ah
00000159  B80102            mov ax,0x201
0000015C  CD13              int 0x13
0000015E  6661              popad
00000160  0F8254FF          jc near 0xb8
00000164  81C30002          add bx,0x200
00000168  6640              inc eax
0000016A  49                dec cx
0000016B  0F8571FF          jnz near 0xe0
0000016F  C3                ret
00000170  4E                dec si
00000171  54                push sp
00000172  4C                dec sp
00000173  44                inc sp
00000174  52                push dx
00000175  2020              and [bx+si],ah
00000177  2020              and [bx+si],ah
00000179  2020              and [bx+si],ah
0000017B  0000              add [bx+si],al
0000017D  0000              add [bx+si],al
0000017F  0000              add [bx+si],al
00000181  0000              add [bx+si],al
00000183  0000              add [bx+si],al
00000185  0000              add [bx+si],al
00000187  0000              add [bx+si],al
00000189  0000              add [bx+si],al
0000018B  0000              add [bx+si],al
0000018D  0000              add [bx+si],al
0000018F  0000              add [bx+si],al
00000191  0000              add [bx+si],al
00000193  0000              add [bx+si],al
00000195  0000              add [bx+si],al
00000197  0000              add [bx+si],al
00000199  0000              add [bx+si],al
0000019B  0000              add [bx+si],al
0000019D  0000              add [bx+si],al
0000019F  0000              add [bx+si],al
000001A1  0000              add [bx+si],al
000001A3  0000              add [bx+si],al
000001A5  0000              add [bx+si],al
000001A7  0000              add [bx+si],al
000001A9  0000              add [bx+si],al
000001AB  000D              add [di],cl
000001AD  0A4E54            or cl,[bp+0x54]
000001B0  4C                dec sp
000001B1  44                inc sp
000001B2  52                push dx
000001B3  206973            and [bx+di+0x73],ch
000001B6  206D69            and [di+0x69],ch
000001B9  7373              jnc 0x22e
000001BB  696E67FF0D        imul bp,[bp+0x67],word 0xdff
000001C0  0A4469            or al,[si+0x69]
000001C3  736B              jnc 0x230
000001C5  206572            and [di+0x72],ah
000001C8  726F              jc 0x239
000001CA  72FF              jc 0x1cb
000001CC  0D0A50            or ax,0x500a
000001CF  7265              jc 0x236
000001D1  7373              jnc 0x246
000001D3  20616E            and [bx+di+0x6e],ah
000001D6  7920              jns 0x1f8
000001D8  6B657920          imul sp,[di+0x79],byte +0x20
000001DC  746F              jz 0x24d
000001DE  207265            and [bp+si+0x65],dh
000001E1  7374              jnc 0x257
000001E3  61                popa
000001E4  7274              jc 0x25a
000001E6  0D0A00            or ax,0xa
000001E9  0000              add [bx+si],al
000001EB  0000              add [bx+si],al
000001ED  0000              add [bx+si],al
000001EF  0000              add [bx+si],al
000001F1  0000              add [bx+si],al
000001F3  0000              add [bx+si],al
000001F5  0000              add [bx+si],al
000001F7  0000              add [bx+si],al
000001F9  AC                lodsb
000001FA  BFCC00            mov di,0xcc
000001FD  0055AA            add [di-0x56],dl