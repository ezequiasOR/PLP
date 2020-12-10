divide(_,[],[],[]).
divide(M,[H|T],[H|T1],R2):- H =< M, divide(M,T,T1,R2).
divide(M,[H|T],R1,[H|T2]):- H > M, divide(M,T,R1,T2).