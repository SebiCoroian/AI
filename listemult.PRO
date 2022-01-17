/* predicat care transforma o lista intr-o multime*/
domains
	nume_lista=nume*
	nume=integer
predicates
	transf(nume_lista,nume_lista)
	membru(nume,nume_lista)
clauses
	transf([],[]).
	transf([H|T],X):- membru(H,T),!,transf(T,X).
	transf([H|T],[H|M]):-transf(T,M).
	membru(X,[X|_]).
	membru(X,[_|T]):-membru(X,T).
