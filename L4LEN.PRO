domains
	list = integer*
predicates
	lungime(list, integer)
clauses
	lungime([], 1).
	lungime([S|T],L):-
		lungime(T,TailL),
		L = TailL * S.