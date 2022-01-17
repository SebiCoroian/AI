/* predicat care insereaza un element pe pozitia
   n a unei liste */
domains
	nume_lista=integer*
	nume=integer
predicates
	insert(nume,nume,nume_lista,nume_lista)
clauses
	insert(0,_,L,L).
	insert(1,X,L,[X|L]).
	insert(N,X,[H|L1],[H|L2]):- N1=N-1,insert(N1,X,L1,L2),!.
