%===================Q2========================

myAsm(a).
myAsm(b).
contrary(a,p).
myRule(p,[b]).
myRule(p,[]).

argument((C, X)) :- myAsm(C), X=[C].
argument((C, [])) :- myRule(C,[]).
argument((C, X)) :- myRule(C, LS), iterate(LS, X).

iterate([], []).
iterate([L|LS], [X|XS]) :- myAsm(L), X=L, iterate(LS, XS).
iterate([L|LS], XS) :- myRule(L, YS), append(LS, YS, LS2), iterate(LS2, XS).

attacks((CA,XA),(CB,XB)) :-
	argument((CA,XA)), argument((CB,XB)),
	member(X, XB), contrary(X, CA).
