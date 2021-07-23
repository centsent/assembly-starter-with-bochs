mov ax, 3
int 0x10

mov ax, 0xb800
mov ds, ax

mov byte [0], 'H'
mov byte [2], 'e'
mov byte [4], 'l'
mov byte [6], 'l'
mov byte [8], 'o'
mov byte [10], ','
mov byte [12], ' '
mov byte [14], 'a'
mov byte [16], 's'
mov byte [18], 's'
mov byte [20], 'e'
mov byte [22], 'm'
mov byte [24], 'b'
mov byte [26], 'l'
mov byte [28], 'y'

halt:
  jmp halt

times 510 - ($ - $$) db 0
db 0x55, 0xaa
