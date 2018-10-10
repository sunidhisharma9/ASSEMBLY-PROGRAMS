      
; Objective: To calculate equation Ans=X+T+24H-Z assuming DOUBLEWORD data as BYTE BY BYTE data
           ; X=7201802H, Y=8301901H, Z=5202005H

; Approach : storing lower word of variables in AL AND AH and higher word of variables in BH AND BL and performing arthmetic operations on BX-AX

data segment
            
    ;defining variables used in program 
             
    X DD 7001802H
    Y DD 0301001H
    Z DD 5002005H 
    Ans DD ?
    
data ends

code segment
    
    ASSUME:  CS:code,DS:data
    
start: 
    Mov AX,data    ;data segment loaded int o DS register
    Mov DS,AX      
    Mov AL,BYTE PTR X 
    Mov AH,BYTE PTR X+1        
    Mov BL,BYTE PTR X+2
    Mov BH,BYTE PTR X+3        
    ADD AL,BYTE PTR Y   
    ADC AH,BYTE PTR Y+1        
    ADC BL,BYTE PTR Y+2
    ADC BH,BYTE PTR Y+3          
    ADD AL,24H
    ADC AH,00H 
    SUB AL,BYTE PTR Z   
    SBB AH,BYTE PTR Z+1        
    SBB BL,BYTE PTR Z+2
    SBB BH,BYTE PTR Z+3  
    Mov WORD PTR Ans,AX       ;lower word of Answer stored in Ans
    Mov WORD PTR Ans+2,BX     ;Higher word of Answer stored in Ans+2

code ends

end start ; set entry point and stop the assembler.
