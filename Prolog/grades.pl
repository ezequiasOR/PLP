grades(N1,N2,N3,R):- Mean is (N1+N2+N3)/3,
					classify(Mean,R).

classify(M,"Aprovado"):- M >= 7.
classify(M,"Reprovado"):- M < 4.
classify(_,"Final").

main:- read(N1),
	read(N2),
	read(N3),
	grades(N1,N2,N3,R),
	write(R), nl, halt.
