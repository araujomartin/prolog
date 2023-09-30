% ?- subconjunto(L,[a,b]).
% L = [a, b] ;
% L = [a] ;
% L = [b] ;
% L = [] ;
% No

subconjunto([],[]).

subconjunto([A|As],[A|C]):-
    subconjunto(As,C).

subconjunto(A,[_|C]):-
    subconjunto(A,C).
