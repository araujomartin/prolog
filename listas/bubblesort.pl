% [4,3,2,7,4,1]


% B= [3,2,4,4,1,7]
% L= [3,2,4,4,1]
% Last=7

% B=[2,3,4,1,4]
% L=[2,3,4,1]
% Last=4

% B=[2,3,1,4]
% L=[2,3,1]
% Last=4

% B=[2,1,3]
% L=[2,1]
% Last=3 append([1,2],[Last=3],R=[1,2,3])

% B=[1,2]
% L=[1]
% Last=2 append([1],[Last=2],R=[1,2])

% B=[1]
% L=[1]

writeB(A,R):-
    bubblesort(A,R),
    writeln(R).

bubblesort([],[]).

bubblesort([A],[A]):-
    atomic(A),!.

bubblesort([A|As],R):-
    biggerToLast([A|As],B),
    deleteLast(B,L,Last),
    bubblesort(L,Rs),
    append(Rs,[Last],R).


deleteLast([],[],_).
deleteLast([A],[],A):-
    atomic(A),!.

deleteLast([A|As],[A|Rs],R):-
    deleteLast(As,Rs,R).


biggerToLast([A],[A]):-!.

biggerToLast([A,B|R],[B|Rs]):-
    A>B,
    biggerToLast([A|R],Rs).

biggerToLast([A,B|R],[A|Rs]):-
    A=<B,
    biggerToLast([B|R],Rs).

