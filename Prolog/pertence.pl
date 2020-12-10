pertence(X,Y):- Y=[X|_].
pertence(X,Y):- Y=[_|Z], pertence(X,Z).

pertence2(X,[X|_]).
pertence2(X,[_|Z]):- pertence2(X,Z).