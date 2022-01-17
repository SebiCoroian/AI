/* predicat care se va satisface daca lista are un
numar par de elemente si va esusa in caz contrar */
domains
	nume_lista=integer*
	nume=integer
predicates
	par(nume_lista)
clauses
	par([]).
	par([_,_|L]):- par(L).
