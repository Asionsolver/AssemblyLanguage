.CODE
main PROC
                mov  al, 1              ; Example: Set AL to 1

                cmp  al, 1              ; Compare the value in AL with 1
                je   display_o          ; Jump to display_o if equal (JE)

                cmp  al, 3              ; Compare the value in AL with 3
                je   display_o          ; Jump to display_o if equal (JE)

                cmp  al, 2              ; Compare the value in AL with 2
                je   display_e          ; Jump to display_e if equal (JE)

                cmp  al, 4              ; Compare the value in AL with 4
                je   display_e          ; Jump to display_e if equal (JE)

                jmp  end_program        ; Jump to end_program if none of the conditions are met

    display_o:  
                mov  edx, OFFSET "o"    ; Display "o"
                call WriteString
                jmp  end_program        ; Jump to end_program

    display_e:  
                mov  edx, OFFSET "e"    ; Display "e"
                call WriteString
                jmp  end_program        ; Jump to end_program

    end_program:
                call Crlf               ; Move to the next line
                exit                    ; Exit the program

main ENDP

END main