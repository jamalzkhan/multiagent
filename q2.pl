%===================Q2========================

myAsm(a).
myAsm(b).
myAsm(c).
contrary(a,r).
contrary(b,s).
contrary(c,t).
myRule(p,[r,a]).
myRule(q,[]).
myRule(r,[b,c]).


%Case for argument(a, [b, c, a])
argument((C, [X])) :- myAsm(C), C == X.
argument((C, [])) :- myRule(C,[]).
argument((C, [X | XS])) :- myRule(C, [Y | _]), myAsm(Y), X == Y, argument(C, XS).

iterate(R, X | XS)

argument((C, [X | XS])) :- myRule(C, [])




%Base case for a claim
argument((C, X)) :- myRule(C, X).
%argument((C, X)) :- 
