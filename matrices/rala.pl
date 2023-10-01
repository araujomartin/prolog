matrizRala(M,MR):-
    rala(M,MR,1,1).

rala([],[],_,_).

rala([[E|Es]|R],SR,X,Y):-
    E=0,
    X1 is X+1,
    rala([Es|R],SR,X1,Y).

rala([[E|Es]|R],[[X,Y,E]|SR],X,Y):-
    E\=0,
    X1 is X+1,
    rala([Es|R],SR,X1,Y).

rala([[]|R],SR,_,Y):-
    Y1 is Y+1,
    rala(R,SR,1,Y1).

