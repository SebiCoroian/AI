/* predicat care dintr-o lista de atomi produce o
   lista de perechi - ex. ([a,b,a,b,a,c,a],X) 
   devine X=[a 4] [b 2] [c 1]*/
domains
	nume_lista=nume*
	nume=integer
predicates
	sort(nume_lista,nume_lista)
	insert(nume,nume_lista,nume_lista)
	per(nume_lista)
	perechi(nume_lista,nume)
	membru(nume,nume_lista)
clauses
	sort([],[]).
	sort([X|L1],L2):-sort(L1,L3),insert(X,L3,L2).
	insert(X,[],[X]).
	insert(X,[Y|L],[X,Y|L]):-X<Y.
	insert(X,[Y|L1],[Y|L2]):-X>=Y,insert(X,L1,L2).
	
	per(L):-sort(L,T),perechi(T,1).
	perechi([],_).
	perechi([H|T],N):-membru(H,T),N1=N+1,perechi(T,N1).
	perechi([H|T],N):-write("['",H,"' ",N,"]"),perechi(T,1).
	membru(X,[X|_]).
	membru(X,[_|T]):-membru(X,T).
