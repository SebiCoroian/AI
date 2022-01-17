/* predicat care intoarce cmmdc al nr. unei liste*/
trace
domains
	nume_lista=nume*
	nume=integer
predicates
	cmmdc(nume_lista,nume)
	cmmdc_lista(nume_lista)
clauses
	cmmdc_lista([H|T]):-cmmdc([H|T],H).
	cmmdc([H|T],X):-(H mod X) <> 0, R=H mod X, 
			cmmdc([X|T],R).
	cmmdc([_|T],X):-cmmdc(T,X).
	cmmdc([],X):-write("cmmdc = ",X).
