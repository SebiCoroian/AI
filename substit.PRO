/* predicat care substituie toate aparitiile unui 
   element prin alt element */
domains
	nume_lista=integer*
	nume=integer
predicates
	substituie(nume,nume,nume_lista,nume_lista)
clauses
	substituie(_,_,[],[]).
	substituie(X,Y,[X|L],[Y|M]):- substituie(X,Y,L,M),!.
	substituie(X,Y,[H|L],[H|M]):- substituie(X,Y,L,M).
