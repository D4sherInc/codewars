% plunit can be used to test solution
:- begin_tests(get_grade).
:- include(get_grade).

test(example_test) :- get_grade(88,90,92, R), assertion(R == 'A').
test(example_test) :- get_grade(95,90,93, R), assertion(R == 'A').
test(example_test) :- get_grade(100,85,96, R), assertion(R == 'A').
test(example_test) :- get_grade(92,93,94, R), assertion(R == 'A').
test(example_test) :- get_grade(100,100,100, R), assertion(R == 'A').

test(example_test) :- get_grade(70,70,100, R), assertion(R == 'B').
test(example_test) :- get_grade(82,85,87, R), assertion(R == 'B').
test(example_test) :- get_grade(84,79,85, R), assertion(R == 'B').
test(example_test) :- get_grade(90,90,89, R), assertion(R == 'B').

test(example_test) :- once(get_grade(70,70,70, R)), assertion(R == 'C').
test(example_test) :- once(get_grade(75,70,79, R)), assertion(R == 'C').
test(example_test) :- once(get_grade(60,82,76, R)), assertion(R == 'C').
test(example_test) :- once(get_grade(80,80,79, R)), assertion(R == 'C').

test(example_test) :- get_grade(65,70,59, R), assertion(R == 'D').
test(example_test) :- get_grade(66,62,68, R), assertion(R == 'D').
test(example_test) :- get_grade(58,62,70, R), assertion(R == 'D').
test(example_test) :- get_grade(70,70,69, R), assertion(R == 'D').
test(example_test) :- get_grade(60,60,60, R), assertion(R == 'D').

test(example_test) :- get_grade(60,60,59, R), assertion(R == 'F').
test(example_test) :- get_grade(44,55,52, R), assertion(R == 'F').
test(example_test) :- get_grade(48,55,52, R), assertion(R == 'F').
test(example_test) :- get_grade(58,59,60, R), assertion(R == 'F').
test(example_test) :- get_grade(60,60,59, R), assertion(R == 'F').
test(example_test) :- get_grade(0,0,0, R), assertion(R == 'F').

:- end_tests(get_grade).