// if R0 > 0
//      R1 = 1
// else
//      R1 = 0
@R0 // select R0  
D = M // store value of R0
@6 // next instruction will be 6, conditionally
D; JGT // if R0 > 0 jump to line 6
@7
D = 0; JMP // jump to line 8, this will be used to set R0=0
D = 1; // this will be used to set R1 = 1
@R1 // select R1
M = D // set R1 = 0 or 1
@11 
0; JMP // infinite loop
