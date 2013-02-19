attacks((CA,XA),(CB,XB)) :-
	argument((CA,XA)), argument((CB,XB)),
	member(X, XB), contrary(X, CA).
