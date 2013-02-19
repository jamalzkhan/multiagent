admissible(Y) :- \+(attacks(Y,Y)), (\+(attacks(X,Y)); (attacks(Y,Z), X==Z)).

forall(X,Y) :- \+ (X,\+Y).

one_no_attacks :- argument(X), \+(attacks(_,X)).

grounded(Z) :-	one_no_attacks, !, argument(Z), forall((argument(X)), (\+(attacks(X,Z)); (attacks(Y,X), Y\=Z, Y\=X, grounded(Y)))).
grounded(Z) :-	Z = [].

%defence([],R)		:-	findall(X, (argument(X), \+(attacks(_,X))), R).
%defence([H|T],CF,R)	:-	findall(X, (argument(X), attacks(Y,X), attacks(H,Y), X\=Y,X\=H), L1),
%						union(T,L1,L2), (L2==[] -> union([H],CF,R); (union([H],CF,Rap), defence(L2,Rap,R))).


