.MODEL SMALL
.STACK 100H
.DATA

.CODE

MAIN PROC
          MOV AH,1
          INT 21H
          CMP AL, 'y'
          JE  THEN

          CMP AL, 'Y'
          JE  THEN

          JMP ELSE_
    THEN: 
          MOV DL, AL
          MOV AH, 2
          INT 21H
    ELSE_:
          MOV AH, 4CH
          INT 21H

MAIN ENDP
END MAIN
