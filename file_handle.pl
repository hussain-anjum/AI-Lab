% Write data to a file
writeinfile :-
    tell('mfile.txt'),
    write('start.'), nl,
    write('123.'), nl,
    write('hello.'), nl,
    told.

% Read data from one file and write it to another
readfromfile(Infile, Outfile) :-
    see(Infile),
    tell(Outfile),
    read(X1), read(X2), read(X3),
    write(X1), nl,
    write(X2), nl,
    write(X3), nl,
    seen,
    told.