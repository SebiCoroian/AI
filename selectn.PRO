/* predicat care selecteaza elementul de pe pozitia
   n a unei liste */
domains
	nume_lista=integer*
	nume=integer
predicates
	select(nume,nume_lista,nume)
clauses
	select(1,[X|_],X):-!.
	select(N,[_|T1],T2):-N1=N-1,select(N1,T1,T2).
