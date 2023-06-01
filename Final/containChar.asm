;EX-6.9 
;Write some code to count the number of characters in an input line

.MODEL SMALL
.STACK 100H
.DATA
.CODE

MAIN PROC
        
        MOV CX, 30H
        MOV AH, 1
        INT 21H
        
    WHILE_:
    
        CMP AL, 0DH
        JE END_WHILE
        
        INC CX
        INT 21H
        JMP WHILE_
        
    END_WHILE:
        
        MOV AH, 2
        MOV DL, 0DH
        INT 21H
        
        MOV DL, 0AH
        INT 21H
        
        MOV AH, 2
        MOV DX, CX
        INT 21H
        
        MOV AH, 4CH
        INT 21H
    
MAIN ENDP
    END MAIN