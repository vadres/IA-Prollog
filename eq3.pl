%
lista(Ni, Ns, L) :- Ni > Ns, !.
lista(Ni, Ns, [X|Xs]) :- NACC is Ni + 1, X is  Ni, lista(NACC, Ns, Xs).
%
modulo(X, Md) :- X < 0, Md is X * -1, !; Md is X. 
%
my_member(X, L) :- lista(-10000, 10000, L), member(X, L).
