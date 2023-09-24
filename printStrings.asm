; This program prints two strings: 
; Hello world!
; Hello, chatGPT
; It does by looping over the strings, until it hits 0

section .data
    msg db "Hello world!", 0ah
    text db "Hello, chatGPT!"

section .text
    global _start

_start:
    mov rax, msg
    call _print
    mov rax, text
  
    
    mov rax, 60
    mov rdi, 0
    syscall

_print:
    push rax
    mov rbx, 0

_printLoop:
    inc rax            ; increment by 1
    inc rbx
    mov cl, [rax]      ; load the letter into cl
    cmp cl, 0
    jne _printLoop     ; check the condition if cl is already 0, if not print:

                       ; This is how we print:      
    mov rax, 1
    mov rdi, 1
    pop rsi
    mov rdx, rbx       ; letter by letter
    syscall
    ret
