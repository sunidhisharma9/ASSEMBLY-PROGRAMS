; Objective:To calculate equation Ans=X+Y+24H-Z assuming WORD data
; X=100H, Y=400H, Z=200H

; Approach:Loading variable in AX and performing arthmetic operations on AX

data segment
            
    ;defining variables used in program 
             
    X DW 100H
    Y DW 400H
    Z DW 200H 
    Ans DW ?
    
ends

code segment
    
ASSUME:  CS:code,DS:data
    
start: 
    
    Mov AX,data    ;data segment loaded int o DS register
    Mov DS,AX      
    Mov AX,X       ;X moved to AX  
    ADD AX,Y       ;Y added to AX (X+Y)
    ADD AX,24H     ;24H added to AX (X+Y+24H)
    SUB AX,Z       ;Z subtracted from AX (X+Y+24H-Z)
    Mov Ans,AX     ;Answer stored in Ans

ends

end start ; set entry point and stop the assembler.
