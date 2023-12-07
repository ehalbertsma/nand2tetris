# Important registers

Every register has 2 components: a _value_ and an _address_. Consider a register in the RAM, and suppose we want to do something with this register (or the value it holds in memory).  Its address and its contents (its "value"), when selected, are stored in 2 very specific locations in the CPU for the duration of time that we want to work with that register. These 2 locations in the CPU are called the *M* and *A* registers. 

- *M* : the contents of the currently selected register in memory (RAM). Represents the value of the 16bit register addressed by A.
- *A* : The memory Address register, holding the address of the RAM register that we plan to read from or write to.
    
The *D* register is a temporary location where we can store some value. For example, it can store the intermediate result of a computation outputted by the ALU.

# The C-instruction
` dest = comp ; jump`

- Comp
- Dest
- Jump (optional):


# Built-in symbols
## Virtual Registers
Denoted `R1, R2, ..., R15`

Usage: 
```
@15
D=A
@5
M=D
```
In this case we call `@5` to store the number `15` in `D`. Then, we call `@5` to say that we want to save information to the `5` register. These are very different usages which is confusing.

Hack allows use of the virtual registers to solve the amgiguity. Use as:
```
@15
D=A
@R5
M=D
```
This clarifies that with `@R5` we want to store to register 5, rather than use `5` as a number.

## Peripherals
`KBD, SCREEN` are used to access the respective screen, keyboard registers. This is useful because it takes us directly to the assigned registers for these peripherals, so we don't need to remember where their memory addresses are.
