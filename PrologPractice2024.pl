%Q1
lastElement([S], S):-!.
lastElement([_|T], S):- lastElement(T,S).
%Q2
secondLast([S], S):- !.
secondLast([S,_], S):-!.
secondLast([_|T], S):- secondLast(T,S).
%Q3
kElement(1,[S|_], S):-!.
kElement(N, [_|T], S):- N > 1, N1 is N - 1, kElement(N1, T, S).
%Q4
numberOfElement([],0):-!.
numberOfElement([H|T], S):- numberOfElement(T, Temp), S is Temp + 1.