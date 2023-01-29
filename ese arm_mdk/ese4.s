/*
    void setArray(int num) {
        int i;
        int j;

        sub(i,j);

    }

    int sub(int a,int b)
    {
        return a-b;
    } 



/*
    function : main
    input : none
    output: none
*/

.global _start:

    mov r1,#0x1;
    mov r2,#0x2;

    bl _sub
    mov r4,r0

/*
    function:sub
    input:r1,r2
    out:r4

*/

_sub:

    push{r1,r2,lr,sp,pc} ; base sp=r1

    ldr r1,[sp]
    ldr r2,[sp,#0x4]

    sub r4,r1,r2
    mov r4,r0

    push{r1,r2,lr,sp,pc}
    mov pc,lr




