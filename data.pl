myAsm(free6pm(a)).
myAsm(free8am(a)).
myAsm(free6pm(b)).
myAsm(free8am(b)).
myAsm(child(a)).
myAsm(sports(b)).
myAsm(overweight(b)).
myAsm(not_get6pm(a)).
myAsm(not_get8am(a)).
myAsm(not_get6pm(b)).
myAsm(not_get8am(b)).

contrary(free6pm(a),not_free6pm(a)).
contrary(free8am(a),not_free8am(a)).
contrary(free6pm(b),not_free6pm(b)).
contrary(free8am(b),not_free8am(b)).
contrary(child(a),not_child(a)).
contrary(sports(b),not_sports(b)).
contrary(overweight(b),not_overweight(b)).
contrary(not_get6pm(a),get6pm(a)).
contrary(not_get8am(a),get8am(a)).
contrary(not_get6pm(b),get6pm(b)).
contrary(not_get8am(b),get8am(b)).

myRule(get6pm(a),[free6pm(a),not_get8am(a),not_get6pm(b)]).
myRule(get8am(a),[free8am(a),not_get6pm(a),not_get8am(b)]).
myRule(get6pm(b),[free6pm(b),not_get8am(b),not_get6pm(a)]).
myRule(get8am(b),[free8am(b),not_get6pm(b),not_get8am(a)]).
myRule(not_free8am(a),[child(a)]).
myRule(not_free6pm(b),[sports(b)]).
myRule(not_sports(b),[overweight(b)]).
