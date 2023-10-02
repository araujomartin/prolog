posicion_n([],_,[]).
posicion_n([F|_],1,F).

posicion_n([_|Fs],N,R):-
    N>1,
    N1 is N-1,
    posicion_n(Fs,N1,R).