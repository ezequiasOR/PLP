main:- read(N),
		N < 10,
		loop(N), halt.

loop(0).
loop(N):- write("Number: "),
		write(N),nl,
		M is N - 1,
		loop(M).