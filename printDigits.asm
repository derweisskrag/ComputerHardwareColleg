section .data
    number db 0, 0ah
section .text
    global _start

%macro exit 0
    mov rax, 60
    mov rdi, 0
    syscall
%endmacro

%macro printDigit 1
    ; This is used to print a number from 0 to 9
    mov rax, %1 
    mov [number], al
    call _printNumber
%endmacro

%macro printStack 0
    pop rax
    printDigit rax
%endmacro

_start:
    printDigit 1
    printDigit 2
    printDigit 3


    exit

_printNumber:
    mov rax, 48
    add [number], al
    mov rax, 1
    mov rdi, 1
    mov rsi, number
    mov rdx, 2
    syscall
    ret

