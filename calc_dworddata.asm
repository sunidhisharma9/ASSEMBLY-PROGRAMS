    
; Objective: To calculate equation Ans=X+T+24H-Z assuming DOUBLEWORD data as word-by-word data
           ; X=7201802H, Y=8301901H, Z=5202005H

; Approach : storing lower word of variables in AX and higher word of variables in BX and performing arthmetic operations on BX-AX

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
    Mov AX,WORD PTR X         ;lower word of doubleword X moved to AX
    Mov BX,WORD PTR X+2       ;higher word of doubleword X moved to BX  
    ADD AX,WORD PTR Y         ;lower word of doubleword Y added to AX
    ADC BX,WORD PTR Y+2       ;higher word of doubleword Y added to BX along with carry (C) generated
    ADD AX,24H                ;24H is added to AX
    ADC BX,0000H              ;0000H is added to BX along with carry so that any carry generated is accomodated in the answer
    SUB AX,WORD PTR Z         ;lower word of doubleword Z subtracted from AX 
    SBB BX,WORD PTR Z+2       ;higher word of doubleword Z subtracted from BX along with borrow (C) generated
    Mov WORD PTR Ans,AX       ;lower word of Answer stored in Ans
    Mov WORD PTR Ans+2,BX     ;Higher word of Answer stored in Ans+2

code ends

end start ; set entry point and stop the assembler.
