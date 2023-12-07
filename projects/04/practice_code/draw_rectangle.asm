// GET COORDINATES ---------------------
// upper left point
@R0
D = M
@x0
M = D
@R1 
D = M
@y0
M = D

// upper right point
@R2
D = M
@x1
M = D
@R3 
D = M
@y1
M = D

// find how many points to move right (delta X = x1-x0)
@x0
D = M
@x1
D = M - D
@deltax
M = D
// find how many points to move down (delta Y = y1-y0)
@y0
D = M
@y1
D = M - D
@deltay
M = D

// Loop to desired y-ccordinate
// keyboard + 512*deltay
@KEYBOARD
D = A // base keyboard
@deltay
D = M + D // base keyboard 
@512
D = M + D

// ----------------
(LOOPY)
(LOOPX)

// fill the current register black
@addr
A = M
M = -1

// now add 32 to addr to move to next register
@32
D = A
@addr
M = M + D

// check: did we pass dx


@LOOPX
0;JMP

// check: did we pass dy


@LOOPY
0;JMP
// ----------------


(END)
@END
0;JMP
