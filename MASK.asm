.MODEL SMALL
.STACK 100H
.DATA

        MASK DB 7Fh

.CODE

        MAIN PROC
            
            MOV AX,@DATA
            
            MOV DS,AX
             
            
            MOV AH,1
            INT 21H
            
            AND AL,MASK
            
            MOV AH,2
            MOV DL,AL
            INT 21H
                              
                              
         MAIN ENDP
        
        END MAIN
         
                