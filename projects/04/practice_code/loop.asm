// loop to compute sum of n numbers
@R0
D = M
@n
M = D
@i
M = 1
@sum
M = 0

// infinite loop unless conditional true
// --------------------------
(LOOP)
@n
D = M
// check stop condition
@i
D = D - M

@STOP
D+1;JLE // if n-i <= 0, jump to (STOP)

// sum the numbers to total
@i
D = M
@sum
M = M + D
@i
M = M + 1

@LOOP
0;JMP
// --------------------------

// loop interrupt
(STOP)
@sum
D = M
@R1
M = D

// end program
(END)
@END
0;JMP
