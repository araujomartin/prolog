% ?-sumaDiagonal([[1,2,3],[1,3,5,][4,4,4]],SD).
% SD=[4,6,8] 
longitud([],0):-!.

longitud([_|Xs],R):-
    longitud(Xs,R1),
    R is R1+1.

longitudFilas([],_).

longitudFilas([M|Ms],N):-
    longitud(M,N),
    longitudFilas(Ms,N).

posicion_n([F|_],1,F).
posicion_n([_|Fs],N,R):-
    N>1,
    N1 is N-1,
    posicion_n(Fs,N1,R).

diagonalPrincipal([],_,[]).

diagonalPrincipal([C|R],N,[D|D1]):-
    N>0,
    posicion_n(C,N,D),
    N1 is N+1,
    diagonalPrincipal(R,N1,D1).

diagonalInvertida([],0,[]).
diagonalInvertida([C|R],N,[D|D1]):-
    N>0,
    posicion_n(C,N,D),
    N1 is N-1,
    diagonalInvertida(R,N1,D1).

sumaLista([],[],[]).
sumaLista([A|As],[B|Bs],[R|R1]):-
    R is A+B,
    sumaLista(As,Bs,R1).

sumadiagonal([],[]).

sumaDiagonal([F|Fs],S):-
    longitud(F,N),
    longitudFilas([F|Fs],N),
    diagonalPrincipal([F|Fs],1,D1),
    diagonalInvertida([F|Fs],N,D2),
    sumaLista(D1,D2,S).
