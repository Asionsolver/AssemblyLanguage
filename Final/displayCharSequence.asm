.MODEL SMALL
.STACK 100H
.DATA
    CHAR_MSG DB 'The character that comes first is: $'

.CODE

MAIN PROC
                 MOV AH, 0           ; Set AH to 0 for reading a character
                 MOV DL, AL          ; Move the character from AL to DL
                 INT 21H             ; Read a character from the input

                 MOV AH, 0           ; Set AH to 0 for reading a character
                 MOV DL, BL          ; Move the character from BL to DL
                 INT 21H             ; Read a character from the input

                 CMP AL, BL          ; Compare the characters in AL and BL
                 JBE DISPLAY_AL      ; Jump to DISPLAY_AL if AL <= BL
                 JMP DISPLAY_BL      ; Otherwise, jump to DISPLAY_BL

    DISPLAY_AL:  
                 MOV DL, AL          ; Move the character from AL to DL
                 JMP DISPLAY_CHAR

    DISPLAY_BL:  
                 MOV DL, BL          ; Move the character from BL to DL

    DISPLAY_CHAR:
                 MOV AH, 2           ; Set AH to 2 for displaying a character
                 INT 21H             ; Display the character in DL

                 MOV AH, 4CH         ; Exit the program
                 INT 21H
MAIN ENDP

END MAIN
