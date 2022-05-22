% Store the result inside 4th argument. Good luck!
evaluate(M, Result) :-
	(	between(90, 100, M) ->
			Result = 'A';
		between(80, 89, M) ->
			Result  = 'B';
		between(70, 79, M) ->
			Result  = 'C';
		between(60, 69, M) ->
			Result  = 'D';
		between(0, 59, M) ->
			Result  = 'F').


get_grade(S1, S2, S3, Result) :- 
	M is floor((S1+S2+S3)/3),
	evaluate(M, Result).
