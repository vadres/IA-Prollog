compr([_|Xs], 1 + T) :- compr(Xs, T).
compr([], 0).

comprAcc(L, T) :- compr3(L, 0, T).
compr3([_|Xs], Acc, T) :- compr3(Xs, Acc + 1, T). 
compr3([], Acc, Acc). 

append1([], Bs, Bs).
append1([A|As], Bs, [A|AsBs]) :- append1(As,Bs, AsBs).

membro(X, L)  :- append(_, [X|_], L).
prefix(P, L)  :- append(P, _, L).
suffix(S, L)  :- append(_, S, L).
sublist(S, L) :- prefix(P, L), suffix(S, P).

ultimo(U, [U])    :- !.
ultimo(U, [_|As]) :- ultimo(U, As).

%reverso(L, R) :- reverso(L, ACC, R), !.
%reverso([], R, R).
%reverso([X|Xs], ACC, R) :- reverso(Xs, ACC), append(ACC, [X], R).

dup([]) :- false, !.
dup([A|As]) :- member(A, As), !.
dup([A|As]) :- dup(As).

remDup([], []).
remDup([A|As], N) :- member(A, As), remDup(As, N), !.
remDup([A|As], [A|Ns]) :- \+ member(A, As), remDup(As, Ns).

remUa(L, LU) :- append(LU, [_], L).

maxL([], 0).
maxL([X|Xs], M) :- maxL(Xs, M1), (X > M1, M = X; X =< M1, M = M1).

pertence(X, L, Flag) :- member(X,L), Flag = true.
pertence(X, L, Flag) :- \+ member(X,L), Flag = false.
