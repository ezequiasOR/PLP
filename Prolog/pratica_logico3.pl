divide(L, R1, R2):- length(L, N), H is N - N // 2, length(R2, H), append(R1, R2, L).

sum([],0).
sum([H|T],R):- sum(T,R1), R is R1+H.

bigger(X1,X2, R):- X1 < X2, R = "direita".
bigger(_,_, "esquerda").

main:- read(N1),
	divide(N1,R1,R2),
	sum(R1, S1),
	sum(R2, S2),
	bigger(S1,S2,R),
	write(R), nl, halt.