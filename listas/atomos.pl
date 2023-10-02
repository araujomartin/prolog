% Escribir un predicado en SWI-Prolog que relacione una lista formada por átomos y sublistas, 
% con la cantidad de átomos de la misma. La cantidad de átomos de una lista es la suma de la cantidad de 
% elementos atómicos que contiene más los  átomos de cada una de las sublistas que la conforman.  Por ej.:

% ?.- atomos([[1,3], a, b, [[c]], d], A).

% A=6

% ?.- atomos([[1,3], a, b, [[c]], d], 6).

% true

atomos([],0):-!.
atomos([X],1):-
    atomic(X),!.

atomos([X|Xs],C):-
    atomic(X),
    atomos(Xs,C1),
    C is C1+1.

atomos([X|Xs],C):-
    not(atomic(X)),
    atomos(X,C1),
    atomos(Xs,C2),
    C is C1+C2.

