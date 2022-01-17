/* Programul descompune o lista de numere intr-o 
lista de forma [lista_de_numere_pare de numere_impare]
deci o lista cu 2 elemente care sunt liste de intregi;
returneaza numarul de elemente pare si impare.*/
/*--------------------------------------*/

/*trace*/
domains
	list=integer*
predicates
	lista (list,list,list,integer,integer)
	descomp(list)
	scrie(list)
	append(list,list,list)
clauses
	append([],L,L).
	append([H|T],L,[H|R]):-append(T,L,R).
	
	scrie([]).
	scrie([H|T]):-write(H," "),scrie(T).
	
	descomp(L):-lista(L,M,P,NP,NI),append(M,P,X),
		    scrie(X),nl,write("Numere pare: ",NP),
		    nl, write("Numere impare: ",NI).
		    
	lista([],[],[],0,0).
	lista([H|T],[H|M],P,NP,NI):-(H mod 2)=0,
		    lista(T,M,P,N1,NI), NP=N1+1.
	lista([H|T],L,[H|P],NP,NI):-(H mod 2)=1, 
		    lista(T,L,P,NP,N2), NI=N2+1.
