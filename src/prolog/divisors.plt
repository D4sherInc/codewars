% plunit can be used to test solution
:- begin_tests(divisors).
:- include(divisors).

test(example_test) :- once(divisors(1, R)), assertion(R == 1).
test(example_test) :- once(divisors(54, R)), assertion(R == 8).
test(example_test) :- once(divisors(10, R)), assertion(R == 4).
test(example_test) :- once(divisors(11, R)), assertion(R == 2).

:- end_tests(divisors).