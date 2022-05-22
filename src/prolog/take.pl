% Store result in 3rd argument - Result
take(Arr, N, Arr):-
	length(Arr, L),
	N >= L,
	!.
take(Arr, N, Result) :-
	append(Result, _, Arr),
	length(Result, N).