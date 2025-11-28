00000000  55                push ebp
00000001  89E5              mov ebp,esp
00000003  8B5508            mov edx,[ebp+0x8]
00000006  8B450C            mov eax,[ebp+0xc]
00000009  01D0              add eax,edx
0000000B  5D                pop ebp
0000000C  C3                ret
0000000D  55                push ebp
0000000E  89E5              mov ebp,esp
00000010  83EC10            sub esp,byte +0x10
00000013  6A05              push byte +0x5
00000015  6A03              push byte +0x3
00000017  E8E4FFFFFF        call 0x0
0000001C  83C408            add esp,byte +0x8
0000001F  8945FC            mov [ebp-0x4],eax
00000022  90                nop
00000023  C9                leave
00000024  C3                ret