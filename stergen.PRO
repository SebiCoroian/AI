/* predicat care elimina elementul de pe pozitia
   n a unei liste */
domains
	nume_lista=integer*
	nume=integer
predicates
	delete(nume,nume_lista,nume_lista)
clauses
	delete(0,L,L):-!.
	delete(1,[_|T],T):-!.
	delete(N,[H|T1],[H|T2]):-N1=N-1,delete(N1,T1,T2).
