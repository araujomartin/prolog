longitud([],0):-!.

longitud([_|Xs],R):-
    longitud(Xs,R1),
    R is R1+1.
