.MODEL SMALL
.STACK 100H
.DATA      
.CODE

    MAIN PROC
        
           MOV AH,1
           INT 21H
           MOV BL,AL
           
           ROL BL,1
           
           MOV AH,2
           MOV DL,BL
           INT 21H