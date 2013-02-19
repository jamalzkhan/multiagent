argument((C, X)) :- myAsm(C), X=[C].
argument((C, [])) :- myRule(C,[]).
argument((C, X)) :- myRule(C, LS), iterate(LS, X).

iterate([], []).
iterate([L|LS], [X|XS]) :- myAsm(L), X=L, iterate(LS, XS).
iterate([L|LS], XS) :- myRule(L, YS), append(LS, YS, LS2), iterate(LS2, XS).
