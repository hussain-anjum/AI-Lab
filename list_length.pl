my_length([], 0).

my_length([_|T], N) :-
    my_length(T, N1),   
    N is N1 + 1.

run :-
    write('Enter a list (example: [1,2,3].): '), read(L),
    my_length(L, N),
    write('Length = '), write(N), nl.