verify(N1,N2,N3,N4,R):- N is N2 + N3, M is N2 + 1,
	((N1 > N2, N1 < N3, N4 =:= N, N1 mod 2 =\= 0, N1 =:= M -> R = "Sim");
	 (R = "Nao")).

main:- read(N1),
	read(N2),
	read(N3),
	read(N4),
	verify(N1,N2,N3,N4,R),
	write(R), nl, halt.
