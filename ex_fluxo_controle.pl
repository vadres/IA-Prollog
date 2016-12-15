﻿% Q2 - 

% fat(X,1) :- X < 1, !.
% fat(X,F) :- fat(X - 1, F1), F is F1 * X.

/** 
 * R = é necessario por que senão ficara pra sempre em uma multiplicação por zero.
 *     o corte é vermelho.  
 */ 

/**
 *  Usando corte verde:
 */
 fat(X,1) :- X < 1.
 fat(X,F) :- !, fat(X - 1, F1), F is F1 * X.

% Q3 -

max(X,Y,M) :- X > Y, M = X.
max(X,Y,M) :- X =< Y, M = Y.

/** 
 * R = o cortar faz com que o programa pule a segunda execução.  
 */ 

% Q4 -

wN(0) :- write(0), !.
wN(N) :- write(N), N1 is N - 1, wN(N1), write(N).

space(0) :- !.
space(N) :- N1 is N - 1, write(' '), space(N1).

piramideVal(X, X) :- wN(X), !.
piramideVal(N, X) :- Sl is N - X, space(Sl), wN(X), nl, X1 is X + 1, piramideVal(N, X1).
piramide(N) :- piramideVal(N, 0).

%piramide(0) :- wN(0), nl, !.
%piramide(N) :- N1 is N - 1, piramide(N1), wN(N), nl.

% Q5 -

piramideValI(N, 0) :- space(N), wN(0), !.
piramideValI(N, X) :- Sl is N - X, space(Sl), wN(X), nl, X1 is X - 1, piramideValI(N, X1).
piramideI(N) :- piramideValI(N, N).

%piramideInv(0) :- wN(0), !.
%piramideInv(N) :- N1 is N - 1, wN(N), nl, piramideInv(N1).

% Q6 -
piramideValP1(X, X) :- space(1), wN(X), !.
piramideValP1(N, X) :- Sl is N - X + 1, space(Sl), wN(X), nl, X1 is X + 1, piramideValP1(N, X1).
piramideP1(N) :- piramideValP1(N, 0).

piramideValP2(N, 0) :- N1 is N + 1, space(N1), wN(0), !.
piramideValP2(N, X) :- Sl is N - X + 1, space(Sl), wN(X), nl, X1 is X - 1, piramideValP2(N, X1).
piramideP2(N) :- piramideValP2(N, N).

piramideDup(N) :- N1 is N - 1, piramideP1(N1), nl, wN(N), nl, piramideP2(N1).

%piramideP2(0) :- wN(0), !.
%piramideP2(N) :- N1 is N - 1, wN(N), nl, piramideP2(N1).

%piramideP1(0) :- wN(0), nl, !.
%piramideP1(N) :- N1 is N - 1, piramideP1(N1), wN(N), nl.

%piramideDup(N) :- piramideP1(N), piramideP2(N).

