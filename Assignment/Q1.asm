           ;ADDIS ABABA UNIVERSITY
   ;ADDIS ABABA INSTITUTE OF TECHNOLY 
   ;SCHOOL OF ELECTRICAL AND COMPUTER ENGINEERING (COMMUNICTION)
   ; MICROCOMPUTER AND INTERFACING INDIVIDUAL ASSIGNMENT
   ; NAME : SOLOMON YESHI
   ;ID NO: UGR/3227/12
   ;SUBMITTED TO: Dr TSAGAMLAK.
   ;SUBMISSION DATE:5/9/2023


org 100h
 lea si,x
 mov al,[si]
 lea si,y
 mov bl, [si]
  
 cmp al,bl
 jle true
 sub bl,1
 jmp end
 true:
   add al,1
 end:
 ret   
 y db 10
 x db 11
 