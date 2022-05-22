divisors(Number, Count) :- 
	Number >= 1,
	divisors(Number, 1, 1, Count).


divisors(Number, Number, Count, Count):- !.
divisors(Number, N, Count, R) :-
	(0 is Number mod N ->
		succ(Count, NewCount)
	;
		NewCount is Count
	),
	succ(N, NewN),
	divisors(Number, NewN, NewCount, R).