00000000  55                push ebp
00000001  89E5              mov ebp,esp
00000003  837D0800          cmp dword [ebp+0x8],byte +0x0
00000007  7805              js 0xe
00000009  8B4508            mov eax,[ebp+0x8]
0000000C  EB05              jmp short 0x13
0000000E  8B4508            mov eax,[ebp+0x8]
00000011  F7D8              neg eax
00000013  5D                pop ebp
00000014  C3                ret