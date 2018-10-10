data segment
    a DD 5D90H
    b DD 4AE0H
    SUM DD ?
    data ends
code segment
 ASSUME:  CS:code,DS:data
    
start: 
    
    Mov AX,data    ;data segment loaded int o DS register
    Mov DS,AX 
    MOV AX,0
      
    MOV AX,a 
  
    SUB AX,b  
 
   MOV SUM,AX 
 
ENDS
END START
