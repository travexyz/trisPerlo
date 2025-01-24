	LD A, 11
	LD (128),A 

	LD C,129	; primo indirizzo libero in RAM

random:
	LD A,(128)	; legge il seme

	XOR 255
	ADD 73
	XOR 255

	LD (128),A	; salva il seme
	LD (C),A
	INC C
	CP 255
	JP Z, exit
	JP NZ, random
exit:
	HALT