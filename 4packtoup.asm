DATA SEGMENT
    P DW 1234H
    ARR DB 10 dup(?)
    DATA ENDS
CODE SEGMENT
    START:
    MOV AX,DATA
    MOV DS,AX
    MOV SI,0H
    MOV CX,04H
    CODE ENDS
END START


