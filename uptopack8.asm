DATA SEGMENT
    UP DW 0102H
    P DB ?
    DATA ENDS
CODE SEGMENT
    START:
    MOV AX,DATA
    MOV DS,AX
    MOV AX,WORD PTR UP
    SHL AL,04H
    SHR AX,04H
    MOV P,AL
    CODE ENDS
END START

