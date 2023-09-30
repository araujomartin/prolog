% Mismo que append/3

concatenar([],B,B).

concatenar([A|As],B,[A|C]):-
    concatenar(As,B,C).
