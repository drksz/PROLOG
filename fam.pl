% fam.pl  ── simple family database

% --- Facts ------------------------------------------------------------

person(john,    male).
person(marie,   female).
person(anna,    female).
person(ben,     male).

person(susan,   female).
person(chloe,   female).

person(lisa,    female).
person(greg,    male).

person(mark,    male).

person(emily,   female).

person(david,   male).
person(olivia,  female).
person(oliver,  male).

person(michael, male).
person(irene,   female).
person(ivy,     female).

person(kevin,   male).
person(nora,    female).

% parent(Parent, Child).
parent(john, anna).       parent(marie, anna).
parent(john, ben).        parent(marie, ben).

parent(susan, chloe).

parent(lisa, greg).

parent(david,   oliver).  parent(olivia,  oliver).
parent(michael, ivy).     parent(irene,   ivy).

parent(emily, john).
parent(emily, susan).
parent(emily, lisa).
parent(emily, mark).

parent(kevin, david).     parent(nora,  david).
parent(kevin, michael).   parent(nora,  michael).

% --- Rules ------------------------------------------------------------

male(X)   :- person(X, male).
female(X) :- person(X, female).

sibling(X, Y) :-
    parent(P, X),
    parent(P, Y),
    X \= Y.

uncle(X, Y) :-
    male(X),
    parent(Parent, Y),
    sibling(X, Parent).

mother(X, Y) :-
    female(X),
    parent(X, Y).

grandmother(X, Y) :-
    female(X),
    parent(X, Parent),
    parent(Parent, Y).


%helpers to get all distinct atoms
%setof(template (what you want list to contain), Goal to match, List of all matches)
all_atoms(List) :-
    setof(Person, G^person(Person, G), List).

all_males(List) :-
    setof(M, person(M, male), List).

all_females(List) :-
    setof(F, person(F, female), List).

all_parents(List) :-
    setof(P, C^parent(P, C), List).

summary :-
    all_atoms(Atoms),      write('All people : '),      nl, write(Atoms), nl,
    all_males(Males),      write('Males      : '),      nl, write(Males), nl,
    all_females(Females),  write('Females    : '),      nl, write(Females), nl,
    all_parents(Parents),  write('Parents    : '),      nl, write(Parents), nl.
