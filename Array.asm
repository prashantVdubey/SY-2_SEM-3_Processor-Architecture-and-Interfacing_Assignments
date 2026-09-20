section .data
    arr db 10, 20, 30, 40, 50
    len equ $ - arr

section .bss
    result resb 3

section .text
    global _start

_start:
    mov esi, 0
    mov ecx, len
    xor eax, eax

sum_loop:
    add al, [arr + esi]
    inc esi
    loop sum_loop

    ; AL = 150
    ; Convert 150 into ASCII digits

    mov ah, 0
    mov bl, 100
    div bl

    ; AL = 1 (hundreds)
    ; AH = 50

    add al, '0'
    mov [result], al

    mov al, ah
    mov ah, 0
    mov bl, 10
    div bl

    ; AL = 5 (tens)
    ; AH = 0 (ones)

    add al, '0'
    mov [result + 1], al

    add ah, '0'
    mov [result + 2], ah

    ; Print 150
    mov eax, 4
    mov ebx, 1
    mov ecx, result
    mov edx, 3
    int 0x80

    ; Exit
    mov eax, 1
    mov ebx, 0
    int 0x80