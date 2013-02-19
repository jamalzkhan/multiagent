admissible(Y) :- not(att(Y,Y)), (not(att(X,Y)); (att(Y,Z), X==Z)).

%forall(X,Y) :- \+(X,\+Y).

one_no_att :- arg(X), not(att(_,X)).

grounded(Z) :-	one_no_att, !, arg(Z), forall((arg(X)), (\+(att(X,Z)); (att(Y,X), Y\=Z, Y\=X, grounded(Y)))).
grounded(Z) :-	Z = [].

%defence([],R)		:-	findall(X, (arg(X), \+(att(_,X))), R).
%defence([H|T],CF,R)	:-	findall(X, (arg(X), att(Y,X), att(H,Y), X\=Y,X\=H), L1),
%						union(T,L1,L2), (L2==[] -> union([H],CF,R); (union([H],CF,Rap), defence(L2,Rap,R))).


