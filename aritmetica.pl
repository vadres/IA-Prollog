% Autor:
% Data: 30/11/2016

fat(X, 1) :- X =< 1, !.
fat(X, F) :- X1 is X - 1, fat(X1, F1), F is F1 * X, !.

max0(X,Y,M):- X>Y, !, M=X.
max0(X,Y,M):- X<Y, !, M=Y.
max0(X,Y,M):- X=Y, !, M=X.

fati(X,F):-fatAcc(X,1/F).
fatAcc(X,ACC/ACC):-X=<1,!.
fatAcc(X,ACC/F ):- !,ACC1 is X*ACC, X1 is X-1,fatAcc(X1,ACC1/F).

somaImpar(X,S):-somaAcc(X,0/S).
somaAcc(X,ACC1/ACC):-X=<1, ACC is ACC1 + 1, !.
somaAcc(X,ACC/S ):- !,ACC1 is X+ACC, X1 is X-2,somaAcc(X1,ACC1/S).

somaImpar2(M,S):- somaAcc2(1/M,0/S).
somaAcc2(X/M, S/S):-X>M,!.
somaAcc2(X/M, ACC/S):-ACC1 is ACC+X, X1 is X+2, somaAcc2(X1/M,ACC1/S).

% X ^ Y = E
elevado(X, Y, E):- elAcc(X, Y, 1/E).
elAcc(X, Y, E/E):- Y =< 0, !.
elAcc(X, Y, ACC/E):- !, ACC1 is X * ACC, Y1 is Y-1, elAcc(X, Y1, ACC1/E).

lista_rand([],V,N):-N<1,!.
lista_rand([R|L],V,N):-N1 is N-1, R is random(V), lista_rand(L,V,N1).