boy(a).
boy(b).
boy(c).
boy(f).
girl(d).
girl(e).
girl(z).
parent(a,b).
parent(z,b).
parent(a,c).
parent(z,c).
parent(c,e).
parent(d,e).
parent(b,f).
brother(X,Y):-parent(Z,X),parent(Z,Y),boy(X),X\==Y.
sister(X,Y):-parent(Z,X),parent(Z,Y),girl(X),X\==Y.
mother(X,Y):-parent(X,Y),girl(X).
father(X,Y):-parent(X,Y),boy(X).
wife(X,Y):-mother(X,Z),father(Y,Z).
husband(X,Y):-father(X,Z),mother(Y,Z).
grandfather(X,Y):-father(Z,Y),father(X,Z);mother(A,Y),father(X,A).
grandmother(X,Y):-grandfather(Z,Y),wife(X,Z).
cousin(X,Y):-parent(A,X),parent(B,Y),brother(A,B);parent(A,X),parent(B,Y),sister(A,B).
uncle(X,Y):-parent(Z,Y),brother(X,Z).
has_child(X):-parent(X,_).