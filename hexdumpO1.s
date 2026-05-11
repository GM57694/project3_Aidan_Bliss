        .file   "hexdump.c"
        .text
        .section        .rodata.str1.1,"aMS",@progbits,1
.LC0:
        .string "rb"
.LC1:
        .string "%08lx  "
.LC2:
        .string "%02x "
.LC3:
        .string " |"
.LC4:
        .string "|"
        .section        .text.startup,"ax",@progbits
        .p2align 4
        .globl  main
        .type   main, @function
main:
.LFB13:
        .cfi_startproc
        pushq   %r15
        .cfi_def_cfa_offset 16
        .cfi_offset 15, -16
        pushq   %r14
        .cfi_def_cfa_offset 24
        .cfi_offset 14, -24
        pushq   %r13
        .cfi_def_cfa_offset 32
        .cfi_offset 13, -32
        pushq   %r12
        .cfi_def_cfa_offset 40
        .cfi_offset 12, -40
        pushq   %rbp
        .cfi_def_cfa_offset 48
        .cfi_offset 6, -48
        pushq   %rbx
        .cfi_def_cfa_offset 56
        .cfi_offset 3, -56
        subq    $24, %rsp
        .cfi_def_cfa_offset 80
        movq    8(%rsi), %rdi
        movl    $.LC0, %esi
        call    fopen
        movl    $16, %edx
        movl    $1, %esi
        movq    %rsp, %rdi
        movq    %rax, %rcx
        movq    %rax, %r14
        call    fread
        testq   %rax, %rax
        je      .L11
        movq    %rax, %rbp
        xorl    %r13d, %r13d
        call    __ctype_b_loc
        movq    %rax, %r12
        .p2align 4,,10
        .p2align 3
.L10:
        movq    %r13, %rsi
        movl    $.LC1, %edi
        xorl    %eax, %eax
        xorl    %ebx, %ebx
        call    printf
        jmp     .L7
        .p2align 4,,10
        .p2align 3
.L3:
        leaq    1(%rbx), %r15
        cmpq    $7, %rbx
        je      .L17
.L4:
        cmpq    $16, %r15
        je      .L6
.L5:
        movq    %r15, %rbx
.L7:
        cmpq    %rbx, %rbp
        jbe     .L3
        movzbl  (%rsp,%rbx), %esi
        movl    $.LC2, %edi
        xorl    %eax, %eax
        leaq    1(%rbx), %r15
        call    printf
        cmpq    $7, %rbx
        jne     .L4
.L17:
        movl    $32, %edi
        call    putchar
        jmp     .L5
        .p2align 4,,10
        .p2align 3
.L6:
        movl    $.LC3, %edi
        xorl    %eax, %eax
        xorl    %r15d, %r15d
        movl    $46, %ebx
        call    printf
        .p2align 4,,10
        .p2align 3
.L9:
        movzbl  (%rsp,%r15), %edx
        movq    (%r12), %rax
        movq    %rdx, %rdi
        testb   $64, 1(%rax,%rdx,2)
        cmove   %ebx, %edi
        addq    $1, %r15
        call    putchar
        cmpq    %r15, %rbp
        ja      .L9
        movl    $.LC4, %edi
        addq    %rbp, %r13
        call    puts
        movq    %r14, %rcx
        movl    $16, %edx
        movq    %rsp, %rdi
        movl    $1, %esi
        call    fread
        movq    %rax, %rbp
        testq   %rax, %rax
        jne     .L10
.L11:
        movq    %r14, %rdi
        call    fclose
        addq    $24, %rsp
        .cfi_def_cfa_offset 56
        xorl    %eax, %eax
        popq    %rbx
        .cfi_def_cfa_offset 48
        popq    %rbp
        .cfi_def_cfa_offset 40
        popq    %r12
        .cfi_def_cfa_offset 32
        popq    %r13
        .cfi_def_cfa_offset 24
        popq    %r14
        .cfi_def_cfa_offset 16
        popq    %r15
        .cfi_def_cfa_offset 8
        ret
        .cfi_endproc
.LFE13:
        .size   main, .-main
        .ident  "GCC: (GNU) 11.5.0 20240719 (Red Hat 11.5.0-5)"
        .section        .note.GNU-stack,"",@progbits
