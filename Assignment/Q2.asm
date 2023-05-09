           ;ADDIS ABABA UNIVERSITY
   ;ADDIS ABABA INSTITUTE OF TECHNOLY 
   ;SCHOOL OF ELECTRICAL AND COMPUTER ENGINEERING (COMMUNICTION)
   ; MICROCOMPUTER AND INTERFACING INDIVIDUAL ASSIGNMENT
   ; NAME : SOLOMON YESHI
   ;ID NO: UGR/3227/12
   ;SUBMITTED TO: Dr TSAGAMLAK.
   ;SUBMISSION DATE:5/9/2023

org 100h
 lea si, y 
 mov al,[si] 
 lea si,x
 mov cl,[si]
 
 loop1:
 cmp cl,0
 jle end
 mul cl
 dec cl
 jmp loop1
 end:
 ret
 y db 1
 x db 3 