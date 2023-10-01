% [[a0, 0],[a1, 1] ... [an n]]

% -polimult ([[2, 2],[3, 1]],[[1, 0],[1, 1],[1, 2]],PM).
% PM=[[3, 1],[5, 2],[5, 3],[2 4]]

% multiplicarPolinomio(P1,P2,R):-

multiplicarPolinomio(P1,P2,M):-
    multiplicar(P1,P2,R),
    sumarResto(R,M).

sumarResto([P1],P1).

sumarResto([P1,P2|Ps],S):-
    suma(P1,P2,R),
    sumarResto([R|Ps],S).

suma([],P2,P2).
suma([[N,X]|R],P2,S):-
    sumaCabeza([N,X],P2,S1,P2s), % Suma y elimina coincidencia
    suma(R,P2s,S2),
    append([S1],S2,S).

sumaCabeza([N,X],[],[N,X],[]).

sumaCabeza([N,X],[[N2,X]|R],[S,X],R1):-
    sumaCabeza([N,X],R,[S1,X],R1),
    S is N2+S1.

sumaCabeza([N,X],[[N2,X2]|R],[S,X],[[N2,X2]|R1]):-
    X\=X2,
    sumaCabeza([N,X],R,[S,X],R1).


multiplicar([],_,[]).

multiplicar([[N,X]|R],P2,[M|M1]):-
    multiplicarCabeza([N,X],P2,M),
    multiplicar(R,P2,M1).


multiplicarCabeza([_,_],[],[]).

multiplicarCabeza([N,X],[[N2,X2]|R2],[[MN,MX]|M]):-
    MN is N*N2,
    MX is X+X2,
    multiplicarCabeza([N,X],R2,M).
