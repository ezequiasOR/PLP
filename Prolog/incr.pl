incr(X,R):- R is X + 1.

main:- read(X),
	incr(X,R),
	write(R), nl, halt.

:-main.