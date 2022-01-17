/* predicat care dintr-o lista de atomi produce o
   lista de perechi - ex. ([a,b,c,d]) are ca
   rezultat [a b] [a c] [a d] [b c] [b d] [c d]*/

domains
	nume_lista=nume*
	nume=integer
predicates
	distl(nume,nume_lista)
	perechi(nume_lista)
clauses
	
	perechi([H|T]):-distl(H,T).
	
/* da totdeauna fail pt. ca in finalul satisfacerii clauzei distl se ajunge la T=[], 
care nu se mai poate decompune in forma [Head|Tail]. De aceea recursivitatea nu se 
poate realiza in aceasta clauza si vom realiza recursivitatea in clauza de mai jos */

	perechi([_|T]):-perechi(T).
	distl(E,[H|T]):-write("[",E," ",H,"]"),nl,distl(E,T).
