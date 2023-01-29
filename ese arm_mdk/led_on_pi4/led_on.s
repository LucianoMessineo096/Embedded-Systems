/* Example bm-01: LED on
 * 
 * Target: Raspberry Pi 2/3 
 * 
 */

/* Pi 2/3
 * GPIO register addresses
 */
GPFSEL2=0x3F200008
GPSET0 =0x3F20001C

.global _start

_start:
	ldr r0,=GPFSEL2
	ldr r0,[r0]
	bic	r1, r0, #0x38000000
	orr	r1, r1, #0x08000000
	ldr r0,=GPFSEL2
	
	str r1, [r0]

	ldr r0,=GPSET0
	mov r1, #0x20000000  /* GPIO pin 29 on (LED ON) */
	str r1, [r0]

1:
	b 1b

