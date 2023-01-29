/*target :  rspaberry pi4




 */

 .global _start:

 _start:

        mov r0,#0x2;
        mov r1,#0x3;

        sum r2,r0,r1;


loop:
    b loop ;