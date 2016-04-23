;W=(X*Y-50)/Z

DATA	SEGMENT
X		DB	50H
Y		DB	20H
Z		DB	10H
W		DB	?
DATA	ENDS
CODE	SEGMENT
	ASSUME 	CS:CODE,DS:DATA
START:
	MOV 	AX,DATA
	MOV	DS,AX

	MOV	AL,X
	MUL	Y

        	SUB     AX,50H

        	MOV     BL,Z
        	DIV     BL

        	MOV     W,AL
        	MOV     [W+2],AH
	MOV	AH,4CH
	INT	21H
CODE	ENDS
	END START
