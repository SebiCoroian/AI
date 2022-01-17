domains
	nume_lista=nume*
	nume=symbol
predicates
	membru(nume,nume_lista).
clauses
	membru(N,[N|_]):-!.
	membru(N,[_|T]):-membru(N,T).
