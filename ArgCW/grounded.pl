admissible(Y) :- \+(attacks(Y,Y)), (\+(attacks(X,Y)); (attacks(Y,Z), X==Z)).

forall(X,Y) :- \+ (X,\+Y).

one_no_attacks :- argument(X), \+(attacks(_,X)).

grounded(Z) :-	one_no_attacks, !, argument(Z), forall((argument(X)), (\+(attacks(X,Z)); (attacks(Y,X), Y\=Z, Y\=X, grounded(Y)))).
grounded(Z) :-	Z = [].
