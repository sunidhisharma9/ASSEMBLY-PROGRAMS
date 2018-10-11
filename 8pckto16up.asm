DATA SEGMENT 
    P DB 12H
    UP DW ?
    DATA ENDS
CODE SEGMENT
  
   START:
         MOV AX,DATA
         MOV DS,AX  
         MOV AL,BYTE PTR P
         MOV AH,0H
         SHL AX,04H
         SHR AL,04H
         MOV UP,AX
         
         CODE ENDS
END START
         
