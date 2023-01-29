/* 
Scrivere un programma in linguaggio assemblativo 
che trova il più grande degli elementi di un 
vettore vec memorizzato in memoria principale. Si 
assuma che il vettore abbia almeno un elemento.
Il risultato deve essere stampato sullo standard 
output (video).
*/

.global _start:

    vec dcd  3,2,4,6,1

    mov r1,#vec ; puntatore all'array
    mov r2,#0x5 ; dimensione array

    bl _findMax ; sorting array 



/*
    function: _sort 
    input: vec
    out : sorted vec
*/

_findMax :

    i .req r1
    j .req r2
    dim .req r3
    dim_1 .req r4

    push{r1,r2,lr,sp,pc}

    ldr dim,[r2] ; prendo la dimensione

    sub dim_1,dim,#0x1 

    while : 
 
        cmp i,dim

        beq stop

        while : 

            cmp j,dim_1

            beq stop

            



            b while

        stop

        b while

    stop

    .unreq i
    .unreq j
    .unreq dim




