removeAll(_,[],[]).
removeAll(X,[X|T],L):- removeAll(X,T,L).
removeAll(X,[H,T],[H|T1]):- X \= H, removeAll(X,T,T1).