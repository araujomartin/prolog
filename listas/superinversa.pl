% ?-esSuperInversa([[8,4],[1,5,9],[7,2]],I).
% I=[[2,7],[9,5,1],[4,8]];

concatenar([],B,B).

concatenar([A|As],B,[A|C]):-
    concatenar(As,B,C).

inversa([],[]):-!.
inversa([A],[A]):-atomic(A),!.

inversa([A|As],R):-
    inversa(As,R1),
    concatenar(R1,[A],R).

esSuperInversa([],[]).

esSuperInversa([A|As],Z):-
    inversa(A,R),
    esSuperInversa(As,Z1),
    concatenar(Z1,[R],Z).

% Otra resolucion:

superI([],[]).

superI([C|Cs],I):-
    atomic(C),
    superI(Cs,I1),
    append(I1,[C],I).

superI([C|Cs],I):-
    not(atomic(C)),
    superI(C,I2),
    superI(Cs,I1),
    append(I1,[I2],I).
