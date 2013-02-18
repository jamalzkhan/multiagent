argument(a).
argument(b).
argument(c).

attacks(a,b).
attacks(b,c).

admissible(Y) :- not(attacks(Y,Y)), (not(attacks(X,Y)); (attacks(Y,Z), X==Z)).
