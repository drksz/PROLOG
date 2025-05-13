charAtIndex(0, [H|_], H).
charAtIndex(N, [_|T], Elem) :-
    N > 0,
    N1 is N - 1,
    charAtIndex(N1, T, Elem).

print_hello_world :-
    Chars = ['H', 'e', 'l', 'l', 'o', ' ', 'W', 'o', 'r', 'l', 'd'],
    print_chars_loop(Chars, 0).

print_chars_loop(Chars, Index) :-
    length(Chars, Len),
    ( Index >= Len-> true                    % Exit the loop
    ;  charAtIndex(Index, Chars, Char), % Get character at position Index
       write(Char),
       NextIndex is Index + 1,
       print_chars_loop(Chars, NextIndex)
    ).


hello_world_repeat_once :-
    Chars = ['H', 'e', 'l', 'l', 'o', ' ', 'W', 'o', 'r', 'l', 'd'],
    repeat,
    nth0(Index, Chars, Char),
    write(Char),
    Index =:= 10,  % evaluates if index is 10 if yes continue else fail
    !.             % Cut to stop looping
