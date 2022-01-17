/* predicat care determina reuniunea a 2 multimi*/
domains
	nume_lista=nume*
	nume=integer
predicates
	reuniune(nume_lista,nume_lista,nume_lista)
	membru(nume,nume_lista)
clauses
	reuniune([],L,L).
	reuniune([L|T],M,N):- membru(L,M),!,reuniune(T,M,N).
	reuniune([L|T],M,[L|N]):-reuniune(T,M,N).
	membru(X,[X|_]).
	membru(X,[_|T]):-membru(X,T).
