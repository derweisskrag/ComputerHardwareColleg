section .bss
	digitSpace resb 100
	digitSpacePosition resb 8

section .text
	global _start

_start:
	mov rax, 123               ; load our number into the rax register
	call printNumber         ; call the subroutine
	

	mov rax, 60                 ; terminate the programm
	mov rdi, 0
	syscall

printNumber:
	mov rcx, digitSpace
	mov rbx, 10
	mov [rcx], rbx
	inc rcx
	mov [digitSpacePosition], rcx

printNumberLoop:
	mov rdx, 0
	mov rbx, 10
	div rbx
	push rax
	add rdx, 48                  ; The ‘rdx’ register is added to 48, which is ASCII for numbers

	mov rcx, [digitSpacePosition]
	add [rcx], dl
	inc rcx
	mov [digitSpacePosition], rcx

	pop rax
	cmp rax, 0
	jne printNumberLoop


printNumberSecondLoop:
	mov rcx, [digitSpacePosition]
	
	mov rax, 1
	mov rdi,1
	mov rsi, rcx
	mov rdx, 1
	syscall
	
	mov rcx, [digitSpacePosition]
	dec rcx
	mov [digitSpacePosition], rcx
	cmp rcx, digitSpace
	jge printNumberSecondLoop

	ret
