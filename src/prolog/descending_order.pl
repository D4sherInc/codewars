% Store the result inside 2nd argument
descending_order(N, Result) :- 
	number_chars(N,X),
	sort(0, @>=, X, X1),
	number_chars(Result, X1).