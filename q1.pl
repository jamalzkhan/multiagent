
argument(a).
argument(b).
argument(c).
argument(d).

attacks(a,a).
attacks(a,b).
attacks(b,a).
attacks(c,d).
attacks(d,c).

admissible(Y) :- not(attacks(Y,Y)), (not(attacks(X,Y)); (attacks(Y,Z), X==Z)).

grounded(Z) :- argument(Z), forall((argument(X)), (\+(attacks(X,Z));(attacks(Y,X), Y\=Z, Y\=X, grounded(Y)))).
