/* predicat care intoarce diferenta a 2 multimi */
domains
	nume_lista=nume*
	nume=integer
predicates
	diferenta(nume_lista,nume_lista,nume_lista)
	membru(nume,nume_lista)
clauses
	diferenta([],_,[]).
	diferenta([L|T],M,N):- membru(L,M),!,diferenta(T,M,N).
	diferenta([L|T],M,[L|N]):-diferenta(T,M,N).
	membru(X,[X|_]).
	membru(X,[_|T]):-membru(X,T).
