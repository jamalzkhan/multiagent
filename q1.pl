arg(a).
arg(b).
arg(c).
arg(d).
arg(e).
arg(f).
arg(g).

att(b,a).
att(c,b).
att(d,c).
att(e,d).
att(f,g).
att(g,a).
att(g,f).

admissible(Y) :- not(att(Y,Y)), (not(att(X,Y)); (att(Y,Z), X==Z)).

%forall(X,Y) :- \+(X,\+Y).

one_no_att :- arg(X), not(att(_,X)).

grounded(Z) :-	one_no_att, !, arg(Z), forall((arg(X)), (\+(att(X,Z)); (att(Y,X), Y\=Z, Y\=X, grounded(Y)))).
grounded(Z) :-	Z = [].


