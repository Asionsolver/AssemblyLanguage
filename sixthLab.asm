.MODEL SMALL
.STACK 100H
.DATA
.CODE

MAIN PROC
    
    MOV CL, 1
    
    PRINT:
    MOV AH,2 ;OUTPUT
    MOV DL, '*'   
    INT 21H    
          
    DEC CL   
    JNZ PRINT
              
    MOV DL, 0DH
    INT 21H
    MOV DL, 0AH 
    INT 21H
    MOV CL, 2 
    
    PRINT1:
    MOV AH,2 ;OUTPUT
    MOV DL, '*'   
    INT 21H    
       
    DEC CL   
    JNZ PRINT1
    
    MOV DL, 0DH
    INT 21H
    MOV DL, 0AH 
    INT 21H
    MOV CL, 3 
    
    PRINT2:
    MOV AH,2 ;OUTPUT
    MOV DL, '*'   
    INT 21H    
       
    DEC CL   
    JNZ PRINT2   
    
    MOV DL, 0DH
    INT 21H
    MOV DL, 0AH 
    INT 21H
    MOV CL, 4 
    
    PRINT3:
    MOV AH,2 ;OUTPUT
    MOV DL, '*'   
    INT 21H    
       
    DEC CL   
    JNZ PRINT3 
    
    MOV DL, 0DH
    INT 21H
    MOV DL, 0AH 
    INT 21H
    MOV CL, 5 
    
    PRINT4:
    MOV AH,2 ;OUTPUT
    MOV DL, '*'   
    INT 21H    
       
    DEC CL   
    JNZ PRINT4
    
    EXIT:
    MOV AH,4CH  ;BACK TO OS
    INT 21H
    
    MAIN ENDP
END MAIN