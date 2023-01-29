/*script di accensione led raspberry pi 4B */

BASE_ADDRESS=0xfe200000
GPFSEL4=0x10
SET_BIT3=0x40 
GPSET2=0x24
GPCLR2=0x30 @registro che permette lo spegnimento del led 
SET_BIT42=0x00000400


.global _main


_main:

    @carico in r0 il valore del registro di base 

    ldr r0, =BASE_ADDRESS

    @imposto la modalità di output del gpfsel4

    ldr r1, =SET_BIT3
    str r1, [r0,#GPFSEL4]

    @setto il bit 10 in gpset2 (pin 42)

    ldr r1, =SET_BIT42
    str r1, [r0,#GPSET2] @accensione del led

    



