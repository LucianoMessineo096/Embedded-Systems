/*

1. Scrivere un programma che carichi un numero in una variabile e ne copi il valore nella cella di memoria successiva a quella in cui si trova. 
Usare i registri per puntare alle celle di memoria.

2.Scrivere un programma che carichi due valori numerici in due variabili che occupino due celle di memoria adiacenti, 
e successivamente le copi nelle due celle successive, in ordine inverso.

3.Scrivere un programma che, dati due numeri memorizzati in due variabili, li copi in due celle di memoria
 a partire dall’indirizzo 100d (0x64).

4.Scrivere un programma che, dati due numeri memorizzati in due variabili, li copi in due celle di memoria 
a partire dall’indirizzo 100d (0x64) e poi li copi rispettivamente nei registri B e C.

*/


//1

mov r0,#0xa

push{r0}

ldr r1,[sp]


//2
mov r0,#0xffffffff
mov r1,#0xaaaaaaaa
mov r2,#0xffffffff
mov r3,#0xcccccccc

push{r0,r1,r2,r3}

ldr r4,[sp,#0x4]
ldr r5,[sp]
ldr r6,[sp,#0xc]
ldr r7,[sp,0x8]

//2


