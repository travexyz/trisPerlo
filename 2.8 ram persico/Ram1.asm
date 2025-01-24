	LD C,128
	LD A,0
ciclo:
	LD (C),A
	INC C
	INC A
	CP 127
	JP NZ, ciclo
	HALT