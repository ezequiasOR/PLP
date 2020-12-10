distance(a,b,23).
distance(a,d,26).
distance(a,e,42).
distance(a,c,43).
distance(a,f,56).
distance(b,e,19).
distance(b,c,20).
distance(b,d,40).
distance(b,f,33).
distance(c,f,19).
distance(c,d,20).
distance(e,f,14).
distance(d,f,30).
distance(_,_,"Caminho impossível").

main:- read(X),
	read(Y),
	distance(X,Y,R),
	write(R), nl, halt.
