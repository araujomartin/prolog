pertenece(X,[X|_]):-!.

pertenece(X,[_|Y]):-
    pertenece(X,Y).
