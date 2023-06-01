;EX-6.2

;Replace the number in AX by its absoule value.

.MODEL SMALL
.STACK 100H

.DATA
.CODE

MAIN PROC
    MOV AX, -5
    CMP AX, 0
    JNL END_IF

    NEG AX
END_IF:
    MOV AH, 2
    MOV DX, AX
    INT 21H

    MAIN ENDP
    END MAIN