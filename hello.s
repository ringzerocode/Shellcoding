global _start

section .text
_start:
    xor rbx, rbx
    mov bx, '_!'
    push rbx
    mov rbx, '___world'
    push rbx
    mov rbx, 'Hello __'
    push rbx
    mov rsi, rsp
    xor rax, rax
    mov al, 1
    xor rdi, rdi
    mov dil, 1
    xor rdx, rdx
    mov dl, 18
    syscall

    xor rax, rax
    add al, 60
    xor dil, dil
    syscall