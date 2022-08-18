; hello_world.asm
;
; Author: Varvara Vasiurina
; Date: 18-Aug-2022

global _start

section .text:

_start:
	mov eax, 0x4	; use the write syscall (locate unistd_32.h-vim ...)
	mov ebx, 1	; use stdout as the fd
	mov ecx, message	;use the message as the buffer
	mov edx, message_length	;and supply the length
	int 0x80	; invoke the syscall

	mov eax, 0x1	; exit syscall
	mov ebx, 0	; stdout o as a success 
	int 0x80

section .data:
	message: db "Hello World!", 0xA
	message_length equ $-message
; vim hello_world.asm
; nasm -f elf32 -o hello_world.o hello_world.asm
; ld -m elf_i386 -o hello_world  hello_world.o
; ./hello_world
