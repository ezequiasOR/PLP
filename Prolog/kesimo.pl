kesimo([H|_],1,H).
kesimo([_|T],I,R):- I1 is I-1, kesimo(T,I1,R).