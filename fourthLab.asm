.MODEL SMALL
.STACK 100H
.DATA
.CODE

MAIN PROC
    
    MOV AH,1
    INT 21H    ;OUTPUT
    
    ADD AL, 20H 
    MOV BL,AL
    
    MOV AH,2
    MOV DL, 0DH
    INT 21H
    MOV DL, 0AH
    INT 21H 
    MOV DL,BL
    INT 21H 
    
    MOV DL, 0DH
    INT 21H
    MOV DL, 0AH
    INT 21H 
    
    MOV AH,1
    INT 21H    ;OUTPUT
    
    ADD AL, 20H 
    MOV BL,AL
    
    MOV AH,2
    MOV DL, 0DH
    INT 21H
    MOV DL, 0AH
    INT 21H 
    MOV DL,BL
    INT 21H
      
    
        
    MOV AH,4CH  ;BACK TO OS
    INT 21H
    
    MAIN ENDP
END MAIN