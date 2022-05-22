% plunit can be used to test solution
:- begin_tests(buycar).
:- include(buycar).

test(nb_months_test) :- nb_months(2000, 8000, 1000, 1.5, L), assertion(L == [6, 766]).
test(nb_months_test) :- nb_months(12000, 8000, 1000, 1.5, L), assertion(L == [0, 4000]).
test(nb_months_test) :- nb_months(8000, 12000, 500, 1, L), assertion(L == [8, 597]).

:- end_tests(buycar).