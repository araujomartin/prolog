pertenece(X,[X|_]):-!.

pertenece(X,[_|Y]):-
    pertenece(X,Y).

% [1,2,3] [2,7,9,0,3]
% [1,
union([],B,B).

union([A|As],B,[A|R]):-
    not(pertenece(A,B)),
    union(As,B,R).

union([A|As],B,R):-
    pertenece(A,B),
    union(As,B,R).

% [[1,2,3],[2,7,9,0,3],[5,1,g]]

unionConjuntos([C],C).

unionConjuntos([C1,C2|R],Z):-
    union(C1,C2,U),
    unionConjuntos([U|R],Z).


