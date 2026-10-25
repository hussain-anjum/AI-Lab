cube(N, C) :-
    C is N * N * N.

run :-
    write('Enter a number: '), read(N),
    cube(N, C),
    write('Cube of '), write(N), write(' = '), write(C), nl.