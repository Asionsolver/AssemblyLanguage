.MODEL SMALL
 .STACK 100H
.DATA
.CODE
 
MIN PROC
           MOV AH, 1
           INT 21H

           CMP AL , 'A'
           JB  END_IF

           CMP AL , 'Z'
           JA  END_IF

           MOV DL, AL
           MOV AH, 2
           INT 21H

    END_IF:
           MOV AH , 4CH

MAIN ENDP
    END MAIN
                       
