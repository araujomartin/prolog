inOrden([],[]).

inOrden([H],[H]):-!.

inOrden([R,HI,HD],O):-
    inOrden(HI,N),
    inOrden(HD,N2),
    append(N,[R|N2],O).

inOrden([R,H],O):-
    inOrden(H,N),
    append(N,[R],O).
