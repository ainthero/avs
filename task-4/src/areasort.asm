global area_parallelepiped
area_parallelepiped:
        push    rbp
        mov     rbp, rsp
        mov     DWORD  [rbp-4], edi
        mov     DWORD  [rbp-8], esi
        mov     DWORD  [rbp-12], edx
        mov     eax, DWORD  [rbp-4]
        imul    eax, DWORD  [rbp-8]
        mov     edx, eax
        mov     eax, DWORD  [rbp-8]
        imul    eax, DWORD  [rbp-12]
        add     edx, eax
        mov     eax, DWORD  [rbp-4]
        imul    eax, DWORD  [rbp-12]
        add     eax, edx
        add     eax, eax
        pxor    xmm0, xmm0
        cvtsi2ss        xmm0, eax
        pop     rbp
        ret
global area_tetrahedron
area_tetrahedron:
        push    rbp
        mov     rbp, rsp
        mov     DWORD  [rbp-4], edi
        pxor    xmm1, xmm1
        cvtsi2ss        xmm1, DWORD  [rbp-4]
        mov eax,__?float32?__(1.7320)
        movd xmm0, eax
        mulss   xmm1, xmm0
        pxor    xmm0, xmm0
        cvtsi2ss        xmm0, DWORD  [rbp-4]
        mulss   xmm0, xmm1
        pop     rbp
        ret
global area_sphere
area_sphere:
        push    rbp
        mov     rbp, rsp
        mov     DWORD  [rbp-4], edi
        pxor    xmm1, xmm1
        cvtsi2ss        xmm1, DWORD  [rbp-4]
        mov eax,__?float32?__(3.14159)
        movd xmm0, eax
        mulss   xmm1, xmm0
        pxor    xmm0, xmm0
        cvtsi2ss        xmm0, DWORD  [rbp-4]
        mulss   xmm0, xmm1
        pop     rbp
        ret
global get_area
get_area:
        mov     eax, DWORD  [rdi]
        cmp     eax, 2
        jne     .L2
        mov     edi, DWORD  [rdi+16]
        jmp     area_tetrahedron
.L2:
        dec     eax
        jne     .L3
        mov     edx, DWORD  [rdi+24]
        mov     esi, DWORD  [rdi+20]
        mov     edi, DWORD  [rdi+16]
        jmp     area_parallelepiped
.L3:
        mov     edi, DWORD  [rdi+16]
        jmp     area_sphere
global straight_sort        
straight_sort:
        push    r15
        lea     eax, [rsi-1]
        push    r14
        mov     r14d, esi
        push    r13
        push    r12
        mov     r12, rdi
        push    rbp
        push    rbx
        xor     ebx, ebx
        sub     rsp, 24
        mov     DWORD  [rsp+12], eax
.L6:
        mov     DWORD  [rsp+8], ebx
        mov     ebp, ebx
        cmp     DWORD  [rsp+12], ebx
        jle     .L15
        lea     r15, [rbx+1]
        mov     r13, r15
.L7:
        cmp     r14d, r13d
        jle     .L16
        mov     rdi, QWORD  [r12+r13*8]
        call    get_area
        movsx   rcx, ebp
        mov     rdi, QWORD  [r12+rcx*8]
        movss   DWORD  [rsp+4], xmm0
        call    get_area
        ucomiss xmm0, DWORD  [rsp+4]
        cmova   ebp, r13d
        inc     r13
        jmp     .L7
.L16:
        cmp     ebp, DWORD  [rsp+8]
        je      .L11
        movsx   rbp, ebp
        mov     rsi, QWORD  [r12+rbx*8]
        lea     rcx, [r12+rbp*8]
        mov     rdi, QWORD  [rcx]
        mov     QWORD  [r12+rbx*8], rdi
        mov     QWORD  [rcx], rsi
.L11:
        mov     rbx, r15
        jmp     .L6
.L15:
        add     rsp, 24
        pop     rbx
        pop     rbp
        pop     r12
        pop     r13
        pop     r14
        pop     r15
        ret