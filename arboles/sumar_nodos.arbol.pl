% Suma de nodos arbol m-ario

% suma([1,[2,[7],[4]],[9]],S).
% S=23

suma([],0).

suma([C],C):-
    atomic(C),!. % Si la lista tiene 1 elemento y es atómico agregó corte para que no unifique con el predicado de abajo

suma([C|H],R):-
    atomic(C),
    integer(C),
    suma(H,R1),
    R is C+R1.

suma([C|H],R):-
    not(atomic(C)),
    suma(C,R1),
    suma(H,R2),
    R is R1+R2.
