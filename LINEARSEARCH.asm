DATA SEGMENT
    ARR DB 08H,02H,03H,04H,05H,06H
    NUM DB 4H 
    FLAG DB 0H
    DATA ENDS
CODE SEGMENT
    
    START:
    MOV AX,DATA
    MOV DS,AX 
    
    MOV CX,06 
    MOV SI,00   
    MOV AL,NUM 
    
    LABEL1:
    CMP AL,ARR+SI
    JZ LABEL2
    INC SI
    LOOP LABEL1  
    
    HLT 
    
    LABEL2: MOV FLAG,01H 
            INC SI
   
    CODE ENDS
END START
    
