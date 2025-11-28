00000000  55                push ebp
00000001  89E5              mov ebp,esp
00000003  83EC10            sub esp,byte +0x10
00000006  C745F800000000    mov dword [ebp-0x8],0x0
0000000D  C745FC00000000    mov dword [ebp-0x4],0x0
00000014  EB08              jmp short 0x1e
00000016  8345F801          add dword [ebp-0x8],byte +0x1
0000001A  8345FC01          add dword [ebp-0x4],byte +0x1
0000001E  837DFC09          cmp dword [ebp-0x4],byte +0x9
00000022  7EF2              jng 0x16
00000024  90                nop
00000025  90                nop
00000026  C9                leave
00000027  C3                ret