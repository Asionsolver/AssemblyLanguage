.MODEL SMALL
.STACK 100H
.DATA
.CODE

MAIN PROC
        MOV AX, 32H
        
        CMP AX, 0

        JL NEGATIVE
        JG POSITIVE
        JE ZERO

NEGATIVE:
MOV BX, -31H
JMP END_CASE

ZERO:
MOV BX, 30H
JMP END_CASE

POSITIVE:
MOV BX, 31H


END_CASE:
MOV AH, 2
MOV DX , BX
INT 21H

    MOV AH, 4CH         ; Exit the program
    INT 21H

MAIN ENDP

END MAIN
