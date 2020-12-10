grades(N1,N2,N3,R):- Mean is (N1+N2+N3)/3,
					(Mean >= 7 -> R = "Aprovado" ; (Mean < 4 -> R = "Reprovado" ; R = "Final")).

main:- read(N1),
	read(N2),
	read(N3),
	grades(N1,N2,N3,R),
	write(R), nl, halt.
