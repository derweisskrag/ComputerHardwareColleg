; How to operate over digits from 0 to 9 and perform arithmetic operations
; and print results? 
; when using 'div': rax is the result, and rdx is the remainder

section .data
    num db 0, 0ah

section .text
    global _start

%macro sum 2
    ; macro consists of several functions.
    ; Constrait: digits from 0 to 9.
    ; Args: 1 and 2.
    ; Returns: the sum of these arguments.
    mov rax, %1
    add rax, %2
    printDigit rax
%endmacro

%macro subtract 2
    ; macro consists of several functions.
    ; Constrait: digits from 0 to 9
    ; Args: 1 and 2.
    ; Returns: The result of subtraction: 2 from 1: 1 - 2.
    mov rax, %1
    sub rax, %2
    printDigit rax
%endmacro

%macro multiply 2
    ; macro consists of several functions.
    ; Constrait: digits from 0 to 9
    ; Args: 1 and 2.
    ; Returns: The product of 1 and 2
    mov rax, %1
    mov rbx, %2
    mul rbx
    printDigit rax
%endmacro

%macro divide 2
    ; macro consists of several functions.
    ; Constrait: digits from 0 to 9
    ; Args: 1 and 2.
    ; Returns: The division of 1 by 2
    mov rax, %1
    mov rbx, %2
    xor rdx, rdx ; ensure that rdx is zero
    div rbx
    printDigit rax
%endmacro


%macro printDigit 1
    ; Prints from 0 to 9.
    ; Input: the parameter 1.
    ; Prints: Number passed to it.
    mov rax, %1
    mov [num], al
    call _printNumber
%endmacro

%macro exit 0
    mov rax, 60
    mov rdi, 0
    syscall
%endmacro

_start:
    printDigit 1
    sum 2, 3
    subtract 6, 2
    multiply 2, 4
    divide 6, 3
    exit

_printNumber:
    mov rax, 48
    add [num], al
    mov rax, 1
    mov rdi, 1
    mov rsi, num
    mov rdx, 2
    syscall
    ret
