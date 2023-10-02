% Escribir un predicado binario, en prolog, inversaSinRepetidos(Xs,Ys), donde Ys es la lista Xs invertida sin elementos repetidos. 
% Xs puede ser una lista de listas

% ?.-inversaSinRepetidos([a,v,a,[c,d,d],1,3,4,],[4,3,1,[d,c],a,v]).

% true

% ?.-?.-inversaSinRepetidos([a,v,a,,c,d,d,1,3,4,],X).

% X= [4,3,1,d,c,a,v]
concatenar([],B,B).

concatenar([A|As],B,[A|C]):-
    concatenar(As,B,C).

invertir([X],[X]):-!.

invertir([X|M],Z):-
    not(atomic(X)),
    invertir(X,I1),
    invertir(M,I2),
    concatenar(I2,[I1],Z).

invertir([X|M],Z):-
    atomic(X),
    invertir(M,S),
    concatenar(S,[X],Z).

pertenece(X,[X|_]):-!.

pertenece(X,[_|Y]):-
    pertenece(X,Y).

eliminarRepetidos([],[]):-!.

eliminarRepetidos([X|Xs],R):-
    atomic(X),
    pertenece(X,Xs),
    eliminarRepetidos(Xs,R).

eliminarRepetidos([X|Xs],[X|R]):-
    atomic(X),
    not(pertenece(X,Xs)),
    eliminarRepetidos(Xs,R).

eliminarRepetidos([X|Xs],[R1|R2]):-
    not(atomic(X)),
    eliminarRepetidos(X,R1),
    eliminarRepetidos(Xs,R2).
    

inversaSinRepetidos(X,R):-
    eliminarRepetidos(X,Y),
    invertir(Y,R).