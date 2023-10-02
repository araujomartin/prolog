concatenar([],B,B).

concatenar([A|As],B,[A|C]):-
    concatenar(As,B,C).

invertir([X],[X]):-!.

invertir([X|M],Z):-
    invertir(M,S),
    concatenar(S,[X],Z).

primerElemento([Y|_],Y).

primerYultimo([X],X):-!.
primerYultimo([X|Xs],R):-
    invertir(Xs,Y),
    primerElemento(Y,Y1),
    concatenar([X],[Y1],R).