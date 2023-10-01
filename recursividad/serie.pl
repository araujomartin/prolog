factorial(0,1):-!.
factorial(1,1):-!.

factorial(N,R):-
    N>0,
    N1 is N-1,
    factorial(N1,R1),
    R is R1*N.

serie(0,1):-!.

serie(N,R):-
    factorial(N,R1),
    N1 is N-1,
    serie(N1,R2),
    R is (1/R1)+R2.
