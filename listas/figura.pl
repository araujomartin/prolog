
longitud([],0).

longitud([_|Ls],N):-
    longitud(Ls,N1),
    N is 1+N1.

longitudFilas([],_).

longitudFilas([M|Ms],N):-
    longitud(M,N),
    longitudFilas(Ms,N).
    
figura([X|Xs],cuadrado):-
    longitud(X,N),
    longitud([X|Xs],N),
    longitudFilas([X|Xs],N).

figura([X|Xs],rectangulo):-
    longitud(X,N),
    longitud([X|Xs],N2),
    longitudFilas([X|Xs],N),
    ((N2>1,N2<N);(N2>1,N2>N)).

figura([X|Xs],linea):-
    longitud(X,_),
    longitud([X|Xs],1).

figura([X|Xs],triangulo):-
    longitud(X,N),
    longitud([X|Xs],N2),
    N>1,N2>1,
    longitudEscalonada([X|Xs],N).


longitudEscalonada([],0).

longitudEscalonada([X|Xs],N):-
    longitud(X,N),
    N1 is N-1,
    longitudEscalonada(Xs,N1).