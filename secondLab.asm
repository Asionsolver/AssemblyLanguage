.MODEL SMALL
.STACK 100H
.DATA
.CODE

MAIN PROC
    
    MOV AH,2    ;OUTPUT
    
    MOV DL, 'A'
    INT 21H
    
    MOV DL, 'S'
    INT 21H 
    
    MOV DL, 'H'
    INT 21H  
    
    
    MOV DL, 'I'
    INT 21H

    MOV DL, 'S'
    INT 21H
     
    MOV DL, 0DH
    INT 21H 
    
    MOV DL, 0AH
    INT 21H
    
    MOV DL, 'P'
    INT 21H 
    
    MOV DL, 'A'
    INT 21H
    
    MOV DL, 'L'
    INT 21H 
        
    MOV AH,4CH  ;BACK TO OS
    INT 21H
    
    MAIN ENDP
END MAIN