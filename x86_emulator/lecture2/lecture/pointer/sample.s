00000000  55                push ebp
00000001  89E5              mov ebp,esp
00000003  83EC10            sub esp,byte +0x10
00000006  8D45F8            lea eax,[ebp-0x8]
00000009  8945FC            mov [ebp-0x4],eax
0000000C  8B45FC            mov eax,[ebp-0x4]
0000000F  C70029000000      mov dword [eax],0x29
00000015  90                nop
00000016  C9                leave
00000017  C3                ret

void func(void) {
   0:   f3 0f 1e fa             endbr64 
   4:   55                      push   ebp
   5:   48                      dec    eax
   6:   89 e5                   mov    ebp,esp
   8:   48                      dec    eax
   9:   83 ec 20                sub    esp,0x20
   c:   64 48                   fs dec eax
   e:   8b 04 25 28 00 00 00    mov    eax,DWORD PTR [eiz*1+0x28]
  15:   48                      dec    eax
  16:   89 45 f8                mov    DWORD PTR [ebp-0x8],eax
  19:   31 c0                   xor    eax,eax
    int val;
    int *p = &val;
  1b:   48                      dec    eax
  1c:   8d 45 ec                lea    eax,[ebp-0x14]
  1f:   48                      dec    eax
  20:   89 45 f0                mov    DWORD PTR [ebp-0x10],eax
    *p = 41;
  23:   48                      dec    eax
  24:   8b 45 f0                mov    eax,DWORD PTR [ebp-0x10]
  27:   c7 00 29 00 00 00       mov    DWORD PTR [eax],0x29
  2d:   90                      nop
  2e:   48                      dec    eax
  2f:   8b 45 f8                mov    eax,DWORD PTR [ebp-0x8]
  32:   64 48                   fs dec eax
  34:   2b 04 25 28 00 00 00    sub    eax,DWORD PTR [eiz*1+0x28]
  3b:   74 05                   je     42 <func+0x42>
  3d:   e8 00 00 00 00          call   42 <func+0x42>
  42:   c9                      leave  
  43:   c3                      ret    
}