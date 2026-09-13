section .data
    notice db "System notice: READY", 0xa
    noticeLen equ $ - notice

section .text
    global _start

_start:
    ; Correct sys_write setup
    mov eax, 4
    mov ebx, 1
    mov ecx, notice
    mov edx, noticeLen
    int 0x80

    ; Correct sys_exit setup
    mov eax, 1
    mov ebx, 0
    int 0x80