.model small
.stack 100h
.data

    a    db 5
    b    db ?
.code

main proc
          
    
         mov ah,1
         int 21h       ;input b
         mov b,al
    
         mov ah,2
         mov dl,a
         mov dl,53
         int 21h
    
         mov ah,2
         mov dl,b
         int 21h
    
    exit:
         mov ah,4ch
         int 21h
main endp

end main

