section .data
    workflow db "Step 1: Edit", 0xa
             db "Step 2: Assemble", 0xa
             db "Step 3: Run", 0xa
             db "Step 4: Debug", 0xa
    workflowLen equ $ - workflow

section .text
    global _start

_start:
    mov eax, 4
    mov ebx, 1
    mov ecx, workflow
    mov edx, 12
    int 0x80

    mov eax, 1
    mov ebx, 0
    int 0x80