section .data
    num1 db 15
    num2 db 3

section .bss
    result resb 1

section .text
    global _start

_start:
    ; Division
    mov al, [num1]
    mov bl, [num2]

    mov ah, 0
    div bl

    ; AL contains quotient
    add al, '0'
    mov [result], al

    ; Print quotient
    mov eax, 4
    mov ebx, 1
    mov ecx, result
    mov edx, 1
    int 0x80

    ; Exit
    mov eax, 1
    mov ebx, 0
    int 0x80