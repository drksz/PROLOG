%list operations in prolog

% 1. Membership Check: is_member(Element, List)
is_member(X, [X|_]).
is_member(X, [_|T]) :-
    is_member(X, T).

% 2. Length Calculation: list_length(List, Length)
list_length([], 0).
list_length([_|T], N) :-
    list_length(T, N1),
    N is N1 + 1.

% 3.list_concat(List1, List2, Result)list
list_concat([], L, L).
list_concat([H|T], L2, [H|R]) :-
    list_concat(T, L2, R).

% 4. Delete Element: list_delete(Element, List, Result)
list_delete(_, [], []).
list_delete(X, [X|T], R) :-
    list_delete(X, T, R).
list_delete(X, [H|T], [H|R]) :-
    X \= H,
    list_delete(X, T, R).

% 5. Append Element to End: list_append(Element, List, Result)
list_append(E, [], [E]).
list_append(E, [H|T], [H|R]) :-
    list_append(E, T, R).

% 6. Insert Element at Index(Element,Index, List, Result)

% Base Case: Insert at index 0 (front of the list)
list_insert_at(X, 0, L, [X|L]).

% Recursive Case: Move forward by decreasing Index
list_insert_at(X, N, [H|T], [H|R]) :-
    N > 0,
    N1 is N - 1,
    list_insert_at(X, N1, T, R).


