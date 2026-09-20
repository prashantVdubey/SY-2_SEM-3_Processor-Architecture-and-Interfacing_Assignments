section .data
    num1 db 7
    num2 db 8

section .bss
    result resb 2

section .text
    global _start

_start:
    ; Addition
    mov al, [num1]
    add al, [num2]

    ; Convert result to two ASCII digits
    mov ah, 0
    mov bl, 10
    div bl

    ; AL = quotient (tens digit)
    ; AH = remainder (units digit)

    add al, '0'
    add ah, '0'

    ; Store the two digits
    mov [result], al
    mov [result + 1], ah

    ; Print result
    mov eax, 4
    mov ebx, 1
    mov ecx, result
    mov edx, 2
    int 0x80

    ; Exit
    mov eax, 1
    mov ebx, 0
    int 0x80