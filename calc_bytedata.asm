; Objective:To calculate equation Ans=X+Y+24H-Z assuming BYTE data
; X=10H, Y=40H, Z=20H

; Approach:Loading variable in AL and performing arthmetic operations on AL

data segment
            
    ;defining variables used in program 
             
    X DB 10H
    Y DB 40H
    Z DB 20H 
    Ans DB ?
    
ends

code segment
    
ASSUME:  CS:code,DS:data
    
start: 
    
    Mov AX,data    ;data segment loaded int o DS register
    Mov DS,AX      
    Mov AL,X       ;X moved to AL  
    ADD AL,Y       ;Y added to AL (X+Y)
    ADD AL,24H     ;24H added to AL (X+Y+24H)
    SUB AL,Z       ;Z subtracted from AL (X+Y+24H-Z)
    Mov Ans,AL     ;Answer stored in Ans

ends

end start ; set entry point and stop the assembler.
