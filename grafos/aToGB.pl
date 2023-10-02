concatenar([],B,B).

concatenar([A|As],B,[A|R]):-
    concatenar(As,B,R).

concatenarHijos(_,[],[]).
concatenarHijos(N,[H|Hs],[[N,H]|R]):-
    concatenarHijos(N,Hs,R).


aToGB([N|H],R):-
    aToG([N|H],X,G),
    writeln(X),
    writeln(G),
    concatenar(X,G,R).


aToG([],[],[]).

aToG([X],[X],[]):-
    atom(X),!.

aToG([N|H],[N|Ns],G):-
    atom(N),
    hijosNodo(H,Hs),
    concatenarHijos(N,Hs,B),
    aToG(H,Ns,R),
    concatenar(B,R,G).

aToG([N|H],Ns,R):-
    not(atom(N)),
    aToG(N,N1,R1),
    aToG(H,N2,R2),
    concatenar(N1,N2,Ns),
    concatenar(R1,R2,R).

hijosNodo([],[]).    

hijosNodo([[H|_]|RH],[H|Hs]):-
    hijosNodo(RH,Hs).