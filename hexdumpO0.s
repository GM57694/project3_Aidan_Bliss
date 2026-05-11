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

00000000004010a0 <_start>:
  4010a0:       f3 0f 1e fa             endbr64
  4010a4:       31 ed                   xor    %ebp,%ebp
  4010a6:       49 89 d1                mov    %rdx,%r9
  4010a9:       5e                      pop    %rsi
  4010aa:       48 89 e2                mov    %rsp,%rdx
  4010ad:       48 83 e4 f0             and    $0xfffffffffffffff0,%rsp
  4010b1:       50                      push   %rax
  4010b2:       54                      push   %rsp
  4010b3:       45 31 c0                xor    %r8d,%r8d
  4010b6:       31 c9                   xor    %ecx,%ecx
  4010b8:       48 c7 c7 86 11 40 00    mov    $0x401186,%rdi
  4010bf:       ff 15 1b 2f 00 00       callq  *0x2f1b(%rip)        # 403fe0 <__libc_start_main@GLIBC_2.34>
  4010c5:       f4                      hlt
  4010c6:       66 2e 0f 1f 84 00 00    nopw   %cs:0x0(%rax,%rax,1)
  4010cd:       00 00 00

00000000004010d0 <_dl_relocate_static_pie>:
  4010d0:       f3 0f 1e fa             endbr64
  4010d4:       c3                      retq
  4010d5:       66 2e 0f 1f 84 00 00    nopw   %cs:0x0(%rax,%rax,1)
  4010dc:       00 00 00
  4010df:       90                      nop

00000000004010e0 <deregister_tm_clones>:
  4010e0:       48 8d 3d 71 2f 00 00    lea    0x2f71(%rip),%rdi        # 404058 <__TMC_END__>
  4010e7:       48 8d 05 6a 2f 00 00    lea    0x2f6a(%rip),%rax        # 404058 <__TMC_END__>
  4010ee:       48 39 f8                cmp    %rdi,%rax
  4010f1:       74 15                   je     401108 <deregister_tm_clones+0x28>
  4010f3:       48 8b 05 ee 2e 00 00    mov    0x2eee(%rip),%rax        # 403fe8 <_ITM_deregisterTMCloneTable>
  4010fa:       48 85 c0                test   %rax,%rax
  4010fd:       74 09                   je     401108 <deregister_tm_clones+0x28>
  4010ff:       ff e0                   jmpq   *%rax
  401101:       0f 1f 80 00 00 00 00    nopl   0x0(%rax)
  401108:       c3                      retq
  401109:       0f 1f 80 00 00 00 00    nopl   0x0(%rax)

0000000000401110 <register_tm_clones>:
  401110:       48 8d 3d 41 2f 00 00    lea    0x2f41(%rip),%rdi        # 404058 <__TMC_END__>
  401117:       48 8d 35 3a 2f 00 00    lea    0x2f3a(%rip),%rsi        # 404058 <__TMC_END__>
  40111e:       48 29 fe                sub    %rdi,%rsi
  401121:       48 89 f0                mov    %rsi,%rax
  401124:       48 c1 ee 3f             shr    $0x3f,%rsi
  401128:       48 c1 f8 03             sar    $0x3,%rax
  40112c:       48 01 c6                add    %rax,%rsi
  40112f:       48 d1 fe                sar    %rsi
  401132:       74 14                   je     401148 <register_tm_clones+0x38>
  401134:       48 8b 05 bd 2e 00 00    mov    0x2ebd(%rip),%rax        # 403ff8 <_ITM_registerTMCloneTable>
  40113b:       48 85 c0                test   %rax,%rax
  40113e:       74 08                   je     401148 <register_tm_clones+0x38>
  401140:       ff e0                   jmpq   *%rax
  401142:       66 0f 1f 44 00 00       nopw   0x0(%rax,%rax,1)
  401148:       c3                      retq
  401149:       0f 1f 80 00 00 00 00    nopl   0x0(%rax)

0000000000401150 <__do_global_dtors_aux>:
  401150:       f3 0f 1e fa             endbr64
  401154:       80 3d f9 2e 00 00 00    cmpb   $0x0,0x2ef9(%rip)        # 404054 <completed.0>
  40115b:       75 13                   jne    401170 <__do_global_dtors_aux+0x20>
  40115d:       55                      push   %rbp
  40115e:       48 89 e5                mov    %rsp,%rbp
  401161:       e8 7a ff ff ff          callq  4010e0 <deregister_tm_clones>
  401166:       c6 05 e7 2e 00 00 01    movb   $0x1,0x2ee7(%rip)        # 404054 <completed.0>
  40116d:       5d                      pop    %rbp
  40116e:       c3                      retq
  40116f:       90                      nop
  401170:       c3                      retq
  401171:       66 66 2e 0f 1f 84 00    data16 nopw %cs:0x0(%rax,%rax,1)
  401178:       00 00 00 00
  40117c:       0f 1f 40 00             nopl   0x0(%rax)

0000000000401180 <frame_dummy>:
  401180:       f3 0f 1e fa             endbr64
  401184:       eb 8a                   jmp    401110 <register_tm_clones>

0000000000401186 <main>:
  401186:       55                      push   %rbp
  401187:       48 89 e5                mov    %rsp,%rbp
  40118a:       48 83 ec 50             sub    $0x50,%rsp
  40118e:       89 7d bc                mov    %edi,-0x44(%rbp)
  401191:       48 89 75 b0             mov    %rsi,-0x50(%rbp)
  401195:       48 8b 45 b0             mov    -0x50(%rbp),%rax
  401199:       48 83 c0 08             add    $0x8,%rax
  40119d:       48 8b 00                mov    (%rax),%rax
  4011a0:       be 10 20 40 00          mov    $0x402010,%esi
  4011a5:       48 89 c7                mov    %rax,%rdi
  4011a8:       e8 d3 fe ff ff          callq  401080 <fopen@plt>
  4011ad:       48 89 45 d8             mov    %rax,-0x28(%rbp)
  4011b1:       48 c7 45 f8 00 00 00    movq   $0x0,-0x8(%rbp)
  4011b8:       00
  4011b9:       48 8b 55 d8             mov    -0x28(%rbp),%rdx
  4011bd:       48 8d 45 c0             lea    -0x40(%rbp),%rax
  4011c1:       48 89 d1                mov    %rdx,%rcx
  4011c4:       ba 10 00 00 00          mov    $0x10,%edx
  4011c9:       be 01 00 00 00          mov    $0x1,%esi
  4011ce:       48 89 c7                mov    %rax,%rdi
  4011d1:       e8 7a fe ff ff          callq  401050 <fread@plt>
  4011d6:       48 89 45 f0             mov    %rax,-0x10(%rbp)
  4011da:       e9 18 01 00 00          jmpq   4012f7 <main+0x171>
  4011df:       48 8b 45 f8             mov    -0x8(%rbp),%rax
  4011e3:       48 89 c6                mov    %rax,%rsi
  4011e6:       bf 13 20 40 00          mov    $0x402013,%edi
  4011eb:       b8 00 00 00 00          mov    $0x0,%eax
  4011f0:       e8 7b fe ff ff          callq  401070 <printf@plt>
  4011f5:       48 c7 45 e8 00 00 00    movq   $0x0,-0x18(%rbp)
  4011fc:       00
  4011fd:       eb 42                   jmp    401241 <main+0xbb>
  4011ff:       48 8b 45 e8             mov    -0x18(%rbp),%rax
  401203:       48 3b 45 f0             cmp    -0x10(%rbp),%rax
  401207:       73 22                   jae    40122b <main+0xa5>
  401209:       48 8d 55 c0             lea    -0x40(%rbp),%rdx
  40120d:       48 8b 45 e8             mov    -0x18(%rbp),%rax
  401211:       48 01 d0                add    %rdx,%rax
  401214:       0f b6 00                movzbl (%rax),%eax
  401217:       0f b6 c0                movzbl %al,%eax
  40121a:       89 c6                   mov    %eax,%esi
  40121c:       bf 1b 20 40 00          mov    $0x40201b,%edi
  401221:       b8 00 00 00 00          mov    $0x0,%eax
  401226:       e8 45 fe ff ff          callq  401070 <printf@plt>
  40122b:       48 83 7d e8 07          cmpq   $0x7,-0x18(%rbp)
  401230:       75 0a                   jne    40123c <main+0xb6>
  401232:       bf 20 00 00 00          mov    $0x20,%edi
  401237:       e8 f4 fd ff ff          callq  401030 <putchar@plt>
  40123c:       48 83 45 e8 01          addq   $0x1,-0x18(%rbp)
  401241:       48 83 7d e8 0f          cmpq   $0xf,-0x18(%rbp)
  401246:       76 b7                   jbe    4011ff <main+0x79>
  401248:       bf 21 20 40 00          mov    $0x402021,%edi
  40124d:       b8 00 00 00 00          mov    $0x0,%eax
  401252:       e8 19 fe ff ff          callq  401070 <printf@plt>
  401257:       48 c7 45 e0 00 00 00    movq   $0x0,-0x20(%rbp)
  40125e:       00
  40125f:       eb 52                   jmp    4012b3 <main+0x12d>
  401261:       e8 2a fe ff ff          callq  401090 <__ctype_b_loc@plt>
  401266:       48 8b 10                mov    (%rax),%rdx
  401269:       48 8d 4d c0             lea    -0x40(%rbp),%rcx
  40126d:       48 8b 45 e0             mov    -0x20(%rbp),%rax
  401271:       48 01 c8                add    %rcx,%rax
  401274:       0f b6 00                movzbl (%rax),%eax
  401277:       0f b6 c0                movzbl %al,%eax
  40127a:       48 01 c0                add    %rax,%rax
  40127d:       48 01 d0                add    %rdx,%rax
  401280:       0f b7 00                movzwl (%rax),%eax
  401283:       0f b7 c0                movzwl %ax,%eax
  401286:       25 00 40 00 00          and    $0x4000,%eax
  40128b:       85 c0                   test   %eax,%eax
  40128d:       74 13                   je     4012a2 <main+0x11c>
  40128f:       48 8d 55 c0             lea    -0x40(%rbp),%rdx
  401293:       48 8b 45 e0             mov    -0x20(%rbp),%rax
  401297:       48 01 d0                add    %rdx,%rax
  40129a:       0f b6 00                movzbl (%rax),%eax
  40129d:       0f b6 c0                movzbl %al,%eax
  4012a0:       eb 05                   jmp    4012a7 <main+0x121>
  4012a2:       b8 2e 00 00 00          mov    $0x2e,%eax
  4012a7:       89 c7                   mov    %eax,%edi
  4012a9:       e8 82 fd ff ff          callq  401030 <putchar@plt>
  4012ae:       48 83 45 e0 01          addq   $0x1,-0x20(%rbp)
  4012b3:       48 8b 45 e0             mov    -0x20(%rbp),%rax
  4012b7:       48 3b 45 f0             cmp    -0x10(%rbp),%rax
  4012bb:       72 a4                   jb     401261 <main+0xdb>
  4012bd:       bf 24 20 40 00          mov    $0x402024,%edi
  4012c2:       e8 79 fd ff ff          callq  401040 <puts@plt>
  4012c7:       48 8b 55 f8             mov    -0x8(%rbp),%rdx
  4012cb:       48 8b 45 f0             mov    -0x10(%rbp),%rax
  4012cf:       48 01 d0                add    %rdx,%rax
  4012d2:       48 89 45 f8             mov    %rax,-0x8(%rbp)
  4012d6:       48 8b 55 d8             mov    -0x28(%rbp),%rdx
  4012da:       48 8d 45 c0             lea    -0x40(%rbp),%rax
  4012de:       48 89 d1                mov    %rdx,%rcx
  4012e1:       ba 10 00 00 00          mov    $0x10,%edx
  4012e6:       be 01 00 00 00          mov    $0x1,%esi
  4012eb:       48 89 c7                mov    %rax,%rdi
  4012ee:       e8 5d fd ff ff          callq  401050 <fread@plt>
  4012f3:       48 89 45 f0             mov    %rax,-0x10(%rbp)
  4012f7:       48 83 7d f0 00          cmpq   $0x0,-0x10(%rbp)
  4012fc:       0f 85 dd fe ff ff       jne    4011df <main+0x59>
  401302:       48 8b 45 d8             mov    -0x28(%rbp),%rax
  401306:       48 89 c7                mov    %rax,%rdi
  401309:       e8 52 fd ff ff          callq  401060 <fclose@plt>
  40130e:       b8 00 00 00 00          mov    $0x0,%eax
  401313:       c9                      leaveq
  401314:       c3                      retq

Disassembly of section .fini:

0000000000401318 <_fini>:
  401318:       f3 0f 1e fa             endbr64
  40131c:       48 83 ec 08             sub    $0x8,%rsp
  401320:       48 83 c4 08             add    $0x8,%rsp
  401324:       c3                      retq