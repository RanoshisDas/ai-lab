max_val(X,Y,M):-X>Y,M is X;X=<Y,M is Y.
min_val(X,Y,M):-X<Y,M is X;X>=Y,M is Y.


checker(X1,Y1,X2,Y2):-X1==X2,write('Point are vartical'),!;
                       Y1==Y2,write('Point are horizontal'),!;
                       write('point are oblique').
