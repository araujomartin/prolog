% Contar cantidad de nodos de un arbol:
% ?- cantidadNodos([a,[b,[d],[e]],[c,[f],[g,[h],[i]]]],X).
% X = 9;
% false.

cantidadNodos([],0).

cantidadNodos([C|H],R):-
    atom(C),
    cantidadNodos(H,R1),
    R is R1+1.

cantidadNodos([C|H],R):-
    not(atom(C)),
    cantidadNodos(C,R1),
    cantidadNodos(H,R2),
    R is R1+R2.
