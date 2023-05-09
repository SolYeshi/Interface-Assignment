           ;ADDIS ABABA UNIVERSITY
   ;ADDIS ABABA INSTITUTE OF TECHNOLY 
   ;SCHOOL OF ELECTRICAL AND COMPUTER ENGINEERING (COMMUNICTION)
   ; MICROCOMPUTER AND INTERFACING INDIVIDUAL ASSIGNMENT
   ; NAME : SOLOMON YESHI
   ;ID NO: UGR/3227/12
   ;SUBMITTED TO: Dr TSAGAMLAK.
   ;SUBMISSION DATE:5/9/2023

read PROC
    ;Initialize counter variable to zero
    mov cx, 0

repeat:
    ;Read character from keyboard
    mov ah, 01h ;Function code for "read character"
    int 21h ;Read a character from the keyboard
          ;Skip processing the character if it is a carriage return
    cmp al, 0Dh ;Compare input character to carriage return
    je exit ;Exit loop if carriage return is entered
    ;Display the input character
    mov ah, 02h ;Function code for "display character"
    mov dl, al ;Move input character to DL register
    int 21h ;Display input character on screen
    ;Update the counter
    inc cx ;Increment the counter
    ;Check the count and continue reading until five characters have been entered
    cmp cx, 5
    jl repeat
    exit:
    ret
read ENDP
 