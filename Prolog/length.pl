length2([],0).
length2([_|T],C):- length2(T,C1), C is C1+1.