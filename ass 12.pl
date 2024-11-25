graph(a,b).
graph(a,c).
graph(a,d).
graph(b,c).
graph(c,d).
graph(d,b).
graph(f,b).

is_connected(A,B):-path(A,B,[]).
path(A,B,V):-graph(A,X),not(member(X,V)),(B=X; path(X,B,[A|V])).
