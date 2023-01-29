/* 

int main() 
{

    int n;
    n = 10;
    D = 0;
    A = [D];
    while (D < n) 
    {

        if (A == 0)
        {   
            C = C + 1;
        }

        D = D + 1;
        A = [D];
    }
}

*/

.global _main

n .req r1;
d .req r2;
c .req r3;

dcd array 0


start_loop:

    mov n,#0xa;
    mov d,#0x0;


    while:

        cmp d,n
        bgt end_loop

        if_stmnt:

            cmp array,#0x0
            beq stop_stmnt

            add d,d,#0x1



        stop_stmnt

        b while


end_loop


n .unreq r1
d .unreq r2
c .unreq r3
    