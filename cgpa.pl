grade(M, 4.0)  :- M >= 80, !.
grade(M, 3.75) :- M >= 75, !.
grade(M, 3.5)  :- M >= 70, !.
grade(M, 3.25) :- M >= 65, !.
grade(M, 3.0)  :- M >= 60, !.
grade(M, 2.75) :- M >= 55, !.
grade(M, 2.5)  :- M >= 50, !.
grade(M, 2.25) :- M >= 45, !.
grade(M, 2.0)  :- M >= 40, !.
grade(_, 0.0).

cgpa([], 0, 0).
cgpa([c(Cr, M)|T], TP, TC) :-
    cgpa(T, TP1, TC1),
    grade(M, GP),               
    TP is TP1 + Cr * GP,
    TC is TC1 + Cr.

result(Courses, CGPA) :-
    cgpa(Courses, TP, TC),
    CGPA is TP / TC.