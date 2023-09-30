% ?- quicksort([4,3,2,7,4,1],L).
% L = [1, 2, 3, 4, 4, 7] ;

concatenar([],B,B).

concatenar([A|As],B,[A|C]):-
    concatenar(As,B,C).

quicksort([],[]).

quicksort([A],[A]):-
    atomic(A),!.

quicksort([A|As],R):-
    dividirLista(A,As,Menores,Mayores),!,
    quicksort(Menores,R1),
    quicksort(Mayores,R2),
    concatenar(R1,[A|R2],R).

dividirLista(_,[],[],[]).

dividirLista(A,[B|Bs],[B|Menores],Mayores):-
    A>B,
    dividirLista(A,Bs,Menores,Mayores).

dividirLista(A,[B|Bs],Menores,[B|Mayores]):-
    A=<B,
    dividirLista(A,Bs,Menores,Mayores).
