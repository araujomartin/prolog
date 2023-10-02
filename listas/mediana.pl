% Escribir un predicado binario, en prolog, mediana(Xs, M), donde Xs es una lista 
% formada por átomos numéricos y M es la mediana de ese grupo de datos. Si se ordenan todos los datos, de menor a mayor, 
% la mediana es el valor que ocupa la posición central. Si el número de datos es par, 
% la mediana es la media aritmética de los dos centrales.

% ?.-mediana([4,3,1,6,7],M).

% M=4

% ?.-mediana([40,33,12,64,78],M).

% M=52

concatenar([],B,B).

concatenar([A|As],B,[A|C]):-
    concatenar(As,B,C).

longitud([],0):-!.

longitud([_|Xs],R):-
    longitud(Xs,R1),
    R is R1+1.

posicion_n([],_,[]).
posicion_n([F|_],1,F).

posicion_n([_|Fs],N,R):-
    N>1,
    N1 is N-1,
    posicion_n(Fs,N1,R).

quicksort([],[]).

quicksort([A],[A]):-
    atomic(A),!.

quicksort([A|As],R):-
    dividirLista(A,As,Menores,Mayores),!,
    quicksort(Menores,R1),
    quicksort(Mayores,R2),
    concatenar(R1,[A|R2],R).

dividirLista(_,[],[],[]).

dividirLista(A,[B|Bs],[B|Menores],Mayores):-
    A>B,
    dividirLista(A,Bs,Menores,Mayores).

dividirLista(A,[B|Bs],Menores,[B|Mayores]):-
    A=<B,
    dividirLista(A,Bs,Menores,Mayores).

mediana(L,M):-
    longitud(L,N),
    0 is N mod 2,
    P is N/2,
    P1 is P+1,
    quicksort(L,LO),
    posicion_n(LO,P,X),
    posicion_n(LO,P1,Y),
    M is (X+Y)/2.

mediana(L,M):-
    longitud(L,N),
    not(0 is N mod 2),
    N1 is (N+1)/2,
    quicksort(L,LO),
    posicion_n(LO,N1,M).

