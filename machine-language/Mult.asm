// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[3], respectively.)

// Put your code here.

// Multiplies R0 and R1

    @i
    M=1
    @prod
    M=0
(LOOP)
    @i
    D=M         //D=i
    @R0
    D=D-M       //i-R0
    @END
    D;JGT       // If (i-R0)>0 goto END
    @R1
    D=M
    @prod
    M=D+M       // product = product+R1
    @i
    M=M+1       // i=i+1
    @LOOP
    0;JMP
(END)
    @prod
    D=M
    @R2
    M=D
    @END
    0;JMP
