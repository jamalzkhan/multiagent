/*
argument((C,X)) :- myAsm(C) , X = [C].
argument((C,X)) :- myRule(C, []) , X = [].
argument((C,X)) :- myRule(C, L1) , expand(L1,X).

expand([],[]).
expand([H|T],R1) :- myAsm(H) , expand(T,R2) , R1 = [H|R2].
expand([H|T],R1) :- myRule(H,L) , append(L,T,R2) , expand(R2,R1).
*/

argument((C, X)) :- myAsm(C), X=[C].
argument((C, [])) :- myRule(C,[]).
argument((C, X)) :- myRule(C, LS), iterate(LS, X).

iterate([], []).
iterate([L|LS], [X|XS]) :- myAsm(L), X=L, iterate(LS, XS).
iterate([L|LS], XS) :- myRule(L, YS), append(LS, YS, LS2), iterate(LS2, XS).
