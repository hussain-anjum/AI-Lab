go:- write("Enter two numbers: "), nl,
     read(A), read(B),
     arith(A,B).

     arith(A,B):- S is A+B,
                  X is A-B,
                  M is A*B,
                  D is div(A,B),
                  write("Sum: "), write(S),nl,
                  write("Sub: "), write(X),nl,
                  write("Mul: "), write(M),nl,
                  write("Div: "), write(D),nl.