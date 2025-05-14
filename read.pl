cube:-
    write('Enter a number: '),
    read(Number),
    process(Number).
process(stop) :- !.
process(Number) :-
    Number > 0,
    Cube is Number * Number * Number,
    write('The cube of '),
    write(Number),
    write(' is '),
    write(Cube), nl.

