start:
	LD B, 0
	LD A, 0
	IN A, (130)
	HALT

attesa1:
	IN A, (0)
	CP 1
	JP NZ, attesa1

attesa2:
	IN A, (0)
	CP 0
	JP NZ, attesa2

avanza:
	INC B
	CP 9
	JP Z, azzera
	JP attesa1
	
azzera:
	LD B, 0
	JP attesa1
