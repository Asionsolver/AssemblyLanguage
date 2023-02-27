.model small
.stack 100h
.code

main proc
    mov ah,1
    int 21h         ;input
    mov bl,al  
    
    mov ah,2
    mov dl,10      ;print new line
    int 21h     
    mov dl,13
    int 21h
       
    mov ah,2
    mov dl,bl
    int 21h         ;output
    
    exit:
    mov ah,4ch  
    int 21h
    main endp

end main
    
