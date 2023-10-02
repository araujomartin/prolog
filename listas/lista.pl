lista([]):-!.
lista([X|Xs]):-
    lista(Xs).