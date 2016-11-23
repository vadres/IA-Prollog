compr([_|Xs], 1 + T) :- compr(Xs, T).
compr([], 0).

comprAcc(L, T) :- compr3(L, 0, T).
compr3([_|Xs], Acc, T) :- compr3(Xs, Acc + 1, T). 
compr3([], Acc, Acc). 

append1([], Bs, Bs).
append1([A|As], Bs, [A|AsBs]) :- append1(As,Bs, AsBs).

membro(X, L) :- append(_, [X|_], L).
prefix(X, L) :- append(P, _, L).
suffix(X, L) :- append(_, S, L).
sublist(S, L) :- prefix(P, L), suffix(S, P).
