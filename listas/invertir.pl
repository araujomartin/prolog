concatenar([],B,B).

concatenar([A|As],B,[A|C]):-
    concatenar(As,B,C).

invertir([X],[X]):-!.

invertir([X|M],Z):-
    invertir(M,S),
    concatenar(S,[X],Z).
