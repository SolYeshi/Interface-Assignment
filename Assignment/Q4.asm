           ;ADDIS ABABA UNIVERSITY
   ;ADDIS ABABA INSTITUTE OF TECHNOLY 
   ;SCHOOL OF ELECTRICAL AND COMPUTER ENGINEERING (COMMUNICTION)
   ; MICROCOMPUTER AND INTERFACING INDIVIDUAL ASSIGNMENT
   ; NAME : SOLOMON YESHI
   ;ID NO: UGR/3227/12
   ;SUBMITTED TO: Dr TSAGAMLAK.
   ;SUBMISSION DATE:5/9/2023

.MODEL SMALL
.STACK 100h

.DATA
    password DB 'ab123' ; 5-character password in memory

    message1 DB 'Enter password: $'
    message2 DB 'Access granted$'
    message3 DB 'Access denied$'

    buffer DB 6,?,6 DUP ('$') ; buffer to hold input string

.CODE
    MAIN PROC
        MOV AX, @DATA
        MOV DS, AX ; initialize data segment

        ; display message asking for password
        MOV AH, 9
        LEA DX, message1
        INT 21h

        ; read password from keyboard
        MOV AH, 0Ah
        MOV DX, OFFSET buffer
        INT 21h

        ; compare input with password in memory
        MOV SI, OFFSET password
        MOV DI, OFFSET buffer+2 ; skip over length byte and CR/LF
        MOV CX, 5 ; compare 5 characters
        REPE CMPSB
        JNE ACCESS_DENIED

        ; if comparison successful, display "Access granted" message
        MOV AH, 9
        LEA DX, message2
        INT 21h
        JMP QUIT

    ACCESS_DENIED:
        ; if comparison failed, display "Access denied" message
        MOV AH, 9
        LEA DX, message3
        INT 21h

    QUIT:
        MOV AH, 4Ch
        INT 21h ; exit program
    MAIN ENDP

END MAIN


