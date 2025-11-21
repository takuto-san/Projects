00000000  55                push ebp
00000001  89E5              mov ebp,esp
00000003  83EC10            sub esp,byte +0x10
00000006  C745FC00000000    mov dword [ebp-0x4],0x0
0000000D  8345FC01          add dword [ebp-0x4],byte +0x1
00000011  90                nop
00000012  C9                leave
00000013  C3                ret

void func(void) {
   0:   f3 0f 1e fa             endbr64 
   4:   55                      push   ebp
   5:   48                      dec    eax
   6:   89 e5                   mov    ebp,esp
  int val = 0;
   8:   c7 45 fc 00 00 00 00    mov    DWORD PTR [ebp-0x4],0x0
  val++;
   f:   83 45 fc 01             add    DWORD PTR [ebp-0x4],0x1
  13:   90                      nop
  14:   5d                      pop    ebp
  15:   c3                      ret    
}