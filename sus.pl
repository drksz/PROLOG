% Facts
at_scene(john).
at_scene(mary).
has_motive(john).
has_motive(alice).
fingerprints_found(john).
alibi(john, gym).
alibi(mary, home).
alibi(alice, work).

% Rule
suspect(X) :-
    (at_scene(X), has_motive(X));
    (has_motive(X), \+ alibi(X, _)),
    X \= police.