// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Fill.asm

// Runs an infinite loop that listens to the keyboard input.
// When a key is pressed (any key), the program blackens the screen
// by writing 'black' in every pixel;
// the screen should remain fully black as long as the key is pressed. 
// When no key is pressed, the program clears the screen by writing
// 'white' in every pixel;
// the screen should remain fully clear as long as no key is pressed.


(LOOP_MAIN)
@KBD
D = M
@LOW
D;JEQ

(HIGH) // keypress detected
@DARK_SCRN
0;JMP

(LOW) // no keypress
@LIGHT_SCRN
0;JMP

// ---- helper functions
(DARK_SCRN)
@SCREEN
D = A
@addr
M = D
@KBD
D = A
@addr_max // the last screen address should bethe one right before the keyboard
M = D - 1

(LOOP_DARK_SCRN)
@addr_max
D = M
@addr
D = D - M
@LOOP_MAIN
D;JLT // jump back into main loop once we reach the last screen register

@addr
A = M // go to the register in question
M = -1 // set this register to 111...1

@addr
M = M + 1 // slide to the next register

@LOOP_DARK_SCRN
0;JMP

(LIGHT_SCRN)
@SCREEN
D = A
@addr
M = D
@KBD
D = A
@addr_max // the last screen address should bethe one right before the keyboard
M = D - 1

(LOOP_LIGHT_SCRN)
@addr_max
D = M
@addr
D = D - M
@LOOP_MAIN
D;JLT // jump back into main loop once we reach the last screen register

@addr
A = M // go to the register in question
M = 0 // set this register to 0

@addr
M = M + 1 // slide to the next register

@LOOP_LIGHT_SCRN
0;JMP
