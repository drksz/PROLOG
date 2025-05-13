%facts in this case is the base case
fib(0, 0).
fib(1, 1).

%rules, we invoke recursion through the rules
%if fib is not a fact, fib(N, Result) must be true if fib(N-1, Res1) and fib(N-2, Res2) are true, N > 1, N1 is N-1 and N2 is N-2 and result is Res1 + Res2
fib(N, Result) :-
    N > 1,
    N1 is N - 1,
    N2 is N - 2,
    fib(N1, Res1),
    fib(N2, Res2),
    Result is Res1 + Res2.