/*predicat care verifica daca o lista este multime*/
domains
	nume_lista=integer*
	nume=integer
predicates
	multime(nume_lista)
	membru(nume,nume_lista)
clauses
	multime([]).
	multime([H|T]):- not(membru(H,T)),multime(T).
	membru(X,[X|_]).
	membru(X,[_|T]):-membru(X,T).
