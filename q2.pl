%===================Q2========================

myAsm(a).
myAsm(b).
myAsm(c).
myAsm(d).
myAsm(e).
myAsm(f).

contrary(a,r).
contrary(b,s).
contrary(c,t).
myRule(p,[a, r, d, e]).
myRule(q,[f]).
myRule(r,[b,c, q]).


%Case for argument(a, [b, c, a])
argument((C, [X])) :- myAsm(C), C == X.
argument((C, [])) :- myRule(C,[]).
argument((C, X)) :- myRule(C, LS), iterate(LS, X).

iterate([], []).
iterate([L|LS], [X|XS]) :- myAsm(X), X==L, iterate(LS, XS).
iterate([L|LS], XS) :- myRule(L, YS), append(LS, YS, LS2), iterate(LS2, XS).
