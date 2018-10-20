                                     ;BINARY SEARCH
DATA SEGMENT
    ARR DB 01H,02H,03H,04H
    NUM DB 02H
    FLAG DB 00H
DATA ENDS

CODE SEGMENT
    
    ASSUME: CS:CODE,DS:DATA
    
    START:
        MOV AX,DATA
        MOV DS,AX
        
        MOV AL,NUM
        MOV SI,00H      ;WILL STORE THE INDEX OF MIDDLE ELEMENT
        MOV BX,00H      ;STORES THE INDEX OF STARTING ELEMENT
        MOV CX,03H      ;STORES THE INDEX OF ENDING ELEMENT
        
        BS:
            CMP BX,CX
            JA FAIL
            MOV SI,BX
            ADD SI,CX
            SHR SI,1
            CMP AL,ARR[SI]
            JZ SUCCESS
            JA NUMG  
            JMP NUML
            
       NUMG:
            INC SI
            MOV BX,SI
            JMP BS
       
       NUML:
            DEC SI
            MOV BX,SI
            JMP BS
            
       SUCCESS:
            MOV FLAG,01H
            INC SI
            HLT
       
       FAIL:
            MOV FLAG,02H
            HLT
CODE ENDS
END START
