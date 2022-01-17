/* predicat care inverseaza elementele unei liste */
domains
	nume_lista=integer*
	nume=integer
predicates
	append(nume_lista,nume_lista,nume_lista)
	inversare(nume_lista,nume_lista)
clauses
	inversare([],[]).
	inversare([X|T],L):- inversare(T,M),append(M,[X],L).
	append([],L,L).
	append([H|T1],L,[H|T2]):-append(T1,L,T2).
