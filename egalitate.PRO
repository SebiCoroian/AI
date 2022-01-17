/* predicat care testeaza egalitatea a 2 multimi,
   fara sa faca apel la diferenta lor */
domains
	nume_lista=integer*
	nume=integer
predicates
	eqlist(nume_lista,nume_lista)
	delete(nume,nume_lista,nume_lista)
clauses
	eqlist([],[]).
	eqlist([X|L1],L2):- delete(X,L2,L3),eqlist(L1,L3).
	delete(X,[X|Y],Y).
	delete(X,[Y|L1],[Y|L2]):-delete(X,L1,L2).
