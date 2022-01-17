/* predicat care determina toate submultimile unei
   multimi data sub forma de lista 
   predicat de forma (i,o) */

domains
	nume_lista=nume*
	nume=integer
predicates
	submul(nume_lista,nume_lista)
clauses
	
	submul([H|T],[H|L]):- submul(T,L).	
	submul([_|T],L):-submul(T,L).
	submul([],[]).
