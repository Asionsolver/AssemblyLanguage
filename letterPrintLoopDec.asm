.model small
.stack 100h

.data
    cap  db 'Z'
.code

main proc
          mov ax, @data
          mov ds,ax

    print:
          mov ah,2         ;output
          mov dl,cap
          int 21H

          cmp dl,'A'
          jle exit

          dec cap
          jmp print

    exit: 
          mov ah,4ch
          int 21h

main endp
    end main