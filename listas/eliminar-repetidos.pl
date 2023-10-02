pertenece(X,[X|_]):-!.

pertenece(X,[_|Y]):-
    pertenece(X,Y).

eliminarRepetidos([],[]):-!.
eliminarRepetidos([X|Xs],R):-
    pertenece(X,Xs),
    eliminarRepetidos(Xs,R).
    
eliminarRepetidos([X|Xs],[X|R]):-
    not(pertenece(X,Xs)),
    eliminarRepetidos(Xs,R).

