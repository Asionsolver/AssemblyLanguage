.MODEL SMALL 
.STACK 100H 
.DATA

    A    DB 10,13,'ENTER THE NUMBER: $'
    C    DB 10,13,'RESULT $'
.CODE
MAIN PROC

            MOV AX,@DATA
            MOV DS,AX

            MOV AH,9
            LEA DX,A
            INT 21H
    
            MOV AH,1
            INT 21H
    
    
            MOV AH,9
            LEA DX,C
            INT 21H
    
            CMP AL,1
            JE  ODD
            CMP AL,3
            JE  ODD
            CMP AL,2
            JE  EVEN
            CMP AL,4
            JE  EVEN
     
    ODD:    
            MOV DL,'o'
            JMP DISPLAY
     
    EVEN:   
            MOV DL,'e'
            JMP DISPLAY
    
    DISPLAY:
            MOV AH,2
            INT 21h
      
    EXIT:   
            MOV AH,4CH
            INT 21H
MAIN ENDP
END MAIN