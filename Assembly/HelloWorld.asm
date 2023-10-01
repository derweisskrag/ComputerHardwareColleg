SYS_WRITE equ 1
SYS_READ equ 0
SYS_EXIT equ 60

STDIN equ 0
STDOUT equ 1
STDERR equ 2

section .data
    msg db "Hello world!", 0ah

section .text
    global _start

_start:
    mov rax, SYS_WRITE
    mov rdi, STDOUT
    mov rsi, msg
    mov rdx, 13
    syscall
    
    mov rax, SYS_EXIT
    mov rdi, 0
    syscall
