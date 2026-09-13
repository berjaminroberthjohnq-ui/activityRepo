
section .data
    line1 db "Assembly Laboratory", 0xa
    line1Len equ $ - line1

    line2 db "Mode: Linux ELF32", 0xa
    line2Len equ $ - line2

    line3 db "Status: Ready!", 0xa
    line3Len equ $ - line3

section .text
    global _start

_start:
    ; Print the first line
    mov eax, 4
    mov ebx, 1
    mov ecx, line1
    mov edx, line1Len
    int 0x80

    ; Print the second line
    mov eax, 4
    mov ebx, 1
    mov ecx, line2
    mov edx, line2Len
    int 0x80

    ; Print the third line
    mov eax, 4
    mov ebx, 1
    mov ecx, line3
    mov edx, line3Len
    int 0x80

    ; Exit with status 0
    mov eax, 1
    mov ebx, 0
    int 0x80
