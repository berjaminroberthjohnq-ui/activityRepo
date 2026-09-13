section .data
    message db "Task complete.", 0xa
    messageLen equ $ - message

section .text
    global _start

_start:
    mov eax, 4
    mov ebx, 1
    mov ecx, message
    mov edx, messageLen
    int 0x80

    mov eax, 1
    mov ebx, 7
    int 0x80