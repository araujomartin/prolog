% -interseccion([[q,u,e,n],[1,2,e,n][a,e,b,c,n]],[e,n]).
% True
% ?- interseccion([[q,u,e,n],[1,2,e,n][a,e,b,c,n]],X).
% X=[e,n];
% False;

pertenece(X,[X|_]):-!.

pertenece(X,[_|Y]):-
    pertenece(X,Y).

perteneceLista(X,[Y]):-
    pertenece(X,Y).

perteneceLista(X,[Y|I]):-
    pertenece(X,Y),
    perteneceLista(X,I).

interseccion([],[]).
interseccion([[]|_],[]).

interseccion([[C|Cs]|R],[C|I]):-
    perteneceLista(C,R),
    interseccion([Cs|R],I).

interseccion([[C|Cs]|R],I):-
    not(perteneceLista(C,R)),
    interseccion([Cs|R],I).

