/* predicat care daca o multime este submultime a
   unei multimi date */
domains
	nume_lista=nume*
	nume=integer
predicates
	subliste(nume_lista,nume_lista)
	intersectie(nume_lista,nume_lista,nume_lista)
	membru(nume,nume_lista)
clauses
	membru(_,[]):-fail.
	membru(X,[X|_]).
	membru(X,[_|T]):-membru(X,T).
	subliste(M,L):-intersectie(M,L,M).
	intersectie([],_,[]).
	intersectie([H|T],M,[H|N]):- membru(H,M),intersectie(T,M,N).
	intersectie([_|T],M,N):-intersectie(T,M,N).

