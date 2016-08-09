.MODEL SMALL
.STACK 100H
.DATA
MASK DB 01h
M1 DW 'ODD$'
M2 DW 'EVEN$'
.CODE
    MAIN PROC
       
       MOV AX,@DATA
       MOV DS,AX
       
       MOV AH,1
       INT 21H
       MOV BL,AL
       
       TEST BL,01h
       JZ EVEN
       JNZ ODD
       
       ODD:
       LEA DX,M1
       MOV AH,9
       INT 21H
       JMP EXIT
       
       EVEN:
       LEA DX,M2
       MOV AH,9
       INT 21H
       JMP EXIT
       
       EXIT:
       MOV AH,4CH
       INT 21H
       
       MAIN ENDP
    END MAIN
         
       