% plunit can be used to test solution
:- begin_tests(descending_order).
:- include(descending_order).

test(example_test) :- once(descending_order(0, R)), assertion(R == 0).
test(example_test) :- once(descending_order(1, R)), assertion(R == 1).
test(example_test) :- once(descending_order(111, R)), assertion(R == 111).
test(example_test) :- once(descending_order(15, R)), assertion(R == 51).
test(example_test) :- once(descending_order(1021, R)), assertion(R == 2110).
test(example_test) :- once(descending_order(123456789, R)), assertion(R == 987654321).

:- end_tests(descending_order).