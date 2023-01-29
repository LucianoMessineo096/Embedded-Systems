/*c code

    #include<stdio.h>

    define DIM 5

    int sum(int ARRAY, int DIM);
    void copy(int ARRAY_S, int ARRAY_D, int DIM);

    int main(void)
    {
        int src[DIM]={1,2,3,4,5};
        int dest[DIM];

        sum(src , DIM);
        copy(src,dest,DIM);

        return 0;
    }

    int sum(int ARRAY, int DIM)
    {
        int sum=0;

        for(unsigned int i=0;i<DIM;i++)
        {
            sum+=ARRAY[i];
        }

        return sum;
    }

    void copy(int ARRAY_S, int ARRAY_D, int DIM)
    {
        int k=0;

        while(DIM!=0)
        {
            ARRAY_D[k]=ARRAY_S[k];

            DIM--;
        }
    }

 */

 /*panoramica registri
 
    r0 = valore di ritorno
    r1 = 
    r2 = 
    r3 = dimensione array
    r4 = valore di ritorno funzione sum
    r5 = valore di ritorno funzione copy
    r6 = 
    r7 = puntatore array src
    r8 = puntatore array dest

 
 
  */

/*function main
    
    input : none
    out: none
*/

 .global _start: 

                src dcd 1,2,3,4,5
                dest dcd 0,0,0,0,0

                mov r3,#0x5
                mov r7,#src
                mov r8,#dest

                bl sum  ; in questa fase il link register conserva l'indirizzo dell'istruzione successiva cosi da riprendere l'esecuzione
                mov r4,r0

                bl cop
                mov r5,r0


        loop :

                b loop 



/*function sum

    input :  src (array) , r3 (dimensione) 
    out : somma

*/

    sum : 

                /*per prima cosa conservo i valori di tutti i registri sullo stack , cosi da evitare sovrascritture */

                push{r3,r7,r8,lr}

                ldr r3,[r3] ;prendo la dimensione dell'array

                while : 

                        cmp r3,#0x0

                        beq stop

                        ldr r9,[r7] ;valore i-esimo dell'array
                        add r4,r4,r9 ;operazione
                        add r7,r7,#0x4 ;incremento il puntatore dell'array
                        sub r3,r3,#0x1 ;decremento il ciclo

                        b while

                stop :

                        mov r0,r4 ;sposto la somma nel valore di ritorno 
                        pop{r3,r7,r8,lr} ;ripristino i registri
                        mov pc,lr ;spost nel program counter il valore del link register cosi da proseguire l'esecuzione nel main


/*
    function copy

        input : src,dest,
*/

    cop :       

                push{r3,r4,r7,r8,lr}
                ldr r3,[r3] ;prendo la dimensione dell'array


                while :

                        cmp r3,#0x0

                        beq stop

                        ldr r9,[r7] ;valore i-esimo dell'array
                        str r9,[r8,r1]
                        add r7,r7,#0x4 ;incremento il puntatore dell'array
                        add r1,r1,#0x4 ;incremento l'offset
                        sub r3,r3,#0x1 ;decremento il ciclo

                        b while

                stop :  
                        pop{r3,r7,r8,lr} ;ripristino i registri
                        mov pc,lr ;sposto nel program counter il valore del link register cosi da proseguire l'esecuzione nel main









 





















