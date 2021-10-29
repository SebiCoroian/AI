predicates
	place(symbol, symbol)
	mananca(symbol, symbol)
clauses
	mananca(tom, mere).
	place(tom, scrima).
	place(ellen, tenis).
	place(john, fotbal).
	place(bill, dans).
	place(tom, basket).
	place(eric, inot).
	place(bill, Activitate) if
		place(tom, Activitate).
%	mananca(ellen, pizza).
%	mananca(john, burger).
%	mananca(bill, salata).
%	mananca(ellen, banana).
	mananca (ellen, Mancare) if
		mananca(tom, Mancare).
	place(ellen, Activitate) if
		place(bill, Activitate).