concatenar([],B,B).

concatenar([A|As],[A|C]):-
    concatenar(As,C).
