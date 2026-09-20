section .data
    num1 db 25
    num2 db 7

section .bss
    result resb 2

section .text
    global _start

_start:
    ; Subtraction
    mov al, [num1]
    sub al, [num2]

    ; Convert result into two digits
    mov ah, 0
    mov bl, 10
    div bl

    ; AL = tens digit
    ; AH = units digit

    add al, '0'
    add ah, '0'

    mov [result], al
    mov [result + 1], ah

    ; Print
    mov eax, 4
    mov ebx, 1
    mov ecx, result
    mov edx, 2
    int 0x80

    ; Exit
    mov eax, 1
    mov ebx, 0
    int 0x80