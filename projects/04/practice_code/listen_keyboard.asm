// if @KBD == 0 set R0 = 0, else R0 = 1.

(KBD_LISTEN)
@KBD
D = M
@LOW
D;JEQ

(HIGH)
@R0
M = 1
@KBD_LISTEN
0;JMP

(LOW)
@R0
M = 0
@KBD_LISTEN
0;JMP
