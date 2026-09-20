section .data
    num1 db 5
    num2 db 3

section .bss
    result resb 2

section .text
    global _start

_start:
    ; Multiplication
    mov al, [num1]
    mov bl, [num2]
    mul bl

    ; AX = 15
    ; Convert AX to digits
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