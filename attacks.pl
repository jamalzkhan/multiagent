%attacks((C1,X1),(C2,X2)) :- argument((C1,X1)) , argument((C2,X2)) ,
%                            ( contrary(C2,C2) ; contrary(C3,C1) , member(C3,X2) ).

attacks((CA,XA),(CB,XB)) :-
	argument((CA,XA)), argument((CB,XB)),
	member(X, XB), contrary(X, CA).
