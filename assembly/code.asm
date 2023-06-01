.MODEL SMALL
.STACK 100H
.DATA
.CODE

MAIN PROC
    MOV AH, 1
    INT 21H

    MOV BL, AL    ; Save the input character in BL

    CMP BL, 'A'
    JB OTHERS
    CMP BL, 'Z'
    JBE UPPERCASE

    CMP BL, 'a'
    JB OTHERS
    CMP BL, 'z'
    JBE LOWERCASE

OTHERS:
    MOV DL, 'O'
    JMP DISPLAY

UPPERCASE:
    MOV DL, 'U'
    JMP DISPLAY

LOWERCASE:
    MOV DL, 'L'
    JMP DISPLAY

DISPLAY:
    MOV AH, 2
    INT 21H

    MOV AH, 4CH   ; Exit program
    INT 21H

MAIN ENDP
END MAIN
