domains
	lista = element*
	element = integer
	
predicates
        con_cat(lista,lista,lista).
        
clauses
        con_cat([],L,L).
	con_cat([X|L1],L2,[X|L3]):- con_cat(L1,L2,L3).
