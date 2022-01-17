domains
	lista = element*
	element = integer
predicates
        delete(element,lista,lista).      
clauses
        delete(_,[],[]).
	delete(X,[X|L],M):- delete(X,L,M).
	delete(X,[Y|L],[Y|M]):-not(X=Y),delete(X,L,M).
