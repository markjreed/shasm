; simple "hello, world" program to demonstrate assembler
; functionality.

ptr             EQU             $FB
CHROUT          EQU             $FFD2

main            LDA             #<msg
                STA             ptr
                LDA             #>msg
                STA             ptr+1
                LDY             #$00
loop            LDA             (ptr),Y
                BEQ             done
                JSR             CHROUT
                INY
                BNE             loop
done            RTS

msg             DB              "HELLO, WORLD!",13,0
