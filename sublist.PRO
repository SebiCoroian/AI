/* predicat care determina sublistele unei liste 
   predicat de tip (o,i)*/
domains
	nume_lista=nume*
	nume=symbol
predicates
	append(nume_lista,nume_lista,nume_lista)
	sub_list(nume_lista,nume_lista)
clauses
	sub_list([],_).
	sub_list(T,U):-append(V,W,U),append(H,T,V),not(T=[]).
	append([],L,L).
	append([H|T],L,[H|U]):-append(T,L,U).
