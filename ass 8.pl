is_mem(X,[X|_]):-!.
is_mem(X,[_|L1]):- is_mem(X,L1).
len([],0).
len([_|L],N):-len(L,N1),N is N1+1.
insert(X,L,[X|L]).
delete(_,[],[]).
delete(X,[X|L],L):-!.
delete(X,[Y|L],[Y|L1]):-delete(X,L,L1).
