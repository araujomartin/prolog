% ?-esSerie(120,5,[120,240,720,2880,14400]).
% True

% xj+1 = xj*(2+j)
% ?- esSerie(120,5,S).
% S=[120,240,720,2880,14400];
% False

esSerie(I,N,[I|S]):-
    N1 is N-1,
    serie(I,0,N1,S).

serie(_,N1,N1,[]).

serie(I,J,N,[Xj|S]):-
    J<N,
    J>=0,
    Xj is I*(2+J),
    J1 is J+1,
    serie(Xj,J1,N,S).
