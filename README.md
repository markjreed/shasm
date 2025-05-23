# 6502 Assembler in Bash

This was a dumb idea raised on the Commander X-16 Discord. 

Since it's a dumb idea, I naturally decided to try it.

    Usage: ./shasm [-t target] [-c cputype] [-o outputfile] [-l listfile] source [...]

Syntax is old-school; labels are indicated by a lack of leading space on the line.
EQU for equates, DB for byte-sized data, DW for word-sized data, ORG to change
the target address. mnemonics and pseudo-ops must be in all-caps; labels are
case-sensitive.

The list file, if created, is in VICE debugger format.

The included test.s "hello, world" file assembles.
