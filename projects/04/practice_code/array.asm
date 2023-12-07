// init arr
@100
D = A
@arr
M = D

// init n
@10
D = A
@n
M = D

// init i
@i
M = 0

// ------------------
(LOOP)

@n
D = M
@i
D = D - M
@END
D;JLE // check condition: n-i <= 0 

@i
D = M // because we want arr[0] = -1 and i is initialized as 1
@arr
A = D + M // add arr base address + i - 1
M = -1 // set to -1

@i
M = M + 1 // increment i for next iteration

@LOOP
0;JMP
// ------------------

// ------------------
(END)
@END
0;JMP
