.MODEL SMALL
.STACK 100H
.DATA
.CODE

MAIN PROC
    MOV AX, -5          ; Example: AX contains a negative number (-5)

    CMP AX, 0           ; Compare AX with 0
    JL NEGATIVE         ; Jump to NEGATIVE if AX is less than 0
    JE ZERO 
    JG POSITIVE            ; Jump to ZERO if AX is equal to 0

    MOV BX, 1          ; If neither condition is true, move 1 to BX for a positive number
    JMP END             ; Jump to END

NEGATIVE:
    MOV BX, -1          ; If AX is less than 0, move -1 to BX
    JMP END             ; Jump to END

ZERO:
    MOV BX, 0           ; If AX is equal to 0, move 0 to BX
    JMP END             ; Jump to END

POSITIVE:
    MOV BX, 1           ; If AX is greater than 0, move 1 to BX
    JMP END             ; Jump to END

END:
    MOV AH, 4CH         ; Exit the program
    INT 21H

MAIN ENDP

END MAIN
