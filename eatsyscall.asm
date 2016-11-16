;  Build using these commands:
;    nasm -f elf64 -g -F stabs eatsyscall.asm
;    ld -o eatsyscall eatsyscall.o
;

SECTION .data			; Section containing initialised data
	Snippet db "TEST"
	
SECTION .bss			; Section containing uninitialized data	

SECTION .text			; Section containing code

global 	_start			; Linker needs this to find the entry point!
	
_start:
	mov ebx,Snippet
	mov eax,4
DoMore: add byte [ebx],32
	inc ebx
	dec eax
	jnz DoMore
