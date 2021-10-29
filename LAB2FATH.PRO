trace
domains
	person=symbol
predicates
	father(person)
	father(person, person)
	mother(person)
	mother(person, person)
clauses
	father(Man) if
		father(Man, _).
		
	father(pavel,rozalia).
	father(vasile,ion).
	father(vasile, andrei).
	father(vasile, andreea).

	mother(Woman) if
		mother(Woman, _).
	
	mother(maria, ion).
	mother(maria, andreea).
	mother(ana, rozalia).
	mother(dana, aurica).
	mother(dana, ion).