ORG 00H
;EVEN AND ODD SORTING TO LOCATION(20H,30H)
mov r6,#20h ;LOCATION FOR ODD NUMBER
mov r7,#30h ;LOCATION FOR EVEN NUMBER
MOV 70H,#00H;/ELEMENT 
MOV 71H,#01H;/ELEMENT 
MOV 72H,#02H ;/ELEMENT     
MOV 73H,#03H;/ELEMENT 
MOV 74H,#04H;/ELEMENT 
MOV 75H,#05H;/ELEMENT 
MOV 76H,#06H;/ELEMENT 
MOV 77H,#07H;/ELEMENT 
MOV 78H,#08H;/ELEMENT 
MOV 79H,#09H;/ELEMENT 
MOV 79H,#00H;/ELEMENT 
MOV R0,#70H
LOOP:CJNE R0 ,#80H,NXT ;CHECKS R0 LIMIT (SET TO FINAL_ADDRESS VALUE+1)
AJMP FINISH
NXT:CLR C
MOV A,@R0
RRC A
JNC EVEN;CHECK ODD OR EVEN 
ODD:
mov a,r6
mov r1,a
MOV A,@R0
MOV @R1,A
INC R0
INC R6
AJMP LOOP
EVEN:
mov a,r7
mov r1,a
MOV A,@R0
MOV @R1,A
INC R0
INC R7
AJMP LOOP
FINISH :
END
 

