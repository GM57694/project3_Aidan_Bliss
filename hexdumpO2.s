hexdump:     file format elf64-x86-64


Disassembly of section .init:

0000000000401000 <_init>:
  401000:       f3 0f 1e fa             endbr64
  401004:       48 83 ec 08             sub    $0x8,%rsp
  401008:       48 8b 05 e1 2f 00 00    mov    0x2fe1(%rip),%rax        # 403ff0 <__gmon_start__>
  40100f:       48 85 c0                test   %rax,%rax
  401012:       74 02                   je     401016 <_init+0x16>
  401014:       ff d0                   callq  *%rax
  401016:       48 83 c4 08             add    $0x8,%rsp
  40101a:       c3                      retq

Disassembly of section .plt:

0000000000401020 <.plt>:
  401020:       ff 35 e2 2f 00 00       pushq  0x2fe2(%rip)        # 404008 <_GLOBAL_OFFSET_TABLE_+0x8>
  401026:       ff 25 e4 2f 00 00       jmpq   *0x2fe4(%rip)        # 404010 <_GLOBAL_OFFSET_TABLE_+0x10>
  40102c:       0f 1f 40 00             nopl   0x0(%rax)

0000000000401030 <putchar@plt>:
  401030:       ff 25 e2 2f 00 00       jmpq   *0x2fe2(%rip)        # 404018 <putchar@GLIBC_2.2.5>
  401036:       68 00 00 00 00          pushq  $0x0
  40103b:       e9 e0 ff ff ff          jmpq   401020 <.plt>

0000000000401040 <puts@plt>:
  401040:       ff 25 da 2f 00 00       jmpq   *0x2fda(%rip)        # 404020 <puts@GLIBC_2.2.5>
  401046:       68 01 00 00 00          pushq  $0x1
  40104b:       e9 d0 ff ff ff          jmpq   401020 <.plt>

0000000000401050 <fread@plt>:
  401050:       ff 25 d2 2f 00 00       jmpq   *0x2fd2(%rip)        # 404028 <fread@GLIBC_2.2.5>
  401056:       68 02 00 00 00          pushq  $0x2
  40105b:       e9 c0 ff ff ff          jmpq   401020 <.plt>

0000000000401060 <fclose@plt>:
  401060:       ff 25 ca 2f 00 00       jmpq   *0x2fca(%rip)        # 404030 <fclose@GLIBC_2.2.5>
  401066:       68 03 00 00 00          pushq  $0x3
  40106b:       e9 b0 ff ff ff          jmpq   401020 <.plt>

0000000000401070 <printf@plt>:
  401070:       ff 25 c2 2f 00 00       jmpq   *0x2fc2(%rip)        # 404038 <printf@GLIBC_2.2.5>
  401076:       68 04 00 00 00          pushq  $0x4
  40107b:       e9 a0 ff ff ff          jmpq   401020 <.plt>

0000000000401080 <fopen@plt>:
  401080:       ff 25 ba 2f 00 00       jmpq   *0x2fba(%rip)        # 404040 <fopen@GLIBC_2.2.5>
  401086:       68 05 00 00 00          pushq  $0x5
  40108b:       e9 90 ff ff ff          jmpq   401020 <.plt>

0000000000401090 <__ctype_b_loc@plt>:
  401090:       ff 25 b2 2f 00 00       jmpq   *0x2fb2(%rip)        # 404048 <__ctype_b_loc@GLIBC_2.3>
  401096:       68 06 00 00 00          pushq  $0x6
  40109b:       e9 80 ff ff ff          jmpq   401020 <.plt>

Disassembly of section .text:

00000000004010a0 <main>:
  4010a0:       41 57                   push   %r15
  4010a2:       41 56                   push   %r14
  4010a4:       41 55                   push   %r13
  4010a6:       41 54                   push   %r12
  4010a8:       55                      push   %rbp
  4010a9:       53                      push   %rbx
  4010aa:       48 83 ec 18             sub    $0x18,%rsp
  4010ae:       48 8b 7e 08             mov    0x8(%rsi),%rdi
  4010b2:       be 10 20 40 00          mov    $0x402010,%esi
  4010b7:       e8 c4 ff ff ff          callq  401080 <fopen@plt>
  4010bc:       ba 10 00 00 00          mov    $0x10,%edx
  4010c1:       be 01 00 00 00          mov    $0x1,%esi
  4010c6:       48 89 e7                mov    %rsp,%rdi
  4010c9:       48 89 c1                mov    %rax,%rcx
  4010cc:       49 89 c6                mov    %rax,%r14
  4010cf:       e8 7c ff ff ff          callq  401050 <fread@plt>
  4010d4:       48 85 c0                test   %rax,%rax
  4010d7:       0f 84 db 00 00 00       je     4011b8 <main+0x118>
  4010dd:       48 89 c5                mov    %rax,%rbp
  4010e0:       45 31 ed                xor    %r13d,%r13d
  4010e3:       e8 a8 ff ff ff          callq  401090 <__ctype_b_loc@plt>
  4010e8:       49 89 c4                mov    %rax,%r12
  4010eb:       0f 1f 44 00 00          nopl   0x0(%rax,%rax,1)
  4010f0:       4c 89 ee                mov    %r13,%rsi
  4010f3:       bf 13 20 40 00          mov    $0x402013,%edi
  4010f8:       31 c0                   xor    %eax,%eax
  4010fa:       31 db                   xor    %ebx,%ebx
  4010fc:       e8 6f ff ff ff          callq  401070 <printf@plt>
  401101:       eb 18                   jmp    40111b <main+0x7b>
  401103:       0f 1f 44 00 00          nopl   0x0(%rax,%rax,1)
  401108:       4c 8d 7b 01             lea    0x1(%rbx),%r15
  40110c:       48 83 fb 07             cmp    $0x7,%rbx
  401110:       74 28                   je     40113a <main+0x9a>
  401112:       49 83 ff 10             cmp    $0x10,%r15
  401116:       74 38                   je     401150 <main+0xb0>
  401118:       4c 89 fb                mov    %r15,%rbx
  40111b:       48 39 dd                cmp    %rbx,%rbp
  40111e:       76 e8                   jbe    401108 <main+0x68>
  401120:       0f b6 34 1c             movzbl (%rsp,%rbx,1),%esi
  401124:       bf 1b 20 40 00          mov    $0x40201b,%edi
  401129:       31 c0                   xor    %eax,%eax
  40112b:       4c 8d 7b 01             lea    0x1(%rbx),%r15
  40112f:       e8 3c ff ff ff          callq  401070 <printf@plt>
  401134:       48 83 fb 07             cmp    $0x7,%rbx
  401138:       75 d8                   jne    401112 <main+0x72>
  40113a:       bf 20 00 00 00          mov    $0x20,%edi
  40113f:       e8 ec fe ff ff          callq  401030 <putchar@plt>
  401144:       eb d2                   jmp    401118 <main+0x78>
  401146:       66 2e 0f 1f 84 00 00    nopw   %cs:0x0(%rax,%rax,1)
  40114d:       00 00 00
  401150:       bf 21 20 40 00          mov    $0x402021,%edi
  401155:       31 c0                   xor    %eax,%eax
  401157:       45 31 ff                xor    %r15d,%r15d
  40115a:       bb 2e 00 00 00          mov    $0x2e,%ebx
  40115f:       e8 0c ff ff ff          callq  401070 <printf@plt>
  401164:       0f 1f 40 00             nopl   0x0(%rax)
  401168:       42 0f b6 14 3c          movzbl (%rsp,%r15,1),%edx
  40116d:       49 8b 04 24             mov    (%r12),%rax
  401171:       48 89 d7                mov    %rdx,%rdi
  401174:       f6 44 50 01 40          testb  $0x40,0x1(%rax,%rdx,2)
  401179:       0f 44 fb                cmove  %ebx,%edi
  40117c:       49 83 c7 01             add    $0x1,%r15
  401180:       e8 ab fe ff ff          callq  401030 <putchar@plt>
  401185:       4c 39 fd                cmp    %r15,%rbp
  401188:       77 de                   ja     401168 <main+0xc8>
  40118a:       bf 22 20 40 00          mov    $0x402022,%edi
  40118f:       49 01 ed                add    %rbp,%r13
  401192:       e8 a9 fe ff ff          callq  401040 <puts@plt>
  401197:       4c 89 f1                mov    %r14,%rcx
  40119a:       ba 10 00 00 00          mov    $0x10,%edx
  40119f:       48 89 e7                mov    %rsp,%rdi
  4011a2:       be 01 00 00 00          mov    $0x1,%esi
  4011a7:       e8 a4 fe ff ff          callq  401050 <fread@plt>
  4011ac:       48 89 c5                mov    %rax,%rbp
  4011af:       48 85 c0                test   %rax,%rax
  4011b2:       0f 85 38 ff ff ff       jne    4010f0 <main+0x50>
  4011b8:       4c 89 f7                mov    %r14,%rdi
  4011bb:       e8 a0 fe ff ff          callq  401060 <fclose@plt>
  4011c0:       48 83 c4 18             add    $0x18,%rsp
  4011c4:       31 c0                   xor    %eax,%eax
  4011c6:       5b                      pop    %rbx
  4011c7:       5d                      pop    %rbp
  4011c8:       41 5c                   pop    %r12
  4011ca:       41 5d                   pop    %r13
  4011cc:       41 5e                   pop    %r14
  4011ce:       41 5f                   pop    %r15
  4011d0:       c3                      retq
  4011d1:       66 2e 0f 1f 84 00 00    nopw   %cs:0x0(%rax,%rax,1)
  4011d8:       00 00 00
  4011db:       0f 1f 44 00 00          nopl   0x0(%rax,%rax,1)

00000000004011e0 <_start>:
  4011e0:       f3 0f 1e fa             endbr64
  4011e4:       31 ed                   xor    %ebp,%ebp
  4011e6:       49 89 d1                mov    %rdx,%r9
  4011e9:       5e                      pop    %rsi
  4011ea:       48 89 e2                mov    %rsp,%rdx
  4011ed:       48 83 e4 f0             and    $0xfffffffffffffff0,%rsp
  4011f1:       50                      push   %rax
  4011f2:       54                      push   %rsp
  4011f3:       45 31 c0                xor    %r8d,%r8d
  4011f6:       31 c9                   xor    %ecx,%ecx
  4011f8:       48 c7 c7 a0 10 40 00    mov    $0x4010a0,%rdi
  4011ff:       ff 15 db 2d 00 00       callq  *0x2ddb(%rip)        # 403fe0 <__libc_start_main@GLIBC_2.34>
  401205:       f4                      hlt
  401206:       66 2e 0f 1f 84 00 00    nopw   %cs:0x0(%rax,%rax,1)
  40120d:       00 00 00

0000000000401210 <_dl_relocate_static_pie>:
  401210:       f3 0f 1e fa             endbr64
  401214:       c3                      retq
  401215:       66 2e 0f 1f 84 00 00    nopw   %cs:0x0(%rax,%rax,1)
  40121c:       00 00 00
  40121f:       90                      nop

0000000000401220 <deregister_tm_clones>:
  401220:       48 8d 3d 31 2e 00 00    lea    0x2e31(%rip),%rdi        # 404058 <__TMC_END__>
  401227:       48 8d 05 2a 2e 00 00    lea    0x2e2a(%rip),%rax        # 404058 <__TMC_END__>
  40122e:       48 39 f8                cmp    %rdi,%rax
  401231:       74 15                   je     401248 <deregister_tm_clones+0x28>
  401233:       48 8b 05 ae 2d 00 00    mov    0x2dae(%rip),%rax        # 403fe8 <_ITM_deregisterTMCloneTable>
  40123a:       48 85 c0                test   %rax,%rax
  40123d:       74 09                   je     401248 <deregister_tm_clones+0x28>
  40123f:       ff e0                   jmpq   *%rax
  401241:       0f 1f 80 00 00 00 00    nopl   0x0(%rax)
  401248:       c3                      retq
  401249:       0f 1f 80 00 00 00 00    nopl   0x0(%rax)

0000000000401250 <register_tm_clones>:
  401250:       48 8d 3d 01 2e 00 00    lea    0x2e01(%rip),%rdi        # 404058 <__TMC_END__>
  401257:       48 8d 35 fa 2d 00 00    lea    0x2dfa(%rip),%rsi        # 404058 <__TMC_END__>
  40125e:       48 29 fe                sub    %rdi,%rsi
  401261:       48 89 f0                mov    %rsi,%rax
  401264:       48 c1 ee 3f             shr    $0x3f,%rsi
  401268:       48 c1 f8 03             sar    $0x3,%rax
  40126c:       48 01 c6                add    %rax,%rsi
  40126f:       48 d1 fe                sar    %rsi
  401272:       74 14                   je     401288 <register_tm_clones+0x38>
  401274:       48 8b 05 7d 2d 00 00    mov    0x2d7d(%rip),%rax        # 403ff8 <_ITM_registerTMCloneTable>
  40127b:       48 85 c0                test   %rax,%rax
  40127e:       74 08                   je     401288 <register_tm_clones+0x38>
  401280:       ff e0                   jmpq   *%rax
  401282:       66 0f 1f 44 00 00       nopw   0x0(%rax,%rax,1)
  401288:       c3                      retq
  401289:       0f 1f 80 00 00 00 00    nopl   0x0(%rax)

0000000000401290 <__do_global_dtors_aux>:
  401290:       f3 0f 1e fa             endbr64
  401294:       80 3d b9 2d 00 00 00    cmpb   $0x0,0x2db9(%rip)        # 404054 <completed.0>
  40129b:       75 13                   jne    4012b0 <__do_global_dtors_aux+0x20>
  40129d:       55                      push   %rbp
  40129e:       48 89 e5                mov    %rsp,%rbp
  4012a1:       e8 7a ff ff ff          callq  401220 <deregister_tm_clones>
  4012a6:       c6 05 a7 2d 00 00 01    movb   $0x1,0x2da7(%rip)        # 404054 <completed.0>
  4012ad:       5d                      pop    %rbp
  4012ae:       c3                      retq
  4012af:       90                      nop
  4012b0:       c3                      retq
  4012b1:       66 66 2e 0f 1f 84 00    data16 nopw %cs:0x0(%rax,%rax,1)
  4012b8:       00 00 00 00
  4012bc:       0f 1f 40 00             nopl   0x0(%rax)

00000000004012c0 <frame_dummy>:
  4012c0:       f3 0f 1e fa             endbr64
  4012c4:       eb 8a                   jmp    401250 <register_tm_clones>

Disassembly of section .fini:

00000000004012c8 <_fini>:
  4012c8:       f3 0f 1e fa             endbr64
  4012cc:       48 83 ec 08             sub    $0x8,%rsp
  4012d0:       48 83 c4 08             add    $0x8,%rsp
  4012d4:       c3                      retq
