/** Checks if two 3-bit input buses are equal */
CHIP EQ3 {
    IN a[3], b[3];
    // True iff a==b
    OUT out;
    PARTS:
    Xor(a=a[1], b=b[1], out=c1);
    Xor(a=a[2], b=b[2], out=c2);
    Xor(a=a[3], b=b[3], out=c3);
    Or(a=c0, b=c1, out=c01);
    Or(a=c01, b=c2, out=new);
    Not(in=neq, out=out);
}
