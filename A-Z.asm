org 100h          ; Start at offset 100h

mov cx, 26        ; Set loop counter to 26 (for 26 letters)
mov dl, 'A'       ; Start with ASCII code of 'A'

print_loop:
    mov ah, 2     ; DOS interrupt for character output
    int 21h       ; Print character in DL
    inc dl        ; Increment DL to the next character
    loop print_loop

mov ah, 4Ch       ; DOS terminate program function
int 21h           ; Terminate the program
