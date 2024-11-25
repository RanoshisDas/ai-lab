fact(1,0).
fact(A,N):-N>0,N1 is N-1,fact(A1,N1),A is A1*N.

rec(A,B,N):-N>0,N1 is N-1,T is B,T1 is A+B,write(A->' '),rec(T,T1,N1).
