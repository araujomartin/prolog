concatenar([],B,B).

concatenar([A|As],B,[A|R]):-
    concatenar(As,B,R).

aToG([],[]).

aToG([X],[]):-
    atom(X),!.

aToG([N|H],[[N|Hs]|R]):-
    atom(N),
    hijosNodo(H,Hs),
    aToG(H,R).

aToG([N|H],R):-
    not(atom(N)),
    aToG(N,R1),
    aToG(H,R2),
    concatenar(R1,R2,R).

hijosNodo([],[]).    

hijosNodo([[H|_]|RH],[H|Hs]):-
    hijosNodo(RH,Hs).
