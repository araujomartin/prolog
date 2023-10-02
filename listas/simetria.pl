concatenar([],B,B).

concatenar([A|As],B,[A|C]):-
    concatenar(As,B,C).

pertenece(X,[X|_]):-!.

pertenece(X,[_|Y]):-
    pertenece(X,Y).

invertir([X],[X]):-!.

invertir([X|M],Z):-
    invertir(M,S),
    concatenar(S,[X],Z).

primerElemento([X],X):-
    atomic(X),!.

primerElemento([X|_],X):-!.

eliminarElemento(E,[E|As],As):-!.

eliminarElemento(E,[A|As],[A|R]):-
    E\=A,
    pertenece(E,As),
    eliminarElemento(E,As,R).

eliminarElemento(E,[A|As],[A|As]):-
    E\=A,
    not(pertenece(E,As)).

sublistaE(E,[E|Xs],Xs).

sublistaE(E,[A|Xs],R):-
    E\=A,
    sublistaE(E,Xs,R).

ultimoElemento(L,E):-
    invertir(L,I),
    primerElemento(I,E).

simetria(A,B,R):-
    ultimoElemento(A,UA),
    eliminarElemento(UA,A,L),
    sublistaE(UA,B,SB),
    concatenar(L,SB,R).