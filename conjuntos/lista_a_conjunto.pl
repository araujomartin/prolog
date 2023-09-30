pertenece(X,[X|_]):-!.

pertenece(X,[_|Y]):-
    pertenece(X,Y).

lista_a_conjunto([],[]):-!.
lista_a_conjunto([A],[A]):-atomic(A),!.

lista_a_conjunto([A|As],[A|C]):-
    not(pertenece(A,As)),
    lista_a_conjunto(As,C).

lista_a_conjunto([A|As],C):-
    pertenece(A,As),
    lista_a_conjunto(As,C).
