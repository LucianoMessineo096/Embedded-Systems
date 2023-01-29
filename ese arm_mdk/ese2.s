/*
    Scrivere una procedura che inserisca, in un vettore di lunghezza n, la sequenza
    nei primi n numeri naturali a partire dal valore 0. Indirizzo base e lunghezza
    del vettore vengono forniti, rispettivamente, attraverso i registri r0 e r1.

    while count<n then

        array[count]=count

        ++count
    end

*/

//si assuma che la lunghezza dell'array sia pari a 5

.global _start:


    dcd array 0,0,0,0,0;

    mov r1,#array;

    bl _insert

    loop:
            b loop;

_insert:

    mov r2,#0x5;

    while:

        cmp r2,#0x0;

        beq stop

        ldr r3,[r1];
        add r3,r2;
        str r3,[r1];

        add r1,#0x4;
        add r2,#0x1;

    stop:



            


