.MODEL SMALL
.STACK 100H  
.DATA
.CODE
MAIN PROC

    MOV AH,1               // get the char
    INT 21H

    CMP AL,'A'             // compare and check what to do
    JB ELSE                // smaller than 'A': don't display it 
    CMP AL,'Z'  
    JA ELSE                // bigger than 'Z': don't display it
THEN:
    MOV AH,2               // you only get here if it's an uppercase letter
    MOV DL,AL
    INT 21H
    // JMP END_IF          // since you're just skipping "do nothing" this jmp 
                           // is not needed at all
ELSE_: 
    /* do nothing */
END_IF:    
    MOV AH,4CH             // exit
    INT 21H

MAIN ENDP
END MAIN