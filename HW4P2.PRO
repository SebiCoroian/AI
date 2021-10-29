domains
	age = integer
	telno, name, job = string
predicates
	readperson(name, age, telno, job)
	writeperson(name, age, telno, job)
	run
goal
	run.
clauses
	readperson(Name, Age, Telno, Job) :-
		write("Name ? "), readln(Name),
		write("Job ? "), readln(Job),
		write("Age ? "), readint(Age),
		write("Tel. No ? "), readln(Telno).
	writeperson(Name, Age, Telno, Job) :-
		write(Name, " ", Age, " ", Telno, " ", Job), nl.
	run :-
		readperson(Name, Age, Telno, Job),
		writeperson(Name, Age, Telno, Job),
		nl.
	run :-
		write("Inca o data"),
		nl, nl,
		run.
 
