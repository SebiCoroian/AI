/* predicat care determina intersectia a 2 multimi */
domains
	nume_lista=nume*
	nume=integer
predicates
	intersectie(nume_lista,nume_lista,nume_lista)
	membru(nume,nume_lista)
clauses
	intersectie([],_,[]).
	intersectie([L|T],M,[L|N]):- membru(L,M),!,intersectie(T,M,N).
	intersectie([_|T],M,N):-intersectie(T,M,N).
	membru(X,[X|_]).
	membru(X,[_|T]):-membru(X,T).
