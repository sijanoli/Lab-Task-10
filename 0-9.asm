org 100h          ; Start at offset 100h

mov cx, 10        ; Set loop counter to 10
mov dl, '0'       ; Start with ASCII code of '0'

print_loop:
    mov ah, 2     ; DOS interrupt for character output
    int 21h       ; Print character in DL
    inc dl        ; Increment DL to next character
    loop print_loop

mov ah, 4Ch       ; DOS terminate program function
int 21h           ; Terminate the program
