	LD B, 128
	LD C, B

test:
    	LD A, 0
    	LD (C), A
    	LD A, (C)
    	CP 0
    	JP NZ, error

    	LD A, 255
    	LD (C), A
    	LD A, (C)
    	CP 255
    	JP NZ, error

    	INC B
    	LD C, B
    	CP 0
   	JP NZ, test
halt:
    	HALT

error:
    	LD A, B
    	OUT (0), A
    	HALT
