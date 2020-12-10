remove([_|T], 0, T).
remove([H|T], IDX, [H|T1]):- IDX1 is IDX - 1, remove(T, IDX1, T1).

main:- read(N1),
	read(IDX),
	remove(N1,IDX,R),
	write(R), nl, halt.