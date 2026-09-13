section .data
    assemblerMsg db "Assembler ready", 
    assemblerLen equ $ - assemblerMsg

    linkerMsg db "Linker ready", 0xa
    linkerLen equ $ - linkerMsg

    programMsg db "Program ready", 0xa
    programLen equ $ - programMsg

section .text
    global _start

_start:
    ; Print assembler message
    mov eax, 4
    mov ebx, 1
    mov ecx, assemblerMsg
    mov edx, assemblerLen
    int 0x80

    ; Print linker message
    mov eax, 4
    mov ebx, 1
    mov ecx, linkerMsg
    mov edx, linkerLen
    int 0x80

    ; Print program message
    mov eax, 4
    mov ebx, 1
    mov ecx, programMsg
    mov edx, programLen
    int 0x80

    ; Exit
    mov eax, 1
    xor ebx, ebx
    int 0x80