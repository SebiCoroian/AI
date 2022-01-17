/* predicat care intoarce suma elem. unei liste */
domains
	nume_lista=integer*
	nume=integer
predicates
	sumalista(nume,nume_lista)
clauses
	sumalista(X,[X]).
	sumalista(N,[P|M]):- sumalista(N1,M),N=N1+P.
